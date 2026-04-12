; ModuleID = '<stdin>'
source_filename = "/tmp/tmpba77wtib.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  %a = alloca [30 x i32], align 16
  %b = alloca [30 x i32], align 16
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j9 = alloca i8, i32 0, align 4
  %m = alloca i32, align 4
  %p = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #4
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef align 16 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %sum) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %p) #4
  store i32 0, ptr %p, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %k)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %sub = sub nsw i32 %1, 1
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom2
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc19, %for.end
  %2 = phi i32 [ %dec, %for.inc19 ], [ %sub, %for.end ]
  %cmp6 = icmp sgt i32 %2, 0
  %sub21 = sub nsw i32 %2, 1
  br i1 %cmp6, label %for.body7, label %for.end20

for.body7:                                        ; preds = %for.cond5
  %idxprom9 = sext i32 %sub21 to i64
  %arrayidx10 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom9
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %idxprom11 = sext i32 %2 to i64
  %arrayidx12 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom11
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %3, %4
  br i1 %cmp13, label %for.inc19, label %for.end20

for.inc19:                                        ; preds = %for.body7
  %arrayidx15 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom11
  %5 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %add = add nsw i32 %5, 1
  %arrayidx18 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom9
  store i32 %add, ptr %arrayidx18, align 4, !tbaa !5
  %dec = add nsw i32 %2, -1
  br label %for.cond5, !llvm.loop !12

for.end20:                                        ; preds = %for.body7, %for.cond5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc57, %for.end20
  %6 = phi i32 [ %dec58, %for.inc57 ], [ %sub21, %for.end20 ]
  %cmp23 = icmp sge i32 %6, 0
  br i1 %cmp23, label %for.body24, label %for.end59

for.body24:                                       ; preds = %for.cond22
  %7 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  store i32 %7, ptr %sum, align 4, !tbaa !5
  store i32 %sub, ptr %m, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc45, %for.body24
  %8 = load i32, ptr %m, align 4, !tbaa !5
  %cmp30 = icmp sgt i32 %8, %6
  %idxprom50 = sext i32 %6 to i64
  br i1 %cmp30, label %for.body31, label %for.end47

for.body31:                                       ; preds = %for.cond29
  %arrayidx33 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom50
  %9 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %idxprom34 = sext i32 %8 to i64
  %arrayidx35 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom34
  %10 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36 = icmp sge i32 %9, %10
  br i1 %cmp36, label %land.lhs.true, label %for.inc45

land.lhs.true:                                    ; preds = %for.body31
  %arrayidx38 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom34
  %11 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %12 = load i32, ptr %sum, align 4, !tbaa !5
  %cmp39 = icmp sge i32 %11, %12
  br i1 %cmp39, label %if.then40, label %for.inc45

if.then40:                                        ; preds = %land.lhs.true
  store i32 %11, ptr %sum, align 4, !tbaa !5
  %13 = load i32, ptr %p, align 4, !tbaa !5
  %inc43 = add nsw i32 %13, 1
  store i32 %inc43, ptr %p, align 4, !tbaa !5
  br label %for.inc45

for.inc45:                                        ; preds = %for.body31, %land.lhs.true, %if.then40
  %dec46 = add nsw i32 %8, -1
  store i32 %dec46, ptr %m, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !13

for.end47:                                        ; preds = %for.cond29
  %14 = load i32, ptr %p, align 4, !tbaa !5
  %cmp48 = icmp eq i32 %14, 0
  br i1 %cmp48, label %for.inc57, label %if.else52

if.else52:                                        ; preds = %for.end47
  %15 = load i32, ptr %sum, align 4, !tbaa !5
  %add53 = add nsw i32 %15, 1
  br label %for.inc57

for.inc57:                                        ; preds = %for.end47, %if.else52
  %add53.sink = phi i32 [ %add53, %if.else52 ], [ 1, %for.end47 ]
  %arrayidx55 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom50
  store i32 %add53.sink, ptr %arrayidx55, align 4, !tbaa !5
  %dec58 = add nsw i32 %6, -1
  br label %for.cond22, !llvm.loop !14

for.end59:                                        ; preds = %for.cond22
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc70, %for.end59
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %16, %1
  %17 = load i32, ptr %sum, align 4, !tbaa !5
  br i1 %cmp61, label %for.body62, label %for.end72

for.body62:                                       ; preds = %for.cond60
  %idxprom63 = sext i32 %16 to i64
  %arrayidx64 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom63
  %18 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %cmp65 = icmp sgt i32 %18, %17
  br i1 %cmp65, label %if.then66, label %for.inc70

if.then66:                                        ; preds = %for.body62
  store i32 %18, ptr %sum, align 4, !tbaa !5
  br label %for.inc70

for.inc70:                                        ; preds = %for.body62, %if.then66
  %inc71 = add nsw i32 %16, 1
  store i32 %inc71, ptr %i, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !15

for.end72:                                        ; preds = %for.cond60
  %call73 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %17) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %p) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %sum) #5
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #5
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
!15 = distinct !{!15, !10, !11}
