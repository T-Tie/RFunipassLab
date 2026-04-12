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
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %x1, ptr noundef align 4 %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond1
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %11
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  call fastcc void @outlined_ir_func_0(ptr %i)
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x2, ptr noundef %y2)
  %13 = load i32, ptr %x2, align 4, !tbaa !5
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %y2, align 4, !tbaa !5
  %16 = zext i32 %15 to i64
  %17 = mul nuw i64 %14, %16
  %vla11 = alloca i32, i64 %17, align 16
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.end25, %for.end9
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %18, %19
  br i1 %cmp13, label %for.body14, label %for.end28

for.body14:                                       ; preds = %for.cond12
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc23, %for.body14
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %21 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %20, %21
  br i1 %cmp16, label %for.inc23, label %for.end25

for.inc23:                                        ; preds = %for.cond15
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %22 to i64
  %23 = mul nsw i64 %idxprom18, %16
  %arrayidx19 = getelementptr inbounds i32, ptr %vla11, i64 %23
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %arrayidx19, i64 %idxprom20
  %call22 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx21)
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %inc24 = add nsw i32 %24, 1
  store i32 %inc24, ptr %j, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !12

for.end25:                                        ; preds = %for.cond15
  call fastcc void @outlined_ir_func_0(ptr %i)
  br label %for.cond12

for.end28:                                        ; preds = %for.cond12
  %25 = load i32, ptr %x1, align 4, !tbaa !5
  %26 = zext i32 %25 to i64
  %27 = load i32, ptr %y2, align 4, !tbaa !5
  %28 = zext i32 %27 to i64
  %29 = mul nuw i64 %26, %28
  %vla29 = alloca i32, i64 %29, align 16
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc43, %for.end28
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %30, %25
  br i1 %cmp31, label %for.body32, label %for.end45

for.body32:                                       ; preds = %for.cond30
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc40, %for.body32
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %31, %27
  br i1 %cmp34, label %for.inc40, label %for.inc43

for.inc40:                                        ; preds = %for.cond33
  %idxprom36 = sext i32 %30 to i64
  %32 = mul nsw i64 %idxprom36, %28
  %arrayidx37 = getelementptr inbounds i32, ptr %vla29, i64 %32
  %idxprom38 = sext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %arrayidx37, i64 %idxprom38
  store i32 0, ptr %arrayidx39, align 4, !tbaa !5
  %inc41 = add nsw i32 %31, 1
  store i32 %inc41, ptr %j, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !13

for.inc43:                                        ; preds = %for.cond33
  %inc44 = add nsw i32 %30, 1
  store i32 %inc44, ptr %i, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !14

for.end45:                                        ; preds = %for.cond30
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc77, %for.end45
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %33, %25
  br i1 %cmp47, label %for.body48, label %for.end79

for.body48:                                       ; preds = %for.cond46
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc74, %for.body48
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %34, %27
  br i1 %cmp50, label %for.body51, label %for.inc77

for.body51:                                       ; preds = %for.cond49
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc71, %for.body51
  %k.0 = phi i32 [ 0, %for.body51 ], [ %inc72, %for.inc71 ]
  %cmp53 = icmp slt i32 %k.0, %19
  br i1 %cmp53, label %for.inc71, label %for.inc74

for.inc71:                                        ; preds = %for.cond52
  %idxprom55 = sext i32 %33 to i64
  %35 = mul nsw i64 %idxprom55, %28
  %arrayidx56 = getelementptr inbounds i32, ptr %vla29, i64 %35
  %idxprom57 = sext i32 %34 to i64
  %arrayidx58 = getelementptr inbounds i32, ptr %arrayidx56, i64 %idxprom57
  %36 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !15
  %37 = mul nsw i64 %idxprom55, %3
  %arrayidx60 = getelementptr inbounds i32, ptr %vla, i64 %37
  %idxprom61 = sext i32 %k.0 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %arrayidx60, i64 %idxprom61
  %38 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !15
  %39 = mul nsw i64 %idxprom61, %16
  %arrayidx64 = getelementptr inbounds i32, ptr %vla11, i64 %39
  %arrayidx66 = getelementptr inbounds i32, ptr %arrayidx64, i64 %idxprom57
  %40 = load i32, ptr %arrayidx66, align 4, !tbaa !5, !invariant.load !15
  %mul = mul nsw i32 %38, %40
  %add = add nsw i32 %36, %mul
  store i32 %add, ptr %arrayidx58, align 4, !tbaa !5
  %inc72 = add nsw i32 %k.0, 1
  br label %for.cond52, !llvm.loop !16

for.inc74:                                        ; preds = %for.cond52
  %inc75 = add nsw i32 %34, 1
  store i32 %inc75, ptr %j, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !17

for.inc77:                                        ; preds = %for.cond49
  %inc78 = add nsw i32 %33, 1
  store i32 %inc78, ptr %i, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !18

for.end79:                                        ; preds = %for.cond46
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond80

for.cond80:                                       ; preds = %for.end97, %for.end79
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %42 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %41, %42
  br i1 %cmp81, label %for.body82, label %for.end101

for.body82:                                       ; preds = %for.cond80
  %idxprom83 = sext i32 %41 to i64
  %43 = mul nsw i64 %idxprom83, %28
  %arrayidx84 = getelementptr inbounds i32, ptr %vla29, i64 %43
  %44 = load i32, ptr %arrayidx84, align 4, !tbaa !5, !invariant.load !15
  %call86 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %44)
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond87

for.cond87:                                       ; preds = %for.body89, %for.body82
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %46 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %45, %46
  br i1 %cmp88, label %for.body89, label %for.end97

for.body89:                                       ; preds = %for.cond87
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom90 = sext i32 %47 to i64
  %48 = mul nsw i64 %idxprom90, %28
  %arrayidx91 = getelementptr inbounds i32, ptr %vla29, i64 %48
  %idxprom92 = sext i32 %45 to i64
  %arrayidx93 = getelementptr inbounds i32, ptr %arrayidx91, i64 %idxprom92
  %49 = load i32, ptr %arrayidx93, align 4, !tbaa !5, !invariant.load !15
  %call94 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %49)
  call fastcc void @outlined_ir_func_0(ptr %j)
  br label %for.cond87

for.end97:                                        ; preds = %for.cond87
  %call98 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call fastcc void @outlined_ir_func_0(ptr %i)
  br label %for.cond80

for.end101:                                       ; preds = %for.cond80
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x1) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr %0) unnamed_addr #4 {
for.cond.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc8 = add nsw i32 %1, 1
  store i32 %inc8, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
