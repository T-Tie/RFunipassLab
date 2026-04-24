; ModuleID = '<stdin>'
source_filename = "/tmp/tmp75c5u4q0.cpp"
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
  %a = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 64, ptr noundef nonnull align 16 %a) #5
  br label %while.cond

while.cond:                                       ; preds = %for.end36, %entry
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(4) %a)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  %0 = load i32, ptr %a, align 16
  %cmp = icmp ne i32 %0, -1
  %or.cond = select i1 %call1, i1 %cmp, i1 false
  br i1 %or.cond, label %while.cond3, label %while.end39

while.cond3:                                      ; preds = %while.cond, %while.body16
  %indvars.iv26 = phi i32 [ %indvars.iv.next27, %while.body16 ], [ 0, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body16 ], [ 1, %while.cond ]
  %arrayidx4 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx4)
  %vtable6 = load ptr, ptr %call5, align 8, !tbaa !5
  %vbase.offset.ptr7 = getelementptr i8, ptr %vtable6, i64 -24
  %vbase.offset8 = load i64, ptr %vbase.offset.ptr7, align 8, !invariant.load !8
  %add.ptr9 = getelementptr inbounds i8, ptr %call5, i64 %vbase.offset8
  %call10 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr9)
  br i1 %call10, label %land.end15, label %while.end

land.end15:                                       ; preds = %while.cond3
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !9, !invariant.load !8
  %cmp14.not = icmp eq i32 %1, 0
  br i1 %cmp14.not, label %while.end, label %while.body16

while.body16:                                     ; preds = %land.end15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next27 = add nuw nsw i32 %indvars.iv26, 1
  br label %while.cond3, !llvm.loop !12

while.end:                                        ; preds = %while.cond3, %land.end15
  %wide.trip.count30 = zext nneg i32 %indvars.iv26 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %while.end
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.end ], [ 0, %while.end ]
  %n.0 = phi i32 [ %n.1, %for.end ], [ 0, %while.end ]
  %exitcond31.not = icmp eq i64 %indvars.iv21, %wide.trip.count30
  br i1 %exitcond31.not, label %for.end36, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond
  %arrayidx22 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv21
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.body20
  %indvars.iv23 = phi i64 [ %indvars.iv21, %for.cond18.preheader ], [ %indvars.iv.next24, %for.body20 ]
  %n.1 = phi i32 [ %n.0, %for.cond18.preheader ], [ %n.2, %for.body20 ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count30
  br i1 %exitcond.not, label %for.end, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !9, !invariant.load !8
  %arrayidx24 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv.next24
  %3 = load i32, ptr %arrayidx24, align 4, !tbaa !9, !invariant.load !8
  %mul = shl nsw i32 %3, 1
  %cmp25 = icmp eq i32 %2, %mul
  %mul30 = shl nsw i32 %2, 1
  %cmp31 = icmp eq i32 %3, %mul30
  %or.cond19 = select i1 %cmp25, i1 true, i1 %cmp31
  %inc32 = zext i1 %or.cond19 to i32
  %n.2 = add nsw i32 %n.1, %inc32
  br label %for.cond18, !llvm.loop !15

for.end:                                          ; preds = %for.cond18
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond, !llvm.loop !16

for.end36:                                        ; preds = %for.cond
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %n.0)
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call37, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.cond, !llvm.loop !17

while.end39:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 64, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
