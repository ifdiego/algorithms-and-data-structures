; ModuleID = 'llist.ebe1db116f83a1e0-cgu.0'
source_filename = "llist.ebe1db116f83a1e0-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"alloc::collections::linked_list::IntoIter<i32>" = type { %"alloc::collections::linked_list::LinkedList<i32>" }
%"alloc::collections::linked_list::LinkedList<i32>" = type { ptr, ptr, i64, %"alloc::alloc::Global", %"core::marker::PhantomData<alloc::boxed::Box<alloc::collections::linked_list::Node<i32>>>" }
%"alloc::alloc::Global" = type {}
%"core::marker::PhantomData<alloc::boxed::Box<alloc::collections::linked_list::Node<i32>>>" = type {}
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"alloc::collections::linked_list::Node<i32>" = type { ptr, ptr, i32, [1 x i32] }
%"{closure@alloc::collections::linked_list::LinkedList<i32>::pop_front_node::{closure#0}}" = type { ptr, ptr, ptr, ptr }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }

@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h440d5cf26eba8d88E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hbf0e16036aa70528E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h127314c061da0576E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h127314c061da0576E" }>, align 8
@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_560206a49c61adca6f3f0639a12632eb = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_92c576eee5c6739e7507f2cedf4aaeca = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a28077b28a02b92985b3a3faecf92813155f1ea1/library/core/src/fmt/mod.rs" }>, align 1
@alloc_71bb15c851e05797cad0f612cec2e57a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_92c576eee5c6739e7507f2cedf4aaeca, [16 x i8] c"K\00\00\00\00\00\00\00I\01\00\00\0D\00\00\00" }>, align 8
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_23a218881db7913fcff33767070da4a2 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"- " }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_0d4c285ce6bc80ebb4e1a5ae64843c59 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_23a218881db7913fcff33767070da4a2, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; <alloc::collections::linked_list::IntoIter<T,A> as core::iter::traits::iterator::Iterator>::next
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i32, i32 } @"_ZN113_$LT$alloc..collections..linked_list..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb8fcf2d7f024910eE"(ptr align 8 %self) unnamed_addr #0 {
start:
; call alloc::collections::linked_list::LinkedList<T,A>::pop_front
  %0 = call { i32, i32 } @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$9pop_front17h0fe6a4a3147a4c19E"(ptr align 8 %self)
  %_0.0 = extractvalue { i32, i32 } %0, 0
  %_0.1 = extractvalue { i32, i32 } %0, 1
  %1 = insertvalue { i32, i32 } poison, i32 %_0.0, 0
  %2 = insertvalue { i32, i32 } %1, i32 %_0.1, 1
  ret { i32, i32 } %2
}

; <alloc::collections::linked_list::LinkedList<T,A> as core::iter::traits::collect::IntoIterator>::into_iter
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN118_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h81f893f94b2a23eeE"(ptr sret(%"alloc::collections::linked_list::IntoIter<i32>") align 8 %_0, ptr align 8 %self) unnamed_addr #0 {
start:
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %self, i64 24, i1 false)
  ret void
}

; <<alloc::collections::linked_list::LinkedList<T,A> as core::ops::drop::Drop>::drop::DropGuard<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN169_$LT$$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h291b97e937f074efE"(ptr align 8 %self) unnamed_addr #1 {
start:
  %_3 = alloca { ptr, ptr }, align 8
  br label %bb1

bb1:                                              ; preds = %bb3, %start
  %_4 = load ptr, ptr %self, align 8, !nonnull !4, !align !5, !noundef !4
; call alloc::collections::linked_list::LinkedList<T,A>::pop_front_node
  %0 = call { ptr, ptr } @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$14pop_front_node17h33622d13b593e48aE"(ptr align 8 %_4)
  store { ptr, ptr } %0, ptr %_3, align 8
  %1 = load ptr, ptr %_3, align 8, !noundef !4
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq i64 %2, 0
  %_5 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_5, 1
  br i1 %4, label %bb3, label %bb5

bb3:                                              ; preds = %bb1
; call core::ptr::drop_in_place<core::option::Option<alloc::boxed::Box<alloc::collections::linked_list::Node<i32>,&alloc::alloc::Global>>>
  call void @"_ZN4core3ptr149drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$alloc..collections..linked_list..Node$LT$i32$GT$$C$$RF$alloc..alloc..Global$GT$$GT$$GT$17h478b84e330c439fdE"(ptr align 8 %_3)
  br label %bb1

bb5:                                              ; preds = %bb1
; call core::ptr::drop_in_place<core::option::Option<alloc::boxed::Box<alloc::collections::linked_list::Node<i32>,&alloc::alloc::Global>>>
  call void @"_ZN4core3ptr149drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$alloc..collections..linked_list..Node$LT$i32$GT$$C$$RF$alloc..alloc..Global$GT$$GT$$GT$17h478b84e330c439fdE"(ptr align 8 %_3)
  ret void
}

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hb54948a49b7626e6E(ptr %f) unnamed_addr #2 {
start:
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17hde3b5074648d0bb4E(ptr %f)
  call void asm sideeffect "", "~{memory}"(), !srcloc !6
  ret void
}

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17h3b6313d191653615E(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #1 {
start:
  %_8 = alloca ptr, align 8
  %_5 = alloca i64, align 8
  store ptr %main, ptr %_8, align 8
; call std::rt::lang_start_internal
  %0 = call i64 @_ZN3std2rt19lang_start_internal17h2d6a60ec944b523dE(ptr align 1 %_8, ptr align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe)
  store i64 %0, ptr %_5, align 8
  %v = load i64, ptr %_5, align 8, !noundef !4
  ret i64 %v
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h127314c061da0576E"(ptr align 8 %_1) unnamed_addr #0 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hb54948a49b7626e6E(ptr %_4)
; call <() as std::process::Termination>::report
  %self = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hba31b6f7683d39dfE"()
  %_0 = zext i8 %self to i32
  ret i32 %_0
}

; <&A as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8ad453254201644E"(ptr align 8 %self, ptr %ptr, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %_4 = load ptr, ptr %self, align 8, !nonnull !4, !align !7, !noundef !4
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd6097d1a08509458E"(ptr align 1 %_4, ptr %ptr, i64 %layout.0, i64 %layout.1)
  ret void
}

