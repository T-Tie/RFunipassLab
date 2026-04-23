; ModuleID = '<stdin>'
source_filename = "/tmp/tmpi7odvchx.cpp"
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
  %a = alloca [16 x double], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 128, ptr noundef nonnull align 16 %a) #5
  br label %while.cond

while.cond:                                       ; preds = %for.cond.cleanup, %entry
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(8) %a)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  %0 = load double, ptr %a, align 16
  %cmp = fcmp une double %0, -1.000000e+00
  %or.cond.not = select i1 %call1, i1 %cmp, i1 false
  br i1 %or.cond.not, label %do.body, label %while.end

do.body:                                          ; preds = %while.cond, %do.body
  %indvars.iv14 = phi i32 [ %indvars.iv.next15, %do.body ], [ 0, %while.cond ]
  %indvars.iv9 = phi i32 [ %indvars.iv.next10, %do.body ], [ 1, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.body ], [ 0, %while.cond ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds nuw [16 x double], ptr %a, i64 0, i64 %indvars.iv.next
  %call4 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx3)
  %1 = load double, ptr %arrayidx3, align 8, !tbaa !9
  %cmp7 = fcmp une double %1, 0.000000e+00
  %indvars.iv.next10 = add nuw i32 %indvars.iv9, 1
  %indvars.iv.next15 = add nuw nsw i32 %indvars.iv14, 1
  br i1 %cmp7, label %do.body, label %for.cond.preheader, !llvm.loop !12

for.cond.preheader:                               ; preds = %do.body
  %wide.trip.count16 = zext nneg i32 %indvars.iv14 to i64
  %wide.trip.count = zext i32 %indvars.iv9 to i64
  br label %for.cond

for.cond.loopexit:                                ; preds = %for.cond9
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond, !llvm.loop !15

for.cond:                                         ; preds = %for.cond.loopexit, %for.cond.preheader
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.cond.loopexit ], [ 0, %for.cond.preheader ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.cond.loopexit ], [ 1, %for.cond.preheader ]
  %count.0 = phi i32 [ %count.1, %for.cond.loopexit ], [ 0, %for.cond.preheader ]
  %exitcond17.not = icmp eq i64 %indvars.iv11, %wide.trip.count16
  br i1 %exitcond17.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count.0)
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call30, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.cond, !llvm.loop !16

for.body:                                         ; preds = %for.cond
  %arrayidx16 = getelementptr inbounds nuw [16 x double], ptr %a, i64 0, i64 %indvars.iv11
  br label %for.cond9

for.cond9:                                        ; preds = %for.body12, %for.body
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.body12 ], [ %indvars.iv4, %for.body ]
  %count.1 = phi i32 [ %count.2, %for.body12 ], [ %count.0, %for.body ]
  %exitcond = icmp eq i64 %indvars.iv6, %wide.trip.count
  br i1 %exitcond, label %for.cond.loopexit, label %for.body12

for.body12:                                       ; preds = %for.cond9
  %arrayidx14 = getelementptr inbounds nuw [16 x double], ptr %a, i64 0, i64 %indvars.iv6
  %2 = load double, ptr %arrayidx14, align 8, !tbaa !9, !invariant.load !8
  %3 = load double, ptr %arrayidx16, align 8, !tbaa !9, !invariant.load !8
  %div = fdiv double %2, %3
  %cmp17 = fcmp oeq double %div, 2.000000e+00
  %div22 = fdiv double %3, %2
  %cmp23 = fcmp oeq double %div22, 2.000000e+00
  %or.cond2 = or i1 %cmp17, %cmp23
  %inc25 = zext i1 %or.cond2 to i32
  %count.2 = add nsw i32 %count.1, %inc25
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond9, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 128, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
