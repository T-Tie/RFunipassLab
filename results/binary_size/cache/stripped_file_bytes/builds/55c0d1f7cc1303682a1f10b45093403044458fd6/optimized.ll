; ModuleID = '<stdin>'
source_filename = "/tmp/tmp25vb6ruk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [110 x [110 x i32]], align 16
  %b = alloca [110 x [110 x i32]], align 16
  %c = alloca [110 x [110 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp.not32 = icmp slt i32 %0, 1
  %1 = load i32, ptr %y1, align 4
  %2 = icmp slt i32 %1, 1
  %or.cond95 = select i1 %cmp.not32, i1 true, i1 %2
  br i1 %or.cond95, label %for.end10, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %7, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc8 ], [ %1, %entry ]
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.inc8 ], [ 1, %entry ]
  %cmp3.not30 = icmp slt i32 %4, 1
  br i1 %cmp3.not30, label %for.inc8, label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv60, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv, %6
  br i1 %cmp3.not.not, label %for.body4, label %for.inc8.loopexit, !llvm.loop !9

for.inc8.loopexit:                                ; preds = %for.body4
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.inc8.loopexit, %for.cond2.preheader
  %7 = phi i32 [ %.pre, %for.inc8.loopexit ], [ %3, %for.cond2.preheader ]
  %8 = phi i32 [ %5, %for.inc8.loopexit ], [ %4, %for.cond2.preheader ]
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %9 = sext i32 %7 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv60, %9
  br i1 %cmp.not.not, label %for.cond2.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp14.not36 = icmp slt i32 %10, 1
  %11 = load i32, ptr %y2, align 4
  %12 = icmp slt i32 %11, 1
  %or.cond97 = select i1 %cmp14.not36, i1 true, i1 %12
  br i1 %or.cond97, label %for.cond30.preheader, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.end10, %for.inc27
  %13 = phi i32 [ %24, %for.inc27 ], [ %10, %for.end10 ]
  %14 = phi i32 [ %25, %for.inc27 ], [ %11, %for.end10 ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc27 ], [ 1, %for.end10 ]
  %cmp17.not34 = icmp slt i32 %14, 1
  br i1 %cmp17.not34, label %for.inc27, label %for.body18

for.cond30.preheader:                             ; preds = %for.inc27, %for.end10
  %.lcssa29 = phi i32 [ %10, %for.end10 ], [ %24, %for.inc27 ]
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp31.not42 = icmp slt i32 %15, 1
  br i1 %cmp31.not42, label %for.end81, label %for.cond33.preheader.lr.ph

for.cond33.preheader.lr.ph:                       ; preds = %for.cond30.preheader
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp34.not40 = icmp slt i32 %16, 1
  %cmp37.not38 = icmp slt i32 %.lcssa29, 1
  %or.cond = or i1 %cmp34.not40, %cmp37.not38
  br i1 %or.cond, label %for.cond63.preheader.preheader, label %for.cond33.preheader.preheader

for.cond33.preheader.preheader:                   ; preds = %for.cond33.preheader.lr.ph
  %17 = add nuw i32 %.lcssa29, 1
  %18 = add nuw i32 %16, 1
  %19 = add nuw i32 %15, 1
  %wide.trip.count80 = zext i32 %19 to i64
  %wide.trip.count75 = zext i32 %18 to i64
  %wide.trip.count = zext i32 %17 to i64
  %20 = zext nneg i32 %.lcssa29 to i64
  %min.iters.check = icmp ult i32 %.lcssa29, 4
  %n.vec = and i64 %20, 2147483644
  %21 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %20
  br label %for.cond33.preheader

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.body18 ], [ 1, %for.cond16.preheader ]
  %arrayidx22 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv66, i64 %indvars.iv63
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %22 = load i32, ptr %y2, align 4, !tbaa !5
  %23 = sext i32 %22 to i64
  %cmp17.not.not = icmp slt i64 %indvars.iv63, %23
  br i1 %cmp17.not.not, label %for.body18, label %for.inc27.loopexit, !llvm.loop !14

