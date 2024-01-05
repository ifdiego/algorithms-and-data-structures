# xpll

Experiments with emit LLVM IR in different languages backed by LLVM itself.

#### clang
```
clang linked_list.c -S # assembly
clang linked_list.c -S -emit-llvm # llvm ir
```

#### rust
```
rustc llist.rs --emit llvm-ir
```