; <&A as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$8allocate17h38300ef04cd26512E"(ptr align 8 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !4, !align !7, !noundef !4
; call <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %0 = call { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h31af3c6556fbebeaE"(ptr align 1 %_3, i64 %layout.0, i64 %layout.1)
  %_0.0 = extractvalue { ptr, i64 } %0, 0
  %_0.1 = extractvalue { ptr, i64 } %0, 1
  %1 = insertvalue { ptr, i64 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_0.1, 1
  ret { ptr, i64 } %2
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h538a103da8ef4bc5E(ptr sret(%"core::fmt::Arguments<'_>") align 8 %_0, ptr align 8 %pieces.0, i64 %pieces.1, ptr align 8 %args.0, i64 %args.1) unnamed_addr #0 {
start:
  %_15 = alloca { ptr, i64 }, align 8
  %_13 = alloca { ptr, i64 }, align 8
  %_11 = alloca %"core::fmt::Arguments<'_>", align 8
  %_3 = icmp ult i64 %pieces.1, %args.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_8 = add i64 %args.1, 1
  %_6 = icmp ugt i64 %pieces.1, %_8
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  br label %bb3

bb4:                                              ; preds = %bb2
  store ptr null, ptr %_13, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 0
  store ptr %pieces.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 1
  store i64 %pieces.1, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %_13, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8, !align !5, !noundef !4
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_13, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i32 0, i32 2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 0
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i32 0, i32 1
  %10 = getelementptr inbounds { ptr, i64 }, ptr %9, i32 0, i32 0
  store ptr %args.0, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %9, i32 0, i32 1
  store i64 %args.1, ptr %11, align 8
  ret void

bb3:                                              ; preds = %bb1, %bb2
  store ptr null, ptr %_15, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_11, i32 0, i32 0
  store ptr @alloc_560206a49c61adca6f3f0639a12632eb, ptr %12, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %_11, i32 0, i32 1
  store i64 1, ptr %13, align 8
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_15, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8, !align !5, !noundef !4
  %16 = getelementptr inbounds { ptr, i64 }, ptr %_15, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_11, i32 0, i32 2
  %19 = getelementptr inbounds { ptr, i64 }, ptr %18, i32 0, i32 0
  store ptr %15, ptr %19, align 8
  %20 = getelementptr inbounds { ptr, i64 }, ptr %18, i32 0, i32 1
  store i64 %17, ptr %20, align 8
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_11, i32 0, i32 1
  %22 = getelementptr inbounds { ptr, i64 }, ptr %21, i32 0, i32 0
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %22, align 8
  %23 = getelementptr inbounds { ptr, i64 }, ptr %21, i32 0, i32 1
  store i64 0, ptr %23, align 8
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h452a83e54ecd764eE(ptr align 8 %_11, ptr align 8 @alloc_71bb15c851e05797cad0f612cec2e57a) #12
  unreachable
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hbf0e16036aa70528E"(ptr %_1) unnamed_addr #0 {
start:
  %_2 = alloca {}, align 1
  %0 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
; call core::ops::function::FnOnce::call_once
  %_0 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h9d487eeba3a9b33fE(ptr %0)
  ret i32 %_0
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h079b11a97ab86904E(ptr align 8 %0, ptr align 1 %1) unnamed_addr #0 {
start:
  %_2 = alloca { ptr, ptr }, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 1
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8, !nonnull !4, !align !5, !noundef !4
  %6 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !nonnull !4, !align !7, !noundef !4
; call alloc::collections::linked_list::Node<T>::into_element
  %_0 = call i32 @"_ZN5alloc11collections11linked_list13Node$LT$T$GT$12into_element17h441b7b4ea70ae0d0E"(ptr align 8 %5, ptr align 1 %7)
  ret i32 %_0
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h9d487eeba3a9b33fE(ptr %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %1 = alloca { ptr, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca ptr, align 8
  store ptr %0, ptr %_1, align 8
; invoke std::rt::lang_start::{{closure}}
  %_0 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h127314c061da0576E"(ptr align 8 %_1)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8, !noundef !4
  %3 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 8, !noundef !4
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1
  resume { ptr, i32 } %6

cleanup:                                          ; preds = %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  %10 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  store i32 %9, ptr %11, align 8
  br label %bb3

bb1:                                              ; preds = %start
  ret i32 %_0
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17hde3b5074648d0bb4E(ptr %_1) unnamed_addr #0 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  ret void
}

; core::ptr::drop_in_place<alloc::boxed::Box<alloc::collections::linked_list::Node<i32>,&alloc::alloc::Global>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr121drop_in_place$LT$alloc..boxed..Box$LT$alloc..collections..linked_list..Node$LT$i32$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hd257164bc1da67afE"(ptr align 8 %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32 }, align 8
  %_6 = load ptr, ptr %_1, align 8, !noundef !4
  br label %bb3

bb3:                                              ; preds = %start
; call <alloc::boxed::Box<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7ff81fbcb6d7549E"(ptr align 8 %_1)
  ret void

bb4:                                              ; No predecessors!
; invoke <alloc::boxed::Box<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7ff81fbcb6d7549E"(ptr align 8 %_1) #13
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %bb4
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17hceade526831b1e89E() #14
  unreachable

bb1:                                              ; preds = %bb4
  %4 = load ptr, ptr %0, align 8, !noundef !4
  %5 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 8, !noundef !4
  %7 = insertvalue { ptr, i32 } poison, ptr %4, 0
  %8 = insertvalue { ptr, i32 } %7, i32 %6, 1
  resume { ptr, i32 } %8
}

; core::ptr::drop_in_place<core::option::Option<alloc::boxed::Box<alloc::collections::linked_list::Node<i32>,&alloc::alloc::Global>>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr149drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$alloc..collections..linked_list..Node$LT$i32$GT$$C$$RF$alloc..alloc..Global$GT$$GT$$GT$17h478b84e330c439fdE"(ptr align 8 %_1) unnamed_addr #1 {
start:
  %0 = load ptr, ptr %_1, align 8, !noundef !4
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq i64 %1, 0
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
; call core::ptr::drop_in_place<alloc::boxed::Box<alloc::collections::linked_list::Node<i32>,&alloc::alloc::Global>>
  call void @"_ZN4core3ptr121drop_in_place$LT$alloc..boxed..Box$LT$alloc..collections..linked_list..Node$LT$i32$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hd257164bc1da67afE"(ptr align 8 %_1)
  br label %bb1
}

; core::ptr::drop_in_place<<alloc::collections::linked_list::LinkedList<T,A> as core::ops::drop::Drop>::drop::DropGuard<i32,alloc::alloc::Global>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr169drop_in_place$LT$$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$i32$C$alloc..alloc..Global$GT$$GT$17hbf1e1bdad7bbb0acE"(ptr align 8 %_1) unnamed_addr #1 {
start:
; call <<alloc::collections::linked_list::LinkedList<T,A> as core::ops::drop::Drop>::drop::DropGuard<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN169_$LT$$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h291b97e937f074efE"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::collections::linked_list::IntoIter<i32>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr73drop_in_place$LT$alloc..collections..linked_list..IntoIter$LT$i32$GT$$GT$17hb423505871162e31E"(ptr align 8 %_1) unnamed_addr #1 {
start:
; call core::ptr::drop_in_place<alloc::collections::linked_list::LinkedList<i32>>
  call void @"_ZN4core3ptr75drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$i32$GT$$GT$17ha9da81d572ffee31E"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::collections::linked_list::LinkedList<i32>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr75drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$i32$GT$$GT$17ha9da81d572ffee31E"(ptr align 8 %_1) unnamed_addr #1 {
start:
; call <alloc::collections::linked_list::LinkedList<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0ad74bac608bc01E"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h440d5cf26eba8d88E"(ptr align 8 %_1) unnamed_addr #0 {
start:
  ret void
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hba31b6f7683d39dfE"() unnamed_addr #0 {
start:
  ret i8 0
}

; alloc::collections::linked_list::Node<T>::into_element
; Function Attrs: nonlazybind uwtable
define internal i32 @"_ZN5alloc11collections11linked_list13Node$LT$T$GT$12into_element17h441b7b4ea70ae0d0E"(ptr align 8 %0, ptr align 1 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %2 = alloca { ptr, i32 }, align 8
  %self = alloca { ptr, ptr }, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 0
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  store ptr %1, ptr %4, align 8
  %_4 = load ptr, ptr %self, align 8, !noundef !4
  %5 = getelementptr inbounds %"alloc::collections::linked_list::Node<i32>", ptr %_4, i32 0, i32 2
  %_0 = load i32, ptr %5, align 8, !noundef !4
; invoke <alloc::boxed::Box<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7ff81fbcb6d7549E"(ptr align 8 %self)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %6 = load ptr, ptr %2, align 8, !noundef !4
  %7 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 8, !noundef !4
  %9 = insertvalue { ptr, i32 } poison, ptr %6, 0
  %10 = insertvalue { ptr, i32 } %9, i32 %8, 1
  resume { ptr, i32 } %10

cleanup:                                          ; preds = %start
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  %14 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %13, ptr %15, align 8
  br label %bb3

bb4:                                              ; preds = %start
  ret i32 %_0
}

; alloc::collections::linked_list::LinkedList<T>::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc11collections11linked_list19LinkedList$LT$T$GT$3new17hc910096db0551490E"(ptr sret(%"alloc::collections::linked_list::LinkedList<i32>") align 8 %_0) unnamed_addr #0 {
start:
  %_2 = alloca ptr, align 8
  %_1 = alloca ptr, align 8
  store ptr null, ptr %_1, align 8
  store ptr null, ptr %_2, align 8
  %0 = load ptr, ptr %_1, align 8, !noundef !4
  store ptr %0, ptr %_0, align 8
  %1 = load ptr, ptr %_2, align 8, !noundef !4
  %2 = getelementptr inbounds %"alloc::collections::linked_list::LinkedList<i32>", ptr %_0, i32 0, i32 1
  store ptr %1, ptr %2, align 8
  %3 = getelementptr inbounds %"alloc::collections::linked_list::LinkedList<i32>", ptr %_0, i32 0, i32 2
  store i64 0, ptr %3, align 8
  ret void
}

