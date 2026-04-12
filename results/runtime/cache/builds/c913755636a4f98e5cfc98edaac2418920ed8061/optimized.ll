; ModuleID = '<stdin>'
source_filename = "/tmp/tmptaxgq2sg.cpp"
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #5
  br label %while.cond

while.cond:                                       ; preds = %for.end29, %entry
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  %0 = load i32, ptr %a, align 16
  %cmp = icmp ne i32 %0, -1
  %or.cond.not = select i1 %call1, i1 %cmp, i1 false
  br i1 %or.cond.not, label %for.cond, label %while.end

for.cond:                                         ; preds = %while.cond, %for.inc
  %1 = phi i32 [ %.pre, %for.inc ], [ %0, %while.cond ]
  %indvars.iv15 = phi i32 [ %indvars.iv.next16, %for.inc ], [ 0, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %while.cond ]
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %for.cond8.preheader, label %for.inc

for.cond8.preheader:                              ; preds = %for.cond
  %wide.trip.count21 = zext nneg i32 %indvars.iv15 to i64
  br label %for.cond8

for.inc:                                          ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next16 = add nuw nsw i32 %indvars.iv15, 1
  %.pre = load i32, ptr %arrayidx6, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !11

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc27
  %indvars.iv17 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next18, %for.inc27 ]
  %n.0 = phi i32 [ 0, %for.cond8.preheader ], [ %n.1, %for.inc27 ]
  %exitcond22 = icmp eq i64 %indvars.iv17, %wide.trip.count21
  br i1 %exitcond22, label %for.end29, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.cond8
  %arrayidx17 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv17
  br label %for.cond12

for.cond12:                                       ; preds = %for.cond12.preheader, %for.body15
  %indvars.iv12 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next13, %for.body15 ]
  %n.1 = phi i32 [ %n.0, %for.cond12.preheader ], [ %spec.select, %for.body15 ]
  %exitcond = icmp eq i64 %indvars.iv12, %wide.trip.count21
  br i1 %exitcond, label %for.inc27, label %for.body15

for.body15:                                       ; preds = %for.cond12
  %2 = load i32, ptr %arrayidx17, align 4, !tbaa !8
  %mul = shl nsw i32 %2, 1
  %arrayidx19 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv12
  %3 = load i32, ptr %arrayidx19, align 4, !tbaa !8
  %cmp20 = icmp eq i32 %mul, %3
  %inc22 = zext i1 %cmp20 to i32
  %spec.select = add nsw i32 %inc22, %n.1
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond12, !llvm.loop !14

for.inc27:                                        ; preds = %for.cond12
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond8, !llvm.loop !15

for.end29:                                        ; preds = %for.cond8
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %n.0)
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call30, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
