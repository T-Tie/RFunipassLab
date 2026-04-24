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
  %div9 = udiv i32 %0, 100
  %rem10 = urem i32 %0, 100
  store i32 %rem10, ptr %n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %rem10, %if.then ], [ %0, %entry ]
  %a.0 = phi i32 [ %div9, %if.then ], [ 0, %entry ]
  %cmp1 = icmp sgt i32 %1, 49
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %rem4 = add nsw i32 %1, -50
  store i32 %rem4, ptr %n, align 4, !tbaa !5
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then2
  %2 = phi i32 [ %rem4, %if.then2 ], [ %1, %if.end ]
  %b.0 = phi i32 [ 1, %if.then2 ], [ 0, %if.end ]
  %cmp6 = icmp sgt i32 %2, 19
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end5
  %div8.lhs.trunc = trunc nuw nsw i32 %2 to i8
  %div811 = udiv i8 %div8.lhs.trunc, 20
  %div8.zext = zext nneg i8 %div811 to i32
  %rem912 = urem i8 %div8.lhs.trunc, 20
  %rem9.zext = zext nneg i8 %rem912 to i32
  store i32 %rem9.zext, ptr %n, align 4, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %if.end5, %if.then7
  %3 = phi i32 [ %rem9.zext, %if.then7 ], [ %2, %if.end5 ]
  %c.0 = phi i32 [ %div8.zext, %if.then7 ], [ 0, %if.end5 ]
  %cmp11 = icmp sgt i32 %3, 9
  %rem14 = add i32 %3, -10
  %4 = select i1 %cmp11, i32 %rem14, i32 %3
  %cmp16 = icmp sgt i32 %4, 4
  %rem19 = add i32 %4, -5
  %5 = select i1 %cmp16, i32 %rem19, i32 %4
  %6 = or i1 %cmp11, %cmp16
  br i1 %6, label %7, label %8

7:                                                ; preds = %if.end10
  store i32 %5, ptr %n, align 4, !tbaa !5
  br label %8

8:                                                ; preds = %if.end10, %7
  %e.07 = zext i1 %cmp16 to i32
  %d.0 = zext i1 %cmp11 to i32
  %spec.select = call i32 @llvm.smax.i32(i32 %5, i32 noundef 0)
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %a.0, i32 noundef %b.0, i32 noundef %c.0, i32 noundef %d.0, i32 noundef %e.07, i32 noundef %spec.select)
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