; alloc::collections::linked_list::LinkedList<T,A>::push_front
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$10push_front17hb911447b1531e14aE"(ptr align 8 %self, i32 %elt) unnamed_addr #1 {
start:
  %_13 = alloca { ptr, ptr }, align 8
  %_10 = alloca ptr, align 8
  %_9 = alloca ptr, align 8
  %node_ptr = alloca ptr, align 8
  %_4 = alloca %"alloc::collections::linked_list::Node<i32>", align 8
  store ptr null, ptr %_9, align 8
  store ptr null, ptr %_10, align 8
  %0 = load ptr, ptr %_9, align 8, !noundef !4
  store ptr %0, ptr %_4, align 8
  %1 = load ptr, ptr %_10, align 8, !noundef !4
  %2 = getelementptr inbounds %"alloc::collections::linked_list::Node<i32>", ptr %_4, i32 0, i32 1
  store ptr %1, ptr %2, align 8
  %3 = getelementptr inbounds %"alloc::collections::linked_list::Node<i32>", ptr %_4, i32 0, i32 2
  store i32 %elt, ptr %3, align 8
  %_5 = getelementptr inbounds %"alloc::collections::linked_list::LinkedList<i32>", ptr %self, i32 0, i32 3
; call alloc::boxed::Box<T,A>::new_in
  %4 = call { ptr, ptr } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$6new_in17h57b36ee24a72d573E"(ptr align 8 %_4, ptr align 1 %_5)
  %node.0 = extractvalue { ptr, ptr } %4, 0
  %node.1 = extractvalue { ptr, ptr } %4, 1
  %5 = getelementptr inbounds { ptr, ptr }, ptr %_13, i32 0, i32 0
  store ptr %node.0, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %_13, i32 0, i32 1
  store ptr %node.1, ptr %6, align 8
  %self1 = load ptr, ptr %_13, align 8, !nonnull !4, !noundef !4
  store ptr %self1, ptr %node_ptr, align 8
  %7 = load ptr, ptr %node_ptr, align 8, !nonnull !4, !noundef !4
; call alloc::collections::linked_list::LinkedList<T,A>::push_front_node
  call void @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$15push_front_node17hae28c6ceda3cb926E"(ptr align 8 %self, ptr %7)
  ret void
}

; alloc::collections::linked_list::LinkedList<T,A>::pop_front_node
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$14pop_front_node17h33622d13b593e48aE"(ptr align 8 %self) unnamed_addr #0 {
start:
  %_11 = alloca ptr, align 8
  %f = alloca %"{closure@alloc::collections::linked_list::LinkedList<i32>::pop_front_node::{closure#0}}", align 8
  %self1 = alloca ptr, align 8
  %_0 = alloca { ptr, ptr }, align 8
  %0 = load ptr, ptr %self, align 8, !noundef !4
  store ptr %0, ptr %self1, align 8
  %_5 = getelementptr inbounds %"alloc::collections::linked_list::LinkedList<i32>", ptr %self, i32 0, i32 1
  %_6 = getelementptr inbounds %"alloc::collections::linked_list::LinkedList<i32>", ptr %self, i32 0, i32 2
  %_7 = getelementptr inbounds %"alloc::collections::linked_list::LinkedList<i32>", ptr %self, i32 0, i32 3
  store ptr %self, ptr %f, align 8
  %1 = getelementptr inbounds %"{closure@alloc::collections::linked_list::LinkedList<i32>::pop_front_node::{closure#0}}", ptr %f, i32 0, i32 1
  store ptr %_5, ptr %1, align 8
  %2 = getelementptr inbounds %"{closure@alloc::collections::linked_list::LinkedList<i32>::pop_front_node::{closure#0}}", ptr %f, i32 0, i32 2
  store ptr %_6, ptr %2, align 8
  %3 = getelementptr inbounds %"{closure@alloc::collections::linked_list::LinkedList<i32>::pop_front_node::{closure#0}}", ptr %f, i32 0, i32 3
  store ptr %_7, ptr %3, align 8
  %4 = load ptr, ptr %self1, align 8, !noundef !4
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq i64 %5, 0
  %_8 = select i1 %6, i64 0, i64 1
  %7 = icmp eq i64 %_8, 0
  br i1 %7, label %bb1, label %bb3

bb1:                                              ; preds = %start
  store ptr null, ptr %_0, align 8
  br label %bb5

bb3:                                              ; preds = %start
  %x = load ptr, ptr %self1, align 8, !nonnull !4, !noundef !4
  store ptr %x, ptr %_11, align 8
  %8 = load ptr, ptr %_11, align 8, !nonnull !4, !noundef !4
; call alloc::collections::linked_list::LinkedList<T,A>::pop_front_node::{{closure}}
  %9 = call { ptr, ptr } @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$14pop_front_node28_$u7b$$u7b$closure$u7d$$u7d$17h9a42e059ed242accE"(ptr align 8 %f, ptr %8)
  %_10.0 = extractvalue { ptr, ptr } %9, 0
  %_10.1 = extractvalue { ptr, ptr } %9, 1
  %10 = getelementptr inbounds { ptr, ptr }, ptr %_0, i32 0, i32 0
  store ptr %_10.0, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %_0, i32 0, i32 1
  store ptr %_10.1, ptr %11, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb1
  %12 = getelementptr inbounds { ptr, ptr }, ptr %_0, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8, !align !5, !noundef !4
  %14 = getelementptr inbounds { ptr, ptr }, ptr %_0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = insertvalue { ptr, ptr } poison, ptr %13, 0
  %17 = insertvalue { ptr, ptr } %16, ptr %15, 1
  ret { ptr, ptr } %17

bb2:                                              ; No predecessors!
  unreachable
}

; alloc::collections::linked_list::LinkedList<T,A>::pop_front_node::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$14pop_front_node28_$u7b$$u7b$closure$u7d$$u7d$17h9a42e059ed242accE"(ptr align 8 %_1, ptr %node1) unnamed_addr #0 {
start:
  %_20 = alloca ptr, align 8
  %_19 = alloca ptr, align 8
  %_8 = alloca ptr, align 8
  %_6 = alloca ptr, align 8
  %node = alloca { ptr, ptr }, align 8
  %0 = getelementptr inbounds %"{closure@alloc::collections::linked_list::LinkedList<i32>::pop_front_node::{closure#0}}", ptr %_1, i32 0, i32 3
  %alloc = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  store ptr %node1, ptr %_20, align 8
  %1 = load ptr, ptr %_20, align 8, !nonnull !4, !noundef !4
  store ptr %1, ptr %_19, align 8
  %2 = load ptr, ptr %_19, align 8, !nonnull !4, !noundef !4
  store ptr %2, ptr %node, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %node, i32 0, i32 1
  store ptr %alloc, ptr %3, align 8
  %_17 = load ptr, ptr %node, align 8, !noundef !4
  %_4 = load ptr, ptr %_17, align 8, !noundef !4
  %_11 = load ptr, ptr %_1, align 8, !nonnull !4, !align !5, !noundef !4
  store ptr %_4, ptr %_11, align 8
  %_12 = load ptr, ptr %_1, align 8, !nonnull !4, !align !5, !noundef !4
  %4 = load ptr, ptr %_12, align 8, !noundef !4
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq i64 %5, 0
  %_5 = select i1 %6, i64 0, i64 1
  %7 = icmp eq i64 %_5, 0
  br i1 %7, label %bb3, label %bb1

