; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgcbre_hb.cpp"
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z2jzPA100_ii(ptr noundef captures(none) %a, i32 noundef %k) local_unnamed_addr #0 {
entry:
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %invariant.gep = getelementptr i8, ptr %a, i64 -400
  %0 = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc135, %entry
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %for.inc135 ], [ %0, %entry ]
  %sum.0 = phi i32 [ %add, %for.inc135 ], [ 0, %entry ]
  %1 = trunc nuw i64 %indvars.iv138 to i32
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %for.cond1, label %for.end136

for.cond1:                                        ; preds = %for.cond, %for.inc31
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.inc31 ], [ 0, %for.cond ]
  %exitcond96.not = icmp eq i64 %indvars.iv92, %indvars.iv138
  br i1 %exitcond96.not, label %for.cond34, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv92
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 1, %for.body3 ]
  %min.0 = phi i32 [ %spec.select, %for.body7 ], [ %2, %for.body3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv138
  br i1 %exitcond.not, label %for.cond17, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv92, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !9

for.cond17:                                       ; preds = %for.cond5, %for.body19
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body19 ], [ 0, %for.cond5 ]
  %exitcond91.not = icmp eq i64 %indvars.iv87, %indvars.iv138
  br i1 %exitcond91.not, label %for.inc31, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv92, i64 %indvars.iv87
  %4 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub = sub nsw i32 %4, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond17, !llvm.loop !12

for.inc31:                                        ; preds = %for.cond17
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %for.cond1, !llvm.loop !13

for.cond34:                                       ; preds = %for.cond1, %for.inc88
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.inc88 ], [ 0, %for.cond1 ]
  %exitcond116.not = icmp eq i64 %indvars.iv112, %indvars.iv138
  br i1 %exitcond116.not, label %for.end90, label %for.cond37

for.cond37:                                       ; preds = %for.cond34, %for.body39
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.body39 ], [ 1, %for.cond34 ]
  %exitcond101.not = icmp eq i64 %indvars.iv97, %indvars.iv138
  br i1 %exitcond101.not, label %if.then51, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv97, i64 %indvars.iv112
  %5 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %5, 0
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  br i1 %cmp44, label %for.inc88, label %for.cond37, !llvm.loop !14

if.then51:                                        ; preds = %for.cond37
  %arrayidx54 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv112
  %6 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.body57, %if.then51
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.body57 ], [ 1, %if.then51 ]
  %min.2 = phi i32 [ %spec.select81, %for.body57 ], [ %6, %if.then51 ]
  %exitcond106.not = icmp eq i64 %indvars.iv102, %indvars.iv138
  br i1 %exitcond106.not, label %for.cond72, label %for.body57

for.body57:                                       ; preds = %for.cond55
  %arrayidx61 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv102, i64 %indvars.iv112
  %7 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %spec.select81 = tail call i32 @llvm.smin.i32(i32 %7, i32 %min.2)
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %for.cond55, !llvm.loop !15

for.cond72:                                       ; preds = %for.cond55, %for.body74
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.body74 ], [ 0, %for.cond55 ]
  %exitcond111.not = icmp eq i64 %indvars.iv107, %indvars.iv138
  br i1 %exitcond111.not, label %for.inc88, label %for.body74

for.body74:                                       ; preds = %for.cond72
  %arrayidx78 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv107, i64 %indvars.iv112
  %8 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %sub79 = sub nsw i32 %8, %min.2
  store i32 %sub79, ptr %arrayidx78, align 4, !tbaa !5
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  br label %for.cond72, !llvm.loop !16

for.inc88:                                        ; preds = %for.body39, %for.cond72
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond34, !llvm.loop !17

for.end90:                                        ; preds = %for.cond34
  %9 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc111, %for.end90
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %for.inc111 ], [ 0, %for.end90 ]
  %exitcond127.not = icmp eq i64 %indvars.iv123, %indvars.iv138
  br i1 %exitcond127.not, label %for.cond114, label %for.cond96

