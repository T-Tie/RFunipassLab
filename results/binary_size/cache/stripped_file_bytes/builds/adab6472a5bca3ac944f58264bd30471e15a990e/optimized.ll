; ModuleID = '<stdin>'
source_filename = "/tmp/tmp44yhpujf.cpp"
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
@.str = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc8 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv44, %1
  br i1 %cmp.not, label %for.end10, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp3.not, label %for.inc8, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv44, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp13.not = icmp eq i32 %4, %5
  br i1 %cmp13.not, label %for.cond16, label %if.then

if.then:                                          ; preds = %for.end10
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 5)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i34 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i34)
  %call.i.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i35)
  br label %cleanup

for.cond16:                                       ; preds = %for.end10, %for.inc30
  %6 = phi i32 [ %.pre, %for.inc30 ], [ %4, %for.end10 ]
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc30 ], [ 1, %for.end10 ]
  %7 = sext i32 %6 to i64
  %cmp17.not = icmp sgt i64 %indvars.iv50, %7
  br i1 %cmp17.not, label %for.cond33.preheader, label %for.cond19

for.cond33.preheader:                             ; preds = %for.cond16
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %9 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %10 = add nuw i32 %smax, 1
  %smax60 = call i32 @llvm.smax.i32(i32 %9, i32 0)
  %11 = add nuw i32 %smax60, 1
  %smax66 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %12 = add nuw i32 %smax66, 1
  %wide.trip.count67 = zext i32 %12 to i64
  %wide.trip.count61 = zext i32 %11 to i64
  %wide.trip.count = zext i32 %10 to i64
  br label %for.cond33

for.cond19:                                       ; preds = %for.cond16, %for.body21
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.body21 ], [ 1, %for.cond16 ]
  %13 = load i32, ptr %y2, align 4, !tbaa !5
  %14 = sext i32 %13 to i64
  %cmp20.not = icmp sgt i64 %indvars.iv47, %14
  br i1 %cmp20.not, label %for.inc30, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv50, i64 %indvars.iv47
  %call26 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx25)
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond19, !llvm.loop !15

for.inc30:                                        ; preds = %for.cond19
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %.pre = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !16

for.cond33:                                       ; preds = %for.cond33.preheader, %for.inc64
  %indvars.iv63 = phi i64 [ 1, %for.cond33.preheader ], [ %indvars.iv.next64, %for.inc64 ]
  %exitcond68 = icmp eq i64 %indvars.iv63, %wide.trip.count67
  br i1 %exitcond68, label %for.cond67, label %for.cond36

for.cond36:                                       ; preds = %for.cond33, %for.inc61
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc61 ], [ 1, %for.cond33 ]
  %exitcond62 = icmp eq i64 %indvars.iv57, %wide.trip.count61
  br i1 %exitcond62, label %for.inc64, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv63, i64 %indvars.iv57
  store i32 0, ptr %arrayidx42, align 4, !tbaa !5
  br label %for.cond43

for.cond43:                                       ; preds = %for.body45, %for.body38
  %15 = phi i32 [ %add, %for.body45 ], [ 0, %for.body38 ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body45 ], [ 1, %for.body38 ]
  %exitcond = icmp eq i64 %indvars.iv53, %wide.trip.count
  br i1 %exitcond, label %for.inc61, label %for.body45

for.body45:                                       ; preds = %for.cond43
  %arrayidx49 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv63, i64 %indvars.iv53
  %16 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %arrayidx53 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv53, i64 %indvars.iv57
  %17 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %mul = mul nsw i32 %17, %16
  %add = add nsw i32 %15, %mul
  store i32 %add, ptr %arrayidx42, align 4, !tbaa !5
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond43, !llvm.loop !17

for.inc61:                                        ; preds = %for.cond43
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond36, !llvm.loop !18

for.inc64:                                        ; preds = %for.cond36
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond33, !llvm.loop !19

for.cond67:                                       ; preds = %for.cond33, %for.end85
  %18 = phi i32 [ %.pre75, %for.end85 ], [ %8, %for.cond33 ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.end85 ], [ 1, %for.cond33 ]
  %19 = sext i32 %18 to i64
  %cmp68.not = icmp sgt i64 %indvars.iv72, %19
  br i1 %cmp68.not, label %cleanup, label %for.body69

for.body69:                                       ; preds = %for.cond67
  %arrayidx72 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv72, i64 1
  %20 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %20)
  br label %for.cond74

for.cond74:                                       ; preds = %for.body76, %for.body69
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body76 ], [ 2, %for.body69 ]
  %21 = load i32, ptr %y2, align 4, !tbaa !5
  %22 = sext i32 %21 to i64
  %cmp75.not = icmp sgt i64 %indvars.iv69, %22
  br i1 %cmp75.not, label %for.end85, label %for.body76

for.body76:                                       ; preds = %for.cond74
  %call1.i32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  %arrayidx81 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv72, i64 %indvars.iv69
  %23 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %call82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %23)
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond74, !llvm.loop !20

for.end85:                                        ; preds = %for.cond74
  %vtable.i37 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i38 = getelementptr i8, ptr %vtable.i37, i64 -24
  %vbase.offset.i39 = load i64, ptr %vbase.offset.ptr.i38, align 8
  %add.ptr.i40 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i39
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i40, i8 noundef signext 10)
  %call1.i41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i41)
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %.pre75 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !21

cleanup:                                          ; preds = %for.cond67, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

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
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
