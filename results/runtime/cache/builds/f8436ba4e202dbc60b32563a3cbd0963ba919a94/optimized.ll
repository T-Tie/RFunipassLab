; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6_bad_fv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [300 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 1200, ptr noundef align 16 %a) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 1200, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc27, %for.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %2, %1
  br i1 %cmp3, label %for.body4, label %for.end29

for.body4:                                        ; preds = %for.cond2
  %sub5 = sub nsw i32 %2, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom6
  %3 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %3, 0
  br i1 %cmp8, label %for.inc27, label %if.end

if.end:                                           ; preds = %for.body4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc24, %if.end
  %.sink = phi i32 [ %2, %if.end ], [ %add, %for.inc24 ]
  %add = add nsw i32 %.sink, 1
  %cmp10 = icmp sle i32 %add, %1
  br i1 %cmp10, label %for.body11, label %for.inc27

for.body11:                                       ; preds = %for.cond9
  %idxprom13 = sext i32 %.sink to i64
  %arrayidx14 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom13
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %4, %5
  br i1 %cmp18, label %if.then19, label %for.inc24

if.then19:                                        ; preds = %for.body11
  store i32 0, ptr %arrayidx14, align 4, !tbaa !5
  br label %for.inc24

for.inc24:                                        ; preds = %for.body11, %if.then19
  br label %for.cond9, !llvm.loop !12

for.inc27:                                        ; preds = %for.cond9, %for.body4
  %inc28 = add nsw i32 %2, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.end29:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %b, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc53, %for.end29
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %sub31 = sub nsw i32 %7, 1
  %cmp32 = icmp sle i32 %6, %sub31
  br i1 %cmp32, label %for.body33, label %for.end55

for.body33:                                       ; preds = %for.cond30
  %idxprom34 = sext i32 %6 to i64
  %arrayidx35 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom34
  %8 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36 = icmp ne i32 %8, 0
  br i1 %cmp36, label %land.lhs.true, label %for.inc53

land.lhs.true:                                    ; preds = %for.body33
  %9 = load i32, ptr %b, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %9, 0
  br i1 %cmp37, label %if.then38, label %if.then48

if.then38:                                        ; preds = %land.lhs.true
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8) #7
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %for.inc53

if.then48:                                        ; preds = %land.lhs.true
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8) #7
  br label %for.inc53

for.inc53:                                        ; preds = %if.then48, %for.body33, %if.then38
  %inc54 = add nsw i32 %6, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !14

for.end55:                                        ; preds = %for.cond30
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 1200, ptr noundef %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind }

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
