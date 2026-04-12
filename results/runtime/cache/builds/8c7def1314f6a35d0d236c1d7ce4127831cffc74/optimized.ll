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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #3
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef align 16 %b) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %k)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %sub = sub nsw i32 %0, 1
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom2
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc19, %for.end
  %i.1 = phi i32 [ %sub, %for.end ], [ %dec, %for.inc19 ]
  %cmp6 = icmp sgt i32 %i.1, 0
  br i1 %cmp6, label %for.body7, label %for.end20

for.body7:                                        ; preds = %for.cond5
  %sub8 = sub nsw i32 %i.1, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom9
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %idxprom11 = sext i32 %i.1 to i64
  %arrayidx12 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom11
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %1, %2
  br i1 %cmp13, label %for.inc19, label %for.end20

for.inc19:                                        ; preds = %for.body7
  %arrayidx15 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom11
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %add = add nsw i32 %3, 1
  %arrayidx18 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom9
  store i32 %add, ptr %arrayidx18, align 4, !tbaa !5
  %dec = add nsw i32 %i.1, -1
  br label %for.cond5, !llvm.loop !12

for.end20:                                        ; preds = %for.body7, %for.cond5
  %sub21 = sub nsw i32 %i.1, 1
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc57, %for.end20
  %j.0 = phi i32 [ %sub21, %for.end20 ], [ %dec58, %for.inc57 ]
  %p.0 = phi i32 [ 0, %for.end20 ], [ %p.1, %for.inc57 ]
  %cmp23 = icmp sge i32 %j.0, 0
  br i1 %cmp23, label %for.body24, label %for.end59

for.body24:                                       ; preds = %for.cond22
  %4 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc45, %for.body24
  %m.0 = phi i32 [ %sub, %for.body24 ], [ %dec46, %for.inc45 ]
  %sum.0 = phi i32 [ %4, %for.body24 ], [ %sum.1, %for.inc45 ]
  %p.1 = phi i32 [ %p.0, %for.body24 ], [ %p.2, %for.inc45 ]
  %cmp30 = icmp sgt i32 %m.0, %j.0
  br i1 %cmp30, label %for.body31, label %for.end47

for.body31:                                       ; preds = %for.cond29
  %idxprom32 = sext i32 %j.0 to i64
  %arrayidx33 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom32
  %5 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %idxprom34 = sext i32 %m.0 to i64
  %arrayidx35 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom34
  %6 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36 = icmp sge i32 %5, %6
  br i1 %cmp36, label %land.lhs.true, label %for.inc45

land.lhs.true:                                    ; preds = %for.body31
  %arrayidx38 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom34
  %7 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %cmp39 = icmp sge i32 %7, %sum.0
  br i1 %cmp39, label %if.then40, label %for.inc45

if.then40:                                        ; preds = %land.lhs.true
  %inc43 = add nsw i32 %p.1, 1
  br label %for.inc45

for.inc45:                                        ; preds = %for.body31, %land.lhs.true, %if.then40
  %sum.1 = phi i32 [ %7, %if.then40 ], [ %sum.0, %land.lhs.true ], [ %sum.0, %for.body31 ]
  %p.2 = phi i32 [ %inc43, %if.then40 ], [ %p.1, %land.lhs.true ], [ %p.1, %for.body31 ]
  %dec46 = add nsw i32 %m.0, -1
  br label %for.cond29, !llvm.loop !13

for.end47:                                        ; preds = %for.cond29
  %cmp48 = icmp eq i32 %p.1, 0
  br i1 %cmp48, label %if.then49, label %if.else52

if.then49:                                        ; preds = %for.end47
  br label %for.inc57

if.else52:                                        ; preds = %for.end47
  %add53 = add nsw i32 %sum.0, 1
  br label %for.inc57

for.inc57:                                        ; preds = %if.then49, %if.else52
  %add53.sink = phi i32 [ %add53, %if.else52 ], [ 1, %if.then49 ]
  %idxprom54 = sext i32 %j.0 to i64
  %arrayidx55 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom54
  store i32 %add53.sink, ptr %arrayidx55, align 4, !tbaa !5
  %dec58 = add nsw i32 %j.0, -1
  br label %for.cond22, !llvm.loop !14

for.end59:                                        ; preds = %for.cond22
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc70, %for.end59
  %i.2 = phi i32 [ 0, %for.end59 ], [ %inc71, %for.inc70 ]
  %sum.2 = phi i32 [ 0, %for.end59 ], [ %sum.3, %for.inc70 ]
  %cmp61 = icmp slt i32 %i.2, %0
  br i1 %cmp61, label %for.body62, label %for.end72

for.body62:                                       ; preds = %for.cond60
  %idxprom63 = sext i32 %i.2 to i64
  %arrayidx64 = getelementptr inbounds [30 x i32], ptr %b, i64 0, i64 %idxprom63
  %8 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %cmp65 = icmp sgt i32 %8, %sum.2
  br i1 %cmp65, label %if.then66, label %for.inc70

if.then66:                                        ; preds = %for.body62
  br label %for.inc70

for.inc70:                                        ; preds = %for.body62, %if.then66
  %sum.3 = phi i32 [ %8, %if.then66 ], [ %sum.2, %for.body62 ]
  %inc71 = add nsw i32 %i.2, 1
  br label %for.cond60, !llvm.loop !15

for.end72:                                        ; preds = %for.cond60
  %call73 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %sum.2)
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #4
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
