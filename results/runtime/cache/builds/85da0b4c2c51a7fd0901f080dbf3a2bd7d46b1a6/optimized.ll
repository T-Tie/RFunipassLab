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
define dso_local noundef i32 @_Z2jzPA100_ii(ptr nofree noundef captures(none) %a, i32 noundef %k) local_unnamed_addr #0 {
entry:
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %invariant.gep = getelementptr i8, ptr %a, i64 -400
  %0 = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc135, %entry
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.inc135 ], [ %0, %entry ]
  %sum.0 = phi i32 [ %add, %for.inc135 ], [ 0, %entry ]
  %1 = trunc nuw i64 %indvars.iv73 to i32
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %for.cond1, label %for.end136

for.cond1:                                        ; preds = %for.cond, %for.inc31
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc31 ], [ 0, %for.cond ]
  %exitcond31.not = icmp eq i64 %indvars.iv27, %indvars.iv73
  br i1 %exitcond31.not, label %for.cond34, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv27
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 1, %for.body3 ]
  %min.0 = phi i32 [ %spec.select, %for.body7 ], [ %2, %for.body3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv73
  br i1 %exitcond.not, label %for.cond17.preheader, label %for.body7

for.cond17.preheader:                             ; preds = %for.cond5
  br label %for.cond17

for.body7:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv27, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !10

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc28
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc28 ], [ 0, %for.cond17.preheader ]
  %exitcond26.not = icmp eq i64 %indvars.iv22, %indvars.iv73
  br i1 %exitcond26.not, label %for.inc31, label %for.inc28

for.inc28:                                        ; preds = %for.cond17
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv27, i64 %indvars.iv22
  %4 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %4, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond17, !llvm.loop !13

for.inc31:                                        ; preds = %for.cond17
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond1, !llvm.loop !14

for.cond34:                                       ; preds = %for.cond1, %for.inc88
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc88 ], [ 0, %for.cond1 ]
  %exitcond51.not = icmp eq i64 %indvars.iv47, %indvars.iv73
  br i1 %exitcond51.not, label %for.end90, label %for.cond37

for.cond37:                                       ; preds = %for.cond34, %for.body39
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body39 ], [ 1, %for.cond34 ]
  %exitcond36.not = icmp eq i64 %indvars.iv32, %indvars.iv73
  br i1 %exitcond36.not, label %if.then51, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv32, i64 %indvars.iv47
  %5 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !9
  %cmp44 = icmp eq i32 %5, 0
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br i1 %cmp44, label %for.inc88, label %for.cond37, !llvm.loop !15

if.then51:                                        ; preds = %for.cond37
  %arrayidx54 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv47
  %6 = load i32, ptr %arrayidx54, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond55

for.cond55:                                       ; preds = %for.body57, %if.then51
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body57 ], [ 1, %if.then51 ]
  %min.2 = phi i32 [ %spec.select16, %for.body57 ], [ %6, %if.then51 ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %indvars.iv73
  br i1 %exitcond41.not, label %for.cond72.preheader, label %for.body57

for.cond72.preheader:                             ; preds = %for.cond55
  br label %for.cond72

for.body57:                                       ; preds = %for.cond55
  %arrayidx61 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv37, i64 %indvars.iv47
  %7 = load i32, ptr %arrayidx61, align 4, !tbaa !5, !invariant.load !9
  %spec.select16 = tail call i32 @llvm.smin.i32(i32 %7, i32 %min.2)
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond55, !llvm.loop !16

for.cond72:                                       ; preds = %for.cond72.preheader, %for.inc84
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc84 ], [ 0, %for.cond72.preheader ]
  %exitcond46.not = icmp eq i64 %indvars.iv42, %indvars.iv73
  br i1 %exitcond46.not, label %for.inc88, label %for.inc84

for.inc84:                                        ; preds = %for.cond72
  %arrayidx78 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv42, i64 %indvars.iv47
  %8 = load i32, ptr %arrayidx78, align 4, !tbaa !5, !invariant.load !9
  %sub79 = sub nsw i32 %8, %min.2
  store i32 %sub79, ptr %arrayidx78, align 4, !tbaa !5
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond72, !llvm.loop !17

for.inc88:                                        ; preds = %for.body39, %for.cond72
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond34, !llvm.loop !18

