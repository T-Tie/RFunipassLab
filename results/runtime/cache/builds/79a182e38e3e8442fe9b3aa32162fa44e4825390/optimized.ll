; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzqh_pek9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %p = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef %p) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %k.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %k.0, %1
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %p, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %k.0 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %k.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc29, %for.end9
  %row.0 = phi i32 [ 0, %for.end9 ], [ %row.1, %for.inc29 ]
  %i.1 = phi i32 [ 1, %for.end9 ], [ %inc30, %for.inc29 ]
  %cmp11 = icmp slt i32 %i.1, %0
  br i1 %cmp11, label %for.body12, label %for.end31

for.body12:                                       ; preds = %for.cond10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc26, %for.body12
  %row.1 = phi i32 [ %row.0, %for.body12 ], [ %row.2, %for.inc26 ]
  %k.1 = phi i32 [ 0, %for.body12 ], [ %inc27, %for.inc26 ]
  %cmp14 = icmp slt i32 %k.1, %0
  br i1 %cmp14, label %for.body15, label %for.inc29

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %i.1 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr %p, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %k.1 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %2, 0
  br i1 %cmp20, label %land.lhs.true, label %for.inc26

land.lhs.true:                                    ; preds = %for.body15
  %sub = sub nsw i32 %i.1, 1
  %idxprom21 = sext i32 %sub to i64
  %arrayidx22 = getelementptr inbounds [100 x [100 x i32]], ptr %p, i64 0, i64 %idxprom21
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %arrayidx22, i64 0, i64 %idxprom18
  %3 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %3, 0
  br i1 %cmp25, label %if.then, label %for.inc26

if.then:                                          ; preds = %land.lhs.true
  %add = add nsw i32 %row.1, 1
  br label %for.inc26

for.inc26:                                        ; preds = %for.body15, %land.lhs.true, %if.then
  %row.2 = phi i32 [ %add, %if.then ], [ %row.1, %land.lhs.true ], [ %row.1, %for.body15 ]
  %inc27 = add nsw i32 %k.1, 1
  br label %for.cond13, !llvm.loop !13

for.inc29:                                        ; preds = %for.cond13
  %inc30 = add nsw i32 %i.1, 1
  br label %for.cond10, !llvm.loop !14

for.end31:                                        ; preds = %for.cond10
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc56, %for.end31
  %line.0 = phi i32 [ 0, %for.end31 ], [ %line.1, %for.inc56 ]
  %k.2 = phi i32 [ 1, %for.end31 ], [ %inc57, %for.inc56 ]
  %cmp33 = icmp slt i32 %k.2, %0
  br i1 %cmp33, label %for.body34, label %for.end58

for.body34:                                       ; preds = %for.cond32
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc53, %for.body34
  %line.1 = phi i32 [ %line.0, %for.body34 ], [ %line.2, %for.inc53 ]
  %i.2 = phi i32 [ 0, %for.body34 ], [ %inc54, %for.inc53 ]
  %cmp36 = icmp slt i32 %i.2, %0
  br i1 %cmp36, label %for.body37, label %for.inc56

for.body37:                                       ; preds = %for.cond35
  %idxprom38 = sext i32 %i.2 to i64
  %arrayidx39 = getelementptr inbounds [100 x [100 x i32]], ptr %p, i64 0, i64 %idxprom38
  %idxprom40 = sext i32 %k.2 to i64
  %arrayidx41 = getelementptr inbounds [100 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  %4 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %4, 0
  br i1 %cmp42, label %land.lhs.true43, label %for.inc53

land.lhs.true43:                                  ; preds = %for.body37
  %sub46 = sub nsw i32 %k.2, 1
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %arrayidx39, i64 0, i64 %idxprom47
  %5 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %5, 0
  br i1 %cmp49, label %if.then50, label %for.inc53

if.then50:                                        ; preds = %land.lhs.true43
  %add51 = add nsw i32 %line.1, 1
  br label %for.inc53

for.inc53:                                        ; preds = %for.body37, %land.lhs.true43, %if.then50
  %line.2 = phi i32 [ %add51, %if.then50 ], [ %line.1, %land.lhs.true43 ], [ %line.1, %for.body37 ]
  %inc54 = add nsw i32 %i.2, 1
  br label %for.cond35, !llvm.loop !15

for.inc56:                                        ; preds = %for.cond35
  %inc57 = add nsw i32 %k.2, 1
  br label %for.cond32, !llvm.loop !16

for.end58:                                        ; preds = %for.cond32
  %div = sdiv i32 %line.0, 2
  %sub59 = sub nsw i32 %div, 1
  %div60 = sdiv i32 %row.0, 2
  %sub61 = sub nsw i32 %div60, 1
  %mul = mul nsw i32 %sub59, %sub61
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %p) #5
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
attributes #4 = { nofree nounwind willreturn }
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
!16 = distinct !{!16, !10, !11}
