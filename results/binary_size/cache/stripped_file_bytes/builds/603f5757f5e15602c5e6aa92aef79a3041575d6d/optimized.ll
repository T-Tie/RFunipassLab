; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_rmtulyv.cpp"
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc27, %for.inc26 ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %for.inc26 [
    i32 -1, label %sw.bb
    i32 0, label %for.cond4.preheader
  ]

for.cond4.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %i.0, i32 0)
  %wide.trip.count18 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %i.0 to i64
  br label %for.cond4

sw.bb:                                            ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #5
  ret i32 0

for.cond4:                                        ; preds = %for.cond4.preheader, %for.cond.cleanup7
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.cond.cleanup7 ]
  %s.0 = phi i32 [ 0, %for.cond4.preheader ], [ %s.1, %for.cond.cleanup7 ]
  %exitcond19.not = icmp eq i64 %indvars.iv, %wide.trip.count18
  br i1 %exitcond19.not, label %for.cond.cleanup, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond4
  %arrayidx10 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  br label %for.cond5

for.cond.cleanup:                                 ; preds = %for.cond4
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %vtable.i = load ptr, ptr %call24, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call24, i64 %vbase.offset.i
  %call.i13 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call24, i8 noundef signext %call.i13)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.inc26

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv14 = phi i64 [ %indvars.iv, %for.cond5.preheader ], [ %indvars.iv.next15, %for.body8 ]
  %s.1 = phi i32 [ %s.0, %for.cond5.preheader ], [ %s.2, %for.body8 ]
  %exitcond.not = icmp eq i64 %indvars.iv14, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup7, label %for.body8

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !11

for.body8:                                        ; preds = %for.cond5
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %arrayidx12 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv14
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  %cmp13 = icmp eq i32 %1, %mul
  %mul18 = shl nsw i32 %1, 1
  %cmp19 = icmp eq i32 %2, %mul18
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp19
  %inc = zext i1 %or.cond to i32
  %s.2 = add nsw i32 %s.1, %inc
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond5, !llvm.loop !14

for.inc26:                                        ; preds = %for.cond, %for.cond.cleanup
  %i.1 = phi i32 [ %i.0, %for.cond ], [ -1, %for.cond.cleanup ]
  %inc27 = add nsw i32 %i.1, 1
  br label %for.cond, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
