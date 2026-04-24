; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjfp3ec9r.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@n = dso_local global i32 0, align 4
@a = dso_local global [27 x i32] zeroinitializer, align 16
@f = dso_local local_unnamed_addr global [27 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count28 = zext nneg i32 %smax to i64
  br label %for.cond3

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [27 x i32], ptr @a, i64 0, i64 %indvars.iv
  %call1 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc33
  %indvars.iv24 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next25, %for.inc33 ]
  %exitcond29.not = icmp eq i64 %indvars.iv24, %wide.trip.count28
  br i1 %exitcond29.not, label %for.cond37, label %for.body6

for.body6:                                        ; preds = %for.cond3
  %arrayidx8 = getelementptr inbounds nuw [27 x i32], ptr @f, i64 0, i64 %indvars.iv24
  %arrayidx16 = getelementptr inbounds nuw [27 x i32], ptr @a, i64 0, i64 %indvars.iv24
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc27, %for.body6
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc27 ], [ 0, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %indvars.iv24
  br i1 %exitcond.not, label %for.inc33, label %for.body12

for.body12:                                       ; preds = %for.cond9
  %arrayidx14 = getelementptr inbounds nuw [27 x i32], ptr @a, i64 0, i64 %indvars.iv21
  %2 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !12
  %3 = load i32, ptr %arrayidx16, align 4, !tbaa !5, !invariant.load !12
  %cmp17.not = icmp slt i32 %2, %3
  br i1 %cmp17.not, label %for.inc27, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body12
  %arrayidx19 = getelementptr inbounds nuw [27 x i32], ptr @f, i64 0, i64 %indvars.iv21
  %4 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !12
  %cmp22 = icmp sgt i32 %4, 0
  br i1 %cmp22, label %if.then, label %for.inc27

if.then:                                          ; preds = %land.lhs.true
  store i32 %4, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body12, %land.lhs.true, %if.then
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond9, !llvm.loop !13

for.inc33:                                        ; preds = %for.cond9
  store i32 1, ptr %arrayidx8, align 4, !tbaa !5
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond3, !llvm.loop !14

for.cond37:                                       ; preds = %for.cond3, %for.body40
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.body40 ], [ 0, %for.cond3 ]
  %max.0 = phi i32 [ %spec.select, %for.body40 ], [ 0, %for.cond3 ]
  %exitcond33.not = icmp eq i64 %indvars.iv30, %wide.trip.count28
  br i1 %exitcond33.not, label %for.end50, label %for.body40

for.body40:                                       ; preds = %for.cond37
  %arrayidx42 = getelementptr inbounds nuw [27 x i32], ptr @f, i64 0, i64 %indvars.iv30
  %5 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !12
  %spec.select = tail call i32 @llvm.smax.i32(i32 %5, i32 %max.0)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond37, !llvm.loop !15

for.end50:                                        ; preds = %for.cond37
  %call51 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %call52 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call51, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
