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
  %call15.loc = alloca ptr, align 8
  %call2.loc = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x1) #6
  store i32 0, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x2) #6
  store i32 0, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y1) #6
  store i32 0, ptr %y1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y2) #6
  store i32 0, ptr %y2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %call2.loc) #7
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 4 dereferenceable(4) %x1, ptr noundef nonnull align 4 dereferenceable(4) %y1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call2.loc)
  %call2.reload = load ptr, ptr %call2.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef captures(none) %call2.loc)
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %call15.loc)
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 4 dereferenceable(4) %x2, ptr noundef nonnull align 4 dereferenceable(4) %y2, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call15.loc)
  %call15.reload = load ptr, ptr %call15.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef captures(none) %call15.loc)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = load i32, ptr %y2, align 4, !tbaa !5
  %mul33 = mul nsw i32 %0, %1
  %conv34 = sext i32 %mul33 to i64
  %mul35 = mul i64 %conv34, 4
  %call36 = call noalias ptr @malloc(i64 noundef %mul35) #8
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc74, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc75, %for.inc74 ]
  %2 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %i.2, %2
  br i1 %cmp38, label %for.body39, label %for.end76

for.body39:                                       ; preds = %for.cond37
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc71, %for.body39
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc72, %for.inc71 ]
  %3 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %j.2, %3
  br i1 %cmp41, label %for.body42, label %for.inc74

for.body42:                                       ; preds = %for.cond40
  %mul43 = mul nsw i32 %i.2, %3
  %add44 = add nsw i32 %mul43, %j.2
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %call36, i64 %idxprom45
  store i32 0, ptr %arrayidx46, align 4, !tbaa !5
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc68, %for.body42
  %k.0 = phi i32 [ 0, %for.body42 ], [ %inc69, %for.inc68 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %k.0, %4
  br i1 %cmp48, label %for.inc68, label %for.inc71

for.inc68:                                        ; preds = %for.cond47
  %5 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %6 = load i32, ptr %y1, align 4, !tbaa !5
  %mul54 = mul nsw i32 %i.2, %6
  %add55 = add nsw i32 %mul54, %k.0
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %call2.reload, i64 %idxprom56
  %7 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !9
  %mul58 = mul nsw i32 %k.0, %3
  %add59 = add nsw i32 %mul58, %j.2
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %call15.reload, i64 %idxprom60
  %8 = load i32, ptr %arrayidx61, align 4, !tbaa !5, !invariant.load !9
  %mul62 = mul nsw i32 %7, %8
  %add63 = add nsw i32 %5, %mul62
  store i32 %add63, ptr %arrayidx46, align 4, !tbaa !5
  %inc69 = add nsw i32 %k.0, 1
  br label %for.cond47, !llvm.loop !10

for.inc71:                                        ; preds = %for.cond47
  %inc72 = add nsw i32 %j.2, 1
  br label %for.cond40, !llvm.loop !13

for.inc74:                                        ; preds = %for.cond40
  %inc75 = add nsw i32 %i.2, 1
  br label %for.cond37, !llvm.loop !14

for.end76:                                        ; preds = %for.cond37
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc98, %for.end76
  %i.3 = phi i32 [ 0, %for.end76 ], [ %inc99, %for.inc98 ]
  %9 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %i.3, %9
  br i1 %cmp78, label %for.body79, label %for.end100

for.body79:                                       ; preds = %for.cond77
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc95, %for.body79
  %j.3 = phi i32 [ 0, %for.body79 ], [ %inc96, %for.inc95 ]
  %10 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %j.3, %10
  br i1 %cmp81, label %for.body82, label %for.inc98

for.body82:                                       ; preds = %for.cond80
  %mul83 = mul nsw i32 %i.3, %10
  %add84 = add nsw i32 %mul83, %j.3
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %call36, i64 %idxprom85
  %11 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %call87 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %11) #9
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = sub nsw i32 %12, 1
  %cmp88 = icmp slt i32 %j.3, %sub
  br i1 %cmp88, label %if.then, label %if.end

if.then:                                          ; preds = %for.body82
  %call89 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body82
  %13 = load i32, ptr %y2, align 4, !tbaa !5
  %sub90 = sub nsw i32 %13, 1
  %cmp91 = icmp eq i32 %j.3, %sub90
  br i1 %cmp91, label %if.then92, label %for.inc95

if.then92:                                        ; preds = %if.end
  %call93 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #9
  br label %for.inc95

for.inc95:                                        ; preds = %if.end, %if.then92
  %inc96 = add nsw i32 %j.3, 1
  br label %for.cond80, !llvm.loop !15

for.inc98:                                        ; preds = %for.cond80
  %inc99 = add nsw i32 %i.3, 1
  br label %for.cond77, !llvm.loop !16

for.end100:                                       ; preds = %for.cond77
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef captures(none) %y2) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef captures(none) %y1) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef captures(none) %x2) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef captures(none) %x1) #9
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

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 {
entry_to_outline:
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %3 = load i32, ptr %0, align 4, !tbaa !5
  %4 = load i32, ptr %1, align 4, !tbaa !5
  %mul = mul nsw i32 %3, %4
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %call2 = call noalias ptr @malloc(i64 noundef %mul1) #8
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry_to_outline
  %i.0 = phi i32 [ 0, %entry_to_outline ], [ %inc9, %for.inc8 ]
  %5 = load i32, ptr %0, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %5
  br i1 %cmp, label %for.body, label %for.end10.exitStub

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %6 = load i32, ptr %1, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %j.0, %6
  br i1 %cmp4, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond3
  %mul6 = mul nsw i32 %i.0, %6
  %add = add nsw i32 %mul6, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %call2, i64 %idxprom
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond3, !llvm.loop !17

for.inc8:                                         ; preds = %for.cond3
  %inc9 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !18

for.end10.exitStub:                               ; preds = %for.cond
  store ptr %call2, ptr %2, align 8
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nofree willreturn }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

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
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