bb3:                                              ; preds = %start
  store ptr null, ptr %_6, align 8
  %8 = getelementptr inbounds %"{closure@alloc::collections::linked_list::LinkedList<i32>::pop_front_node::{closure#0}}", ptr %_1, i32 0, i32 1
  %_14 = load ptr, ptr %8, align 8, !nonnull !4, !align !5, !noundef !4
  %9 = load ptr, ptr %_6, align 8, !noundef !4
  store ptr %9, ptr %_14, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %_13 = load ptr, ptr %_1, align 8, !nonnull !4, !align !5, !noundef !4
  %head = load ptr, ptr %_13, align 8, !nonnull !4, !noundef !4
  store ptr null, ptr %_8, align 8
  %10 = getelementptr inbounds %"alloc::collections::linked_list::Node<i32>", ptr %head, i32 0, i32 1
  %11 = load ptr, ptr %_8, align 8, !noundef !4
  store ptr %11, ptr %10, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %12 = getelementptr inbounds %"{closure@alloc::collections::linked_list::LinkedList<i32>::pop_front_node::{closure#0}}", ptr %_1, i32 0, i32 2
  %_15 = load ptr, ptr %12, align 8, !nonnull !4, !align !5, !noundef !4
  %13 = getelementptr inbounds %"{closure@alloc::collections::linked_list::LinkedList<i32>::pop_front_node::{closure#0}}", ptr %_1, i32 0, i32 2
  %_16 = load ptr, ptr %13, align 8, !nonnull !4, !align !5, !noundef !4
  %14 = load i64, ptr %_16, align 8, !noundef !4
  %15 = sub i64 %14, 1
  store i64 %15, ptr %_15, align 8
  %16 = getelementptr inbounds { ptr, ptr }, ptr %node, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8, !nonnull !4, !align !5, !noundef !4
  %18 = getelementptr inbounds { ptr, ptr }, ptr %node, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !nonnull !4, !align !7, !noundef !4
  %20 = insertvalue { ptr, ptr } poison, ptr %17, 0
  %21 = insertvalue { ptr, ptr } %20, ptr %19, 1
  ret { ptr, ptr } %21

bb2:                                              ; No predecessors!
  unreachable
}

; alloc::collections::linked_list::LinkedList<T,A>::push_front_node
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$15push_front_node17hae28c6ceda3cb926E"(ptr align 8 %self, ptr %node) unnamed_addr #0 {
start:
  %node1 = alloca ptr, align 8
  %_5 = alloca ptr, align 8
  %_3 = load ptr, ptr %self, align 8, !noundef !4
  store ptr %_3, ptr %node, align 8
  store ptr null, ptr %_5, align 8
  %0 = getelementptr inbounds %"alloc::collections::linked_list::Node<i32>", ptr %node, i32 0, i32 1
  %1 = load ptr, ptr %_5, align 8, !noundef !4
  store ptr %1, ptr %0, align 8
  store ptr %node, ptr %node1, align 8
  %2 = load ptr, ptr %self, align 8, !noundef !4
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq i64 %3, 0
  %_8 = select i1 %4, i64 0, i64 1
  %5 = icmp eq i64 %_8, 0
  br i1 %5, label %bb3, label %bb1

bb3:                                              ; preds = %start
  %6 = getelementptr inbounds %"alloc::collections::linked_list::LinkedList<i32>", ptr %self, i32 0, i32 1
  %7 = load ptr, ptr %node1, align 8, !noundef !4
  store ptr %7, ptr %6, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %head = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %8 = getelementptr inbounds %"alloc::collections::linked_list::Node<i32>", ptr %head, i32 0, i32 1
  %9 = load ptr, ptr %node1, align 8, !noundef !4
  store ptr %9, ptr %8, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %10 = load ptr, ptr %node1, align 8, !noundef !4
  store ptr %10, ptr %self, align 8
  %11 = getelementptr inbounds %"alloc::collections::linked_list::LinkedList<i32>", ptr %self, i32 0, i32 2
  %12 = getelementptr inbounds %"alloc::collections::linked_list::LinkedList<i32>", ptr %self, i32 0, i32 2
  %13 = load i64, ptr %12, align 8, !noundef !4
  %14 = add i64 %13, 1
  store i64 %14, ptr %11, align 8
  ret void

bb2:                                              ; No predecessors!
  unreachable
}

; alloc::collections::linked_list::LinkedList<T,A>::pop_front
; Function Attrs: nonlazybind uwtable
define internal { i32, i32 } @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$9pop_front17h0fe6a4a3147a4c19E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %_6 = alloca { ptr, ptr }, align 8
  %self1 = alloca { ptr, ptr }, align 8
  %_0 = alloca { i32, i32 }, align 4
; call alloc::collections::linked_list::LinkedList<T,A>::pop_front_node
  %0 = call { ptr, ptr } @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$14pop_front_node17h33622d13b593e48aE"(ptr align 8 %self)
  store { ptr, ptr } %0, ptr %self1, align 8
  %1 = load ptr, ptr %self1, align 8, !noundef !4
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq i64 %2, 0
  %_3 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_3, 0
  br i1 %4, label %bb2, label %bb4

bb2:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb6

bb4:                                              ; preds = %start
  %5 = getelementptr inbounds { ptr, ptr }, ptr %self1, i32 0, i32 0
  %x.0 = load ptr, ptr %5, align 8, !nonnull !4, !align !5, !noundef !4
  %6 = getelementptr inbounds { ptr, ptr }, ptr %self1, i32 0, i32 1
  %x.1 = load ptr, ptr %6, align 8, !nonnull !4, !align !7, !noundef !4
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_6, i32 0, i32 0
  store ptr %x.0, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %_6, i32 0, i32 1
  store ptr %x.1, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %_6, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8, !nonnull !4, !align !5, !noundef !4
  %11 = getelementptr inbounds { ptr, ptr }, ptr %_6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !nonnull !4, !align !7, !noundef !4
; call core::ops::function::FnOnce::call_once
  %_5 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h079b11a97ab86904E(ptr align 8 %10, ptr align 1 %12)
  %13 = getelementptr inbounds { i32, i32 }, ptr %_0, i32 0, i32 1
  store i32 %_5, ptr %13, align 4
  store i32 1, ptr %_0, align 4
  br label %bb6

bb6:                                              ; preds = %bb4, %bb2
  %14 = getelementptr inbounds { i32, i32 }, ptr %_0, i32 0, i32 0
  %15 = load i32, ptr %14, align 4, !range !8, !noundef !4
  %16 = getelementptr inbounds { i32, i32 }, ptr %_0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = insertvalue { i32, i32 } poison, i32 %15, 0
  %19 = insertvalue { i32, i32 } %18, i32 %17, 1
  ret { i32, i32 } %19

bb3:                                              ; No predecessors!
  unreachable
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h97b4d58c1b87c4eeE(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %_70 = alloca { ptr, i64 }, align 8
  %_69 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_56 = alloca ptr, align 8
  %_51 = alloca i64, align 8
  %_39 = alloca i64, align 8
  %_32 = alloca { ptr, i64 }, align 8
  %_31 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_20 = alloca i64, align 8
  %_16 = alloca { ptr, i64 }, align 8
  %self2 = alloca ptr, align 8
  %self1 = alloca ptr, align 8
  %_10 = alloca ptr, align 8
  %raw_ptr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %_6 = alloca { ptr, i64 }, align 8
  %_0 = alloca { ptr, i64 }, align 8
  %1 = icmp eq i64 %layout.1, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i64 %layout.0, ptr %_20, align 8
  %_21 = load i64, ptr %_20, align 8, !range !9, !noundef !4
  %_22 = icmp uge i64 %_21, 1
  %_23 = icmp ule i64 %_21, -9223372036854775808
  %_24 = and i1 %_22, %_23
  call void @llvm.assume(i1 %_24)
  %ptr = inttoptr i64 %_21 to ptr
  store ptr %ptr, ptr %data, align 8
  %_29 = load ptr, ptr %data, align 8, !noundef !4
  store ptr %_29, ptr %_32, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %_32, i32 0, i32 1
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_32, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8, !noundef !4
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_32, i32 0, i32 1
  %6 = load i64, ptr %5, align 8, !noundef !4
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_31, i32 0, i32 0
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_31, i32 0, i32 1
  store i64 %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, i64 }, ptr %_31, i32 0, i32 0
  %ptr.0 = load ptr, ptr %9, align 8, !noundef !4
  %10 = getelementptr inbounds { ptr, i64 }, ptr %_31, i32 0, i32 1
  %ptr.1 = load i64, ptr %10, align 8, !noundef !4
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_6, i32 0, i32 0
  store ptr %ptr.0, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_6, i32 0, i32 1
  store i64 %ptr.1, ptr %12, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %_6, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8, !nonnull !4, !noundef !4
  %15 = getelementptr inbounds { ptr, i64 }, ptr %_6, i32 0, i32 1
  %16 = load i64, ptr %15, align 8, !noundef !4
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 0
  store ptr %14, ptr %17, align 8
  %18 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 1
  store i64 %16, ptr %18, align 8
  br label %bb11

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4

