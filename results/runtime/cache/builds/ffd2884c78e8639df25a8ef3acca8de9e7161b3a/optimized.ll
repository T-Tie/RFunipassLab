; ModuleID = '<stdin>'
source_filename = "/tmp/tmphozh3j_e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %k = alloca i32, align 4
  %k8 = alloca i8, i32 0, align 4
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %index) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc24, %for.end
  %2 = phi i32 [ %add, %for.inc24 ], [ 0, %for.end ]
  %cmp3 = icmp slt i32 %2, 2
  br i1 %cmp3, label %for.body4, label %for.end26

for.body4:                                        ; preds = %for.cond2
  store i32 %2, ptr %index, align 4, !tbaa !5
  %add = add nsw i32 %2, 1
  store i32 %add, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body4
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %3, %1
  %4 = load i32, ptr %index, align 4, !tbaa !5
  %idxprom16 = sext i32 %4 to i64
  %5 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom16
  %6 = load i32, ptr %5, align 4, !tbaa !5, !invariant.load !12
  br i1 %cmp6, label %for.body7, label %for.inc24

for.body7:                                        ; preds = %for.cond5
  %idxprom8 = sext i32 %3 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom8
  %7 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %7, %6
  br i1 %cmp12, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body7
  store i32 %3, ptr %index, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7, %if.then
  %inc14 = add nsw i32 %3, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !13

for.inc24:                                        ; preds = %for.cond5
  %idxprom18 = sext i32 %2 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom18
  %8 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %8, ptr %5, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !14

for.end26:                                        ; preds = %for.cond2
  %9 = load i32, ptr %a, align 16, !tbaa !5
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 1
  %10 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9, i32 noundef %10) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %index) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
