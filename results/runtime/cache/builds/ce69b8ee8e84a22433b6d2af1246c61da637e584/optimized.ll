; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6cd2_dxi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [1000 x [1000 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef align 16 %sz) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %row.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %col.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %col.0, %1
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %row.0 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %col.0 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %col.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %row.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc56, %for.end9
  %c.0 = phi i32 [ undef, %for.end9 ], [ %c.1, %for.inc56 ]
  %b.0 = phi i32 [ undef, %for.end9 ], [ %b.1, %for.inc56 ]
  %a.0 = phi i32 [ undef, %for.end9 ], [ %a.1, %for.inc56 ]
  %row.1 = phi i32 [ 0, %for.end9 ], [ %inc57, %for.inc56 ]
  %d.0 = phi i32 [ undef, %for.end9 ], [ %d.1, %for.inc56 ]
  %cmp11 = icmp slt i32 %row.1, %0
  br i1 %cmp11, label %for.body12, label %for.end58

for.body12:                                       ; preds = %for.cond10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc53, %for.body12
  %c.1 = phi i32 [ %c.0, %for.body12 ], [ %c.2, %for.inc53 ]
  %b.1 = phi i32 [ %b.0, %for.body12 ], [ %b.23, %for.inc53 ]
  %a.1 = phi i32 [ %a.0, %for.body12 ], [ %a.25, %for.inc53 ]
  %col.1 = phi i32 [ 0, %for.body12 ], [ %inc54, %for.inc53 ]
  %d.1 = phi i32 [ %d.0, %for.body12 ], [ %d.2, %for.inc53 ]
  %cmp14 = icmp slt i32 %col.1, %0
  br i1 %cmp14, label %for.body15, label %for.inc56

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %row.1 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %col.1 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %2, 0
  br i1 %cmp20, label %land.lhs.true, label %for.inc53

land.lhs.true:                                    ; preds = %for.body15
  %sub = sub nsw i32 %col.1, 1
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds [1000 x i32], ptr %arrayidx17, i64 0, i64 %idxprom23
  %3 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp ne i32 %3, 0
  br i1 %cmp25, label %land.lhs.true26, label %land.lhs.true38

land.lhs.true26:                                  ; preds = %land.lhs.true
  %sub27 = sub nsw i32 %row.1, 1
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom28
  %arrayidx31 = getelementptr inbounds [1000 x i32], ptr %arrayidx29, i64 0, i64 %idxprom18
  %4 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp ne i32 %4, 0
  br i1 %cmp32, label %if.then, label %land.lhs.true38

if.then:                                          ; preds = %land.lhs.true26
  br label %land.lhs.true38

land.lhs.true38:                                  ; preds = %if.then, %land.lhs.true26, %land.lhs.true
  %b.2.ph = phi i32 [ %b.1, %land.lhs.true ], [ %b.1, %land.lhs.true26 ], [ %col.1, %if.then ]
  %a.2.ph = phi i32 [ %a.1, %land.lhs.true ], [ %a.1, %land.lhs.true26 ], [ %row.1, %if.then ]
  %add = add nsw i32 %col.1, 1
  %idxprom41 = sext i32 %add to i64
  %arrayidx42 = getelementptr inbounds [1000 x i32], ptr %arrayidx17, i64 0, i64 %idxprom41
  %5 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %cmp43 = icmp ne i32 %5, 0
  br i1 %cmp43, label %land.lhs.true44, label %for.inc53

land.lhs.true44:                                  ; preds = %land.lhs.true38
  %add45 = add nsw i32 %row.1, 1
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom46
  %arrayidx49 = getelementptr inbounds [1000 x i32], ptr %arrayidx47, i64 0, i64 %idxprom18
  %6 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %cmp50 = icmp ne i32 %6, 0
  br i1 %cmp50, label %if.then51, label %for.inc53

if.then51:                                        ; preds = %land.lhs.true44
  br label %for.inc53

for.inc53:                                        ; preds = %land.lhs.true38, %land.lhs.true44, %if.then51, %for.body15
  %a.25 = phi i32 [ %a.2.ph, %if.then51 ], [ %a.2.ph, %land.lhs.true44 ], [ %a.2.ph, %land.lhs.true38 ], [ %a.1, %for.body15 ]
  %b.23 = phi i32 [ %b.2.ph, %if.then51 ], [ %b.2.ph, %land.lhs.true44 ], [ %b.2.ph, %land.lhs.true38 ], [ %b.1, %for.body15 ]
  %c.2 = phi i32 [ %row.1, %if.then51 ], [ %c.1, %land.lhs.true44 ], [ %c.1, %land.lhs.true38 ], [ %c.1, %for.body15 ]
  %d.2 = phi i32 [ %col.1, %if.then51 ], [ %d.1, %land.lhs.true44 ], [ %d.1, %land.lhs.true38 ], [ %d.1, %for.body15 ]
  %inc54 = add nsw i32 %col.1, 1
  br label %for.cond13, !llvm.loop !13

for.inc56:                                        ; preds = %for.cond13
  %inc57 = add nsw i32 %row.1, 1
  br label %for.cond10, !llvm.loop !14

for.end58:                                        ; preds = %for.cond10
  %sub59 = sub nsw i32 %c.0, %a.0
  %sub60 = sub nsw i32 %sub59, 1
  %cmp61 = icmp sgt i32 %sub60, 0
  br i1 %cmp61, label %land.lhs.true62, label %if.else

land.lhs.true62:                                  ; preds = %for.end58
  %sub63 = sub nsw i32 %d.0, %b.0
  %sub64 = sub nsw i32 %sub63, 1
  %cmp65 = icmp sgt i32 %sub64, 0
  br i1 %cmp65, label %if.then66, label %if.else

if.then66:                                        ; preds = %land.lhs.true62
  %mul = mul nsw i32 %sub60, %sub64
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul)
  br label %if.end74

if.else:                                          ; preds = %land.lhs.true62, %for.end58
  %call73 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 0)
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.then66
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef %sz) #4
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