bb11:                                             ; preds = %bb10, %bb8, %bb2
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8, !noundef !4
  %21 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = insertvalue { ptr, i64 } poison, ptr %20, 0
  %24 = insertvalue { ptr, i64 } %23, i64 %22, 1
  ret { ptr, i64 } %24

bb4:                                              ; preds = %bb1
  %25 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  store i8 %25, ptr %0, align 1
  %_44 = load i8, ptr %0, align 1, !noundef !4
  store i64 %layout.0, ptr %_51, align 8
  %_52 = load i64, ptr %_51, align 8, !range !9, !noundef !4
  %_53 = icmp uge i64 %_52, 1
  %_54 = icmp ule i64 %_52, -9223372036854775808
  %_55 = and i1 %_53, %_54
  call void @llvm.assume(i1 %_55)
  %26 = call ptr @__rust_alloc(i64 %layout.1, i64 %_52) #15
  store ptr %26, ptr %raw_ptr, align 8
  br label %bb5

bb3:                                              ; preds = %bb1
  store i64 %layout.0, ptr %_39, align 8
  %_40 = load i64, ptr %_39, align 8, !range !9, !noundef !4
  %_41 = icmp uge i64 %_40, 1
  %_42 = icmp ule i64 %_40, -9223372036854775808
  %_43 = and i1 %_41, %_42
  call void @llvm.assume(i1 %_43)
  %27 = call ptr @__rust_alloc_zeroed(i64 %layout.1, i64 %_40) #15
  store ptr %27, ptr %raw_ptr, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %ptr3 = load ptr, ptr %raw_ptr, align 8, !noundef !4
  %_57 = ptrtoint ptr %ptr3 to i64
  %28 = icmp eq i64 %_57, 0
  br i1 %28, label %bb15, label %bb16

bb15:                                             ; preds = %bb5
  store ptr null, ptr %self2, align 8
  br label %bb6

bb16:                                             ; preds = %bb5
  store ptr %ptr3, ptr %_56, align 8
  %29 = load ptr, ptr %_56, align 8, !nonnull !4, !noundef !4
  store ptr %29, ptr %self2, align 8
  br label %bb6

bb6:                                              ; preds = %bb16, %bb15
  %30 = load ptr, ptr %self2, align 8, !noundef !4
  %31 = ptrtoint ptr %30 to i64
  %32 = icmp eq i64 %31, 0
  %_61 = select i1 %32, i64 0, i64 1
  %33 = icmp eq i64 %_61, 0
  br i1 %33, label %bb17, label %bb18

bb17:                                             ; preds = %bb6
  store ptr null, ptr %self1, align 8
  br label %bb19

bb18:                                             ; preds = %bb6
  %v = load ptr, ptr %self2, align 8, !nonnull !4, !noundef !4
  store ptr %v, ptr %self1, align 8
  br label %bb19

bb19:                                             ; preds = %bb18, %bb17
  %34 = load ptr, ptr %self1, align 8, !noundef !4
  %35 = ptrtoint ptr %34 to i64
  %36 = icmp eq i64 %35, 0
  %_63 = select i1 %36, i64 1, i64 0
  %37 = icmp eq i64 %_63, 0
  br i1 %37, label %bb21, label %bb20

bb21:                                             ; preds = %bb19
  %v4 = load ptr, ptr %self1, align 8, !nonnull !4, !noundef !4
  store ptr %v4, ptr %_10, align 8
  br label %bb7

bb20:                                             ; preds = %bb19
  store ptr null, ptr %_10, align 8
  br label %bb7

bb7:                                              ; preds = %bb20, %bb21
  %38 = load ptr, ptr %_10, align 8, !noundef !4
  %39 = ptrtoint ptr %38 to i64
  %40 = icmp eq i64 %39, 0
  %_14 = select i1 %40, i64 1, i64 0
  %41 = icmp eq i64 %_14, 0
  br i1 %41, label %bb8, label %bb10

bb8:                                              ; preds = %bb7
  %ptr5 = load ptr, ptr %_10, align 8, !nonnull !4, !noundef !4
  store ptr %ptr5, ptr %_70, align 8
  %42 = getelementptr inbounds { ptr, i64 }, ptr %_70, i32 0, i32 1
  store i64 %layout.1, ptr %42, align 8
  %43 = getelementptr inbounds { ptr, i64 }, ptr %_70, i32 0, i32 0
  %44 = load ptr, ptr %43, align 8, !noundef !4
  %45 = getelementptr inbounds { ptr, i64 }, ptr %_70, i32 0, i32 1
  %46 = load i64, ptr %45, align 8, !noundef !4
  %47 = getelementptr inbounds { ptr, i64 }, ptr %_69, i32 0, i32 0
  store ptr %44, ptr %47, align 8
  %48 = getelementptr inbounds { ptr, i64 }, ptr %_69, i32 0, i32 1
  store i64 %46, ptr %48, align 8
  %49 = getelementptr inbounds { ptr, i64 }, ptr %_69, i32 0, i32 0
  %ptr.06 = load ptr, ptr %49, align 8, !noundef !4
  %50 = getelementptr inbounds { ptr, i64 }, ptr %_69, i32 0, i32 1
  %ptr.17 = load i64, ptr %50, align 8, !noundef !4
  %51 = getelementptr inbounds { ptr, i64 }, ptr %_16, i32 0, i32 0
  store ptr %ptr.06, ptr %51, align 8
  %52 = getelementptr inbounds { ptr, i64 }, ptr %_16, i32 0, i32 1
  store i64 %ptr.17, ptr %52, align 8
  %53 = getelementptr inbounds { ptr, i64 }, ptr %_16, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8, !nonnull !4, !noundef !4
  %55 = getelementptr inbounds { ptr, i64 }, ptr %_16, i32 0, i32 1
  %56 = load i64, ptr %55, align 8, !noundef !4
  %57 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 0
  store ptr %54, ptr %57, align 8
  %58 = getelementptr inbounds { ptr, i64 }, ptr %_0, i32 0, i32 1
  store i64 %56, ptr %58, align 8
  br label %bb11

bb10:                                             ; preds = %bb7
  store ptr null, ptr %_0, align 8
  br label %bb11

bb9:                                              ; No predecessors!
  unreachable
}

; alloc::boxed::Box<T,A>::new_uninit_in
; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hcaed9b163fdb28fdE"(ptr align 1 %alloc) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32 }, align 8
  %_3 = alloca { ptr, ptr }, align 8
  %layout = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  store i64 24, ptr %1, align 8
  store i64 8, ptr %layout, align 8
; invoke alloc::boxed::Box<T,A>::try_new_uninit_in
  %2 = invoke { ptr, ptr } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$17try_new_uninit_in17h927401d3c8fac788E"(ptr align 1 %alloc)
          to label %bb1 unwind label %cleanup

bb7:                                              ; preds = %cleanup
  br i1 false, label %bb6, label %bb5

cleanup:                                          ; preds = %bb2, %start
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  %6 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %5, ptr %7, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store { ptr, ptr } %2, ptr %_3, align 8
  %8 = load ptr, ptr %_3, align 8, !noundef !4
  %9 = ptrtoint ptr %8 to i64
  %10 = icmp eq i64 %9, 0
  %_5 = select i1 %10, i64 1, i64 0
  %11 = icmp eq i64 %_5, 0
  br i1 %11, label %bb4, label %bb2

