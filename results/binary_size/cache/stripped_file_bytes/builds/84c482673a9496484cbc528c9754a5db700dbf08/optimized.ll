; ModuleID = '<stdin>'
source_filename = "/tmp/tmplwd05jrm.cpp"
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
  %num = alloca [100 x i32], align 16
  %x = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %num) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %num, i8 0, i64 400, i1 false)
  store i32 1, ptr %num, align 16, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x)
  %0 = load i32, ptr %x, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ]
  %exitcond23.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond23.not, label %while.cond, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 100
  br i1 %exitcond.not, label %for.cond7, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %mul = shl nsw i32 %1, 1
  store i32 %mul, ptr %arrayidx4, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.cond7:                                        ; preds = %for.cond1, %for.cond7.backedge
  %indvars.iv18 = phi i64 [ %indvars.iv18.be, %for.cond7.backedge ], [ 0, %for.cond1 ]
  %exitcond22.not = icmp eq i64 %indvars.iv18, 100
  br i1 %exitcond22.not, label %for.inc23, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 0, i64 %indvars.iv18
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %2, 9
  br i1 %cmp12, label %if.then, label %for.body9.for.inc20_crit_edge

for.body9.for.inc20_crit_edge:                    ; preds = %for.body9
  %.pre = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond7.backedge

for.cond7.backedge:                               ; preds = %for.body9.for.inc20_crit_edge, %if.then
  %indvars.iv18.be = phi i64 [ %.pre, %for.body9.for.inc20_crit_edge ], [ %3, %if.then ]
  br label %for.cond7, !llvm.loop !12

if.then:                                          ; preds = %for.body9
  %sub = add nsw i32 %2, -10
  store i32 %sub, ptr %arrayidx11, align 4, !tbaa !5
  %3 = add nuw nsw i64 %indvars.iv18, 1
  %arrayidx18 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 0, i64 %3
  %4 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %inc19 = add nsw i32 %4, 1
  store i32 %inc19, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.cond7.backedge

for.inc23:                                        ; preds = %for.cond7
  %inc24 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

while.cond:                                       ; preds = %for.cond, %while.cond
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %while.cond ], [ 99, %for.cond ]
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %num, i64 0, i64 %indvars.iv24
  %5 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %5, 0
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, -1
  br i1 %cmp28, label %while.cond, label %for.cond29.preheader, !llvm.loop !14

for.cond29.preheader:                             ; preds = %while.cond
  %6 = trunc nsw i64 %indvars.iv24 to i32
  br label %for.cond29

for.cond29:                                       ; preds = %for.cond29.preheader, %for.body31
  %i.2 = phi i32 [ %dec36, %for.body31 ], [ %6, %for.cond29.preheader ]
  %cmp30 = icmp sgt i32 %i.2, -1
  br i1 %cmp30, label %for.body31, label %for.end37

for.body31:                                       ; preds = %for.cond29
  %idxprom32 = zext nneg i32 %i.2 to i64
  %arrayidx33 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 0, i64 %idxprom32
  %7 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %dec36 = add nsw i32 %i.2, -1
  br label %for.cond29, !llvm.loop !15

for.end37:                                        ; preds = %for.cond29
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i16 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i16)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %num) #6
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
