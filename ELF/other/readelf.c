// 来自：https://www.cnblogs.com/timothy020/p/18579740

#include <stdio.h>
#include <stdlib.h>
#include <elf.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>

// 主要函数：进行ELF文件解析
void parse_elf_header(const Elf64_Ehdr* elf_header);        //-h: 解析文件头
void parse_section_headers(const Elf64_Ehdr* elf_header);   //-S: 解析节头表
void parse_symbol_table(const Elf64_Ehdr* elf_header);      //-s: 解析符号表

// 辅助函数：格式化输出
const char* get_elf64_st_type_name(unsigned char info);
const char* get_elf64_st_bind_name(unsigned char info);
const char* get_elf64_st_visibility_name(unsigned char other);
const char* get_section_type_name(Elf64_Word type);
const char* get_section_flags_name(Elf64_Xword flags);
const char* get_class_name(unsigned char class_value);
const char* get_data_name(unsigned char data_value);
const char* get_version_name(unsigned char version_value);
const char* get_os_name(unsigned char os_value);
const char* get_type_name(unsigned char type_value);
const char* get_machine_name(unsigned char machine_value);
void print_symbol_table(const char* strtab, Elf64_Sym* symbols, int count, const char* symtab_name);


int main(int argc, char* argv[])
{
    // 获取程序参数
    if (argc != 3) {
        fprintf(stderr, "Usage: %s <elf-file> <-h|-S|-s>\n", argv[0]);
        exit(EXIT_FAILURE);
    }
    const char* option = argv[1];
    const char* filename = argv[2];

    // 打开文件
    int fd = open(filename, O_RDONLY);
    if (fd == -1) {
        perror("Failed to open ELF file");
        exit(EXIT_FAILURE);
    }

    // mmap映射
    off_t file_size = lseek(fd, 0, SEEK_END);
    char* map = mmap(NULL, file_size, PROT_READ, MAP_PRIVATE, fd, 0);
    if (map == MAP_FAILED) {
        perror("Memory mapping failed");
        close(fd);
        exit(EXIT_FAILURE);
    }
    Elf64_Ehdr* elf_header = (Elf64_Ehdr*)map;

    // 处理不同参数对应的情况
    if (strcmp(option, "-h") == 0)
    {
        parse_elf_header(elf_header);
    }
    else if (strcmp(option, "-S") == 0)
    {
        parse_section_headers(elf_header);
    }
    else if (strcmp(option, "-s") == 0)
    {
        parse_symbol_table(elf_header);
    }

    // 关闭文件
    munmap(map, file_size);
    close(fd);

    return 0;
}

// -h: 解析文件头
void parse_elf_header(const Elf64_Ehdr* elf_header) {
    printf("ELF Header:\n");
    printf("  Magic:   ");
    for (int i = 0; i < EI_NIDENT; ++i) {
        printf("%02X ", elf_header->e_ident[i]);
    }
    printf("\n");

    printf("  Class:                             %s\n", get_class_name(elf_header->e_ident[EI_CLASS]));
    printf("  Data:                              %s\n", get_data_name(elf_header->e_ident[EI_DATA]));
    printf("  Version:                           %s\n", get_version_name(elf_header->e_ident[EI_VERSION]));
    printf("  OS/ABI:                            %s\n", get_os_name(elf_header->e_ident[EI_OSABI]));
    printf("  Type:                              %s\n", get_type_name(elf_header->e_type));
    printf("  Machine:                           %s\n", get_machine_name(elf_header->e_machine));
    printf("  Version:                           %d\n", elf_header->e_version);
    printf("  Entry point address:               %#lx\n", elf_header->e_entry);
    printf("  Start of program headers:          %ld (bytes into file)\n", elf_header->e_phoff);
    printf("  Start of section headers:          %ld (bytes into file)\n", elf_header->e_shoff);
    printf("  Flags:                             %#lx\n", elf_header->e_flags);
    printf("  Size of this header:               %d (bytes)\n", elf_header->e_ehsize);
    printf("  Size of program headers:           %d (bytes)\n", elf_header->e_phentsize);
    printf("  Number of program headers:         %d\n", elf_header->e_phnum);
    printf("  Size of section headers:           %d (bytes)\n", elf_header->e_shentsize);
    printf("  Number of section headers:         %d\n", elf_header->e_shnum);
    printf("  Section header string table index: %d\n", elf_header->e_shstrndx);
}

