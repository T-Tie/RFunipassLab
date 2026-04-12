; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjwe4_vbr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  %js = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %N) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %sz) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %js) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %N)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %sub = sub nsw i32 %0, 1
  %cmp1 = icmp slt i32 %i.0, %sub
  br i1 %cmp1, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body
  %.str.sink = phi ptr [ @.str, %if.else ], [ @.str.1, %for.body ]
  %idxprom3 = sext i32 %i.0 to i64
  %arrayidx4 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom3
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef %.str.sink, ptr noundef %arrayidx4)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc19, %for.end
  %t.0 = phi i32 [ -1, %for.end ], [ %t.1, %for.inc19 ]
  %i.1 = phi i32 [ 0, %for.end ], [ %inc20, %for.inc19 ]
  %cmp7 = icmp slt i32 %i.1, %0
  br i1 %cmp7, label %for.body8, label %for.end21

for.body8:                                        ; preds = %for.cond6
  %idxprom9 = sext i32 %i.1 to i64
  %arrayidx10 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom9
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !12
  %rem = srem i32 %1, 2
  %cmp11 = icmp eq i32 %rem, 1
  br i1 %cmp11, label %if.then12, label %for.inc19

if.then12:                                        ; preds = %for.body8
  %inc13 = add nsw i32 %t.0, 1
  %idxprom16 = sext i32 %inc13 to i64
  %arrayidx17 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom16
  store i32 %1, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.inc19

for.inc19:                                        ; preds = %for.body8, %if.then12
  %t.1 = phi i32 [ %inc13, %if.then12 ], [ %t.0, %for.body8 ]
  %inc20 = add nsw i32 %i.1, 1
  br label %for.cond6, !llvm.loop !13

for.end21:                                        ; preds = %for.cond6
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc49, %for.end21
  %q.0 = phi i32 [ 1, %for.end21 ], [ %inc50, %for.inc49 ]
  %add = add nsw i32 %t.0, 1
  %cmp23 = icmp sle i32 %q.0, %add
  br i1 %cmp23, label %for.body24, label %for.end51

for.body24:                                       ; preds = %for.cond22
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc46, %for.body24
  %p.0 = phi i32 [ 0, %for.body24 ], [ %add30, %for.inc46 ]
  %cmp26 = icmp slt i32 %p.0, %t.0
  br i1 %cmp26, label %for.body27, label %for.inc49

for.body27:                                       ; preds = %for.cond25
  %idxprom28 = sext i32 %p.0 to i64
  %arrayidx29 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom28
  %2 = load i32, ptr %arrayidx29, align 4, !tbaa !5, !invariant.load !12
  %add30 = add nsw i32 %p.0, 1
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom31
  %3 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !12
  %cmp33 = icmp sgt i32 %2, %3
  br i1 %cmp33, label %if.then34, label %for.inc46

if.then34:                                        ; preds = %for.body27
  store i32 %3, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %2, ptr %arrayidx32, align 4, !tbaa !5
  br label %for.inc46

for.inc46:                                        ; preds = %for.body27, %if.then34
  br label %for.cond25, !llvm.loop !14

for.inc49:                                        ; preds = %for.cond25
  %inc50 = add nsw i32 %q.0, 1
  br label %for.cond22, !llvm.loop !15

for.end51:                                        ; preds = %for.cond22
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc65, %for.end51
  %p.1 = phi i32 [ 0, %for.end51 ], [ %inc66, %for.inc65 ]
  %cmp53 = icmp sle i32 %p.1, %t.0
  br i1 %cmp53, label %for.body54, label %for.end67

for.body54:                                       ; preds = %for.cond52
  %cmp55 = icmp slt i32 %p.1, %t.0
  br i1 %cmp55, label %for.inc65, label %if.else60

if.else60:                                        ; preds = %for.body54
  br label %for.inc65

for.inc65:                                        ; preds = %if.else60, %for.body54
  %.str.3.sink = phi ptr [ @.str.3, %if.else60 ], [ @.str.2, %for.body54 ]
  %idxprom61 = sext i32 %p.1 to i64
  %arrayidx62 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom61
  %4 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !12
  %call63 = call i32 (ptr, ...) @printf(ptr noundef %.str.3.sink, i32 noundef %4)
  %inc66 = add nsw i32 %p.1, 1
  br label %for.cond52, !llvm.loop !16

for.end67:                                        ; preds = %for.cond52
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %js) #5
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %sz) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %N) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
