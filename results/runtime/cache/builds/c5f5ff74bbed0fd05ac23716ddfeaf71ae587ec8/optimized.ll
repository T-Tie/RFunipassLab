; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_c6jldks.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %a = alloca [1000 x i8], align 16
  %n = alloca i32, align 4
  %b = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %b) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %b, i8 noundef 0, i64 noundef 4000, i1 noundef false) #6
  store i32 1, ptr %b, align 16
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a)
  %call3 = call i64 @strlen(ptr noundef %a) #7
  %conv = trunc i64 %call3 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 1000
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc39, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %add, %for.inc39 ]
  %w.0 = phi i32 [ undef, %for.end ], [ %w.1, %for.inc39 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %cmp5 = icmp slt i32 %i.1, %sub
  br i1 %cmp5, label %for.body6, label %for.end41

for.body6:                                        ; preds = %for.cond4
  %add = add nsw i32 %i.1, 1
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc36, %for.body6
  %j.0 = phi i32 [ %add, %for.body6 ], [ %inc37, %for.inc36 ]
  %w.1 = phi i32 [ %w.0, %for.body6 ], [ %w.2, %for.inc36 ]
  %cmp8 = icmp slt i32 %j.0, %conv
  br i1 %cmp8, label %for.body9, label %for.inc39

for.body9:                                        ; preds = %for.cond7
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.body9
  %k.0 = phi i32 [ %i.1, %for.body9 ], [ %inc24, %for.inc23 ]
  %j.1 = phi i32 [ %j.0, %for.body9 ], [ %inc22, %for.inc23 ]
  %flag.0 = phi i32 [ 0, %for.body9 ], [ %inc21, %for.inc23 ]
  %add11 = add nsw i32 %i.1, %0
  %cmp12 = icmp slt i32 %k.0, %add11
  br i1 %cmp12, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %idxprom14 = sext i32 %k.0 to i64
  %arrayidx15 = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 %idxprom14
  %1 = load i8, ptr %arrayidx15, align 1, !tbaa !12
  %conv16 = sext i8 %1 to i32
  %idxprom17 = sext i32 %j.1 to i64
  %arrayidx18 = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 %idxprom17
  %2 = load i8, ptr %arrayidx18, align 1, !tbaa !12
  %conv19 = sext i8 %2 to i32
  %cmp20 = icmp ne i32 %conv16, %conv19
  br i1 %cmp20, label %for.end25, label %for.inc23

for.inc23:                                        ; preds = %for.body13
  %inc21 = add nsw i32 %flag.0, 1
  %inc22 = add nsw i32 %j.1, 1
  %inc24 = add nsw i32 %k.0, 1
  br label %for.cond10, !llvm.loop !13

for.end25:                                        ; preds = %for.body13, %for.cond10
  %flag.1 = phi i32 [ %flag.0, %for.cond10 ], [ 0, %for.body13 ]
  %w.2 = phi i32 [ %w.1, %for.cond10 ], [ %flag.0, %for.body13 ]
  %cmp26 = icmp eq i32 %flag.1, %0
  br i1 %cmp26, label %if.then27, label %for.inc36

if.then27:                                        ; preds = %for.end25
  %idxprom28 = sext i32 %i.1 to i64
  %arrayidx29 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom28
  %3 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %inc30 = add nsw i32 %3, 1
  store i32 %inc30, ptr %arrayidx29, align 4, !tbaa !5
  br label %for.inc36

for.inc36:                                        ; preds = %if.then27, %for.end25
  %w.2.sink = phi i32 [ %0, %if.then27 ], [ %w.2, %for.end25 ]
  %sub33 = sub nsw i32 %j.1, %w.2.sink
  %inc37 = add nsw i32 %sub33, 1
  br label %for.cond7, !llvm.loop !14

for.inc39:                                        ; preds = %for.cond7
  br label %for.cond4, !llvm.loop !15

for.end41:                                        ; preds = %for.cond4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc52, %for.end41
  %i.2 = phi i32 [ 0, %for.end41 ], [ %inc53, %for.inc52 ]
  %max.0 = phi i32 [ 0, %for.end41 ], [ %max.1, %for.inc52 ]
  %cmp43 = icmp slt i32 %i.2, 1000
  br i1 %cmp43, label %for.body44, label %for.end54

for.body44:                                       ; preds = %for.cond42
  %idxprom45 = sext i32 %i.2 to i64
  %arrayidx46 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom45
  %4 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %max.0, %4
  br i1 %cmp47, label %if.then48, label %for.inc52

if.then48:                                        ; preds = %for.body44
  br label %for.inc52

for.inc52:                                        ; preds = %for.body44, %if.then48
  %max.1 = phi i32 [ %4, %if.then48 ], [ %max.0, %for.body44 ]
  %inc53 = add nsw i32 %i.2, 1
  br label %for.cond42, !llvm.loop !16

for.end54:                                        ; preds = %for.cond42
  %cmp55 = icmp eq i32 %max.0, 1
  br i1 %cmp55, label %if.then56, label %if.else58

if.then56:                                        ; preds = %for.end54
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end83

if.else58:                                        ; preds = %for.end54
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %max.0)
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc80, %if.else58
  %i.3 = phi i32 [ 0, %if.else58 ], [ %inc81, %for.inc80 ]
  %cmp61 = icmp slt i32 %i.3, 1000
  br i1 %cmp61, label %for.body62, label %if.end83

for.body62:                                       ; preds = %for.cond60
  %idxprom63 = sext i32 %i.3 to i64
  %arrayidx64 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom63
  %5 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %5, %max.0
  br i1 %cmp65, label %if.then66, label %for.inc80

if.then66:                                        ; preds = %for.body62
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc75, %if.then66
  %j.3 = phi i32 [ %i.3, %if.then66 ], [ %inc76, %for.inc75 ]
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %add68 = add nsw i32 %i.3, %6
  %cmp69 = icmp slt i32 %j.3, %add68
  br i1 %cmp69, label %for.inc75, label %for.end77

for.inc75:                                        ; preds = %for.cond67
  %idxprom71 = sext i32 %j.3 to i64
  %arrayidx72 = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 %idxprom71
  %7 = load i8, ptr %arrayidx72, align 1, !tbaa !12
  %conv73 = sext i8 %7 to i32
  %call74 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %conv73)
  %inc76 = add nsw i32 %j.3, 1
  br label %for.cond67, !llvm.loop !17

for.end77:                                        ; preds = %for.cond67
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %for.inc80

for.inc80:                                        ; preds = %for.body62, %for.end77
  %inc81 = add nsw i32 %i.3, 1
  br label %for.cond60, !llvm.loop !18

if.end83:                                         ; preds = %for.cond60, %if.then56
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef %a) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