for.cond96:                                       ; preds = %for.cond93, %for.body98
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %for.body98 ], [ 2, %for.cond93 ]
  %exitcond122.not = icmp eq i64 %indvars.iv117, %indvars.iv138
  br i1 %exitcond122.not, label %for.inc111, label %for.body98

for.body98:                                       ; preds = %for.cond96
  %arrayidx102 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv123, i64 %indvars.iv117
  %10 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %11 = add nsw i64 %indvars.iv117, -1
  %arrayidx107 = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv123, i64 %11
  store i32 %10, ptr %arrayidx107, align 4, !tbaa !5
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %for.cond96, !llvm.loop !18

for.inc111:                                       ; preds = %for.cond96
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  br label %for.cond93, !llvm.loop !19

for.cond114:                                      ; preds = %for.cond93, %for.inc132
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %for.inc132 ], [ 0, %for.cond93 ]
  %exitcond137.not = icmp eq i64 %indvars.iv133, %indvars.iv138
  br i1 %exitcond137.not, label %for.inc135, label %for.cond117.preheader

for.cond117.preheader:                            ; preds = %for.cond114
  %invariant.gep83 = getelementptr [100 x i32], ptr %invariant.gep, i64 0, i64 %indvars.iv133
  br label %for.cond117

for.cond117:                                      ; preds = %for.cond117.preheader, %for.body119
  %indvars.iv128 = phi i64 [ 2, %for.cond117.preheader ], [ %indvars.iv.next129, %for.body119 ]
  %exitcond132.not = icmp eq i64 %indvars.iv128, %indvars.iv138
  br i1 %exitcond132.not, label %for.inc132, label %for.body119

for.body119:                                      ; preds = %for.cond117
  %arrayidx123 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv128, i64 %indvars.iv133
  %12 = load i32, ptr %arrayidx123, align 4, !tbaa !5
  %gep84 = getelementptr [100 x i32], ptr %invariant.gep83, i64 %indvars.iv128
  store i32 %12, ptr %gep84, align 4, !tbaa !5
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  br label %for.cond117, !llvm.loop !20

for.inc132:                                       ; preds = %for.cond117
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  br label %for.cond114, !llvm.loop !21

for.inc135:                                       ; preds = %for.cond114
  %add = add nsw i32 %9, %sum.0
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, -1
  br label %for.cond, !llvm.loop !22

for.end136:                                       ; preds = %for.cond
  ret i32 %sum.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %num = alloca [100 x [100 x i32]], align 16
  %ans = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %num) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %ans) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %0 = phi i32 [ %3, %for.end12 ], [ %.pre, %entry ]
  %1 = phi i32 [ %4, %for.end12 ], [ %.pre, %entry ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.end12 ], [ 0, %entry ]
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv15, %2
  br i1 %cmp, label %for.cond1, label %for.cond19

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %3 = phi i32 [ %6, %for.inc10 ], [ %0, %for.cond ]
  %4 = phi i32 [ %6, %for.inc10 ], [ %1, %for.cond ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc10 ], [ 0, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp2 = icmp slt i64 %indvars.iv12, %5
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %6 = phi i32 [ %.pre22, %for.body6 ], [ %3, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %7
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %num, i64 0, i64 %indvars.iv12, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre22 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !23

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond1, !llvm.loop !24

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z2jzPA100_ii(ptr noundef nonnull %num, i32 noundef %4)
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr %ans, i64 0, i64 %indvars.iv15
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond, !llvm.loop !25

for.cond19:                                       ; preds = %for.cond, %for.body21
  %8 = phi i32 [ %.pre21, %for.body21 ], [ %1, %for.cond ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body21 ], [ 0, %for.cond ]
  %9 = sext i32 %8 to i64
  %cmp20 = icmp slt i64 %indvars.iv18, %9
  br i1 %cmp20, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %ans, i64 0, i64 %indvars.iv18
  %10 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10)
  %vtable.i = load ptr, ptr %call24, align 8, !tbaa !26
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call24, i64 %vbase.offset.i
  %call.i10 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call24, i8 noundef signext %call.i10)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %.pre21 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !28

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %ans) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %num) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !8, i64 0}
!28 = distinct !{!28, !10, !11}
