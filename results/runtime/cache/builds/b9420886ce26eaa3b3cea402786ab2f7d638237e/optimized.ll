; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqrkfq7ks.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %v = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %v) #3
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %b) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc12, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc13, %for.inc12 ]
  %j.0 = phi i32 [ 0, %for.end ], [ %j.1, %for.inc12 ]
  %cmp3 = icmp slt i32 %i.1, %0
  br i1 %cmp3, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %i.1 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom5
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp7 = icmp eq i32 %rem, 1
  br i1 %cmp7, label %if.end, label %for.inc12

if.end:                                           ; preds = %for.body4
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom10
  store i32 %1, ptr %arrayidx11, align 4, !tbaa !5
  %add = add nsw i32 %j.0, 1
  br label %for.inc12

for.inc12:                                        ; preds = %for.body4, %if.end
  %j.1 = phi i32 [ %add, %if.end ], [ %j.0, %for.body4 ]
  %inc13 = add nsw i32 %i.1, 1
  br label %for.cond2, !llvm.loop !12

for.end14:                                        ; preds = %for.cond2
  store i32 0, ptr %v, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc40, %for.end14
  %2 = load i32, ptr %v, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %2, %j.0
  br i1 %cmp16, label %for.body17, label %for.end42

for.body17:                                       ; preds = %for.cond15
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc37, %for.body17
  %v.sink = phi ptr [ %v, %for.body17 ], [ %k, %for.inc37 ]
  %3 = load i32, ptr %v.sink, align 4, !tbaa !5
  %add18 = add nsw i32 %3, 1
  store i32 %add18, ptr %k, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %add18, %j.0
  br i1 %cmp20, label %for.body21, label %for.inc40

for.body21:                                       ; preds = %for.cond19
  %idxprom22 = sext i32 %2 to i64
  %arrayidx23 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom22
  %4 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %idxprom24 = sext i32 %add18 to i64
  %arrayidx25 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom24
  %5 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %4, %5
  br i1 %cmp26, label %if.then27, label %for.inc37

if.then27:                                        ; preds = %for.body21
  store i32 %5, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx25, align 4, !tbaa !5
  br label %for.inc37

for.inc37:                                        ; preds = %for.body21, %if.then27
  br label %for.cond19, !llvm.loop !13

for.inc40:                                        ; preds = %for.cond19
  %inc41 = add nsw i32 %2, 1
  store i32 %inc41, ptr %v, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !14

for.end42:                                        ; preds = %for.cond15
  store i32 0, ptr %v, align 4, !tbaa !5
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc53, %for.end42
  %6 = load i32, ptr %v, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %6, %j.0
  br i1 %cmp44, label %for.body45, label %for.end55

for.body45:                                       ; preds = %for.cond43
  %idxprom46 = sext i32 %6 to i64
  %arrayidx47 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom46
  %7 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7)
  %sub = sub nsw i32 %j.0, 1
  %cmp49 = icmp slt i32 %6, %sub
  br i1 %cmp49, label %if.then50, label %for.inc53

if.then50:                                        ; preds = %for.body45
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc53

for.inc53:                                        ; preds = %for.body45, %if.then50
  %inc54 = add nsw i32 %6, 1
  store i32 %inc54, ptr %v, align 4, !tbaa !5
  br label %for.cond43, !llvm.loop !15

for.end55:                                        ; preds = %for.cond43
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %v) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
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
attributes #3 = { nofree nounwind }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
