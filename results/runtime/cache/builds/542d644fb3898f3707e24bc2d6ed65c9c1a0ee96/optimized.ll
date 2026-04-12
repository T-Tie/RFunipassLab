; ModuleID = '<stdin>'
source_filename = "/tmp/tmpob4kx_ss.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %LEN = alloca i32, align 4
  %i = alloca i32, align 4
  %sz = alloca [1000 x i32], align 16
  %js = alloca [1000 x i32], align 16
  %k2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %LEN) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %sz) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef %js) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %LEN)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %LEN, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  call fastcc void @outlined_ir_func_0(ptr %i)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %k2) #5
  store i32 1, ptr %k2, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %if.end32, %for.end
  %2 = load i32, ptr %k2, align 4, !tbaa !5
  %3 = load i32, ptr %LEN, align 4, !tbaa !5
  %cmp4 = icmp sle i32 %2, %3
  br i1 %cmp4, label %for.body5, label %for.end35

for.body5:                                        ; preds = %for.cond3
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc16, %for.body5
  %i6.0 = phi i32 [ 0, %for.body5 ], [ %inc17, %for.inc16 ]
  %maxIndex.0 = phi i32 [ 0, %for.body5 ], [ %maxIndex.1, %for.inc16 ]
  %sub = sub nsw i32 %3, %2
  %cmp8 = icmp sle i32 %i6.0, %sub
  br i1 %cmp8, label %for.body10, label %for.end18

for.body10:                                       ; preds = %for.cond7
  %idxprom11 = sext i32 %i6.0 to i64
  %arrayidx12 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom11
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5, !invariant.load !9
  %idxprom13 = sext i32 %maxIndex.0 to i64
  %arrayidx14 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom13
  %5 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !9
  %cmp15 = icmp sgt i32 %4, %5
  br i1 %cmp15, label %if.then, label %for.inc16

if.then:                                          ; preds = %for.body10
  br label %for.inc16

for.inc16:                                        ; preds = %for.body10, %if.then
  %maxIndex.1 = phi i32 [ %i6.0, %if.then ], [ %maxIndex.0, %for.body10 ]
  %inc17 = add nsw i32 %i6.0, 1
  br label %for.cond7, !llvm.loop !10

for.end18:                                        ; preds = %for.cond7
  %cmp20 = icmp ne i32 %maxIndex.0, %sub
  br i1 %cmp20, label %if.then21, label %if.end32

if.then21:                                        ; preds = %for.end18
  %idxprom22 = sext i32 %maxIndex.0 to i64
  %arrayidx23 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom22
  %6 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !9
  %idxprom25 = sext i32 %sub to i64
  %arrayidx26 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom25
  %7 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !9
  store i32 %7, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx26, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %for.end18
  call fastcc void @outlined_ir_func_0(ptr %k2)
  br label %for.cond3

for.end35:                                        ; preds = %for.cond3
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k2) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc49, %for.end35
  %k.0 = phi i32 [ 0, %for.end35 ], [ %k.1, %for.inc49 ]
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %8, %3
  br i1 %cmp37, label %for.body38, label %for.end51

for.body38:                                       ; preds = %for.cond36
  %idxprom39 = sext i32 %8 to i64
  %arrayidx40 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom39
  %9 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !9
  %rem = srem i32 %9, 2
  %cmp41 = icmp ne i32 %rem, 0
  br i1 %cmp41, label %if.then42, label %for.inc49

if.then42:                                        ; preds = %for.body38
  %idxprom45 = sext i32 %k.0 to i64
  %arrayidx46 = getelementptr inbounds [1000 x i32], ptr %js, i64 0, i64 %idxprom45
  store i32 %9, ptr %arrayidx46, align 4, !tbaa !5
  %inc47 = add nsw i32 %k.0, 1
  br label %for.inc49

for.inc49:                                        ; preds = %for.body38, %if.then42
  %k.1 = phi i32 [ %inc47, %if.then42 ], [ %k.0, %for.body38 ]
  %inc50 = add nsw i32 %8, 1
  store i32 %inc50, ptr %i, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !13

for.end51:                                        ; preds = %for.cond36
  %cmp52 = icmp slt i32 %k.0, 2
  br i1 %cmp52, label %if.then53, label %if.then65

if.then53:                                        ; preds = %for.end51
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond54

for.cond54:                                       ; preds = %for.body56, %if.then53
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %10, %k.0
  br i1 %cmp55, label %for.body56, label %if.end63

for.body56:                                       ; preds = %for.cond54
  %idxprom57 = sext i32 %10 to i64
  %arrayidx58 = getelementptr inbounds [1000 x i32], ptr %js, i64 0, i64 %idxprom57
  %11 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !9
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11)
  call fastcc void @outlined_ir_func_0(ptr %i)
  br label %for.cond54

if.end63:                                         ; preds = %for.cond54
  %cmp64 = icmp sgt i32 %k.0, 1
  br i1 %cmp64, label %if.then65, label %if.end80

if.then65:                                        ; preds = %for.end51, %if.end63
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc73, %if.then65
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %sub67 = sub nsw i32 %k.0, 1
  %cmp68 = icmp slt i32 %12, %sub67
  br i1 %cmp68, label %for.inc73, label %for.end75

for.inc73:                                        ; preds = %for.cond66
  %idxprom70 = sext i32 %12 to i64
  %arrayidx71 = getelementptr inbounds [1000 x i32], ptr %js, i64 0, i64 %idxprom70
  %13 = load i32, ptr %arrayidx71, align 4, !tbaa !5, !invariant.load !9
  %call72 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %13)
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc74 = add nsw i32 %14, 1
  store i32 %inc74, ptr %i, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !14

for.end75:                                        ; preds = %for.cond66
  %idxprom77 = sext i32 %sub67 to i64
  %arrayidx78 = getelementptr inbounds [1000 x i32], ptr %js, i64 0, i64 %idxprom77
  %15 = load i32, ptr %arrayidx78, align 4, !tbaa !5, !invariant.load !9
  %call79 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15)
  br label %if.end80

if.end80:                                         ; preds = %for.end75, %if.end63
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %js) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %sz) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %LEN) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr %0) unnamed_addr #3 {
for.cond.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
