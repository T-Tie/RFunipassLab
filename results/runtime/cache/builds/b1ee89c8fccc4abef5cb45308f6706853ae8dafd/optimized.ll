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
for.end32:
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %a) #5
  store ptr null, ptr %a, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %b) #5
  store ptr null, ptr %b, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x1) #5
  store i32 0, ptr %x1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x2) #5
  store i32 0, ptr %x2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y1) #5
  store i32 0, ptr %y1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y2) #5
  store i32 0, ptr %y2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j) #5
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 4 dereferenceable(4) %x1, ptr noundef nonnull align 4 dereferenceable(4) %y1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %a, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j)
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 4 dereferenceable(4) %x2, ptr noundef nonnull align 4 dereferenceable(4) %y2, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %b, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j)
  %0 = load i32, ptr %x1, align 4, !tbaa !10
  %1 = load i32, ptr %y2, align 4, !tbaa !10
  %mul33 = mul nsw i32 %1, %0
  %conv34 = sext i32 %mul33 to i64
  %mul35 = mul i64 %conv34, 4
  %call36 = call noalias ptr @malloc(i64 noundef %mul35) #6
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc74, %for.end32
  %2 = load i32, ptr %i, align 4, !tbaa !10
  %3 = load i32, ptr %x1, align 4, !tbaa !10
  %cmp38 = icmp slt i32 %2, %3
  br i1 %cmp38, label %for.body39, label %for.end76

for.body39:                                       ; preds = %for.cond37
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc71, %for.body39
  %4 = load i32, ptr %j, align 4, !tbaa !10
  %5 = load i32, ptr %y2, align 4, !tbaa !10
  %cmp41 = icmp slt i32 %4, %5
  br i1 %cmp41, label %for.body42, label %for.inc74

for.body42:                                       ; preds = %for.cond40
  %mul43 = mul nsw i32 %5, %2
  %add44 = add nsw i32 %mul43, %4
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %call36, i64 %idxprom45
  store i32 0, ptr %arrayidx46, align 4, !tbaa !10
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc68, %for.body42
  %k.0 = phi i32 [ 0, %for.body42 ], [ %inc69, %for.inc68 ]
  %6 = load i32, ptr %x2, align 4, !tbaa !10
  %cmp48 = icmp slt i32 %k.0, %6
  br i1 %cmp48, label %for.inc68, label %for.inc71

for.inc68:                                        ; preds = %for.cond47
  %7 = load i32, ptr %arrayidx46, align 4, !tbaa !10
  %8 = load ptr, ptr %a, align 8, !tbaa !5
  %9 = load i32, ptr %y1, align 4, !tbaa !10
  %mul54 = mul nsw i32 %9, %2
  %add55 = add nsw i32 %mul54, %k.0
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %8, i64 %idxprom56
  %10 = load i32, ptr %arrayidx57, align 4, !tbaa !10, !invariant.load !12
  %11 = load ptr, ptr %b, align 8, !tbaa !5
  %mul58 = mul nsw i32 %5, %k.0
  %add59 = add nsw i32 %mul58, %4
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %11, i64 %idxprom60
  %12 = load i32, ptr %arrayidx61, align 4, !tbaa !10, !invariant.load !12
  %mul62 = mul nsw i32 %12, %10
  %add63 = add nsw i32 %mul62, %7
  store i32 %add63, ptr %arrayidx46, align 4, !tbaa !10
  %inc69 = add nsw i32 %k.0, 1
  br label %for.cond47, !llvm.loop !13

for.inc71:                                        ; preds = %for.cond47
  %inc72 = add nsw i32 %4, 1
  store i32 %inc72, ptr %j, align 4, !tbaa !10
  br label %for.cond40, !llvm.loop !16

for.inc74:                                        ; preds = %for.cond40
  %inc75 = add nsw i32 %2, 1
  store i32 %inc75, ptr %i, align 4, !tbaa !10
  br label %for.cond37, !llvm.loop !17

for.end76:                                        ; preds = %for.cond37
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc98, %for.end76
  %13 = load i32, ptr %i, align 4, !tbaa !10
  %14 = load i32, ptr %x1, align 4, !tbaa !10
  %cmp78 = icmp slt i32 %13, %14
  br i1 %cmp78, label %for.body79, label %for.end100

for.body79:                                       ; preds = %for.cond77
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc95, %for.body79
  %15 = load i32, ptr %j, align 4, !tbaa !10
  %16 = load i32, ptr %y2, align 4, !tbaa !10
  %cmp81 = icmp slt i32 %15, %16
  br i1 %cmp81, label %for.body82, label %for.inc98

for.body82:                                       ; preds = %for.cond80
  %mul83 = mul nsw i32 %16, %13
  %add84 = add nsw i32 %mul83, %15
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %call36, i64 %idxprom85
  %17 = load i32, ptr %arrayidx86, align 4, !tbaa !10
  %call87 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %17)
  %18 = load i32, ptr %y2, align 4, !tbaa !10
  %sub = sub nsw i32 %18, 1
  %cmp88 = icmp slt i32 %15, %sub
  br i1 %cmp88, label %if.then, label %if.end

if.then:                                          ; preds = %for.body82
  %call89 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body82
  %19 = load i32, ptr %y2, align 4, !tbaa !10
  %sub90 = sub nsw i32 %19, 1
  %cmp91 = icmp eq i32 %15, %sub90
  br i1 %cmp91, label %if.then92, label %for.inc95

if.then92:                                        ; preds = %if.end
  %call93 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %for.inc95

for.inc95:                                        ; preds = %if.end, %if.then92
  %inc96 = add nsw i32 %15, 1
  store i32 %inc96, ptr %j, align 4, !tbaa !10
  br label %for.cond80, !llvm.loop !18

for.inc98:                                        ; preds = %for.cond80
  %inc99 = add nsw i32 %13, 1
  store i32 %inc99, ptr %i, align 4, !tbaa !10
  br label %for.cond77, !llvm.loop !19

for.end100:                                       ; preds = %for.cond77
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef captures(none) %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef captures(none) %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef captures(none) %y2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef captures(none) %y1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef captures(none) %x2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef captures(none) %x1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef captures(none) %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef captures(none) %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) unnamed_addr #4 {
entry_to_outline:
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %5 = load i32, ptr %0, align 4, !tbaa !10
  %6 = load i32, ptr %1, align 4, !tbaa !10
  %mul = mul nsw i32 %6, %5
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %call2 = call noalias ptr @malloc(i64 noundef %mul1) #6
  store ptr %call2, ptr %2, align 8, !tbaa !5
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry_to_outline
  %7 = load i32, ptr %3, align 4, !tbaa !10
  %8 = load i32, ptr %0, align 4, !tbaa !10
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end10.exitStub

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %4, align 4, !tbaa !10
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %4, align 4, !tbaa !10
  %10 = load i32, ptr %1, align 4, !tbaa !10
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond3
  %mul6 = mul nsw i32 %10, %7
  %add = add nsw i32 %mul6, %9
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %call2, i64 %idxprom
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %4, align 4, !tbaa !10
  br label %for.cond3, !llvm.loop !20

for.inc8:                                         ; preds = %for.cond3
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, ptr %3, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !21

for.end10.exitStub:                               ; preds = %for.cond
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14, !15}
!19 = distinct !{!19, !14, !15}
!20 = distinct !{!20, !14, !15}
!21 = distinct !{!21, !14, !15}
