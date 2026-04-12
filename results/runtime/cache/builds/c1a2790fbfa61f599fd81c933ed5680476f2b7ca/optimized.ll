; ModuleID = '<stdin>'
source_filename = "/tmp/tmp38sy0jg6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
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
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x1) #5
  store i32 0, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x2) #5
  store i32 0, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y1) #5
  store i32 0, ptr %y1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y2) #5
  store i32 0, ptr %y2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %x1, ptr noundef align 4 %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = load i32, ptr %y1, align 4, !tbaa !5
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %call2 = call noalias ptr @malloc(i64 noundef %mul1) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond3
  %mul6 = mul nsw i32 %2, %5
  %add = add nsw i32 %mul6, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %call2, i64 %idxprom
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond3
  %inc9 = add nsw i32 %2, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x2, ptr noundef %y2)
  %6 = load i32, ptr %x2, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4, !tbaa !5
  %mul12 = mul nsw i32 %6, %7
  %conv13 = sext i32 %mul12 to i64
  %mul14 = mul i64 %conv13, 4
  %call15 = call noalias ptr @malloc(i64 noundef %mul14) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.end10
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %8, %9
  br i1 %cmp17, label %for.body18, label %for.end32

for.body18:                                       ; preds = %for.cond16
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc27, %for.body18
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %10, %11
  br i1 %cmp20, label %for.inc27, label %for.inc30

for.inc27:                                        ; preds = %for.cond19
  %mul22 = mul nsw i32 %8, %11
  %add23 = add nsw i32 %mul22, %10
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %call15, i64 %idxprom24
  %call26 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx25)
  %inc28 = add nsw i32 %10, 1
  store i32 %inc28, ptr %j, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !13

for.inc30:                                        ; preds = %for.cond19
  %inc31 = add nsw i32 %8, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.end32:                                        ; preds = %for.cond16
  %12 = load i32, ptr %x1, align 4, !tbaa !5
  %13 = load i32, ptr %y2, align 4, !tbaa !5
  %mul33 = mul nsw i32 %12, %13
  %conv34 = sext i32 %mul33 to i64
  %mul35 = mul i64 %conv34, 4
  %call36 = call noalias ptr @malloc(i64 noundef %mul35) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc74, %for.end32
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %14, %12
  br i1 %cmp38, label %for.body39, label %for.end76

for.body39:                                       ; preds = %for.cond37
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc71, %for.body39
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %15, %13
  br i1 %cmp41, label %for.body42, label %for.inc74

for.body42:                                       ; preds = %for.cond40
  %mul43 = mul nsw i32 %14, %13
  %add44 = add nsw i32 %mul43, %15
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %call36, i64 %idxprom45
  store i32 0, ptr %arrayidx46, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc68, %for.body42
  %16 = load i32, ptr %k, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %16, %9
  br i1 %cmp48, label %for.inc68, label %for.inc71

for.inc68:                                        ; preds = %for.cond47
  %17 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !15
  %18 = load i32, ptr %y1, align 4, !tbaa !5
  %mul54 = mul nsw i32 %14, %18
  %add55 = add nsw i32 %mul54, %16
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %call2, i64 %idxprom56
  %19 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !15
  %mul58 = mul nsw i32 %16, %13
  %add59 = add nsw i32 %mul58, %15
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %call15, i64 %idxprom60
  %20 = load i32, ptr %arrayidx61, align 4, !tbaa !5, !invariant.load !15
  %mul62 = mul nsw i32 %19, %20
  %add63 = add nsw i32 %17, %mul62
  store i32 %add63, ptr %arrayidx46, align 4, !tbaa !5
  %inc69 = add nsw i32 %16, 1
  store i32 %inc69, ptr %k, align 4, !tbaa !5
  br label %for.cond47, !llvm.loop !16

for.inc71:                                        ; preds = %for.cond47
  %inc72 = add nsw i32 %15, 1
  store i32 %inc72, ptr %j, align 4, !tbaa !5
  br label %for.cond40, !llvm.loop !17

for.inc74:                                        ; preds = %for.cond40
  %inc75 = add nsw i32 %14, 1
  store i32 %inc75, ptr %i, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !18

for.end76:                                        ; preds = %for.cond37
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc98, %for.end76
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %22 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %21, %22
  br i1 %cmp78, label %for.body79, label %for.end100

for.body79:                                       ; preds = %for.cond77
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc95, %for.body79
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %24 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %23, %24
  br i1 %cmp81, label %for.body82, label %for.inc98

for.body82:                                       ; preds = %for.cond80
  %mul83 = mul nsw i32 %21, %24
  %add84 = add nsw i32 %mul83, %23
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %call36, i64 %idxprom85
  %25 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %call87 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %25) #7
  %26 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = sub nsw i32 %26, 1
  %cmp88 = icmp slt i32 %23, %sub
  br i1 %cmp88, label %if.then, label %if.end

if.then:                                          ; preds = %for.body82
  %call89 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body82
  %27 = load i32, ptr %y2, align 4, !tbaa !5
  %sub90 = sub nsw i32 %27, 1
  %cmp91 = icmp eq i32 %23, %sub90
  br i1 %cmp91, label %if.then92, label %for.inc95

if.then92:                                        ; preds = %if.end
  %call93 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #7
  br label %for.inc95

for.inc95:                                        ; preds = %if.end, %if.then92
  %inc96 = add nsw i32 %23, 1
  store i32 %inc96, ptr %j, align 4, !tbaa !5
  br label %for.cond80, !llvm.loop !19

for.inc98:                                        ; preds = %for.cond80
  %inc99 = add nsw i32 %21, 1
  store i32 %inc99, ptr %i, align 4, !tbaa !5
  br label %for.cond77, !llvm.loop !20

for.end100:                                       ; preds = %for.cond77
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x1) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind allocsize(0) }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