for.end90:                                        ; preds = %for.cond34
  %9 = load i32, ptr %arrayidx92, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc111, %for.end90
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc111 ], [ 0, %for.end90 ]
  %exitcond62.not = icmp eq i64 %indvars.iv58, %indvars.iv73
  br i1 %exitcond62.not, label %for.cond114, label %for.cond96

for.cond96:                                       ; preds = %for.cond93, %for.inc108
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc108 ], [ 2, %for.cond93 ]
  %exitcond57.not = icmp eq i64 %indvars.iv52, %indvars.iv73
  br i1 %exitcond57.not, label %for.inc111, label %for.inc108

for.inc108:                                       ; preds = %for.cond96
  %arrayidx102 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv58, i64 %indvars.iv52
  %10 = load i32, ptr %arrayidx102, align 4, !tbaa !5, !invariant.load !9
  %11 = add nsw i64 %indvars.iv52, -1
  %arrayidx107 = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv58, i64 %11
  store i32 %10, ptr %arrayidx107, align 4, !tbaa !5
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond96, !llvm.loop !19

for.inc111:                                       ; preds = %for.cond96
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond93, !llvm.loop !20

for.cond114:                                      ; preds = %for.cond93, %for.inc132
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc132 ], [ 0, %for.cond93 ]
  %exitcond72.not = icmp eq i64 %indvars.iv68, %indvars.iv73
  br i1 %exitcond72.not, label %for.inc135, label %for.cond117.preheader

for.cond117.preheader:                            ; preds = %for.cond114
  %invariant.gep18 = getelementptr [100 x i32], ptr %invariant.gep, i64 0, i64 %indvars.iv68
  br label %for.cond117

for.cond117:                                      ; preds = %for.cond117.preheader, %for.inc129
  %indvars.iv63 = phi i64 [ 2, %for.cond117.preheader ], [ %indvars.iv.next64, %for.inc129 ]
  %exitcond67.not = icmp eq i64 %indvars.iv63, %indvars.iv73
  br i1 %exitcond67.not, label %for.inc132, label %for.inc129

for.inc129:                                       ; preds = %for.cond117
  %arrayidx123 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv63, i64 %indvars.iv68
  %12 = load i32, ptr %arrayidx123, align 4, !tbaa !5, !invariant.load !9
  %gep19 = getelementptr [100 x i32], ptr %invariant.gep18, i64 %indvars.iv63
  store i32 %12, ptr %gep19, align 4, !tbaa !5
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond117, !llvm.loop !21

for.inc132:                                       ; preds = %for.cond117
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond114, !llvm.loop !22

for.inc135:                                       ; preds = %for.cond114
  %add = add nsw i32 %9, %sum.0
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br label %for.cond, !llvm.loop !23

for.end136:                                       ; preds = %for.cond
  ret i32 %sum.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %num = alloca [100 x [100 x i32]], align 16
  %ans = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %num) #6
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %ans) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = phi i32 [ %2, %for.inc16 ], [ %.pre, %entry ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc16 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv7, %1
  br i1 %cmp, label %for.cond1, label %for.cond19

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %2 = phi i32 [ %4, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc10 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv4, %3
  br i1 %cmp2, label %for.cond4, label %for.inc16

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %4 = phi i32 [ %.pre14, %for.inc ], [ %2, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %num, i64 0, i64 %indvars.iv4, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre14 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !24

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond1, !llvm.loop !25

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z2jzPA100_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %num, i32 noundef %2) #7
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr %ans, i64 0, i64 %indvars.iv7
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond, !llvm.loop !26

for.cond19:                                       ; preds = %for.cond, %for.inc26
  %6 = phi i32 [ %.pre13, %for.inc26 ], [ %0, %for.cond ]
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc26 ], [ 0, %for.cond ]
  %7 = sext i32 %6 to i64
  %cmp20 = icmp slt i64 %indvars.iv10, %7
  br i1 %cmp20, label %for.inc26, label %for.end28

for.inc26:                                        ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %ans, i64 0, i64 %indvars.iv10
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !9
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %vtable.i = load ptr, ptr %call24, align 8, !tbaa !27, !invariant.load !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !9
  %add.ptr.i = getelementptr inbounds i8, ptr %call24, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call24, i8 noundef signext %call.i1)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %.pre13 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !29

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %ans) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull captures(none) %num) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
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
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }

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
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11, !12}
!26 = distinct !{!26, !11, !12}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = distinct !{!29, !11, !12}
