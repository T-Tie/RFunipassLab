; ModuleID = '<stdin>'
source_filename = "/tmp/tmpymxs5av5.cpp"
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
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %n.promoted = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %n.promoted7 = phi i32 [ %n.promoted, %entry ], [ %sub, %for.body ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  %a.0 = phi i32 [ 0, %entry ], [ %i.0, %for.body ]
  %cmp = icmp sgt i32 %n.promoted7, 99
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %sub = add nsw i32 %n.promoted7, -100
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body5
  %n.promoted9 = phi i32 [ %sub3, %for.body5 ], [ %n.promoted7, %for.cond2.preheader ]
  %i.1 = phi i32 [ %inc8, %for.body5 ], [ 1, %for.cond2.preheader ]
  %b.0 = phi i32 [ %i.1, %for.body5 ], [ 0, %for.cond2.preheader ]
  %cmp4 = icmp sgt i32 %n.promoted9, 49
  br i1 %cmp4, label %for.body5, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond2
  br label %for.cond10

for.body5:                                        ; preds = %for.cond2
  %sub3 = add nsw i32 %n.promoted9, -50
  store i32 %sub3, ptr %n, align 4, !tbaa !5
  %inc8 = add nuw nsw i32 %i.1, 1
  br label %for.cond2, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body13
  %n.promoted11 = phi i32 [ %sub11, %for.body13 ], [ %n.promoted9, %for.cond10.preheader ]
  %i.2 = phi i32 [ %inc16, %for.body13 ], [ 1, %for.cond10.preheader ]
  %c.0 = phi i32 [ %i.2, %for.body13 ], [ 0, %for.cond10.preheader ]
  %cmp12 = icmp sgt i32 %n.promoted11, 19
  br i1 %cmp12, label %for.body13, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond10
  br label %for.cond18

for.body13:                                       ; preds = %for.cond10
  %sub11 = add nsw i32 %n.promoted11, -20
  store i32 %sub11, ptr %n, align 4, !tbaa !5
  %inc16 = add nuw nsw i32 %i.2, 1
  br label %for.cond10, !llvm.loop !13

for.cond18:                                       ; preds = %for.cond18.preheader, %for.body21
  %n.promoted13 = phi i32 [ %sub19, %for.body21 ], [ %n.promoted11, %for.cond18.preheader ]
  %i.3 = phi i32 [ %inc24, %for.body21 ], [ 1, %for.cond18.preheader ]
  %d.0 = phi i32 [ %i.3, %for.body21 ], [ 0, %for.cond18.preheader ]
  %cmp20 = icmp sgt i32 %n.promoted13, 9
  br i1 %cmp20, label %for.body21, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond18
  br label %for.cond26

for.body21:                                       ; preds = %for.cond18
  %sub19 = add nsw i32 %n.promoted13, -10
  store i32 %sub19, ptr %n, align 4, !tbaa !5
  %inc24 = add nuw nsw i32 %i.3, 1
  br label %for.cond18, !llvm.loop !14

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %n.promoted15 = phi i32 [ %sub27, %for.body29 ], [ %n.promoted13, %for.cond26.preheader ]
  %i.4 = phi i32 [ %inc32, %for.body29 ], [ 1, %for.cond26.preheader ]
  %e.0 = phi i32 [ %i.4, %for.body29 ], [ 0, %for.cond26.preheader ]
  %cmp28 = icmp sgt i32 %n.promoted15, 4
  br i1 %cmp28, label %for.body29, label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond26
  %smin = call i32 @llvm.smin.i32(i32 %n.promoted15, i32 noundef 0)
  %0 = add nsw i32 %n.promoted15, 1
  %1 = sub i32 %0, %smin
  br label %for.cond34

for.body29:                                       ; preds = %for.cond26
  %sub27 = add nsw i32 %n.promoted15, -5
  store i32 %sub27, ptr %n, align 4, !tbaa !5
  %inc32 = add nuw nsw i32 %i.4, 1
  br label %for.cond26, !llvm.loop !15

for.cond34:                                       ; preds = %for.cond34.preheader, %for.body37
  %sub3516 = phi i32 [ %sub35, %for.body37 ], [ %n.promoted15, %for.cond34.preheader ]
  %i.5 = phi i32 [ %inc40, %for.body37 ], [ 1, %for.cond34.preheader ]
  %exitcond.not = icmp eq i32 %i.5, %1
  br i1 %exitcond.not, label %for.end41, label %for.body37

for.body37:                                       ; preds = %for.cond34
  %sub35 = add nsw i32 %sub3516, -1
  store i32 %sub35, ptr %n, align 4, !tbaa !5
  %inc40 = add nuw i32 %i.5, 1
  br label %for.cond34, !llvm.loop !16

for.end41:                                        ; preds = %for.cond34
  %2 = sub i32 %n.promoted15, %smin
  %call42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %a.0)
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call42, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %b.0)
  %call45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call44, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %c.0)
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call46, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %d.0)
  %call49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call48, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %e.0)
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call50, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %2)
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call52, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
