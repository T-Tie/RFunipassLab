; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1sg02844.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x2) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %x1, ptr noundef align 4 %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.end ]
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %6
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.body3, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body3 ]
  %7 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %8 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %8
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %inc8 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x2, ptr noundef %y2)
  %9 = load i32, ptr %x2, align 4, !tbaa !5
  %10 = zext i32 %9 to i64
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %12 = zext i32 %11 to i64
  %13 = mul nuw i64 %10, %12
  %vla11 = alloca i32, i64 %13, align 16
  br label %for.cond12

for.cond12:                                       ; preds = %for.end25, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc27, %for.end25 ]
  %14 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %i.1, %14
  br i1 %cmp13, label %for.body14, label %for.end28

for.body14:                                       ; preds = %for.cond12
  br label %for.cond15

for.cond15:                                       ; preds = %for.body17, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc24, %for.body17 ]
  %15 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %j.1, %15
  br i1 %cmp16, label %for.body17, label %for.end25

for.body17:                                       ; preds = %for.cond15
  %idxprom18 = sext i32 %i.1 to i64
  %16 = mul nsw i64 %idxprom18, %12
  %arrayidx19 = getelementptr inbounds i32, ptr %vla11, i64 %16
  %idxprom20 = sext i32 %j.1 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %arrayidx19, i64 %idxprom20
  %call22 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx21)
  %inc24 = add nsw i32 %j.1, 1
  br label %for.cond15, !llvm.loop !13

for.end25:                                        ; preds = %for.cond15
  %inc27 = add nsw i32 %i.1, 1
  br label %for.cond12, !llvm.loop !14

for.end28:                                        ; preds = %for.cond12
  %17 = load i32, ptr %x1, align 4, !tbaa !5
  %18 = zext i32 %17 to i64
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %20 = zext i32 %19 to i64
  %21 = mul nuw i64 %18, %20
  %vla29 = alloca i32, i64 %21, align 16
  br label %for.cond30

for.cond30:                                       ; preds = %for.end42, %for.end28
  %i.2 = phi i32 [ 0, %for.end28 ], [ %inc44, %for.end42 ]
  %cmp31 = icmp slt i32 %i.2, %17
  br i1 %cmp31, label %for.body32, label %for.end45

for.body32:                                       ; preds = %for.cond30
  br label %for.cond33

for.cond33:                                       ; preds = %for.body35, %for.body32
  %j.2 = phi i32 [ 0, %for.body32 ], [ %inc41, %for.body35 ]
  %cmp34 = icmp slt i32 %j.2, %19
  br i1 %cmp34, label %for.body35, label %for.end42

for.body35:                                       ; preds = %for.cond33
  %idxprom36 = sext i32 %i.2 to i64
  %22 = mul nsw i64 %idxprom36, %20
  %arrayidx37 = getelementptr inbounds i32, ptr %vla29, i64 %22
  %idxprom38 = sext i32 %j.2 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %arrayidx37, i64 %idxprom38
  store i32 0, ptr %arrayidx39, align 4, !tbaa !5
  %inc41 = add nsw i32 %j.2, 1
  br label %for.cond33, !llvm.loop !15

for.end42:                                        ; preds = %for.cond33
  %inc44 = add nsw i32 %i.2, 1
  br label %for.cond30, !llvm.loop !16

for.end45:                                        ; preds = %for.cond30
  br label %for.cond46

for.cond46:                                       ; preds = %for.end76, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc78, %for.end76 ]
  %cmp47 = icmp slt i32 %i.3, %17
  br i1 %cmp47, label %for.body48, label %for.end79

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.end73, %for.body48
  %j.3 = phi i32 [ 0, %for.body48 ], [ %inc75, %for.end73 ]
  %cmp50 = icmp slt i32 %j.3, %19
  br i1 %cmp50, label %for.body51, label %for.end76

for.body51:                                       ; preds = %for.cond49
  br label %for.cond52

for.cond52:                                       ; preds = %for.body54, %for.body51
  %k.0 = phi i32 [ 0, %for.body51 ], [ %inc72, %for.body54 ]
  %cmp53 = icmp slt i32 %k.0, %14
  br i1 %cmp53, label %for.body54, label %for.end73

for.body54:                                       ; preds = %for.cond52
  %idxprom55 = sext i32 %i.3 to i64
  %23 = mul nsw i64 %idxprom55, %20
  %arrayidx56 = getelementptr inbounds i32, ptr %vla29, i64 %23
  %idxprom57 = sext i32 %j.3 to i64
  %arrayidx58 = getelementptr inbounds i32, ptr %arrayidx56, i64 %idxprom57
  %24 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %25 = mul nsw i64 %idxprom55, %3
  %arrayidx60 = getelementptr inbounds i32, ptr %vla, i64 %25
  %idxprom61 = sext i32 %k.0 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %arrayidx60, i64 %idxprom61
  %26 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %27 = mul nsw i64 %idxprom61, %12
  %arrayidx64 = getelementptr inbounds i32, ptr %vla11, i64 %27
  %arrayidx66 = getelementptr inbounds i32, ptr %arrayidx64, i64 %idxprom57
  %28 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %mul = mul nsw i32 %26, %28
  %add = add nsw i32 %24, %mul
  store i32 %add, ptr %arrayidx58, align 4, !tbaa !5
  %inc72 = add nsw i32 %k.0, 1
  br label %for.cond52, !llvm.loop !17

for.end73:                                        ; preds = %for.cond52
  %inc75 = add nsw i32 %j.3, 1
  br label %for.cond49, !llvm.loop !18

for.end76:                                        ; preds = %for.cond49
  %inc78 = add nsw i32 %i.3, 1
  br label %for.cond46, !llvm.loop !19

for.end79:                                        ; preds = %for.cond46
  br label %for.cond80

for.cond80:                                       ; preds = %for.end97, %for.end79
  %i.4 = phi i32 [ 0, %for.end79 ], [ %inc100, %for.end97 ]
  %29 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %i.4, %29
  br i1 %cmp81, label %for.body82, label %for.end101

for.body82:                                       ; preds = %for.cond80
  %idxprom83 = sext i32 %i.4 to i64
  %30 = mul nsw i64 %idxprom83, %20
  %arrayidx84 = getelementptr inbounds i32, ptr %vla29, i64 %30
  %31 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %call86 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %31)
  br label %for.cond87

for.cond87:                                       ; preds = %for.body89, %for.body82
  %j.4 = phi i32 [ 1, %for.body82 ], [ %inc96, %for.body89 ]
  %32 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %j.4, %32
  br i1 %cmp88, label %for.body89, label %for.end97

for.body89:                                       ; preds = %for.cond87
  %idxprom92 = sext i32 %j.4 to i64
  %arrayidx93 = getelementptr inbounds i32, ptr %arrayidx84, i64 %idxprom92
  %33 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %call94 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %33)
  %inc96 = add nsw i32 %j.4, 1
  br label %for.cond87, !llvm.loop !20

for.end97:                                        ; preds = %for.cond87
  %call98 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %inc100 = add nsw i32 %i.4, 1
  br label %for.cond80, !llvm.loop !21

for.end101:                                       ; preds = %for.cond80
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x1) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
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
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
