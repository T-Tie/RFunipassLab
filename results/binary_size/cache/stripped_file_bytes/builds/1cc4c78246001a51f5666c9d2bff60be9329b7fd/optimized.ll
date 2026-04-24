; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv8c_l6np.cpp"
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
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #4
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %while.cond, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 -1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

while.cond:                                       ; preds = %for.cond, %while.cond.backedge
  %j.0 = phi i32 [ %j.0.be, %while.cond.backedge ], [ 0, %for.cond ]
  %call43 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp1.not = icmp eq i32 %0, -1
  br i1 %cmp1.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %idxprom2 = sext i32 %j.0 to i64
  %arrayidx3 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom2
  store i32 %0, ptr %arrayidx3, align 4, !tbaa !5
  %inc4 = add nsw i32 %j.0, 1
  %cmp5 = icmp eq i32 %0, 0
  br i1 %cmp5, label %for.cond6, label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.cond34, %while.body
  %j.0.be = phi i32 [ %inc4, %while.body ], [ 0, %for.cond34 ]
  br label %while.cond, !llvm.loop !12

for.cond6.loopexit:                               ; preds = %for.cond9
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond6, !llvm.loop !13

for.cond6:                                        ; preds = %while.body, %for.cond6.loopexit
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.cond6.loopexit ], [ 0, %while.body ]
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.cond6.loopexit ], [ 1, %while.body ]
  %n.2 = phi i32 [ %n.3, %for.cond6.loopexit ], [ 0, %while.body ]
  %exitcond28.not = icmp eq i64 %indvars.iv25, 15
  br i1 %exitcond28.not, label %for.end31, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %arrayidx15 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv25
  br label %for.cond9

for.cond9:                                        ; preds = %for.body11, %for.body8
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body11 ], [ %indvars.iv19, %for.body8 ]
  %n.3 = phi i32 [ %n.4, %for.body11 ], [ %n.2, %for.body8 ]
  %exitcond24.not = icmp eq i64 %indvars.iv21, 15
  br i1 %exitcond24.not, label %for.cond6.loopexit, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %arrayidx13 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv21
  %1 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  %cmp16 = icmp eq i32 %1, %mul
  %mul21 = shl nsw i32 %1, 1
  %cmp23 = icmp eq i32 %2, %mul21
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp23
  %inc25 = zext i1 %or.cond to i32
  %n.4 = add nsw i32 %n.3, %inc25
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond9, !llvm.loop !14

for.end31:                                        ; preds = %for.cond6
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %n.2)
  %vtable.i = load ptr, ptr %call32, align 8, !tbaa !15
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call32, i64 %vbase.offset.i
  %call.i17 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call32, i8 noundef signext %call.i17)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.cond34

for.cond34:                                       ; preds = %for.body36, %for.end31
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body36 ], [ 0, %for.end31 ]
  %exitcond32.not = icmp eq i64 %indvars.iv29, 16
  br i1 %exitcond32.not, label %while.cond.backedge, label %for.body36, !llvm.loop !12

for.body36:                                       ; preds = %for.cond34
  %arrayidx38 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv29
  store i32 -1, ptr %arrayidx38, align 4, !tbaa !5
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond34, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #4
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
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = distinct !{!17, !10, !11}
