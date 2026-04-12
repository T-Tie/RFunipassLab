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
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %line = alloca i32, align 4
  %row = alloca i32, align 4
  %p = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %line) #3
  store i32 0, ptr %line, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %row) #3
  store i32 0, ptr %row, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef %p) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %k, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %p, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %0, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc29, %for.end9
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %4, %1
  br i1 %cmp11, label %for.body12, label %for.end31

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc26, %for.body12
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %5, %1
  br i1 %cmp14, label %for.body15, label %for.inc29

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %4 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr %p, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %5 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %6, 0
  br i1 %cmp20, label %land.lhs.true, label %for.inc26

land.lhs.true:                                    ; preds = %for.body15
  %sub = sub nsw i32 %4, 1
  %idxprom21 = sext i32 %sub to i64
  %arrayidx22 = getelementptr inbounds [100 x [100 x i32]], ptr %p, i64 0, i64 %idxprom21
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %arrayidx22, i64 0, i64 %idxprom18
  %7 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %7, 0
  br i1 %cmp25, label %if.then, label %for.inc26

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, ptr %row, align 4, !tbaa !5
  %add = add nsw i32 %8, 1
  store i32 %add, ptr %row, align 4, !tbaa !5
  br label %for.inc26

for.inc26:                                        ; preds = %for.body15, %land.lhs.true, %if.then
  %inc27 = add nsw i32 %5, 1
  store i32 %inc27, ptr %k, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.inc29:                                        ; preds = %for.cond13
  %inc30 = add nsw i32 %4, 1
  store i32 %inc30, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end31:                                        ; preds = %for.cond10
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc56, %for.end31
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %9, %1
  br i1 %cmp33, label %for.body34, label %for.end58

for.body34:                                       ; preds = %for.cond32
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc53, %for.body34
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %10, %1
  br i1 %cmp36, label %for.body37, label %for.inc56

for.body37:                                       ; preds = %for.cond35
  %idxprom38 = sext i32 %10 to i64
  %arrayidx39 = getelementptr inbounds [100 x [100 x i32]], ptr %p, i64 0, i64 %idxprom38
  %idxprom40 = sext i32 %9 to i64
  %arrayidx41 = getelementptr inbounds [100 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  %11 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %11, 0
  br i1 %cmp42, label %land.lhs.true43, label %for.inc53

land.lhs.true43:                                  ; preds = %for.body37
  %sub46 = sub nsw i32 %9, 1
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %arrayidx39, i64 0, i64 %idxprom47
  %12 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %12, 0
  br i1 %cmp49, label %if.then50, label %for.inc53

if.then50:                                        ; preds = %land.lhs.true43
  %13 = load i32, ptr %line, align 4, !tbaa !5
  %add51 = add nsw i32 %13, 1
  store i32 %add51, ptr %line, align 4, !tbaa !5
  br label %for.inc53

for.inc53:                                        ; preds = %for.body37, %land.lhs.true43, %if.then50
  %inc54 = add nsw i32 %10, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !15

for.inc56:                                        ; preds = %for.cond35
  %inc57 = add nsw i32 %9, 1
  store i32 %inc57, ptr %k, align 4, !tbaa !5
  br label %for.cond32, !llvm.loop !16

for.end58:                                        ; preds = %for.cond32
  %14 = load i32, ptr %line, align 4, !tbaa !5
  %div = sdiv i32 %14, 2
  %sub59 = sub nsw i32 %div, 1
  %15 = load i32, ptr %row, align 4, !tbaa !5
  %div60 = sdiv i32 %15, 2
  %sub61 = sub nsw i32 %div60, 1
  %mul = mul nsw i32 %sub59, %sub61
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %p) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %row) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %line) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
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
!16 = distinct !{!16, !10, !11}
