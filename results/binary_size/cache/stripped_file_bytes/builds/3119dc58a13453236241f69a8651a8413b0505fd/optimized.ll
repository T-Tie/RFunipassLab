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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.be, %for.cond.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %for.inc [
    i32 -1, label %for.end
    i32 0, label %for.end
  ]

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %cleanup
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %cleanup ]
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.body, %for.body, %for.cond
  %idxprom9 = and i64 %indvars.iv, 4294967295
  %arrayidx10 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %idxprom9
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %1, -1
  br i1 %cmp11, label %while.end, label %for.cond14

for.cond14.loopexit:                              ; preds = %for.cond17
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond14, !llvm.loop !12

for.cond14:                                       ; preds = %for.end, %for.cond14.loopexit
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.cond14.loopexit ], [ 0, %for.end ]
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.cond14.loopexit ], [ 1, %for.end ]
  %count.0 = phi i32 [ %count.1, %for.cond14.loopexit ], [ 0, %for.end ]
  %exitcond39.not = icmp eq i64 %indvars.iv35, %idxprom9
  br i1 %exitcond39.not, label %for.cond34, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx21 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv35
  br label %for.cond17

for.cond17:                                       ; preds = %for.body19, %for.body16
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.body19 ], [ %indvars.iv29, %for.body16 ]
  %count.1 = phi i32 [ %spec.select, %for.body19 ], [ %count.0, %for.body16 ]
  %exitcond34.not = icmp eq i64 %indvars.iv31, %idxprom9
  br i1 %exitcond34.not, label %for.cond14.loopexit, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %2 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %arrayidx23 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv31
  %3 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %cmp24 = icmp eq i32 %2, %mul
  %inc26 = zext i1 %cmp24 to i32
  %spec.select = add nsw i32 %count.1, %inc26
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond17, !llvm.loop !13

for.cond34.loopexit:                              ; preds = %for.cond38
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond34, !llvm.loop !14

for.cond34:                                       ; preds = %for.cond14, %for.cond34.loopexit
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.cond34.loopexit ], [ 0, %for.cond14 ]
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.cond34.loopexit ], [ 1, %for.cond14 ]
  %count.3 = phi i32 [ %count.4, %for.cond34.loopexit ], [ %count.0, %for.cond14 ]
  %exitcond51.not = icmp eq i64 %indvars.iv47, %idxprom9
  br i1 %exitcond51.not, label %cleanup, label %for.body36

for.body36:                                       ; preds = %for.cond34
  %arrayidx42 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv47
  br label %for.cond38

for.cond38:                                       ; preds = %for.body40, %for.body36
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.body40 ], [ %indvars.iv40, %for.body36 ]
  %count.4 = phi i32 [ %spec.select24, %for.body40 ], [ %count.3, %for.body36 ]
  %exitcond46.not = icmp eq i64 %indvars.iv42, %idxprom9
  br i1 %exitcond46.not, label %for.cond34.loopexit, label %for.body40

for.body40:                                       ; preds = %for.cond38
  %4 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %mul43 = shl nsw i32 %4, 1
  %arrayidx45 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv42
  %5 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %cmp46 = icmp eq i32 %mul43, %5
  %inc48 = zext i1 %cmp46 to i32
  %spec.select24 = add nsw i32 %count.4, %inc48
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond38, !llvm.loop !15

cleanup:                                          ; preds = %for.cond34
  %call56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count.3)
  %vtable.i = load ptr, ptr %call56, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call56, i64 %vbase.offset.i
  %call.i25 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call56, i8 noundef signext %call.i25)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.cond.backedge

while.end:                                        ; preds = %for.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
