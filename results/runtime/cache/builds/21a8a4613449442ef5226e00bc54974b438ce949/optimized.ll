; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyk6rmdkn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %star1 = alloca i32, align 4
  %star2 = alloca i32, align 4
  %end1 = alloca i32, align 4
  %end2 = alloca i32, align 4
  %f = alloca i32, align 4
  %s = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %star1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %star2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %end1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %end2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %f) #3
  store i32 -1, ptr %f, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef %s) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.inc22

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %s, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %4 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %4, 0
  br i1 %cmp11, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body3
  %5 = load i32, ptr %f, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %5, -1
  br i1 %cmp12, label %if.then, label %if.then19

if.then:                                          ; preds = %land.lhs.true
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %star1, align 4, !tbaa !5
  %add13 = add nsw i32 %2, 1
  store i32 %add13, ptr %star2, align 4, !tbaa !5
  store i32 1, ptr %f, align 4, !tbaa !5
  br label %if.then19

if.then19:                                        ; preds = %if.then, %land.lhs.true
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %end1, align 4, !tbaa !5
  %sub20 = sub nsw i32 %2, 1
  store i32 %sub20, ptr %end2, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %for.body3
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc22:                                        ; preds = %for.cond1
  %inc23 = add nsw i32 %0, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end24:                                        ; preds = %for.cond
  %6 = load i32, ptr %end1, align 4, !tbaa !5
  %7 = load i32, ptr %star1, align 4, !tbaa !5
  %sub25 = sub nsw i32 %6, %7
  %add26 = add nsw i32 %sub25, 1
  %8 = load i32, ptr %end2, align 4, !tbaa !5
  %9 = load i32, ptr %star2, align 4, !tbaa !5
  %sub27 = sub nsw i32 %8, %9
  %add28 = add nsw i32 %sub27, 1
  %mul = mul nsw i32 %add26, %add28
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef %s) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %f) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %end2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %end1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %star2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %star1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
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
