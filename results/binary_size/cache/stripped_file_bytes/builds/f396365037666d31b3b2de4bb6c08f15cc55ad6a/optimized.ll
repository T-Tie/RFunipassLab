; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1526bzz6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %money = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %money) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %money)
  %0 = load i32, ptr %money, align 4, !tbaa !5
  %rem = srem i32 %0, 100
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end45, label %if.end

if.end:                                           ; preds = %entry
  %div2.lhs.trunc = trunc nsw i32 %rem to i8
  %div242 = sdiv i8 %div2.lhs.trunc, 50
  %div2.sext = sext i8 %div242 to i32
  %rem443 = srem i8 %div2.lhs.trunc, 50
  %cmp5.not = icmp eq i8 %rem443, 0
  br i1 %cmp5.not, label %if.end45, label %if.end10

if.end10:                                         ; preds = %if.end
  %div944 = sdiv i8 %rem443, 20
  %div9.sext = sext i8 %div944 to i32
  %rem1345 = srem i8 %rem443, 20
  %cmp14.not = icmp eq i8 %rem1345, 0
  br i1 %cmp14.not, label %if.end45, label %if.end20

if.end20:                                         ; preds = %if.end10
  %div1946 = sdiv i8 %rem1345, 10
  %div19.sext = sext i8 %div1946 to i32
  %rem2447 = srem i8 %rem1345, 10
  %cmp25.not = icmp eq i8 %rem2447, 0
  br i1 %cmp25.not, label %if.end45, label %if.end32

if.end32:                                         ; preds = %if.end20
  %div3148 = sdiv i8 %rem2447, 5
  %div31.sext = sext i8 %div3148 to i32
  %rem3749 = srem i8 %rem2447, 5
  %rem37.sext = sext i8 %rem3749 to i32
  br label %if.end45

if.end45:                                         ; preds = %if.end32, %entry, %if.end, %if.end10, %if.end20
  %m5.041 = phi i32 [ 0, %if.end20 ], [ 0, %if.end10 ], [ 0, %if.end ], [ 0, %entry ], [ %div31.sext, %if.end32 ]
  %m3.0192740 = phi i32 [ %div9.sext, %if.end20 ], [ %div9.sext, %if.end10 ], [ 0, %if.end ], [ 0, %entry ], [ %div9.sext, %if.end32 ]
  %m2.011182839 = phi i32 [ %div2.sext, %if.end20 ], [ %div2.sext, %if.end10 ], [ %div2.sext, %if.end ], [ 0, %entry ], [ %div2.sext, %if.end32 ]
  %m4.02938 = phi i32 [ %div19.sext, %if.end20 ], [ 0, %if.end10 ], [ 0, %if.end ], [ 0, %entry ], [ %div19.sext, %if.end32 ]
  %m6.0 = phi i32 [ 0, %if.end20 ], [ 0, %if.end10 ], [ 0, %if.end ], [ 0, %entry ], [ %rem37.sext, %if.end32 ]
  %div = sdiv i32 %0, 100
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div)
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %m2.011182839)
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %m3.0192740)
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %m4.02938)
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %m5.041)
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %m6.0)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %money) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind willreturn }
attributes #4 = { nounwind }

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
