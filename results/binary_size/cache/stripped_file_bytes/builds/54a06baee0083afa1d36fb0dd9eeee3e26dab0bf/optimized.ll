; ModuleID = '<stdin>'
source_filename = "/tmp/tmprn0nm6uo.cpp"
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
  %power = alloca i32, align 4
  %output = alloca [34 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %power) #6
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %output) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %output, i8 0, i64 136, i1 false)
  store i32 1, ptr %output, align 16
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %power)
  %0 = load i32, ptr %power, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %1 = add nuw i32 %smax, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc19, %for.inc18 ]
  %exitcond22 = icmp eq i32 %i.0, %1
  br i1 %exitcond22, label %for.cond21, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 34
  br i1 %exitcond.not, label %for.cond4, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw [34 x i32], ptr %output, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  store i32 %mul, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.cond4:                                        ; preds = %for.cond1, %for.cond4.backedge
  %indvars.iv17 = phi i64 [ %indvars.iv17.be, %for.cond4.backedge ], [ 0, %for.cond1 ]
  %exitcond21.not = icmp eq i64 %indvars.iv17, 34
  br i1 %exitcond21.not, label %for.inc18, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [34 x i32], ptr %output, i64 0, i64 %indvars.iv17
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %3, 9
  br i1 %cmp9, label %if.then, label %for.body6.for.inc15_crit_edge

for.body6.for.inc15_crit_edge:                    ; preds = %for.body6
  %.pre = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond4.backedge

for.cond4.backedge:                               ; preds = %for.body6.for.inc15_crit_edge, %if.then
  %indvars.iv17.be = phi i64 [ %.pre, %for.body6.for.inc15_crit_edge ], [ %4, %if.then ]
  br label %for.cond4, !llvm.loop !12

if.then:                                          ; preds = %for.body6
  %sub = add nsw i32 %3, -10
  store i32 %sub, ptr %arrayidx8, align 4, !tbaa !5
  %4 = add nuw nsw i64 %indvars.iv17, 1
  %arrayidx13 = getelementptr inbounds nuw [34 x i32], ptr %output, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %inc14 = add nsw i32 %5, 1
  store i32 %inc14, ptr %arrayidx13, align 4, !tbaa !5
  br label %for.cond4.backedge

for.inc18:                                        ; preds = %for.cond4
  %inc19 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.cond21:                                       ; preds = %for.cond, %for.inc29
  %numEnd.0 = phi i32 [ %dec, %for.inc29 ], [ 33, %for.cond ]
  %cmp22.not = icmp eq i32 %numEnd.0, 0
  br i1 %cmp22.not, label %for.cond31.preheader, label %for.body23

for.cond31.preheader:                             ; preds = %for.body23, %for.cond21
  br label %for.cond31

for.body23:                                       ; preds = %for.cond21
  %idxprom24 = zext nneg i32 %numEnd.0 to i64
  %arrayidx25 = getelementptr inbounds nuw [34 x i32], ptr %output, i64 0, i64 %idxprom24
  %6 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %6, 0
  br i1 %cmp26, label %for.inc29, label %for.cond31.preheader

for.inc29:                                        ; preds = %for.body23
  %dec = add nsw i32 %numEnd.0, -1
  br label %for.cond21, !llvm.loop !14

for.cond31:                                       ; preds = %for.cond31.preheader, %for.body33
  %i.1 = phi i32 [ %dec38, %for.body33 ], [ %numEnd.0, %for.cond31.preheader ]
  %cmp32 = icmp sgt i32 %i.1, -1
  br i1 %cmp32, label %for.body33, label %for.end39

for.body33:                                       ; preds = %for.cond31
  %idxprom34 = zext nneg i32 %i.1 to i64
  %arrayidx35 = getelementptr inbounds nuw [34 x i32], ptr %output, i64 0, i64 %idxprom34
  %7 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %dec38 = add nsw i32 %i.1, -1
  br label %for.cond31, !llvm.loop !15

for.end39:                                        ; preds = %for.cond31
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i15 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i15)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %output) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %power) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
