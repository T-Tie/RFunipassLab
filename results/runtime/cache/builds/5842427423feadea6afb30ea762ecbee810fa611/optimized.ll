; ModuleID = '<stdin>'
source_filename = "/tmp/tmppejwpeq5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j7 = alloca i8, i32 0, align 4
  %w = alloca [30 x i32], align 16
  %f = alloca [30 x i32], align 16
  %m = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef align 16 %w) #4
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef align 16 %f) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [30 x i32], ptr %w, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 99999, ptr %w, align 16, !tbaa !5
  store i32 0, ptr %f, align 16, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc31, %for.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %2, %1
  br i1 %cmp5, label %for.body6, label %for.end33

for.body6:                                        ; preds = %for.cond4
  %idxprom7 = sext i32 %2 to i64
  %arrayidx8 = getelementptr inbounds [30 x i32], ptr %f, i64 0, i64 %idxprom7
  store i32 1, ptr %arrayidx8, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc29, %for.body6
  %3 = phi i32 [ %dec, %for.inc29 ], [ %sub, %for.body6 ]
  %cmp10 = icmp sge i32 %3, 0
  br i1 %cmp10, label %for.body11, label %for.inc31

for.body11:                                       ; preds = %for.cond9
  %idxprom12 = sext i32 %3 to i64
  %arrayidx13 = getelementptr inbounds [30 x i32], ptr %w, i64 0, i64 %idxprom12
  %4 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %arrayidx15 = getelementptr inbounds [30 x i32], ptr %w, i64 0, i64 %idxprom7
  %5 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %4, %5
  br i1 %cmp16, label %if.then, label %for.inc29

if.then:                                          ; preds = %for.body11
  %arrayidx18 = getelementptr inbounds [30 x i32], ptr %f, i64 0, i64 %idxprom12
  %6 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  %7 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %add, %7
  br i1 %cmp21, label %if.then22, label %for.inc29

if.then22:                                        ; preds = %if.then
  store i32 %add, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.inc29

for.inc29:                                        ; preds = %for.body11, %if.then22, %if.then
  %dec = add nsw i32 %3, -1
  br label %for.cond9, !llvm.loop !12

for.inc31:                                        ; preds = %for.cond9
  %inc32 = add nsw i32 %2, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !13

for.end33:                                        ; preds = %for.cond4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %m) #5
  store i32 0, ptr %m, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc44, %for.end33
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp35 = icmp sle i32 %8, %1
  %9 = load i32, ptr %m, align 4, !tbaa !5
  br i1 %cmp35, label %for.body36, label %for.end46

for.body36:                                       ; preds = %for.cond34
  %idxprom37 = sext i32 %8 to i64
  %arrayidx38 = getelementptr inbounds [30 x i32], ptr %f, i64 0, i64 %idxprom37
  %10 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %cmp39 = icmp sgt i32 %10, %9
  br i1 %cmp39, label %if.then40, label %for.inc44

if.then40:                                        ; preds = %for.body36
  store i32 %10, ptr %m, align 4, !tbaa !5
  br label %for.inc44

for.inc44:                                        ; preds = %for.body36, %if.then40
  %inc45 = add nsw i32 %8, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !14

for.end46:                                        ; preds = %for.cond34
  %call47 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %9) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m) #5
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef %f) #5
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef %w) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
