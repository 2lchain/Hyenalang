# Hyena Compiler Documentation
**Warning**: This toy compiler is basic as hell. It spits out X86-64 code that works only on Linux. If you were expecting miracles, turn around! This thing got abandoned after we hit the bare minimum. Syntax? We shamelessly ripped it from [Zig](https://ziglang.org) because, why not?

---

## Hello, world! (What else were you expecting?)
### file: hello.hyena
```zig
fn scream_out_loud(data: &u8) void {
    asm {
        "mov rsi, [rdi+8]"   // Put the string address in rsi
        "mov rdx, [rdi+0]"   // Load length, or whatever, into rdx
        "mov rdi, 1"         // Put 1 in rdi (stdout, duh)
        "mov rax, 1"         // Syscall write
        "syscall"            // Do the thing
    }
}

fn main() void {
    scream_out_loud("Hello, filthy world!\n");
}
```

---

## Compilation (Press buttons and hope)
```shell
make FILE=hello.hyena
make bin
./tmp  # If this works, you're blessed
```
