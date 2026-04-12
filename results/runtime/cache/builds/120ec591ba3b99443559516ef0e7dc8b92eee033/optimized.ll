; ModuleID = '<stdin>'
source_filename = "/tmp/tmp97aupckr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z1fPii(ptr nofree noundef readonly captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %b = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef align 16 %b) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %sub = sub nsw i32 %n, 2
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc29, %for.end
  %i1.0 = phi i32 [ %sub, %for.end ], [ %dec, %for.inc29 ]
  %cmp3 = icmp sge i32 %i1.0, 0
  br i1 %cmp3, label %for.body5, label %for.end30

for.body5:                                        ; preds = %for.cond2
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc26, %for.body5
  %i1.0.sink = phi i32 [ %i1.0, %for.body5 ], [ %add, %for.inc26 ]
  %add = add nsw i32 %i1.0.sink, 1
  %cmp7 = icmp slt i32 %add, %n
  br i1 %cmp7, label %for.body9, label %for.inc29

for.body9:                                        ; preds = %for.cond6
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %a, i64 %idxprom10
  %0 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %idxprom12 = sext i32 %i1.0 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %a, i64 %idxprom12
  %1 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !12
  %cmp14 = icmp sle i32 %0, %1
  br i1 %cmp14, label %land.lhs.true, label %for.inc26

land.lhs.true:                                    ; preds = %for.body9
  %arrayidx16 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom12
  %2 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom10
  %3 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add19 = add nsw i32 %3, 1
  %cmp20 = icmp slt i32 %2, %add19
  br i1 %cmp20, label %if.then, label %for.inc26

if.then:                                          ; preds = %land.lhs.true
  store i32 %add19, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.inc26

for.inc26:                                        ; preds = %for.body9, %land.lhs.true, %if.then
  br label %for.cond6, !llvm.loop !13

for.inc29:                                        ; preds = %for.cond6
  %dec = add nsw i32 %i1.0, -1
  br label %for.cond2, !llvm.loop !14

for.end30:                                        ; preds = %for.cond2
  %4 = load i32, ptr %b, align 16, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc44, %for.end30
  %max.0 = phi i32 [ %4, %for.end30 ], [ %max.1, %for.inc44 ]
  %i32.0 = phi i32 [ 0, %for.end30 ], [ %inc45, %for.inc44 ]
  %cmp34 = icmp slt i32 %i32.0, %n
  br i1 %cmp34, label %for.body36, label %for.end46

for.body36:                                       ; preds = %for.cond33
  %idxprom37 = sext i32 %i32.0 to i64
  %arrayidx38 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom37
  %5 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %cmp39 = icmp sgt i32 %5, %max.0
  br i1 %cmp39, label %if.then40, label %for.inc44

if.then40:                                        ; preds = %for.body36
  br label %for.inc44

for.inc44:                                        ; preds = %for.body36, %if.then40
  %max.1 = phi i32 [ %5, %if.then40 ], [ %max.0, %for.body36 ]
  %inc45 = add nsw i32 %i32.0, 1
  br label %for.cond33, !llvm.loop !15

for.end46:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %b) #5
  ret i32 %max.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %a = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 captures(none) dereferenceable(100) %a) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef nonnull %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %call2 = call noundef i32 @_Z1fPii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(100) %a, i32 noundef %0) #7
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree nounwind willreturn }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
