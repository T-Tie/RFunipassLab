; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdglag8ou.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %0, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc19, %for.end9
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %4, %1
  %5 = load i32, ptr %j, align 4, !tbaa !5
  br i1 %cmp12, label %for.body13, label %for.end22

for.body13:                                       ; preds = %for.cond10
  %idxprom14 = sext i32 %4 to i64
  %arrayidx15 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom14
  %idxprom16 = sext i32 %5 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %6 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !13
  %cmp18 = icmp eq i32 %6, 0
  br i1 %cmp18, label %for.end22, label %for.inc19

for.inc19:                                        ; preds = %for.body13
  %inc20 = add nsw i32 %5, 1
  store i32 %inc20, ptr %j, align 4, !tbaa !5
  %inc21 = add nsw i32 %4, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end22:                                        ; preds = %for.body13, %for.cond10
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc33, %for.end22
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %7, %1
  br i1 %cmp24, label %for.body25, label %for.end35

for.body25:                                       ; preds = %for.cond23
  %idxprom26 = sext i32 %4 to i64
  %arrayidx27 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom26
  %idxprom28 = sext i32 %7 to i64
  %arrayidx29 = getelementptr inbounds [100 x i32], ptr %arrayidx27, i64 0, i64 %idxprom28
  %8 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %8, 255
  br i1 %cmp30, label %for.end35, label %for.inc33

for.inc33:                                        ; preds = %for.body25
  %inc34 = add nsw i32 %7, 1
  store i32 %inc34, ptr %j, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !15

for.end35:                                        ; preds = %for.body25, %for.cond23
  store i32 %4, ptr %i, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc46, %for.end35
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %9, %1
  br i1 %cmp37, label %for.body38, label %for.end48

for.body38:                                       ; preds = %for.cond36
  %idxprom39 = sext i32 %9 to i64
  %arrayidx40 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom39
  %idxprom41 = sext i32 %5 to i64
  %arrayidx42 = getelementptr inbounds [100 x i32], ptr %arrayidx40, i64 0, i64 %idxprom41
  %10 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %cmp43 = icmp eq i32 %10, 255
  br i1 %cmp43, label %for.end48, label %for.inc46

for.inc46:                                        ; preds = %for.body38
  %inc47 = add nsw i32 %9, 1
  store i32 %inc47, ptr %i, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !16

for.end48:                                        ; preds = %for.body38, %for.cond36
  %sub = sub nsw i32 %7, %5
  %sub49 = sub nsw i32 %9, %4
  %sub50 = sub nsw i32 %sub, 2
  %sub51 = sub nsw i32 %sub49, 2
  %mul = mul nsw i32 %sub50, %sub51
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %mul) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #5
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
