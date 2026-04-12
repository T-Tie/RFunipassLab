; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjdfglwh6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [102 x [102 x i32]] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [101 x i32] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [101 x i32] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.cond1, label %for.end15

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv7, %2
  br i1 %cmp2, label %for.cond4, label %for.inc13

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [102 x [102 x i32]], ptr @a, i64 0, i64 %indvars.iv7, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond1, !llvm.loop !12

for.inc13:                                        ; preds = %for.cond1
  tail call void @_Z1fPA102_i(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(41616) @a)
  %inc14 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !13

for.end15:                                        ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z1fPA102_i(ptr nofree noundef captures(none) %a) local_unnamed_addr #2 {
entry:
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc110, %entry
  %0 = phi i32 [ %19, %for.inc110 ], [ %.pre, %entry ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc110 ], [ 1, %entry ]
  %sum.0 = phi i32 [ %add, %for.inc110 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv72, %1
  br i1 %cmp, label %for.cond1, label %for.end112

for.cond1:                                        ; preds = %for.cond, %for.inc39
  %2 = phi i32 [ %9, %for.inc39 ], [ %0, %for.cond ]
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc39 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv55, %3
  br i1 %cmp2, label %for.body3, label %for.cond42

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp samesign uge i64 %indvars.iv55, %indvars.iv72
  %cmp5 = icmp eq i64 %indvars.iv55, 0
  %or.cond = or i1 %cmp4, %cmp5
  br i1 %or.cond, label %if.then, label %for.inc39

if.then:                                          ; preds = %for.body3
  %arrayidx = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv55
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !14
  %arrayidx8 = getelementptr inbounds nuw [101 x i32], ptr @b, i64 0, i64 %indvars.iv55
  store i32 %4, ptr %arrayidx8, align 4, !tbaa !5
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond26, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %arrayidx15 = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv55, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !14
  %cmp18 = icmp slt i32 %5, %4
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body11
  store i32 %5, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body11, %if.then19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond9, !llvm.loop !15

for.cond26:                                       ; preds = %for.cond9, %for.inc35
  %6 = phi i32 [ %.pre77, %for.inc35 ], [ %2, %for.cond9 ]
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc35 ], [ 0, %for.cond9 ]
  %7 = sext i32 %6 to i64
  %cmp27 = icmp slt i64 %indvars.iv52, %7
  br i1 %cmp27, label %for.inc35, label %for.inc39

for.inc35:                                        ; preds = %for.cond26
  %arrayidx34 = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv55, i64 %indvars.iv52
  %8 = load i32, ptr %arrayidx34, align 4, !tbaa !5, !invariant.load !14
  %sub = sub nsw i32 %8, %4
  store i32 %sub, ptr %arrayidx34, align 4, !tbaa !5
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %.pre77 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !16

for.inc39:                                        ; preds = %for.cond26, %for.body3
  %9 = phi i32 [ %2, %for.body3 ], [ %6, %for.cond26 ]
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond1, !llvm.loop !17

for.cond42:                                       ; preds = %for.cond1, %for.inc89
  %10 = phi i32 [ %17, %for.inc89 ], [ %2, %for.cond1 ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc89 ], [ 0, %for.cond1 ]
  %11 = sext i32 %10 to i64
  %cmp43 = icmp slt i64 %indvars.iv66, %11
  br i1 %cmp43, label %for.body44, label %for.end91

for.body44:                                       ; preds = %for.cond42
  %cmp45 = icmp samesign uge i64 %indvars.iv66, %indvars.iv72
  %cmp47 = icmp eq i64 %indvars.iv66, 0
  %or.cond50 = or i1 %cmp45, %cmp47
  br i1 %or.cond50, label %if.then48, label %for.inc89

if.then48:                                        ; preds = %for.body44
  %arrayidx51 = getelementptr inbounds nuw [102 x i32], ptr %a, i64 0, i64 %indvars.iv66
  %12 = load i32, ptr %arrayidx51, align 4, !tbaa !5, !invariant.load !14
  %arrayidx53 = getelementptr inbounds nuw [101 x i32], ptr @c, i64 0, i64 %indvars.iv66
  store i32 %12, ptr %arrayidx53, align 4, !tbaa !5
  %wide.trip.count61 = zext i32 %10 to i64
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc72, %if.then48
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc72 ], [ 0, %if.then48 ]
  %exitcond62.not = icmp eq i64 %indvars.iv58, %wide.trip.count61
  br i1 %exitcond62.not, label %for.cond75, label %for.body56

for.body56:                                       ; preds = %for.cond54
  %arrayidx62 = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv58, i64 %indvars.iv66
  %13 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !14
  %cmp63 = icmp sgt i32 %12, %13
  br i1 %cmp63, label %if.then64, label %for.inc72

if.then64:                                        ; preds = %for.body56
  store i32 %13, ptr %arrayidx53, align 4, !tbaa !5
  br label %for.inc72

for.inc72:                                        ; preds = %for.body56, %if.then64
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond54, !llvm.loop !18

for.cond75:                                       ; preds = %for.cond54, %for.inc85
  %14 = phi i32 [ %.pre76, %for.inc85 ], [ %10, %for.cond54 ]
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.inc85 ], [ 0, %for.cond54 ]
  %15 = sext i32 %14 to i64
  %cmp76 = icmp slt i64 %indvars.iv63, %15
  br i1 %cmp76, label %for.inc85, label %for.inc89

for.inc85:                                        ; preds = %for.cond75
  %arrayidx83 = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv63, i64 %indvars.iv66
  %16 = load i32, ptr %arrayidx83, align 4, !tbaa !5, !invariant.load !14
  %sub84 = sub nsw i32 %16, %12
  store i32 %sub84, ptr %arrayidx83, align 4, !tbaa !5
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %.pre76 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond75, !llvm.loop !19

for.inc89:                                        ; preds = %for.cond75, %for.body44
  %17 = phi i32 [ %10, %for.body44 ], [ %14, %for.cond75 ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond42, !llvm.loop !20

for.end91:                                        ; preds = %for.cond42
  %arrayidx95 = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv72, i64 %indvars.iv72
  %18 = load i32, ptr %arrayidx95, align 4, !tbaa !5, !invariant.load !14
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc107, %for.end91
  %19 = phi i32 [ %.pre75, %for.inc107 ], [ %10, %for.end91 ]
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc107 ], [ 0, %for.end91 ]
  %20 = sext i32 %19 to i64
  %cmp97 = icmp slt i64 %indvars.iv69, %20
  br i1 %cmp97, label %for.inc107, label %for.inc110

for.inc107:                                       ; preds = %for.cond96
  %arrayidx102 = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv69, i64 %indvars.iv72
  store i32 1000000, ptr %arrayidx102, align 4, !tbaa !5
  %arrayidx106 = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv72, i64 %indvars.iv69
  store i32 1000000, ptr %arrayidx106, align 4, !tbaa !5
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %.pre75 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond96, !llvm.loop !21

for.inc110:                                       ; preds = %for.cond96
  %add = add nsw i32 %18, %sum.0
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond, !llvm.loop !22

for.end112:                                       ; preds = %for.cond
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call, align 8, !tbaa !23, !invariant.load !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !14
  %add.ptr.i = getelementptr inbounds i8, ptr %call, i64 %vbase.offset.i
  %call.i1 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call, i8 noundef signext %call.i1)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #2 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
