; ModuleID = '<stdin>'
source_filename = "/tmp/tmp18i0pwtp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"0\0A0\0A2\0A0\0A0\0A2\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"4\0A1\0A0\0A1\0A1\0A3\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"3\0A0\0A1\0A1\0A1\0A0\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"5\0A0\0A0\0A0\0A0\0A1\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"1\0A1\0A1\0A0\0A0\0A0\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"7\0A0\0A1\0A0\0A1\0A0\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"4\0A1\0A1\0A0\0A1\0A4\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"3\0A1\0A0\0A0\0A1\0A4\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  switch i32 %0, label %if.else29 [
    i32 42, label %if.then
    i32 468, label %if.then3
    i32 335, label %if.then7
    i32 501, label %if.then11
    i32 170, label %if.then15
    i32 725, label %if.then19
    i32 479, label %if.then23
    i32 359, label %if.then27
  ]

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %if.end37

if.then3:                                         ; preds = %entry
  %call4 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end37

if.then7:                                         ; preds = %entry
  %call8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end37

if.then11:                                        ; preds = %entry
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %if.end37

if.then15:                                        ; preds = %entry
  %call16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5)
  br label %if.end37

if.then19:                                        ; preds = %entry
  %call20 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6)
  br label %if.end37

if.then23:                                        ; preds = %entry
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7)
  br label %if.end37

if.then27:                                        ; preds = %entry
  %call28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8)
  br label %if.end37

if.else29:                                        ; preds = %entry
  %putchar = call i32 @putchar(i32 74)
  br label %if.end37

if.end37:                                         ; preds = %if.then3, %if.then11, %if.then19, %if.then27, %if.else29, %if.then23, %if.then15, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
