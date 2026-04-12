; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz3y67r2d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %j = alloca i32, align 4
  %num = alloca i32, align 4
  %a = alloca [501 x i32], align 16
  %b = alloca [501 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %l) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #3
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %num) #3
  store i32 0, ptr %num, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 2004, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 2004, ptr noundef align 16 %b) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [501 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %rem = srem i32 %2, 2
  %cmp4 = icmp ne i32 %rem, 0
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %3 to i64
  %arrayidx8 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %2, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %num, align 4, !tbaa !5
  %inc9 = add nsw i32 %4, 1
  store i32 %inc9, ptr %num, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %inc10 = add nsw i32 %0, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %num, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc37, %for.end
  %sub.sink = phi i32 [ %sub, %for.end ], [ %dec, %for.inc37 ]
  %6 = phi i32 [ %dec, %for.inc37 ], [ %sub, %for.end ]
  store i32 %sub.sink, ptr %l, align 4, !tbaa !5
  %cmp12 = icmp sge i32 %6, 0
  br i1 %cmp12, label %for.body13, label %for.end38

for.body13:                                       ; preds = %for.cond11
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc34, %for.body13
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %7, %5
  br i1 %cmp15, label %for.body16, label %for.inc37

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %7 to i64
  %arrayidx18 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom17
  %8 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add = add nsw i32 %7, 1
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom19
  %9 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !12
  %cmp21 = icmp sgt i32 %8, %9
  br i1 %cmp21, label %if.then22, label %for.inc34

if.then22:                                        ; preds = %for.body16
  store i32 %8, ptr %arrayidx20, align 4, !tbaa !5
  store i32 %9, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.inc34

for.inc34:                                        ; preds = %for.body16, %if.then22
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !13

for.inc37:                                        ; preds = %for.cond14
  %10 = load i32, ptr %l, align 4, !tbaa !5
  %dec = add nsw i32 %10, -1
  br label %for.cond11, !llvm.loop !14

for.end38:                                        ; preds = %for.cond11
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc45, %for.end38
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %11, %5
  br i1 %cmp40, label %for.inc45, label %for.end47

for.inc45:                                        ; preds = %for.cond39
  %idxprom42 = sext i32 %11 to i64
  %arrayidx43 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom42
  %12 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %12)
  %inc46 = add nsw i32 %11, 1
  store i32 %inc46, ptr %j, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !15

for.end47:                                        ; preds = %for.cond39
  %idxprom48 = sext i32 %5 to i64
  %arrayidx49 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom48
  %13 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %13)
  call void @llvm.lifetime.end.p0(i64 noundef 2004, ptr noundef %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 2004, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %num) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %l) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