// -S: 解析节头表
void parse_section_headers(const Elf64_Ehdr* elf_header) {
    // 找到节头表和字符串表
    Elf64_Shdr* sections = (Elf64_Shdr*)((char*)elf_header + elf_header->e_shoff);
    const char* strtab = (char*)elf_header + sections[elf_header->e_shstrndx].sh_offset;

    printf("Section Headers:\n");
    printf("  [Nr] Name              Type             Address           Offset\n");
    printf("       Size              EntSize          Flags  Link  Info  Align\n");

    // 遍历节头
    for (int i = 0; i < elf_header->e_shnum; i++) {
        // 打印节号、名称、类型、地址、偏移
        printf("  [%2d] %-17s %-16s %016lx  %08lx\n",
            i,
            &strtab[sections[i].sh_name],
            get_section_type_name(sections[i].sh_type),
            sections[i].sh_addr,
            sections[i].sh_offset);

        // 打印节大小、条目大小、标志、链接索引、信息、对齐
        printf("       %016lx  %016lx  %-6s %4u %4u %5lu\n",
            sections[i].sh_size,
            sections[i].sh_entsize,
            get_section_flags_name(sections[i].sh_flags),
            sections[i].sh_link,
            sections[i].sh_info,
            sections[i].sh_addralign);
    }
}

// -s: 解析符号表
void parse_symbol_table(const Elf64_Ehdr* elf_header) {
    // 找到节头表指针和字符串表
    Elf64_Shdr* sections = (Elf64_Shdr*)((char*)elf_header + elf_header->e_shoff);
    const char* strtab = (char*)elf_header + sections[elf_header->e_shstrndx].sh_offset;

    // 遍历每个节
    for (int i = 0; i < elf_header->e_shnum; i++) {
        // 如果是符号表
        if (sections[i].sh_type == SHT_SYMTAB) {  // .symtab符号表
            Elf64_Shdr* symtab = &sections[i];
            Elf64_Sym* symbols = (Elf64_Sym*)((char*)elf_header + symtab->sh_offset);
            int count = symtab->sh_size / symtab->sh_entsize;  // 符号个数
            const char* symstrtab = (char*)elf_header + sections[symtab->sh_link].sh_offset;
            print_symbol_table(symstrtab, symbols, count, ".symtab");
        }
        // 如果是动态符号表
        else if (sections[i].sh_type == SHT_DYNSYM) {  // .dynsym符号表
            Elf64_Shdr* dynsymtab = &sections[i];
            Elf64_Sym* dynsymbols = (Elf64_Sym*)((char*)elf_header + dynsymtab->sh_offset);
            int dynsym_count = dynsymtab->sh_size / dynsymtab->sh_entsize;  // 动态符号个数
            const char* dynsymstrtab = (char*)elf_header + sections[dynsymtab->sh_link].sh_offset;
            print_symbol_table(dynsymstrtab, dynsymbols, dynsym_count, ".dynsym");
        }
    }
}


// 获取Class字段信息
const char* get_class_name(unsigned char class_value) {
    switch (class_value) {
    case ELFCLASS32: return "ELF32";
    case ELFCLASS64: return "ELF64";
    default: return "Unknown";
    }
}

// 获取Data字段信息
const char* get_data_name(unsigned char data_value) {
    switch (data_value) {
    case ELFDATA2LSB: return "2's complement, little endian";
    case ELFDATA2MSB: return "2's complement, big endian";
    default: return "Unknown";
    }
}

// 获取Version字段信息
const char* get_version_name(unsigned char version_value) {
    switch (version_value) {
    case 0: return "Invalid Version";
    case 1: return "1 (current)";
    default: return "Invalid Version";
    }
}

// 获取OS字段信息
const char* get_os_name(unsigned char os_value) {
    switch (os_value) {
    case ELFOSABI_NONE:    return "UNIX - System V";
    case ELFOSABI_LINUX:    return "Linux";
    case ELFOSABI_SOLARIS: return "Solaris";
    case ELFOSABI_FREEBSD: return "FreeBSD";
    default: return "Others";
    }
}

