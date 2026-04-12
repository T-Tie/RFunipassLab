; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw53ig1aa.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %sz = alloca [500 x i32], align 16
  %u = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %sz) #3
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %u) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %if.end, %for.end
  %a.0 = phi i32 [ 0, %for.end ], [ %a.1, %if.end ]
  %i.1 = phi i32 [ 0, %for.end ], [ %inc14, %if.end ]
  %cmp3 = icmp slt i32 %i.1, %0
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %i.1 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom5
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp7 = icmp ne i32 %rem, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %a.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %u, i64 0, i64 %idxprom10
  store i32 %1, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %a.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %a.1 = phi i32 [ %inc12, %if.then ], [ %a.0, %for.body4 ]
  %inc14 = add nsw i32 %i.1, 1
  br label %for.cond2, !llvm.loop !12

for.end15:                                        ; preds = %for.cond2
  br label %for.cond16

for.cond16:                                       ; preds = %for.end41, %for.end15
  %k.0 = phi i32 [ 1, %for.end15 ], [ %inc43, %for.end41 ]
  %cmp17 = icmp sle i32 %k.0, %a.0
  br i1 %cmp17, label %for.body18, label %for.end44

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %if.end38, %for.body18
  %i.2 = phi i32 [ 0, %for.body18 ], [ %add, %if.end38 ]
  %sub = sub nsw i32 %a.0, %k.0
  %cmp20 = icmp slt i32 %i.2, %sub
  br i1 %cmp20, label %for.body21, label %for.end41

for.body21:                                       ; preds = %for.cond19
  %idxprom22 = sext i32 %i.2 to i64
  %arrayidx23 = getelementptr inbounds [500 x i32], ptr %u, i64 0, i64 %idxprom22
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %add = add nsw i32 %i.2, 1
  %idxprom24 = sext i32 %add to i64
  %arrayidx25 = getelementptr inbounds [500 x i32], ptr %u, i64 0, i64 %idxprom24
  %3 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %2, %3
  br i1 %cmp26, label %if.then27, label %if.end38

if.then27:                                        ; preds = %for.body21
  store i32 %2, ptr %arrayidx25, align 4, !tbaa !5
  store i32 %3, ptr %arrayidx23, align 4, !tbaa !5
  br label %if.end38

if.end38:                                         ; preds = %if.then27, %for.body21
  br label %for.cond19, !llvm.loop !13

for.end41:                                        ; preds = %for.cond19
  %inc43 = add nsw i32 %k.0, 1
  br label %for.cond16, !llvm.loop !14

for.end44:                                        ; preds = %for.cond16
  br label %for.cond45

for.cond45:                                       ; preds = %for.body48, %for.end44
  %s.0 = phi i32 [ 0, %for.end44 ], [ %add54, %for.body48 ]
  %i.3 = phi i32 [ 0, %for.end44 ], [ %inc56, %for.body48 ]
  %sub46 = sub nsw i32 %a.0, 1
  %cmp47 = icmp slt i32 %i.3, %sub46
  br i1 %cmp47, label %for.body48, label %for.end57

for.body48:                                       ; preds = %for.cond45
  %idxprom49 = sext i32 %i.3 to i64
  %arrayidx50 = getelementptr inbounds [500 x i32], ptr %u, i64 0, i64 %idxprom49
  %4 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4)
  %add54 = add nsw i32 %s.0, %4
  %inc56 = add nsw i32 %i.3, 1
  br label %for.cond45, !llvm.loop !15

for.end57:                                        ; preds = %for.cond45
  br label %for.cond58

for.cond58:                                       ; preds = %for.body60, %for.end57
  %i.4 = phi i32 [ 0, %for.end57 ], [ %inc65, %for.body60 ]
  %z.0 = phi i32 [ 0, %for.end57 ], [ %add63, %for.body60 ]
  %cmp59 = icmp slt i32 %i.4, %a.0
  br i1 %cmp59, label %for.body60, label %for.end66

for.body60:                                       ; preds = %for.cond58
  %idxprom61 = sext i32 %i.4 to i64
  %arrayidx62 = getelementptr inbounds [500 x i32], ptr %u, i64 0, i64 %idxprom61
  %5 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %add63 = add nsw i32 %z.0, %5
  %inc65 = add nsw i32 %i.4, 1
  br label %for.cond58, !llvm.loop !16

for.end66:                                        ; preds = %for.cond58
  %sub67 = sub nsw i32 %z.0, %s.0
  %call68 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %sub67)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %u) #4
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %sz) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