bb4:                                              ; preds = %bb1
  %12 = getelementptr inbounds { ptr, ptr }, ptr %_3, i32 0, i32 0
  %m.0 = load ptr, ptr %12, align 8, !nonnull !4, !align !5, !noundef !4
  %13 = getelementptr inbounds { ptr, ptr }, ptr %_3, i32 0, i32 1
  %m.1 = load ptr, ptr %13, align 8, !nonnull !4, !align !7, !noundef !4
  %14 = insertvalue { ptr, ptr } poison, ptr %m.0, 0
  %15 = insertvalue { ptr, ptr } %14, ptr %m.1, 1
  ret { ptr, ptr } %15

bb2:                                              ; preds = %bb1
  %16 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 0
  %17 = load i64, ptr %16, align 8, !range !9, !noundef !4
  %18 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  %19 = load i64, ptr %18, align 8, !noundef !4
; invoke alloc::alloc::handle_alloc_error
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h047bf044e422c00fE(i64 %17, i64 %19) #12
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb2
  unreachable

bb3:                                              ; No predecessors!
  unreachable

bb5:                                              ; preds = %bb6, %bb7
  %20 = load ptr, ptr %0, align 8, !noundef !4
  %21 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 8, !noundef !4
  %23 = insertvalue { ptr, i32 } poison, ptr %20, 0
  %24 = insertvalue { ptr, i32 } %23, i32 %22, 1
  resume { ptr, i32 } %24

bb6:                                              ; preds = %bb7
  br label %bb5
}

; alloc::boxed::Box<T,A>::try_new_uninit_in
; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$17try_new_uninit_in17h927401d3c8fac788E"(ptr align 1 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = alloca { ptr, i32 }, align 8
  %_31 = alloca ptr, align 8
  %_30 = alloca ptr, align 8
  %_10 = alloca { ptr, ptr }, align 8
  %self = alloca { ptr, i64 }, align 8
  %_5 = alloca { ptr, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %ptr = alloca ptr, align 8
  %_0 = alloca { ptr, ptr }, align 8
  %alloc = alloca ptr, align 8
  store ptr %0, ptr %alloc, align 8
  br i1 false, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  store i64 24, ptr %2, align 8
  store i64 8, ptr %layout, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 0
  %4 = load i64, ptr %3, align 8, !range !9, !noundef !4
  %5 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  %6 = load i64, ptr %5, align 8, !noundef !4
; invoke <&A as core::alloc::Allocator>::allocate
  %7 = invoke { ptr, i64 } @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$8allocate17h38300ef04cd26512E"(ptr align 8 %alloc, i64 %4, i64 %6)
          to label %bb3 unwind label %cleanup

bb1:                                              ; preds = %start
  store ptr inttoptr (i64 8 to ptr), ptr %ptr, align 8
  br label %bb8

bb12:                                             ; preds = %cleanup
  br i1 true, label %bb11, label %bb10

cleanup:                                          ; preds = %bb2
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  %11 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  store i32 %10, ptr %12, align 8
  br label %bb12

bb3:                                              ; preds = %bb2
  store { ptr, i64 } %7, ptr %self, align 8
  %13 = load ptr, ptr %self, align 8, !noundef !4
  %14 = ptrtoint ptr %13 to i64
  %15 = icmp eq i64 %14, 0
  %_22 = select i1 %15, i64 1, i64 0
  %16 = icmp eq i64 %_22, 0
  br i1 %16, label %bb14, label %bb13

bb14:                                             ; preds = %bb3
  %17 = getelementptr inbounds { ptr, i64 }, ptr %self, i32 0, i32 0
  %v.0 = load ptr, ptr %17, align 8, !nonnull !4, !noundef !4
  %18 = getelementptr inbounds { ptr, i64 }, ptr %self, i32 0, i32 1
  %v.1 = load i64, ptr %18, align 8, !noundef !4
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_5, i32 0, i32 0
  store ptr %v.0, ptr %19, align 8
  %20 = getelementptr inbounds { ptr, i64 }, ptr %_5, i32 0, i32 1
  store i64 %v.1, ptr %20, align 8
  br label %bb4

bb13:                                             ; preds = %bb3
  store ptr null, ptr %_5, align 8
  br label %bb4

bb4:                                              ; preds = %bb13, %bb14
  %21 = load ptr, ptr %_5, align 8, !noundef !4
  %22 = ptrtoint ptr %21 to i64
  %23 = icmp eq i64 %22, 0
  %_8 = select i1 %23, i64 1, i64 0
  %24 = icmp eq i64 %_8, 0
  br i1 %24, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %25 = getelementptr inbounds { ptr, i64 }, ptr %_5, i32 0, i32 0
  %val.0 = load ptr, ptr %25, align 8, !nonnull !4, !noundef !4
  %26 = getelementptr inbounds { ptr, i64 }, ptr %_5, i32 0, i32 1
  %val.1 = load i64, ptr %26, align 8, !noundef !4
  store ptr %val.0, ptr %ptr, align 8
  br label %bb8

bb7:                                              ; preds = %bb4
  store ptr null, ptr %_0, align 8
  br label %bb9

bb8:                                              ; preds = %bb1, %bb5
  %self1 = load ptr, ptr %ptr, align 8, !nonnull !4, !noundef !4
  %alloc2 = load ptr, ptr %alloc, align 8, !nonnull !4, !align !7, !noundef !4
  store ptr %self1, ptr %_31, align 8
  %27 = load ptr, ptr %_31, align 8, !nonnull !4, !noundef !4
  store ptr %27, ptr %_30, align 8
  %28 = load ptr, ptr %_30, align 8, !nonnull !4, !noundef !4
  store ptr %28, ptr %_10, align 8
  %29 = getelementptr inbounds { ptr, ptr }, ptr %_10, i32 0, i32 1
  store ptr %alloc2, ptr %29, align 8
  %30 = getelementptr inbounds { ptr, ptr }, ptr %_10, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8, !nonnull !4, !align !5, !noundef !4
  %32 = getelementptr inbounds { ptr, ptr }, ptr %_10, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !nonnull !4, !align !7, !noundef !4
  %34 = getelementptr inbounds { ptr, ptr }, ptr %_0, i32 0, i32 0
  store ptr %31, ptr %34, align 8
  %35 = getelementptr inbounds { ptr, ptr }, ptr %_0, i32 0, i32 1
  store ptr %33, ptr %35, align 8
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %36 = getelementptr inbounds { ptr, ptr }, ptr %_0, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8, !align !5, !noundef !4
  %38 = getelementptr inbounds { ptr, ptr }, ptr %_0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = insertvalue { ptr, ptr } poison, ptr %37, 0
  %41 = insertvalue { ptr, ptr } %40, ptr %39, 1
  ret { ptr, ptr } %41

bb6:                                              ; No predecessors!
  unreachable

bb10:                                             ; preds = %bb11, %bb12
  %42 = load ptr, ptr %1, align 8, !noundef !4
  %43 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 8, !noundef !4
  %45 = insertvalue { ptr, i32 } poison, ptr %42, 0
  %46 = insertvalue { ptr, i32 } %45, i32 %44, 1
  resume { ptr, i32 } %46

bb11:                                             ; preds = %bb12
  br label %bb10
}

; alloc::boxed::Box<T,A>::new_in
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$6new_in17h57b36ee24a72d573E"(ptr align 8 %x, ptr align 1 %alloc) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32 }, align 8
  %_25 = alloca ptr, align 8
  %_24 = alloca ptr, align 8
  %leaked = alloca ptr, align 8
  %_17 = alloca { ptr, ptr }, align 8
  %val = alloca %"alloc::collections::linked_list::Node<i32>", align 8
  %_0 = alloca { ptr, ptr }, align 8
; invoke alloc::boxed::Box<T,A>::new_uninit_in
  %1 = invoke { ptr, ptr } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hcaed9b163fdb28fdE"(ptr align 1 %alloc)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br i1 true, label %bb3, label %bb2

