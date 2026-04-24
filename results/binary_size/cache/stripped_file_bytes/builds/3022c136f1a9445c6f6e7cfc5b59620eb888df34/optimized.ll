; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_ytqk5tl.cpp"
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

while.cond:                                       ; preds = %cleanup.cont, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end8, %while.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end8 ], [ 0, %while.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  switch i32 %0, label %if.end8 [
    i32 -1, label %for.end
    i32 0, label %for.end
  ]

if.end8:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.body, %for.body, %for.cond
  %idxprom9 = and i64 %indvars.iv, 4294967295
  %arrayidx10 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %idxprom9
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %cmp11 = icmp eq i32 %1, -1
  br i1 %cmp11, label %while.end, label %for.cond14

for.cond14.loopexit:                              ; preds = %for.cond17
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond14, !llvm.loop !13

for.cond14:                                       ; preds = %for.end, %for.cond14.loopexit
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.cond14.loopexit ], [ 0, %for.end ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.cond14.loopexit ], [ 1, %for.end ]
  %count.0 = phi i32 [ %count.1, %for.cond14.loopexit ], [ 0, %for.end ]
  %exitcond37.not = icmp eq i64 %indvars.iv33, %idxprom9
  br i1 %exitcond37.not, label %for.cond34, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx21 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv33
  br label %for.cond17

for.cond17:                                       ; preds = %for.body19, %for.body16
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body19 ], [ %indvars.iv27, %for.body16 ]
  %count.1 = phi i32 [ %spec.select, %for.body19 ], [ %count.0, %for.body16 ]
  %exitcond32.not = icmp eq i64 %indvars.iv29, %idxprom9
  br i1 %exitcond32.not, label %for.cond14.loopexit, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %2 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !9
  %arrayidx23 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv29
  %3 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !9
  %mul = shl nsw i32 %3, 1
  %cmp24 = icmp eq i32 %2, %mul
  %inc26 = zext i1 %cmp24 to i32
  %spec.select = add nsw i32 %count.1, %inc26
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond17, !llvm.loop !14

for.cond34.loopexit:                              ; preds = %for.cond38
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond34, !llvm.loop !15

for.cond34:                                       ; preds = %for.cond14, %for.cond34.loopexit
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.cond34.loopexit ], [ 0, %for.cond14 ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.cond34.loopexit ], [ 1, %for.cond14 ]
  %count.3 = phi i32 [ %count.4, %for.cond34.loopexit ], [ %count.0, %for.cond14 ]
  %exitcond49.not = icmp eq i64 %indvars.iv45, %idxprom9
  br i1 %exitcond49.not, label %cleanup.cont, label %for.body36

for.body36:                                       ; preds = %for.cond34
  %arrayidx42 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv45
  br label %for.cond38

for.cond38:                                       ; preds = %for.body40, %for.body36
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body40 ], [ %indvars.iv38, %for.body36 ]
  %count.4 = phi i32 [ %spec.select25, %for.body40 ], [ %count.3, %for.body36 ]
  %exitcond44.not = icmp eq i64 %indvars.iv40, %idxprom9
  br i1 %exitcond44.not, label %for.cond34.loopexit, label %for.body40

for.body40:                                       ; preds = %for.cond38
  %4 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !9
  %mul43 = shl nsw i32 %4, 1
  %arrayidx45 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv40
  %5 = load i32, ptr %arrayidx45, align 4, !tbaa !5, !invariant.load !9
  %cmp46 = icmp eq i32 %mul43, %5
  %inc48 = zext i1 %cmp46 to i32
  %spec.select25 = add nsw i32 %count.4, %inc48
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond38, !llvm.loop !16

cleanup.cont:                                     ; preds = %for.cond34
  %call56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count.3)
  %call57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call56, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %for.end
  call void @llvm.lifetime.end.p0(i64 noundef 64, ptr noundef nonnull %a) #6
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
