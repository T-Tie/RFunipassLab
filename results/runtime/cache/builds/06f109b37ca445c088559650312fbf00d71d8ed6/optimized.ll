; ModuleID = '<stdin>'
source_filename = "/tmp/tmptse4wxp5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [301 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 301, ptr noundef align 16 %str) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %str)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc ]
  %a.0 = phi i32 [ 0, %entry ], [ %a.1, %for.inc ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %cmp4 = icmp sge i32 %conv, 65
  br i1 %cmp4, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cmp8 = icmp sle i32 %conv, 90
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %inc = add nsw i32 %a.0, 1
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true
  %cmp12 = icmp sge i32 %conv, 97
  br i1 %cmp12, label %land.lhs.true13, label %for.inc

land.lhs.true13:                                  ; preds = %if.else
  %cmp17 = icmp sle i32 %conv, 122
  br i1 %cmp17, label %if.then18, label %for.inc

if.then18:                                        ; preds = %land.lhs.true13
  %inc19 = add nsw i32 %a.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then, %if.then18, %land.lhs.true13, %if.else
  %a.1 = phi i32 [ %inc, %if.then ], [ %inc19, %if.then18 ], [ %a.0, %land.lhs.true13 ], [ %a.0, %if.else ], [ %a.0, %for.body ]
  %inc21 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %cmp22 = icmp eq i32 %a.0, 0
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %for.end
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end83

if.else25:                                        ; preds = %for.end
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc51, %if.else25
  %i.1 = phi i32 [ 65, %if.else25 ], [ %inc52, %for.inc51 ]
  %cmp27 = icmp sle i32 %i.1, 90
  br i1 %cmp27, label %for.body28, label %for.end53

for.body28:                                       ; preds = %for.cond26
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc42, %for.body28
  %t.1 = phi i32 [ 0, %for.body28 ], [ %t.2, %for.inc42 ]
  %n.0 = phi i32 [ 0, %for.body28 ], [ %inc43, %for.inc42 ]
  %idxprom30 = sext i32 %n.0 to i64
  %arrayidx31 = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 %idxprom30
  %1 = load i8, ptr %arrayidx31, align 1, !tbaa !5
  %conv32 = sext i8 %1 to i32
  %cmp33 = icmp ne i32 %conv32, 0
  br i1 %cmp33, label %for.body34, label %for.end44

for.body34:                                       ; preds = %for.cond29
  %cmp38 = icmp eq i32 %conv32, %i.1
  br i1 %cmp38, label %if.then39, label %for.inc42

if.then39:                                        ; preds = %for.body34
  %inc40 = add nsw i32 %t.1, 1
  br label %for.inc42

for.inc42:                                        ; preds = %for.body34, %if.then39
  %t.2 = phi i32 [ %inc40, %if.then39 ], [ %t.1, %for.body34 ]
  %inc43 = add nsw i32 %n.0, 1
  br label %for.cond29, !llvm.loop !11

for.end44:                                        ; preds = %for.cond29
  %cmp45 = icmp ne i32 %t.1, 0
  br i1 %cmp45, label %if.then46, label %for.inc51

if.then46:                                        ; preds = %for.end44
  %conv47 = trunc i32 %i.1 to i8
  %conv48 = sext i8 %conv47 to i32
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv48, i32 noundef %t.1)
  br label %for.inc51

for.inc51:                                        ; preds = %for.end44, %if.then46
  %inc52 = add nsw i32 %i.1, 1
  br label %for.cond26, !llvm.loop !12

for.end53:                                        ; preds = %for.cond26
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc80, %for.end53
  %i.2 = phi i32 [ 97, %for.end53 ], [ %inc81, %for.inc80 ]
  %cmp55 = icmp sle i32 %i.2, 122
  br i1 %cmp55, label %for.body56, label %if.end83

for.body56:                                       ; preds = %for.cond54
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc70, %for.body56
  %l.1 = phi i32 [ 0, %for.body56 ], [ %l.2, %for.inc70 ]
  %n.1 = phi i32 [ 0, %for.body56 ], [ %inc71, %for.inc70 ]
  %idxprom58 = sext i32 %n.1 to i64
  %arrayidx59 = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 %idxprom58
  %2 = load i8, ptr %arrayidx59, align 1, !tbaa !5
  %conv60 = sext i8 %2 to i32
  %cmp61 = icmp ne i32 %conv60, 0
  br i1 %cmp61, label %for.body62, label %for.end72

for.body62:                                       ; preds = %for.cond57
  %cmp66 = icmp eq i32 %conv60, %i.2
  br i1 %cmp66, label %if.then67, label %for.inc70

if.then67:                                        ; preds = %for.body62
  %inc68 = add nsw i32 %l.1, 1
  br label %for.inc70

for.inc70:                                        ; preds = %for.body62, %if.then67
  %l.2 = phi i32 [ %inc68, %if.then67 ], [ %l.1, %for.body62 ]
  %inc71 = add nsw i32 %n.1, 1
  br label %for.cond57, !llvm.loop !13

for.end72:                                        ; preds = %for.cond57
  %cmp73 = icmp ne i32 %l.1, 0
  br i1 %cmp73, label %if.then74, label %for.inc80

if.then74:                                        ; preds = %for.end72
  %conv76 = trunc i32 %i.2 to i8
  %conv77 = sext i8 %conv76 to i32
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv77, i32 noundef %l.1)
  br label %for.inc80

for.inc80:                                        ; preds = %for.end72, %if.then74
  %inc81 = add nsw i32 %i.2, 1
  br label %for.cond54, !llvm.loop !14

if.end83:                                         ; preds = %for.cond54, %if.then23
  call void @llvm.lifetime.end.p0(i64 noundef 301, ptr noundef %str) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
