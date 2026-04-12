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
  %a = alloca i32, align 4
  %t = alloca i32, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 301, ptr noundef align 16 %str) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %a) #4
  store i32 0, ptr %a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %t) #4
  store i32 0, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %l) #4
  store i32 0, ptr %l, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %str)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp sge i32 %conv3, 65
  br i1 %cmp4, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cmp8 = icmp sle i32 %conv3, 90
  br i1 %cmp8, label %for.inc.gvnsink.split, label %if.else

if.else:                                          ; preds = %land.lhs.true
  %cmp12 = icmp sge i32 %conv3, 97
  br i1 %cmp12, label %land.lhs.true13, label %for.inc

land.lhs.true13:                                  ; preds = %if.else
  %cmp17 = icmp sle i32 %conv3, 122
  br i1 %cmp17, label %for.inc.gvnsink.split, label %for.inc

for.inc.gvnsink.split:                            ; preds = %land.lhs.true13, %land.lhs.true
  %3 = load i32, ptr %a, align 4, !tbaa !5
  %inc19 = add nsw i32 %3, 1
  store i32 %inc19, ptr %a, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.inc.gvnsink.split, %for.body, %land.lhs.true13, %if.else
  %inc21 = add nsw i32 %0, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %a, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %4, 0
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %for.end
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.1) #5
  br label %if.end83

if.else25:                                        ; preds = %for.end
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc51, %if.else25
  %.sink = phi i32 [ 65, %if.else25 ], [ %inc52, %for.inc51 ]
  store i32 %.sink, ptr %i, align 4, !tbaa !5
  %cmp27 = icmp sle i32 %.sink, 90
  br i1 %cmp27, label %for.body28, label %for.end53

for.body28:                                       ; preds = %for.cond26
  store i32 0, ptr %n, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc42, %for.body28
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom30 = sext i32 %5 to i64
  %arrayidx31 = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 %idxprom30
  %6 = load i8, ptr %arrayidx31, align 1, !tbaa !9, !invariant.load !10
  %conv32 = sext i8 %6 to i32
  %cmp33 = icmp ne i32 %conv32, 0
  br i1 %cmp33, label %for.body34, label %for.end44

for.body34:                                       ; preds = %for.cond29
  %cmp38 = icmp eq i32 %conv32, %.sink
  br i1 %cmp38, label %if.then39, label %for.inc42

if.then39:                                        ; preds = %for.body34
  %7 = load i32, ptr %t, align 4, !tbaa !5
  %inc40 = add nsw i32 %7, 1
  store i32 %inc40, ptr %t, align 4, !tbaa !5
  br label %for.inc42

for.inc42:                                        ; preds = %for.body34, %if.then39
  %inc43 = add nsw i32 %5, 1
  store i32 %inc43, ptr %n, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !14

for.end44:                                        ; preds = %for.cond29
  %8 = load i32, ptr %t, align 4, !tbaa !5
  %cmp45 = icmp ne i32 %8, 0
  br i1 %cmp45, label %if.then46, label %for.inc51

if.then46:                                        ; preds = %for.end44
  %conv47 = trunc i32 %.sink to i8
  %conv48 = sext i8 %conv47 to i32
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv48, i32 noundef %8) #5
  br label %for.inc51

for.inc51:                                        ; preds = %for.end44, %if.then46
  store i32 0, ptr %t, align 4, !tbaa !5
  %inc52 = add nsw i32 %.sink, 1
  br label %for.cond26, !llvm.loop !15

for.end53:                                        ; preds = %for.cond26
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc80, %for.end53
  %.sink4 = phi i32 [ 97, %for.end53 ], [ %inc81, %for.inc80 ]
  store i32 %.sink4, ptr %i, align 4, !tbaa !5
  %cmp55 = icmp sle i32 %.sink4, 122
  br i1 %cmp55, label %for.body56, label %if.end83

for.body56:                                       ; preds = %for.cond54
  store i32 0, ptr %n, align 4, !tbaa !5
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc70, %for.body56
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom58 = sext i32 %9 to i64
  %arrayidx59 = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 %idxprom58
  %10 = load i8, ptr %arrayidx59, align 1, !tbaa !9, !invariant.load !10
  %conv60 = sext i8 %10 to i32
  %cmp61 = icmp ne i32 %conv60, 0
  br i1 %cmp61, label %for.body62, label %for.end72

for.body62:                                       ; preds = %for.cond57
  %cmp66 = icmp eq i32 %conv60, %.sink4
  br i1 %cmp66, label %if.then67, label %for.inc70

if.then67:                                        ; preds = %for.body62
  %11 = load i32, ptr %l, align 4, !tbaa !5
  %inc68 = add nsw i32 %11, 1
  store i32 %inc68, ptr %l, align 4, !tbaa !5
  br label %for.inc70

for.inc70:                                        ; preds = %for.body62, %if.then67
  %inc71 = add nsw i32 %9, 1
  store i32 %inc71, ptr %n, align 4, !tbaa !5
  br label %for.cond57, !llvm.loop !16

for.end72:                                        ; preds = %for.cond57
  %12 = load i32, ptr %l, align 4, !tbaa !5
  %cmp73 = icmp ne i32 %12, 0
  br i1 %cmp73, label %if.then74, label %for.inc80

if.then74:                                        ; preds = %for.end72
  %conv76 = trunc i32 %.sink4 to i8
  %conv77 = sext i8 %conv76 to i32
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv77, i32 noundef %12) #5
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.inc80

for.inc80:                                        ; preds = %for.end72, %if.then74
  %inc81 = add nsw i32 %.sink4, 1
  br label %for.cond54, !llvm.loop !17

if.end83:                                         ; preds = %for.cond54, %if.then23
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %l) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %t) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %a) #5
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
