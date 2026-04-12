; ModuleID = '<stdin>'
source_filename = "/tmp/tmpe82ipm0d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %div12 = udiv i32 %0, 100
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div12)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %1, 100
  store i32 %rem, ptr %n, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = phi i32 [ %.pr, %if.else ], [ %rem, %if.then ]
  %cmp3 = icmp sgt i32 %2, 49
  br i1 %cmp3, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.end
  %div513 = udiv i32 %2, 50
  %call6 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div513)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %rem7 = srem i32 %3, 50
  store i32 %rem7, ptr %n, align 4, !tbaa !5
  br label %if.end10

if.else8:                                         ; preds = %if.end
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %.pr1 = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then4
  %4 = phi i32 [ %.pr1, %if.else8 ], [ %rem7, %if.then4 ]
  %cmp11 = icmp sgt i32 %4, 19
  br i1 %cmp11, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.end10
  %div1314 = udiv i32 %4, 20
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div1314)
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %rem15 = srem i32 %5, 20
  store i32 %rem15, ptr %n, align 4, !tbaa !5
  br label %if.end18

if.else16:                                        ; preds = %if.end10
  %puts18 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %.pr2 = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then12
  %6 = phi i32 [ %.pr2, %if.else16 ], [ %rem15, %if.then12 ]
  %cmp19 = icmp sgt i32 %6, 9
  br i1 %cmp19, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.end18
  %div2115 = udiv i32 %6, 10
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div2115)
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %rem23 = srem i32 %7, 10
  store i32 %rem23, ptr %n, align 4, !tbaa !5
  br label %if.end26

if.else24:                                        ; preds = %if.end18
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %.pr3 = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then20
  %8 = phi i32 [ %.pr3, %if.else24 ], [ %rem23, %if.then20 ]
  %cmp27 = icmp sgt i32 %8, 4
  br i1 %cmp27, label %if.then28, label %if.else32

if.then28:                                        ; preds = %if.end26
  %div2916 = udiv i32 %8, 5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div2916)
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %rem31 = srem i32 %9, 5
  store i32 %rem31, ptr %n, align 4, !tbaa !5
  br label %if.end34

if.else32:                                        ; preds = %if.end26
  %puts20 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then28
  %10 = phi i32 [ %.pre, %if.else32 ], [ %rem31, %if.then28 ]
  %call35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %10)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nofree nounwind willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
