; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvdqa8qin.cpp"
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
  %N = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %result = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %result) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %a, i8 0, i64 400, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %result, i8 0, i64 400, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  store i32 1, ptr %a, align 16, !tbaa !5
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %1 = add nuw i32 %smax, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc37, %for.inc36 ]
  %exitcond33 = icmp eq i32 %i.0, %1
  br i1 %exitcond33, label %while.cond, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 100
  br i1 %exitcond.not, label %for.cond8, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  %arrayidx7 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv
  store i32 %mul, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.cond8:                                        ; preds = %for.cond2, %for.cond8.backedge
  %indvars.iv24 = phi i64 [ %indvars.iv24.be, %for.cond8.backedge ], [ 0, %for.cond2 ]
  %exitcond28.not = icmp eq i64 %indvars.iv24, 100
  br i1 %exitcond28.not, label %for.cond26, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %arrayidx12 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv24
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %3, 9
  br i1 %cmp13, label %if.then, label %for.body10.for.inc23_crit_edge

for.body10.for.inc23_crit_edge:                   ; preds = %for.body10
  %.pre = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond8.backedge

for.cond8.backedge:                               ; preds = %for.body10.for.inc23_crit_edge, %if.then
  %indvars.iv24.be = phi i64 [ %.pre, %for.body10.for.inc23_crit_edge ], [ %4, %if.then ]
  br label %for.cond8, !llvm.loop !12

if.then:                                          ; preds = %for.body10
  %div = udiv i32 %3, 10
  %4 = add nuw nsw i64 %indvars.iv24, 1
  %arrayidx17 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add18 = add nsw i32 %5, %div
  store i32 %add18, ptr %arrayidx17, align 4, !tbaa !5
  %rem22 = urem i32 %3, 10
  store i32 %rem22, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.cond8.backedge

for.cond26:                                       ; preds = %for.cond8, %for.body28
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body28 ], [ 0, %for.cond8 ]
  %exitcond32.not = icmp eq i64 %indvars.iv29, 100
  br i1 %exitcond32.not, label %for.inc36, label %for.body28

for.body28:                                       ; preds = %for.cond26
  %arrayidx30 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv29
  %6 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %arrayidx32 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv29
  store i32 %6, ptr %arrayidx32, align 4, !tbaa !5
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond26, !llvm.loop !13

for.inc36:                                        ; preds = %for.cond26
  %inc37 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

while.cond:                                       ; preds = %for.cond, %while.cond
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %while.cond ], [ 99, %for.cond ]
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %indvars.iv34
  %7 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %7, 0
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, -1
  br i1 %cmp41, label %while.cond, label %for.cond42.preheader, !llvm.loop !15

for.cond42.preheader:                             ; preds = %while.cond
  %8 = trunc nsw i64 %indvars.iv34 to i32
  br label %for.cond42

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %j.4 = phi i32 [ %dec49, %for.body44 ], [ %8, %for.cond42.preheader ]
  %cmp43 = icmp sgt i32 %j.4, -1
  br i1 %cmp43, label %for.body44, label %for.end50

for.body44:                                       ; preds = %for.cond42
  %idxprom45 = zext nneg i32 %j.4 to i64
  %arrayidx46 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %idxprom45
  %9 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  %dec49 = add nsw i32 %j.4, -1
  br label %for.cond42, !llvm.loop !16

for.end50:                                        ; preds = %for.cond42
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i21 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i21)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %result) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #6
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
!16 = distinct !{!16, !10, !11}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
