; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn8eldr8n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %b = alloca [10 x i32], align 16
  %c = alloca [10 x i32], align 16
  %d = alloca [10 x i32], align 16
  %e = alloca [10 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %row) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %col) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef align 16 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef align 16 %c) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef align 16 %d) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef align 16 %e) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %row, ptr noundef align 4 %col)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %x.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %0 = load i32, ptr %row, align 4, !tbaa !5
  %cmp = icmp slt i32 %x.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %y.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %col, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %y.0, %1
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %x.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %y.0 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  %inc = add nsw i32 %y.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %x.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc45, %for.end9
  %x.1 = phi i32 [ 0, %for.end9 ], [ %inc46, %for.inc45 ]
  %cmp11 = icmp slt i32 %x.1, %0
  br i1 %cmp11, label %for.body12, label %for.end47

for.body12:                                       ; preds = %for.cond10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc42, %for.body12
  %y.1 = phi i32 [ 0, %for.body12 ], [ %inc43, %for.inc42 ]
  %2 = load i32, ptr %col, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %y.1, %2
  br i1 %cmp14, label %for.body15, label %for.inc45

for.body15:                                       ; preds = %for.cond13
  %cmp16 = icmp eq i32 %y.1, 0
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %for.body15
  %idxprom17 = sext i32 %x.1 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom17
  %3 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %arrayidx22 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 %idxprom17
  store i32 %3, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.inc42.gvnsink.split

if.else:                                          ; preds = %for.body15
  %idxprom25 = sext i32 %x.1 to i64
  %arrayidx26 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom25
  %idxprom27 = sext i32 %y.1 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %arrayidx26, i64 0, i64 %idxprom27
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %arrayidx30 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 %idxprom25
  %5 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %4, %5
  br i1 %cmp31, label %if.then32, label %for.inc42

if.then32:                                        ; preds = %if.else
  store i32 %4, ptr %arrayidx30, align 4, !tbaa !5
  br label %for.inc42.gvnsink.split

for.inc42.gvnsink.split:                          ; preds = %if.then, %if.then32
  %idxprom25.sink = phi i64 [ %idxprom25, %if.then32 ], [ %idxprom17, %if.then ]
  %arrayidx40 = getelementptr inbounds [10 x i32], ptr %c, i64 0, i64 %idxprom25.sink
  store i32 %x.1, ptr %arrayidx40, align 4, !tbaa !5
  br label %for.inc42

for.inc42:                                        ; preds = %for.inc42.gvnsink.split, %if.else
  %inc43 = add nsw i32 %y.1, 1
  br label %for.cond13, !llvm.loop !13

for.inc45:                                        ; preds = %for.cond13
  %inc46 = add nsw i32 %x.1, 1
  br label %for.cond10, !llvm.loop !14

for.end47:                                        ; preds = %for.cond10
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc86, %for.end47
  %y.2 = phi i32 [ 0, %for.end47 ], [ %inc87, %for.inc86 ]
  %6 = load i32, ptr %col, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %y.2, %6
  br i1 %cmp49, label %for.body50, label %for.end88

for.body50:                                       ; preds = %for.cond48
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc83, %for.body50
  %x.2 = phi i32 [ 0, %for.body50 ], [ %inc84, %for.inc83 ]
  %cmp52 = icmp slt i32 %x.2, %0
  br i1 %cmp52, label %for.body53, label %for.inc86

for.body53:                                       ; preds = %for.cond51
  %cmp54 = icmp eq i32 %x.2, 0
  br i1 %cmp54, label %if.then55, label %if.else64

if.then55:                                        ; preds = %for.body53
  %idxprom58 = sext i32 %y.2 to i64
  %arrayidx59 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom58
  %7 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %arrayidx61 = getelementptr inbounds [10 x i32], ptr %d, i64 0, i64 %idxprom58
  store i32 %7, ptr %arrayidx61, align 4, !tbaa !5
  br label %for.inc83.gvnsink.split

