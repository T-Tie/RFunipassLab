; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo0jhhppi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 %a) #6
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.122, %if.end17 ]
  %call18 = tail call i32 @getchar() #6
  %c.0 = trunc i32 %call18 to i8
  %sext = shl i32 %call18, 24
  %cmp.not = icmp eq i32 %sext, 167772160
  br i1 %cmp.not, label %for.cond.preheader, label %while.body

for.cond.preheader:                               ; preds = %while.cond
  %smax = call i32 @llvm.smax.i32(i32 %i.0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

while.body:                                       ; preds = %while.cond
  %conv1 = ashr exact i32 %sext, 24
  %0 = add nsw i32 %conv1, -65
  %or.cond = icmp ult i32 %0, 26
  br i1 %or.cond, label %if.then, label %if.end17

if.then:                                          ; preds = %while.body
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 %idxprom
  store i8 %c.0, ptr %arrayidx, align 1, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %if.end17

if.end17:                                         ; preds = %while.body, %if.then
  %i.122 = phi i32 [ %i.0, %while.body ], [ %inc, %if.then ]
  br label %while.cond, !llvm.loop !8

for.cond:                                         ; preds = %for.cond.preheader, %outlined_ir_func_0.exit
  %i.2 = phi i32 [ %inc37.i, %outlined_ir_func_0.exit ], [ 65, %for.cond.preheader ]
  br label %for.cond21

for.cond21:                                       ; preds = %for.body23, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body23 ], [ 0, %for.cond ]
  %k.0 = phi i32 [ %spec.select, %for.body23 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [300 x i8], ptr %a, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx25, align 1, !tbaa !5, !invariant.load !11
  %conv26 = sext i8 %1 to i32
  %cmp27 = icmp eq i32 %i.2, %conv26
  %inc29 = zext i1 %cmp27 to i32
  %spec.select = add nuw nsw i32 %k.0, %inc29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond21, !llvm.loop !12

for.end:                                          ; preds = %for.cond21
  %cmp32.not.i = icmp eq i32 %k.0, 0
  br i1 %cmp32.not.i, label %outlined_ir_func_0.exit, label %if.then33.i

if.then33.i:                                      ; preds = %for.end
  %call34.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.2, i32 noundef %k.0) #6, !noalias !13
  br label %outlined_ir_func_0.exit

outlined_ir_func_0.exit:                          ; preds = %for.end, %if.then33.i
  %inc37.i = add nuw nsw i32 %i.2, 1
  br label %for.cond
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nofree nounwind uwtable
declare noundef i32 @getchar() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{}
!12 = distinct !{!12, !9, !10}
!13 = !{!14}
!14 = distinct !{!14, !15, !"outlined_ir_func_0: argument 0"}
!15 = distinct !{!15, !"outlined_ir_func_0"}
