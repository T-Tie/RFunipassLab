; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsa57m9s7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.res = private unnamed_addr constant [32 x i8] c"0000000000000000000000000000001\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %res = alloca [32 x i8], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %res, ptr noundef nonnull align 16 dereferenceable(32) @__const.main.res, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %0, 0
  br i1 %cmp19, label %for.cond1.preheader, label %land.rhs.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc8
  %i.021 = phi i32 [ %inc, %for.inc8 ], [ 0, %entry ]
  %c.020 = phi i32 [ %div, %for.inc8 ], [ 0, %entry ]
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ 30, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %c.118 = phi i32 [ %c.020, %for.cond1.preheader ], [ %div, %for.body3 ]
  %arrayidx = getelementptr inbounds nuw [32 x i8], ptr %res, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %sub = shl nsw i32 %conv, 1
  %mul = add nsw i32 %c.118, -96
  %add = add nsw i32 %mul, %sub
  %rem = srem i32 %add, 10
  %2 = trunc nsw i32 %rem to i8
  %conv5 = add nsw i8 %2, 48
  store i8 %conv5, ptr %arrayidx, align 1, !tbaa !9
  %div = sdiv i32 %add, 10
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp2.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp2.not, label %for.inc8, label %for.body3, !llvm.loop !10

for.inc8:                                         ; preds = %for.body3
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %land.rhs.preheader, label %for.cond1.preheader, !llvm.loop !13

land.rhs.preheader:                               ; preds = %for.inc8, %entry
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %for.inc17
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc17 ], [ 0, %land.rhs.preheader ]
  %arrayidx13 = getelementptr inbounds nuw [32 x i8], ptr %res, i64 0, i64 %indvars.iv26
  %3 = load i8, ptr %arrayidx13, align 1, !tbaa !9
  %cmp15 = icmp eq i8 %3, 48
  br i1 %cmp15, label %for.inc17, label %for.end19

for.inc17:                                        ; preds = %land.rhs
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond29.not = icmp eq i64 %indvars.iv.next27, 31
  br i1 %exitcond29.not, label %for.end30, label %land.rhs, !llvm.loop !14

for.end19:                                        ; preds = %land.rhs
  %cmp2123 = icmp samesign ult i64 %indvars.iv26, 31
  br i1 %cmp2123, label %for.body22.preheader, label %for.end30

for.body22.preheader:                             ; preds = %for.end19
  %4 = sub nuw nsw i64 31, %indvars.iv26
  %min.iters.check = icmp samesign ugt i64 %indvars.iv26, 27
  br i1 %min.iters.check, label %for.body22.preheader44, label %vector.ph

vector.ph:                                        ; preds = %for.body22.preheader
  %n.vec = and i64 %4, 28
  %5 = add nuw nsw i64 %indvars.iv26, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %indvars.iv26, %index
  %6 = getelementptr inbounds nuw [32 x i8], ptr %res, i64 0, i64 %offset.idx
  %wide.load = load <4 x i8>, ptr %6, align 1, !tbaa !9
  %7 = getelementptr inbounds nuw [32 x i8], ptr %res, i64 0, i64 %index
  store <4 x i8> %wide.load, ptr %7, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %for.end30, label %for.body22.preheader44

for.body22.preheader44:                           ; preds = %for.body22.preheader, %middle.block
  %indvars.iv30.ph = phi i64 [ %indvars.iv26, %for.body22.preheader ], [ %5, %middle.block ]
  br label %for.body22

for.body22:                                       ; preds = %for.body22.preheader44, %for.body22
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.body22 ], [ %indvars.iv30.ph, %for.body22.preheader44 ]
  %arrayidx24 = getelementptr inbounds nuw [32 x i8], ptr %res, i64 0, i64 %indvars.iv30
  %9 = load i8, ptr %arrayidx24, align 1, !tbaa !9
  %10 = sub nuw nsw i64 %indvars.iv30, %indvars.iv26
  %arrayidx27 = getelementptr inbounds nuw [32 x i8], ptr %res, i64 0, i64 %10
  store i8 %9, ptr %arrayidx27, align 1, !tbaa !9
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, 31
  br i1 %exitcond34.not, label %for.end30, label %for.body22, !llvm.loop !18

for.end30:                                        ; preds = %for.inc17, %for.body22, %middle.block, %for.end19
  %i.1.lcssa37 = phi i64 [ %indvars.iv26, %for.end19 ], [ %indvars.iv26, %middle.block ], [ %indvars.iv26, %for.body22 ], [ 31, %for.inc17 ]
  %j.1.lcssa = phi i64 [ %indvars.iv26, %for.end19 ], [ 31, %middle.block ], [ 31, %for.body22 ], [ 31, %for.inc17 ]
  %sub31 = sub nsw i64 %j.1.lcssa, %i.1.lcssa37
  %sext = shl i64 %sub31, 32
  %idxprom32 = ashr exact i64 %sext, 32
  %arrayidx33 = getelementptr inbounds [32 x i8], ptr %res, i64 0, i64 %idxprom32
  store i8 0, ptr %arrayidx33, align 1, !tbaa !9
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %res)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !11, !12, !16}