cleanup:                                          ; preds = %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  %5 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 0
  store ptr %3, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %4, ptr %6, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %boxed.0 = extractvalue { ptr, ptr } %1, 0
  %boxed.1 = extractvalue { ptr, ptr } %1, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val, ptr align 8 %x, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %boxed.0, ptr align 8 %val, i64 24, i1 false)
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_17, i32 0, i32 0
  store ptr %boxed.0, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %_17, i32 0, i32 1
  store ptr %boxed.1, ptr %8, align 8
  %self = load ptr, ptr %_17, align 8, !nonnull !4, !noundef !4
  store ptr %self, ptr %leaked, align 8
  %_23 = load ptr, ptr %leaked, align 8, !noundef !4
  store ptr %_23, ptr %_25, align 8
  %9 = load ptr, ptr %_25, align 8, !nonnull !4, !noundef !4
  store ptr %9, ptr %_24, align 8
  %10 = load ptr, ptr %_24, align 8, !nonnull !4, !noundef !4
  store ptr %10, ptr %_0, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %_0, i32 0, i32 1
  store ptr %boxed.1, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, ptr }, ptr %_0, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8, !nonnull !4, !align !5, !noundef !4
  %14 = getelementptr inbounds { ptr, ptr }, ptr %_0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !nonnull !4, !align !7, !noundef !4
  %16 = insertvalue { ptr, ptr } poison, ptr %13, 0
  %17 = insertvalue { ptr, ptr } %16, ptr %15, 1
  ret { ptr, ptr } %17

bb2:                                              ; preds = %bb3, %bb4
  %18 = load ptr, ptr %0, align 8, !noundef !4
  %19 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 8, !noundef !4
  %21 = insertvalue { ptr, i32 } poison, ptr %18, 0
  %22 = insertvalue { ptr, i32 } %21, i32 %20, 1
  resume { ptr, i32 } %22

bb3:                                              ; preds = %bb4
  br label %bb2
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd6097d1a08509458E"(ptr align 1 %self, ptr %ptr, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %_11 = alloca i64, align 8
  %0 = icmp eq i64 %layout.1, 0
  br i1 %0, label %bb2, label %bb1

bb2:                                              ; preds = %start
  br label %bb3

bb1:                                              ; preds = %start
  store i64 %layout.0, ptr %_11, align 8
  %_12 = load i64, ptr %_11, align 8, !range !9, !noundef !4
  %_13 = icmp uge i64 %_12, 1
  %_14 = icmp ule i64 %_12, -9223372036854775808
  %_15 = and i1 %_13, %_14
  call void @llvm.assume(i1 %_15)
  call void @__rust_dealloc(ptr %ptr, i64 %layout.1, i64 %_12) #15
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  ret void
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h31af3c6556fbebeaE"(ptr align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h97b4d58c1b87c4eeE(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %_0.0 = extractvalue { ptr, i64 } %0, 0
  %_0.1 = extractvalue { ptr, i64 } %0, 1
  %1 = insertvalue { ptr, i64 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_0.1, 1
  ret { ptr, i64 } %2
}

; <alloc::boxed::Box<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7ff81fbcb6d7549E"(ptr align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = alloca i64, align 8
  %unique = alloca ptr, align 8
  %self1 = alloca ptr, align 8
  %_9 = alloca ptr, align 8
  %layout = alloca { i64, i64 }, align 8
  %ptr = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  store i64 24, ptr %1, align 8
  %_12 = load i64, ptr %1, align 8, !noundef !4
  store i64 8, ptr %0, align 8
  %_13 = load i64, ptr %0, align 8, !noundef !4
  %2 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  store i64 %_12, ptr %2, align 8
  store i64 %_13, ptr %layout, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  %_5 = load i64, ptr %3, align 8, !noundef !4
  %4 = icmp eq i64 %_5, 0
  br i1 %4, label %bb3, label %bb1

bb3:                                              ; preds = %start
  br label %bb4

bb1:                                              ; preds = %start
  %_8 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  store ptr %ptr, ptr %self1, align 8
  %_24 = load ptr, ptr %self1, align 8, !noundef !4
  store ptr %_24, ptr %unique, align 8
  %_29 = load ptr, ptr %unique, align 8, !noundef !4
  store ptr %_29, ptr %_9, align 8
  %5 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 0
  %_10.0 = load i64, ptr %5, align 8, !range !9, !noundef !4
  %6 = getelementptr inbounds { i64, i64 }, ptr %layout, i32 0, i32 1
  %_10.1 = load i64, ptr %6, align 8, !noundef !4
  %7 = load ptr, ptr %_9, align 8, !nonnull !4, !noundef !4
; call <&A as core::alloc::Allocator>::deallocate
  call void @"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8ad453254201644E"(ptr align 8 %_8, ptr %7, i64 %_10.0, i64 %_10.1)
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  ret void
}

; <alloc::collections::linked_list::LinkedList<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0ad74bac608bc01E"(ptr align 8 %self) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32 }, align 8
  %_4 = alloca { ptr, ptr }, align 8
  %guard = alloca ptr, align 8
  store ptr %self, ptr %guard, align 8
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %_6 = load ptr, ptr %guard, align 8, !nonnull !4, !align !5, !noundef !4
; invoke alloc::collections::linked_list::LinkedList<T,A>::pop_front_node
  %1 = invoke { ptr, ptr } @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$14pop_front_node17h33622d13b593e48aE"(ptr align 8 %_6)
          to label %bb2 unwind label %cleanup

bb9:                                              ; preds = %cleanup
  br i1 true, label %bb8, label %bb7

cleanup:                                          ; preds = %bb5, %bb3, %bb1
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  %5 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 0
  store ptr %3, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %4, ptr %6, align 8
  br label %bb9

bb2:                                              ; preds = %bb1
  store { ptr, ptr } %1, ptr %_4, align 8
  %7 = load ptr, ptr %_4, align 8, !noundef !4
  %8 = ptrtoint ptr %7 to i64
  %9 = icmp eq i64 %8, 0
  %_8 = select i1 %9, i64 0, i64 1
  %10 = icmp eq i64 %_8, 1
  br i1 %10, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
; invoke core::ptr::drop_in_place<core::option::Option<alloc::boxed::Box<alloc::collections::linked_list::Node<i32>,&alloc::alloc::Global>>>
  invoke void @"_ZN4core3ptr149drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$alloc..collections..linked_list..Node$LT$i32$GT$$C$$RF$alloc..alloc..Global$GT$$GT$$GT$17h478b84e330c439fdE"(ptr align 8 %_4)
          to label %bb4 unwind label %cleanup

bb5:                                              ; preds = %bb2
; invoke core::ptr::drop_in_place<core::option::Option<alloc::boxed::Box<alloc::collections::linked_list::Node<i32>,&alloc::alloc::Global>>>
  invoke void @"_ZN4core3ptr149drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$alloc..collections..linked_list..Node$LT$i32$GT$$C$$RF$alloc..alloc..Global$GT$$GT$$GT$17h478b84e330c439fdE"(ptr align 8 %_4)
          to label %bb6 unwind label %cleanup

bb4:                                              ; preds = %bb3
  br label %bb1

bb6:                                              ; preds = %bb5
  ret void

bb7:                                              ; preds = %bb8, %bb9
  %11 = load ptr, ptr %0, align 8, !noundef !4
  %12 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 8, !noundef !4
  %14 = insertvalue { ptr, i32 } poison, ptr %11, 0
  %15 = insertvalue { ptr, i32 } %14, i32 %13, 1
  resume { ptr, i32 } %15

bb8:                                              ; preds = %bb9
; invoke core::ptr::drop_in_place<<alloc::collections::linked_list::LinkedList<T,A> as core::ops::drop::Drop>::drop::DropGuard<i32,alloc::alloc::Global>>
  invoke void @"_ZN4core3ptr169drop_in_place$LT$$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$i32$C$alloc..alloc..Global$GT$$GT$17hbf1e1bdad7bbb0acE"(ptr align 8 %guard) #13
          to label %bb7 unwind label %terminate

terminate:                                        ; preds = %bb8
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %17 = extractvalue { ptr, i32 } %16, 0
  %18 = extractvalue { ptr, i32 } %16, 1
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17hceade526831b1e89E() #14
  unreachable
}

