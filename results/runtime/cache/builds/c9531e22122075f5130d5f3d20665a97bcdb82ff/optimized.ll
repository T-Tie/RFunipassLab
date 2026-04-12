; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuub94t17.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [300 x i8], align 16
  %b = alloca [52 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 208, ptr noundef align 16 %b) #4
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %b, i8 noundef 0, i64 noundef 208, i1 noundef false) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %a)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc45, %for.inc ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %for.end, label %if.else

if.else:                                          ; preds = %for.cond
  %cmp4 = icmp slt i32 %conv, 65
  br i1 %cmp4, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %cmp8 = icmp sgt i32 %conv, 90
  br i1 %cmp8, label %land.lhs.true, label %if.then29

land.lhs.true:                                    ; preds = %lor.lhs.false
  %cmp12 = icmp slt i32 %conv, 97
  br i1 %cmp12, label %for.inc, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %land.lhs.true
  %cmp17 = icmp sgt i32 %conv, 122
  br i1 %cmp17, label %for.inc, label %if.else35

if.then29:                                        ; preds = %lor.lhs.false
  %sub = sub nsw i32 %conv, 65
  br label %if.end44

if.else35:                                        ; preds = %lor.lhs.false13
  %sub39 = sub nsw i32 %conv, 97
  %add = add nsw i32 %sub39, 26
  br label %if.end44

if.end44:                                         ; preds = %if.else35, %if.then29
  %add.sink = phi i32 [ %add, %if.else35 ], [ %sub, %if.then29 ]
  %idxprom40 = sext i32 %add.sink to i64
  %arrayidx41 = getelementptr inbounds [52 x i32], ptr %b, i64 0, i64 %idxprom40
  %1 = load i32, ptr %arrayidx41, align 4, !tbaa !8
  %inc42 = add nsw i32 %1, 1
  store i32 %inc42, ptr %arrayidx41, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %land.lhs.true, %lor.lhs.false13, %if.end44
  %inc45 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc51, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc52, %for.inc51 ]
  %sum.0 = phi i32 [ 0, %for.end ], [ %add50, %for.inc51 ]
  %cmp47 = icmp sle i32 %j.0, 51
  br i1 %cmp47, label %for.inc51, label %for.end53

for.inc51:                                        ; preds = %for.cond46
  %idxprom48 = sext i32 %j.0 to i64
  %arrayidx49 = getelementptr inbounds [52 x i32], ptr %b, i64 0, i64 %idxprom48
  %2 = load i32, ptr %arrayidx49, align 4, !tbaa !8
  %add50 = add nsw i32 %sum.0, %2
  %inc52 = add nsw i32 %j.0, 1
  br label %for.cond46, !llvm.loop !13

for.end53:                                        ; preds = %for.cond46
  %cmp54 = icmp eq i32 %sum.0, 0
  br i1 %cmp54, label %if.then55, label %if.else57

if.then55:                                        ; preds = %for.end53
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end89

if.else57:                                        ; preds = %for.end53
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc70, %if.else57
  %i.1 = phi i32 [ 0, %if.else57 ], [ %inc71, %for.inc70 ]
  %cmp59 = icmp sle i32 %i.1, 25
  br i1 %cmp59, label %for.body60, label %for.end72

for.body60:                                       ; preds = %for.cond58
  %idxprom61 = sext i32 %i.1 to i64
  %arrayidx62 = getelementptr inbounds [52 x i32], ptr %b, i64 0, i64 %idxprom61
  %3 = load i32, ptr %arrayidx62, align 4, !tbaa !8
  %cmp63 = icmp ne i32 %3, 0
  br i1 %cmp63, label %if.then64, label %for.inc70

if.then64:                                        ; preds = %for.body60
  %add65 = add nsw i32 %i.1, 65
  %call68 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %add65, i32 noundef %3)
  br label %for.inc70

for.inc70:                                        ; preds = %for.body60, %if.then64
  %inc71 = add nsw i32 %i.1, 1
  br label %for.cond58, !llvm.loop !14

for.end72:                                        ; preds = %for.cond58
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc86, %for.end72
  %i.2 = phi i32 [ 26, %for.end72 ], [ %inc87, %for.inc86 ]
  %cmp74 = icmp sle i32 %i.2, 51
  br i1 %cmp74, label %for.body75, label %if.end89

for.body75:                                       ; preds = %for.cond73
  %idxprom76 = sext i32 %i.2 to i64
  %arrayidx77 = getelementptr inbounds [52 x i32], ptr %b, i64 0, i64 %idxprom76
  %4 = load i32, ptr %arrayidx77, align 4, !tbaa !8
  %cmp78 = icmp ne i32 %4, 0
  br i1 %cmp78, label %if.then79, label %for.inc86

if.then79:                                        ; preds = %for.body75
  %add80 = add nsw i32 %i.2, 97
  %sub81 = sub nsw i32 %add80, 26
  %call84 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %sub81, i32 noundef %4)
  br label %for.inc86

for.inc86:                                        ; preds = %for.body75, %if.then79
  %inc87 = add nsw i32 %i.2, 1
  br label %for.cond73, !llvm.loop !15

if.end89:                                         ; preds = %for.cond73, %if.then55
  call void @llvm.lifetime.end.p0(i64 noundef 208, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
