; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsfdm7t8m.cpp"
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
  %a = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 60, ptr noundef nonnull align 16 %a) #6
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %vtable = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !8
  %add.ptr = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset
  %call = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call, label %for.cond, label %cleanup.cont72

for.cond:                                         ; preds = %while.cond, %for.inc63
  %indvars.iv20 = phi i32 [ %indvars.iv.next21, %for.inc63 ], [ 0, %while.cond ]
  %indvars.iv14 = phi i32 [ %indvars.iv.next15, %for.inc63 ], [ -1, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc63 ], [ 0, %while.cond ]
  %arrayidx = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %vtable2 = load ptr, ptr %call1, align 8, !tbaa !5
  %vbase.offset.ptr3 = getelementptr i8, ptr %vtable2, i64 -24
  %vbase.offset4 = load i64, ptr %vbase.offset.ptr3, align 8, !invariant.load !8
  %add.ptr5 = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset4
  %call6 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr5)
  br i1 %call6, label %for.body, label %cleanup.cont

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !9
  switch i32 %0, label %for.inc63 [
    i32 -1, label %cleanup.cont72
    i32 0, label %for.cond13.preheader
  ]

for.cond13.preheader:                             ; preds = %for.body
  %umax = call i32 @llvm.umax.i32(i32 %indvars.iv20, i32 1)
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc35
  %indvars.iv18 = phi i32 [ %indvars.iv14, %for.cond13.preheader ], [ %indvars.iv.next19, %for.inc35 ]
  %j.0 = phi i32 [ 1, %for.cond13.preheader ], [ %inc36, %for.inc35 ]
  %exitcond24.not = icmp eq i32 %j.0, %umax
  br i1 %exitcond24.not, label %for.cond38.preheader, label %for.cond16.preheader

for.cond38.preheader:                             ; preds = %for.cond13
  %wide.trip.count37 = zext i32 %indvars.iv20 to i64
  %wide.trip.count32 = zext i32 %indvars.iv14 to i64
  br label %for.cond38

for.cond16.preheader:                             ; preds = %for.cond13
  %wide.trip.count = zext i32 %indvars.iv18 to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc
  %indvars.iv11 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next12, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv11, %wide.trip.count
  br i1 %exitcond.not, label %for.inc35, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv11
  %1 = load i32, ptr %arrayidx20, align 4, !tbaa !9
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %arrayidx22 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv.next12
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !9
  %cmp23 = icmp sgt i32 %1, %2
  br i1 %cmp23, label %if.then24, label %for.inc

if.then24:                                        ; preds = %for.body18
  store i32 %2, ptr %arrayidx20, align 4, !tbaa !9
  store i32 %1, ptr %arrayidx22, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body18, %if.then24
  br label %for.cond16, !llvm.loop !12

for.inc35:                                        ; preds = %for.cond16
  %inc36 = add nuw i32 %j.0, 1
  %indvars.iv.next19 = add nsw i32 %indvars.iv18, -1
  br label %for.cond13, !llvm.loop !15

for.cond38:                                       ; preds = %for.cond38.preheader, %for.inc56
  %indvars.iv25 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next26, %for.inc56 ]
  %num.0 = phi i32 [ 0, %for.cond38.preheader ], [ %num.1, %for.inc56 ]
  %exitcond38.not = icmp eq i64 %indvars.iv25, %wide.trip.count37
  br i1 %exitcond38.not, label %for.end58, label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %for.cond38
  %arrayidx46 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv25
  br label %for.cond42

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %indvars.iv27 = phi i64 [ %indvars.iv25, %for.cond42.preheader ], [ %indvars.iv.next28, %for.body44 ]
  %num.1 = phi i32 [ %num.0, %for.cond42.preheader ], [ %spec.select, %for.body44 ]
  %exitcond33.not = icmp eq i64 %indvars.iv27, %wide.trip.count32
  br i1 %exitcond33.not, label %for.inc56, label %for.body44

for.body44:                                       ; preds = %for.cond42
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %3 = load i32, ptr %arrayidx46, align 4, !tbaa !9
  %mul = shl nsw i32 %3, 1
  %arrayidx48 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv.next28
  %4 = load i32, ptr %arrayidx48, align 4, !tbaa !9
  %cmp49 = icmp eq i32 %mul, %4
  %inc51 = zext i1 %cmp49 to i32
  %spec.select = add nsw i32 %num.1, %inc51
  br label %for.cond42, !llvm.loop !16

for.inc56:                                        ; preds = %for.cond42
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond38, !llvm.loop !17

for.end58:                                        ; preds = %for.cond38
  %call59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %num.0)
  %call60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call59, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %cleanup.cont

for.inc63:                                        ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next15 = add nsw i32 %indvars.iv14, 1
  %indvars.iv.next21 = add nuw i32 %indvars.iv20, 1
  br label %for.cond, !llvm.loop !18

cleanup.cont:                                     ; preds = %for.cond, %for.end58
  br label %while.cond, !llvm.loop !19

cleanup.cont72:                                   ; preds = %while.cond, %for.body
  call void @llvm.lifetime.end.p0(i64 noundef 60, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #2 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
