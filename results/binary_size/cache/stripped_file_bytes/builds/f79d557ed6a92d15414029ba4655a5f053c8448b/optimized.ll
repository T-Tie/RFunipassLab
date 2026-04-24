; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbxf1ip1v.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %div14 = udiv i32 %0, 100
  %rem15 = urem i32 %0, 100
  store i32 %rem15, ptr %n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.pr = phi i32 [ %rem15, %if.then ], [ %0, %entry ]
  %a.0 = phi i32 [ %div14, %if.then ], [ 0, %entry ]
  %cmp1 = icmp sgt i32 %.pr, 49
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %rem416 = add nsw i32 %.pr, -50
  store i32 %rem416, ptr %n, align 4, !tbaa !5
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then2
  %.pr7 = phi i32 [ %rem416, %if.then2 ], [ %.pr, %if.end ]
  %b.0 = phi i32 [ 1, %if.then2 ], [ 0, %if.end ]
  %cmp6 = icmp sgt i32 %.pr7, 19
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end5
  %div817.lhs.trunc = trunc i32 %.pr7 to i8
  %div81723 = udiv i8 %div817.lhs.trunc, 20
  %div817.zext = zext nneg i8 %div81723 to i32
  %rem918.lhs.trunc = trunc i32 %.pr7 to i8
  %rem91824 = urem i8 %rem918.lhs.trunc, 20
  %rem918.zext = zext nneg i8 %rem91824 to i32
  store i32 %rem918.zext, ptr %n, align 4, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %if.end5, %if.then7
  %.pr8 = phi i32 [ %rem918.zext, %if.then7 ], [ %.pr7, %if.end5 ]
  %c.0 = phi i32 [ %div817.zext, %if.then7 ], [ 0, %if.end5 ]
  %cmp11 = icmp sgt i32 %.pr8, 9
  %rem1420 = add i32 %.pr8, -10
  %.pr9 = select i1 %cmp11, i32 %rem1420, i32 %.pr8
  %cmp16 = icmp sgt i32 %.pr9, 4
  %rem1922 = add i32 %.pr9, -5
  %1 = select i1 %cmp16, i32 %rem1922, i32 %.pr9
  %2 = or i1 %cmp11, %cmp16
  br i1 %2, label %3, label %4

3:                                                ; preds = %if.end10
  store i32 %1, ptr %n, align 4, !tbaa !5
  br label %4

4:                                                ; preds = %if.end10, %3
  %e.013 = zext i1 %cmp16 to i32
  %d.0 = zext i1 %cmp11 to i32
  %spec.select = call i32 @llvm.smax.i32(i32 %1, i32 noundef 0)
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %a.0, i32 noundef %b.0, i32 noundef %c.0, i32 noundef %d.0, i32 noundef %e.013, i32 noundef %spec.select)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