; llist::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN5llist4main17hfb65efd565000edeE() unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_0.i = alloca { ptr, ptr }, align 8
  %0 = alloca { ptr, i32 }, align 8
  %_22 = alloca i8, align 1
  %_18 = alloca [1 x { ptr, ptr }], align 8
  %_14 = alloca %"core::fmt::Arguments<'_>", align 8
  %item = alloca i32, align 4
  %_9 = alloca { i32, i32 }, align 4
  %iter = alloca %"alloc::collections::linked_list::IntoIter<i32>", align 8
  %_7 = alloca %"alloc::collections::linked_list::LinkedList<i32>", align 8
  %_6 = alloca %"alloc::collections::linked_list::IntoIter<i32>", align 8
  %list = alloca %"alloc::collections::linked_list::LinkedList<i32>", align 8
  store i8 0, ptr %_22, align 1
  store i8 1, ptr %_22, align 1
; call alloc::collections::linked_list::LinkedList<T>::new
  call void @"_ZN5alloc11collections11linked_list19LinkedList$LT$T$GT$3new17hc910096db0551490E"(ptr sret(%"alloc::collections::linked_list::LinkedList<i32>") align 8 %list)
; invoke alloc::collections::linked_list::LinkedList<T,A>::push_front
  invoke void @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$10push_front17hb911447b1531e14aE"(ptr align 8 %list, i32 42)
          to label %bb2 unwind label %cleanup

bb16:                                             ; preds = %bb13, %cleanup
  %1 = load i8, ptr %_22, align 1, !range !10, !noundef !4
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb15, label %bb14

cleanup:                                          ; preds = %bb9, %bb3, %bb2, %start
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  %6 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %5, ptr %7, align 8
  br label %bb16

bb2:                                              ; preds = %start
; invoke alloc::collections::linked_list::LinkedList<T,A>::push_front
  invoke void @"_ZN5alloc11collections11linked_list23LinkedList$LT$T$C$A$GT$10push_front17hb911447b1531e14aE"(ptr align 8 %list, i32 100)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i8 0, ptr %_22, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_7, ptr align 8 %list, i64 24, i1 false)
; invoke <alloc::collections::linked_list::LinkedList<T,A> as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN118_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h81f893f94b2a23eeE"(ptr sret(%"alloc::collections::linked_list::IntoIter<i32>") align 8 %_6, ptr align 8 %_7)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_6, i64 24, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb17, %bb4
; invoke <alloc::collections::linked_list::IntoIter<T,A> as core::iter::traits::iterator::Iterator>::next
  %8 = invoke { i32, i32 } @"_ZN113_$LT$alloc..collections..linked_list..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb8fcf2d7f024910eE"(ptr align 8 %iter)
          to label %bb6 unwind label %cleanup1

bb13:                                             ; preds = %cleanup1
; invoke core::ptr::drop_in_place<alloc::collections::linked_list::IntoIter<i32>>
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..collections..linked_list..IntoIter$LT$i32$GT$$GT$17hb423505871162e31E"(ptr align 8 %iter) #13
          to label %bb16 unwind label %terminate

cleanup1:                                         ; preds = %bb11, %bb10, %bb5
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = extractvalue { ptr, i32 } %9, 1
  %12 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 0
  store ptr %10, ptr %12, align 8
  %13 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %11, ptr %13, align 8
  br label %bb13

bb6:                                              ; preds = %bb5
  store { i32, i32 } %8, ptr %_9, align 4
  %14 = load i32, ptr %_9, align 4, !range !8, !noundef !4
  %_11 = zext i32 %14 to i64
  %15 = icmp eq i64 %_11, 0
  br i1 %15, label %bb9, label %bb7

bb9:                                              ; preds = %bb6
; invoke core::ptr::drop_in_place<alloc::collections::linked_list::IntoIter<i32>>
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..collections..linked_list..IntoIter$LT$i32$GT$$GT$17hb423505871162e31E"(ptr align 8 %iter)
          to label %bb12 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %16 = getelementptr inbounds { i32, i32 }, ptr %_9, i32 0, i32 1
  %17 = load i32, ptr %16, align 4, !noundef !4
  store i32 %17, ptr %item, align 4
  store ptr %item, ptr %_0.i, align 8
  %18 = getelementptr inbounds { ptr, ptr }, ptr %_0.i, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h410bb60a6a051641E", ptr %18, align 8
  %19 = load ptr, ptr %_0.i, align 8, !nonnull !4, !align !7, !noundef !4
  %20 = getelementptr inbounds { ptr, ptr }, ptr %_0.i, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !nonnull !4, !noundef !4
  %22 = insertvalue { ptr, ptr } poison, ptr %19, 0
  %23 = insertvalue { ptr, ptr } %22, ptr %21, 1
  br label %bb10

bb12:                                             ; preds = %bb9
  store i8 0, ptr %_22, align 1
  ret void

bb10:                                             ; preds = %bb7
  %_19.0 = extractvalue { ptr, ptr } %23, 0
  %_19.1 = extractvalue { ptr, ptr } %23, 1
  %24 = getelementptr inbounds [1 x { ptr, ptr }], ptr %_18, i64 0, i64 0
  %25 = getelementptr inbounds { ptr, ptr }, ptr %24, i32 0, i32 0
  store ptr %_19.0, ptr %25, align 8
  %26 = getelementptr inbounds { ptr, ptr }, ptr %24, i32 0, i32 1
  store ptr %_19.1, ptr %26, align 8
; invoke core::fmt::Arguments::new_v1
  invoke void @_ZN4core3fmt9Arguments6new_v117h538a103da8ef4bc5E(ptr sret(%"core::fmt::Arguments<'_>") align 8 %_14, ptr align 8 @alloc_0d4c285ce6bc80ebb4e1a5ae64843c59, i64 2, ptr align 8 %_18, i64 1)
          to label %bb11 unwind label %cleanup1

bb11:                                             ; preds = %bb10
; invoke std::io::stdio::_print
  invoke void @_ZN3std2io5stdio6_print17h63a00216c7cec9b0E(ptr align 8 %_14)
          to label %bb17 unwind label %cleanup1

bb17:                                             ; preds = %bb11
  br label %bb5

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb15, %bb13
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %28 = extractvalue { ptr, i32 } %27, 0
  %29 = extractvalue { ptr, i32 } %27, 1
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17hceade526831b1e89E() #14
  unreachable

bb14:                                             ; preds = %bb15, %bb16
  %30 = load ptr, ptr %0, align 8, !noundef !4
  %31 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %32 = load i32, ptr %31, align 8, !noundef !4
  %33 = insertvalue { ptr, i32 } poison, ptr %30, 0
  %34 = insertvalue { ptr, i32 } %33, i32 %32, 1
  resume { ptr, i32 } %34

bb15:                                             ; preds = %bb16
; invoke core::ptr::drop_in_place<alloc::collections::linked_list::LinkedList<i32>>
  invoke void @"_ZN4core3ptr75drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$i32$GT$$GT$17ha9da81d572ffee31E"(ptr align 8 %list) #13
          to label %bb14 unwind label %terminate
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h2d6a60ec944b523dE(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #1

; core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h410bb60a6a051641E"(ptr align 4, ptr align 8) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h452a83e54ecd764eE(ptr align 8, ptr align 8) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #1

; core::panicking::panic_in_cleanup
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17hceade526831b1e89E() unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #8

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h047bf044e422c00fE(i64, i64) unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #10

; std::io::stdio::_print
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h63a00216c7cec9b0E(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #11 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @_ZN3std2rt10lang_start17h3b6313d191653615E(ptr @_ZN5llist4main17hfb65efd565000edeE, i64 %2, ptr %1, i8 0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nonlazybind "target-cpu"="x86-64" }
attributes #12 = { noreturn }
attributes #13 = { noinline }
attributes #14 = { noinline noreturn nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.74.1 (a28077b28 2023-12-04)"}
!4 = !{}
!5 = !{i64 8}
!6 = !{i32 2305618}
!7 = !{i64 1}
!8 = !{i32 0, i32 2}
!9 = !{i64 1, i64 -9223372036854775807}
!10 = !{i8 0, i8 2}