for.inc27.loopexit:                               ; preds = %for.body18
  %.pre88 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc27.loopexit, %for.cond16.preheader
  %24 = phi i32 [ %.pre88, %for.inc27.loopexit ], [ %13, %for.cond16.preheader ]
  %25 = phi i32 [ %22, %for.inc27.loopexit ], [ %14, %for.cond16.preheader ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %26 = sext i32 %24 to i64
  %cmp14.not.not = icmp slt i64 %indvars.iv66, %26
  br i1 %cmp14.not.not, label %for.cond16.preheader, label %for.cond30.preheader, !llvm.loop !15

for.cond33.preheader:                             ; preds = %for.cond33.preheader.preheader, %for.cond33.for.inc57_crit_edge.split
  %indvars.iv77 = phi i64 [ 1, %for.cond33.preheader.preheader ], [ %indvars.iv.next78, %for.cond33.for.inc57_crit_edge.split ]
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33.preheader, %for.cond36.for.inc54_crit_edge
  %indvars.iv72 = phi i64 [ 1, %for.cond33.preheader ], [ %indvars.iv.next73, %for.cond36.for.inc54_crit_edge ]
  %arrayidx50 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %c, i64 0, i64 %indvars.iv77, i64 %indvars.iv72
  %arrayidx50.promoted = load i32, ptr %arrayidx50, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body38.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond36.preheader
  %27 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %arrayidx50.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %27, %vector.ph ], [ %45, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %28 = or disjoint i64 %index, 2
  %29 = or disjoint i64 %index, 3
  %30 = add i64 %index, 4
  %31 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv77, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %31, align 4, !tbaa !5
  %32 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %offset.idx, i64 %indvars.iv72
  %33 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %28, i64 %indvars.iv72
  %34 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %29, i64 %indvars.iv72
  %35 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %30, i64 %indvars.iv72
  %36 = load i32, ptr %32, align 4, !tbaa !5
  %37 = load i32, ptr %33, align 4, !tbaa !5
  %38 = load i32, ptr %34, align 4, !tbaa !5
  %39 = load i32, ptr %35, align 4, !tbaa !5
  %40 = insertelement <4 x i32> poison, i32 %36, i64 0
  %41 = insertelement <4 x i32> %40, i32 %37, i64 1
  %42 = insertelement <4 x i32> %41, i32 %38, i64 2
  %43 = insertelement <4 x i32> %42, i32 %39, i64 3
  %44 = mul nsw <4 x i32> %43, %wide.load
  %45 = add <4 x i32> %vec.phi, %44
  %index.next = add nuw i64 %index, 4
  %46 = icmp eq i64 %index.next, %n.vec
  br i1 %46, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %47 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %45)
  br i1 %cmp.n, label %for.cond36.for.inc54_crit_edge, label %for.body38.preheader

for.body38.preheader:                             ; preds = %for.cond36.preheader, %middle.block
  %indvars.iv69.ph = phi i64 [ 1, %for.cond36.preheader ], [ %21, %middle.block ]
  %.ph = phi i32 [ %arrayidx50.promoted, %for.cond36.preheader ], [ %47, %middle.block ]
  br label %for.body38

for.body38:                                       ; preds = %for.body38.preheader, %for.body38
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body38 ], [ %indvars.iv69.ph, %for.body38.preheader ]
  %48 = phi i32 [ %add, %for.body38 ], [ %.ph, %for.body38.preheader ]
  %arrayidx42 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv77, i64 %indvars.iv69
  %49 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %arrayidx46 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv69, i64 %indvars.iv72
  %50 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %mul = mul nsw i32 %50, %49
  %add = add nsw i32 %48, %mul
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count
  br i1 %exitcond.not, label %for.cond36.for.inc54_crit_edge, label %for.body38, !llvm.loop !19

for.cond36.for.inc54_crit_edge:                   ; preds = %for.body38, %middle.block
  %add.lcssa = phi i32 [ %47, %middle.block ], [ %add, %for.body38 ]
  store i32 %add.lcssa, ptr %arrayidx50, align 4, !tbaa !5
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %for.cond33.for.inc57_crit_edge.split, label %for.cond36.preheader, !llvm.loop !20

for.cond33.for.inc57_crit_edge.split:             ; preds = %for.cond36.for.inc54_crit_edge
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %for.cond63.preheader.preheader, label %for.cond33.preheader, !llvm.loop !21

for.cond63.preheader.preheader:                   ; preds = %for.cond33.for.inc57_crit_edge.split, %for.cond33.preheader.lr.ph
  br label %for.cond63.preheader

for.cond63.preheader:                             ; preds = %for.cond63.preheader.preheader, %for.end73
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.end73 ], [ 1, %for.cond63.preheader.preheader ]
  %51 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp6448 = icmp sgt i32 %51, 1
  br i1 %cmp6448, label %for.body65, label %for.cond63.preheader.for.end73_crit_edge

for.cond63.preheader.for.end73_crit_edge:         ; preds = %for.cond63.preheader
  %.pre89 = sext i32 %51 to i64
  br label %for.end73

for.body65:                                       ; preds = %for.cond63.preheader, %for.body65
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.body65 ], [ 1, %for.cond63.preheader ]
  %arrayidx69 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %c, i64 0, i64 %indvars.iv85, i64 %indvars.iv82
  %52 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %call70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %52)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %53 = load i32, ptr %y2, align 4, !tbaa !5
  %54 = sext i32 %53 to i64
  %cmp64 = icmp slt i64 %indvars.iv.next83, %54
  br i1 %cmp64, label %for.body65, label %for.end73, !llvm.loop !22

for.end73:                                        ; preds = %for.body65, %for.cond63.preheader.for.end73_crit_edge
  %idxprom76.pre-phi = phi i64 [ %.pre89, %for.cond63.preheader.for.end73_crit_edge ], [ %54, %for.body65 ]
  %arrayidx77 = getelementptr inbounds [110 x [110 x i32]], ptr %c, i64 0, i64 %indvars.iv85, i64 %idxprom76.pre-phi
  %55 = load i32, ptr %arrayidx77, align 4, !tbaa !5
  %call78 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %55)
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %56 = load i32, ptr %x1, align 4, !tbaa !5
  %57 = sext i32 %56 to i64
  %cmp61.not.not = icmp slt i64 %indvars.iv85, %57
  br i1 %cmp61.not.not, label %for.cond63.preheader, label %for.end81, !llvm.loop !23

for.end81:                                        ; preds = %for.end73, %for.cond30.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !10, !11, !17}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
