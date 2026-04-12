; ModuleID = '<stdin>'
source_filename = "/tmp/tmpr4f5_0pr.cpp"
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
  %x = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %x) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 15
  br i1 %exitcond.not, label %for.cond1, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %x, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond1:                                        ; preds = %for.cond, %for.inc34
  %i.1 = phi i32 [ %inc35, %for.inc34 ], [ 0, %for.cond ]
  %idxprom2 = sext i32 %i.1 to i64
  %arrayidx3 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 %idxprom2
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx3)
  %0 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  switch i32 %0, label %for.inc34 [
    i32 -1, label %for.end36
    i32 0, label %for.cond11.preheader
  ]

for.cond11.preheader:                             ; preds = %for.cond1
  %smax = call i32 @llvm.smax.i32(i32 %i.1, i32 0)
  %wide.trip.count23 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %i.1 to i64
  br label %for.cond11

for.cond11:                                       ; preds = %for.cond11.preheader, %for.inc28
  %indvars.iv20 = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next21, %for.inc28 ]
  %t.0 = phi i32 [ 0, %for.cond11.preheader ], [ %t.1, %for.inc28 ]
  %exitcond24.not = icmp eq i64 %indvars.iv20, %wide.trip.count23
  br i1 %exitcond24.not, label %for.end30, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond11
  %arrayidx18 = getelementptr inbounds nuw [16 x i32], ptr %x, i64 0, i64 %indvars.iv20
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv16 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next17, %for.body16 ]
  %t.1 = phi i32 [ %t.0, %for.cond14.preheader ], [ %spec.select, %for.body16 ]
  %exitcond19.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond19.not, label %for.inc28, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %1 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds nuw [16 x i32], ptr %x, i64 0, i64 %indvars.iv16
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  %cmp21 = icmp eq i32 %1, %mul
  %inc23 = zext i1 %cmp21 to i32
  %spec.select = add nsw i32 %t.1, %inc23
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond14, !llvm.loop !12

for.inc28:                                        ; preds = %for.cond14
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond11, !llvm.loop !13

for.end30:                                        ; preds = %for.cond11
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %t.0)
  %vtable.i = load ptr, ptr %call31, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call31, i64 %vbase.offset.i
  %call.i14 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call31, i8 noundef signext %call.i14)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.inc34

for.inc34:                                        ; preds = %for.cond1, %for.end30
  %i.2 = phi i32 [ -1, %for.end30 ], [ %i.1, %for.cond1 ]
  %inc35 = add nsw i32 %i.2, 1
  br label %for.cond1, !llvm.loop !16

for.end36:                                        ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %x) #5
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = distinct !{!16, !10, !11}
