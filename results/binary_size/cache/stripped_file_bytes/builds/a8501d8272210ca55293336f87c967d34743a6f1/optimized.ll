; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsp4_q79y.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [25 x i32], align 16
  %a = alloca [25 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %s) #4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %0, 0
  br i1 %cmp24, label %for.body, label %for.end34

for.cond22.preheader:                             ; preds = %for.end
  %cmp2327 = icmp sgt i32 %9, 0
  br i1 %cmp2327, label %for.body24.preheader, label %for.end34

for.body24.preheader:                             ; preds = %for.cond22.preheader
  %wide.trip.count = zext nneg i32 %9 to i64
  %min.iters.check = icmp ult i32 %9, 4
  br i1 %min.iters.check, label %for.body24.preheader42, label %vector.ph

vector.ph:                                        ; preds = %for.body24.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %2, %vector.body ]
  %1 = getelementptr inbounds nuw [25 x i32], ptr %s, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %1, align 16, !tbaa !5
  %2 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %index.next = add nuw i64 %index, 4
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %4 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %2)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end34, label %for.body24.preheader42

for.body24.preheader42:                           ; preds = %for.body24.preheader, %middle.block
  %indvars.iv36.ph = phi i64 [ 0, %for.body24.preheader ], [ %n.vec, %middle.block ]
  %max.229.ph = phi i32 [ 0, %for.body24.preheader ], [ %4, %middle.block ]
  br label %for.body24

for.body:                                         ; preds = %entry, %for.end
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.end ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv33
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %arrayidx3 = getelementptr inbounds nuw [25 x i32], ptr %s, i64 0, i64 %indvars.iv33
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  %cmp520.not = icmp eq i64 %indvars.iv33, 0
  br i1 %cmp520.not, label %for.end, label %for.body6.lr.ph

for.body6.lr.ph:                                  ; preds = %for.body
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %max.022 = phi i32 [ 0, %for.body6.lr.ph ], [ %max.1, %for.inc ]
  %arrayidx8 = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp11.not = icmp slt i32 %6, %5
  br i1 %cmp11.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body6
  %arrayidx13 = getelementptr inbounds nuw [25 x i32], ptr %s, i64 0, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %7, i32 %max.022)
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body6
  %max.1 = phi i32 [ %max.022, %for.body6 ], [ %spec.select, %land.lhs.true ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv33
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body6, !llvm.loop !14

for.end.loopexit:                                 ; preds = %for.inc
  %8 = add nuw nsw i32 %max.1, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body
  %max.0.lcssa = phi i32 [ 1, %for.body ], [ %8, %for.end.loopexit ]
  store i32 %max.0.lcssa, ptr %arrayidx3, align 4, !tbaa !5
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp = icmp slt i64 %indvars.iv.next34, %10
  br i1 %cmp, label %for.body, label %for.cond22.preheader, !llvm.loop !15

for.body24:                                       ; preds = %for.body24.preheader42, %for.body24
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.body24 ], [ %indvars.iv36.ph, %for.body24.preheader42 ]
  %max.229 = phi i32 [ %spec.select19, %for.body24 ], [ %max.229.ph, %for.body24.preheader42 ]
  %arrayidx26 = getelementptr inbounds nuw [25 x i32], ptr %s, i64 0, i64 %indvars.iv36
  %11 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %spec.select19 = call i32 @llvm.smax.i32(i32 %max.229, i32 %11)
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count
  br i1 %exitcond39.not, label %for.end34, label %for.body24, !llvm.loop !16

for.end34:                                        ; preds = %for.body24, %middle.block, %entry, %for.cond22.preheader
  %max.2.lcssa = phi i32 [ 0, %for.cond22.preheader ], [ 0, %entry ], [ %4, %middle.block ], [ %spec.select19, %for.body24 ]
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.2.lcssa)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %s) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11, !12}