// 获取Type字段信息
const char* get_type_name(unsigned char type_value) {
    switch (type_value) {
    case ET_NONE: return "NONE (None)";
    case ET_REL:  return "REL (Relocatable file)";
    case ET_EXEC: return "EXEC (Executable file)";
    case ET_DYN:  return "DYN (Shared object file)";
    case ET_CORE: return "CORE (Core file)";
    default: return "Unknown";
    }
}

// 获取Machine字段信息
const char* get_machine_name(unsigned char machine_value) {
    switch (machine_value) {
    case EM_386:    return "Intel 80386";
    case EM_ARM:    return "ARM";
    case EM_X86_64: return "AMD x86-64";
    case EM_AARCH64: return "ARM AARCH64";
    default: return "Unknown";
    }
}



// 解析节类型
const char* get_section_type_name(Elf64_Word type) {
    switch (type) {
    case SHT_NULL:       return "NULL";
    case SHT_PROGBITS:   return "PROGBITS";
    case SHT_SYMTAB:     return "SYMTAB";
    case SHT_STRTAB:     return "STRTAB";
    case SHT_RELA:       return "RELA";
    case SHT_HASH:       return "HASH";
    case SHT_DYNAMIC:    return "DYNAMIC";
    case SHT_NOTE:       return "NOTE";
    case SHT_NOBITS:     return "NOBITS";
    case SHT_REL:        return "REL";
    case SHT_SHLIB:      return "SHLIB";
    case SHT_DYNSYM:     return "DYNSYM";
    default:             return "UNKNOWN";
    }
}

// 解析节标志
const char* get_section_flags_name(Elf64_Xword flags) {
    static char flag_str[64];
    flag_str[0] = '\0';

    if (flags & SHF_WRITE) strcat(flag_str, "W");
    if (flags & SHF_ALLOC) strcat(flag_str, "A");
    if (flags & SHF_EXECINSTR) strcat(flag_str, "X");
    if (flags & SHF_MERGE) strcat(flag_str, "M");
    if (flags & SHF_STRINGS) strcat(flag_str, "S");

    return flag_str[0] == '\0' ? "None" : flag_str;
}

// 获取符号类型
const char* get_elf64_st_type_name(unsigned char info) {
    switch (ELF64_ST_TYPE(info)) {
    case STT_NOTYPE: return "NOTYPE";
    case STT_OBJECT: return "OBJECT";
    case STT_FUNC: return "FUNC";
    case STT_SECTION: return "SECTION";
    case STT_FILE: return "FILE";
    default: return "UNKNOWN";
    }
}

// 获取符号绑定
const char* get_elf64_st_bind_name(unsigned char info) {
    switch (ELF64_ST_BIND(info)) {
    case STB_LOCAL: return "LOCAL";
    case STB_GLOBAL: return "GLOBAL";
    case STB_WEAK: return "WEAK";
    default: return "UNKNOWN";
    }
}

// 获取符号可见性
const char* get_elf64_st_visibility_name(unsigned char other) {
    switch (ELF64_ST_VISIBILITY(other)) {
    case STV_DEFAULT: return "DEFAULT";
    case STV_INTERNAL: return "INTERNAL";
    case STV_HIDDEN: return "HIDDEN";
    case STV_PROTECTED: return "PROTECTED";
    default: return "UNKNOWN";
    }
}

void print_symbol_table(const char* strtab, Elf64_Sym* symbols, int count, const char* symtab_name) {
    printf("Symbol table '%s' contains %d entries:\n", symtab_name, count);
    printf("   Num:    Value          Size Type    Bind   Vis      Ndx Name\n");

    for (int i = 0; i < count; i++) {
        // 符号表内容输出，按照readelf -s格式进行对齐
        printf("%6d: %016lx  %-5lu %-7s %-6s %-8s %-4d %s\n",
            i,
            symbols[i].st_value,
            symbols[i].st_size,
            // 解析符号类型
            get_elf64_st_type_name(symbols[i].st_info),
            // 解析符号绑定
            get_elf64_st_bind_name(symbols[i].st_info),
            // 解析符号可见性
            get_elf64_st_visibility_name(symbols[i].st_other),
            symbols[i].st_shndx,
            &strtab[symbols[i].st_name]);
    }
}