if.else64:                                        ; preds = %for.body53
  %idxprom65 = sext i32 %x.2 to i64
  %arrayidx66 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom65
  %idxprom67 = sext i32 %y.2 to i64
  %arrayidx68 = getelementptr inbounds [100 x i32], ptr %arrayidx66, i64 0, i64 %idxprom67
  %8 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %arrayidx70 = getelementptr inbounds [10 x i32], ptr %d, i64 0, i64 %idxprom67
  %9 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %8, %9
  br i1 %cmp71, label %if.then72, label %for.inc83

if.then72:                                        ; preds = %if.else64
  store i32 %8, ptr %arrayidx70, align 4, !tbaa !5
  br label %for.inc83.gvnsink.split

for.inc83.gvnsink.split:                          ; preds = %if.then55, %if.then72
  %idxprom67.sink = phi i64 [ %idxprom67, %if.then72 ], [ %idxprom58, %if.then55 ]
  %arrayidx80 = getelementptr inbounds [10 x i32], ptr %e, i64 0, i64 %idxprom67.sink
  store i32 %y.2, ptr %arrayidx80, align 4, !tbaa !5
  br label %for.inc83

for.inc83:                                        ; preds = %for.inc83.gvnsink.split, %if.else64
  %inc84 = add nsw i32 %x.2, 1
  br label %for.cond51, !llvm.loop !15

for.inc86:                                        ; preds = %for.cond51
  %inc87 = add nsw i32 %y.2, 1
  br label %for.cond48, !llvm.loop !16

for.end88:                                        ; preds = %for.cond48
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc110, %for.end88
  %x.3 = phi i32 [ 0, %for.end88 ], [ %inc111, %for.inc110 ]
  %i.0 = phi i32 [ 0, %for.end88 ], [ %i.1, %for.inc110 ]
  %10 = load i32, ptr %row, align 4, !tbaa !5
  %cmp90 = icmp slt i32 %x.3, %10
  br i1 %cmp90, label %for.body91, label %for.end112

for.body91:                                       ; preds = %for.cond89
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc107, %for.body91
  %y.3 = phi i32 [ 0, %for.body91 ], [ %inc108, %for.inc107 ]
  %i.1 = phi i32 [ %i.0, %for.body91 ], [ %i.2, %for.inc107 ]
  %11 = load i32, ptr %col, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %y.3, %11
  br i1 %cmp93, label %for.body94, label %for.inc110

for.body94:                                       ; preds = %for.cond92
  %idxprom95 = sext i32 %x.3 to i64
  %arrayidx96 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 %idxprom95
  %12 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %idxprom97 = sext i32 %y.3 to i64
  %arrayidx98 = getelementptr inbounds [10 x i32], ptr %d, i64 0, i64 %idxprom97
  %13 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %cmp99 = icmp eq i32 %12, %13
  br i1 %cmp99, label %if.then100, label %for.inc107

if.then100:                                       ; preds = %for.body94
  %arrayidx102 = getelementptr inbounds [10 x i32], ptr %c, i64 0, i64 %idxprom95
  %14 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %arrayidx104 = getelementptr inbounds [10 x i32], ptr %e, i64 0, i64 %idxprom97
  %15 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  %call105 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %14, i32 noundef %15) #5
  br label %for.inc107

for.inc107:                                       ; preds = %for.body94, %if.then100
  %i.2 = phi i32 [ 1, %if.then100 ], [ %i.1, %for.body94 ]
  %inc108 = add nsw i32 %y.3, 1
  br label %for.cond92, !llvm.loop !17

for.inc110:                                       ; preds = %for.cond92
  %inc111 = add nsw i32 %x.3, 1
  br label %for.cond89, !llvm.loop !18

for.end112:                                       ; preds = %for.cond89
  %cmp113 = icmp eq i32 %i.0, 0
  br i1 %cmp113, label %if.then114, label %if.end116

if.then114:                                       ; preds = %for.end112
  %call115 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %for.end112
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef %e) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef %d) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %col) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %row) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #5
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
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
