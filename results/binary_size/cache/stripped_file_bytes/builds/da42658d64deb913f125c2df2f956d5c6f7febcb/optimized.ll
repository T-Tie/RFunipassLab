; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfx1tmoua.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.inc11 ], [ 0, %entry ]
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv45, %7
  br i1 %cmp3.not.not, label %for.cond4.preheader, label %for.end13

for.cond4.preheader:                              ; preds = %for.cond
  %8 = mul nuw nsw i64 %indvars.iv45, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %8
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body7
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body7 ]
  %9 = load i32, ptr %y1, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv, %10
  br i1 %cmp6.not.not, label %for.body7, label %for.inc11

for.body7:                                        ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond4
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  %call14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call15 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call14, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %11 = load i32, ptr %x2, align 4, !tbaa !5
  %12 = zext i32 %11 to i64
  %13 = load i32, ptr %y2, align 4, !tbaa !5
  %14 = zext i32 %13 to i64
  %15 = mul nuw i64 %14, %12
  %vla16 = alloca i32, i64 %15, align 16
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc34, %for.end13
  %16 = phi i32 [ %20, %for.inc34 ], [ %13, %for.end13 ]
  %17 = phi i32 [ %.pre, %for.inc34 ], [ %11, %for.end13 ]
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.inc34 ], [ 0, %for.end13 ]
  %18 = sext i32 %17 to i64
  %cmp20.not.not = icmp slt i64 %indvars.iv51, %18
  br i1 %cmp20.not.not, label %for.cond22.preheader, label %for.cond37

for.cond22.preheader:                             ; preds = %for.cond18
  %19 = mul nuw nsw i64 %indvars.iv51, %14
  %arrayidx27 = getelementptr inbounds nuw i32, ptr %vla16, i64 %19
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond22.preheader, %for.body25
  %20 = phi i32 [ %16, %for.cond22.preheader ], [ %.pre75, %for.body25 ]
  %indvars.iv48 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next49, %for.body25 ]
  %21 = sext i32 %20 to i64
  %cmp24.not.not = icmp slt i64 %indvars.iv48, %21
  br i1 %cmp24.not.not, label %for.body25, label %for.inc34

for.body25:                                       ; preds = %for.cond22
  %arrayidx29 = getelementptr inbounds nuw i32, ptr %arrayidx27, i64 %indvars.iv48
  %call30 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx29)
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %.pre75 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !13

for.inc34:                                        ; preds = %for.cond22
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %.pre = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !14

for.cond37:                                       ; preds = %for.cond18, %for.inc108
  %22 = phi i32 [ %34, %for.inc108 ], [ %16, %for.cond18 ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.inc108 ], [ 0, %for.cond18 ]
  %23 = load i32, ptr %x1, align 4, !tbaa !5
  %24 = sext i32 %23 to i64
  %cmp39.not.not = icmp slt i64 %indvars.iv70, %24
  br i1 %cmp39.not.not, label %for.cond41.preheader, label %for.end110

for.cond41.preheader:                             ; preds = %for.cond37
  %25 = mul nuw nsw i64 %indvars.iv70, %3
  %arrayidx50 = getelementptr inbounds nuw i32, ptr %vla, i64 %25
  br label %for.cond41

for.cond41:                                       ; preds = %for.cond41.preheader, %for.end59
  %26 = phi i32 [ %22, %for.cond41.preheader ], [ %.pre73, %for.end59 ]
  %indvars.iv57 = phi i64 [ 0, %for.cond41.preheader ], [ %indvars.iv.next58, %for.end59 ]
  %sub42 = add nsw i32 %26, -2
  %27 = sext i32 %sub42 to i64
  %cmp43.not = icmp sgt i64 %indvars.iv57, %27
  br i1 %cmp43.not, label %for.end72, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond41
  %28 = load i32, ptr %y1, align 4, !tbaa !5
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla16, i64 %indvars.iv57
  %smax = call i32 @llvm.smax.i32(i32 %28, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond45

for.cond45:                                       ; preds = %for.cond45.preheader, %for.body48
  %indvars.iv54 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next55, %for.body48 ]
  %d.2 = phi i32 [ 0, %for.cond45.preheader ], [ %add, %for.body48 ]
  %exitcond.not = icmp eq i64 %indvars.iv54, %wide.trip.count
  br i1 %exitcond.not, label %for.end59, label %for.body48

for.body48:                                       ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw i32, ptr %arrayidx50, i64 %indvars.iv54
  %29 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %30 = mul nuw nsw i64 %indvars.iv54, %14
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %30
  %31 = load i32, ptr %gep, align 4, !tbaa !5
  %mul = mul nsw i32 %31, %29
  %add = add nsw i32 %mul, %d.2
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond45, !llvm.loop !15

for.end59:                                        ; preds = %for.cond45
  %call68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %d.2)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call68, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %.pre73 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !16

for.end72:                                        ; preds = %for.cond41
  %32 = sext i32 %26 to i64
  %33 = add nsw i64 %32, -1
  br label %for.cond74

for.cond74:                                       ; preds = %for.end94, %for.end72
  %34 = phi i32 [ %.pre74, %for.end94 ], [ %26, %for.end72 ]
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.end94 ], [ %33, %for.end72 ]
  %35 = sext i32 %34 to i64
  %cmp76.not.not = icmp slt i64 %indvars.iv67, %35
  br i1 %cmp76.not.not, label %for.cond78.preheader, label %for.inc108

for.cond78.preheader:                             ; preds = %for.cond74
  %36 = load i32, ptr %y1, align 4, !tbaa !5
  %invariant.gep42 = getelementptr i32, ptr %vla16, i64 %indvars.iv67
  %smax63 = call i32 @llvm.smax.i32(i32 %36, i32 0)
  %wide.trip.count64 = zext nneg i32 %smax63 to i64
  br label %for.cond78

for.cond78:                                       ; preds = %for.cond78.preheader, %for.body81
  %indvars.iv60 = phi i64 [ 0, %for.cond78.preheader ], [ %indvars.iv.next61, %for.body81 ]
  %d.4 = phi i32 [ 0, %for.cond78.preheader ], [ %add91, %for.body81 ]
  %exitcond65.not = icmp eq i64 %indvars.iv60, %wide.trip.count64
  br i1 %exitcond65.not, label %for.end94, label %for.body81

for.body81:                                       ; preds = %for.cond78
  %arrayidx85 = getelementptr inbounds nuw i32, ptr %arrayidx50, i64 %indvars.iv60
  %37 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %38 = mul nuw nsw i64 %indvars.iv60, %14
  %gep43 = getelementptr i32, ptr %invariant.gep42, i64 %38
  %39 = load i32, ptr %gep43, align 4, !tbaa !5
  %mul90 = mul nsw i32 %39, %37
  %add91 = add nsw i32 %mul90, %d.4
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond78, !llvm.loop !17

for.end94:                                        ; preds = %for.cond78
  %call103 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %d.4)
  %vtable.i = load ptr, ptr %call103, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call103, i64 %vbase.offset.i
  %call.i39 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call103, i8 noundef signext %call.i39)
  %call.i.i41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i40)
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, 1
  %.pre74 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond74, !llvm.loop !20

for.inc108:                                       ; preds = %for.cond74
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond37, !llvm.loop !21

for.end110:                                       ; preds = %for.cond37
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
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
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
