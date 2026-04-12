; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwjohvs4_.cpp"
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
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40804) %c, i8 0, i64 40804, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  store i32 0, ptr %y2, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc8 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv29, %1
  br i1 %cmp.not, label %for.end10, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp3.not, label %for.inc8, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv29, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc27 ], [ 1, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14.not = icmp sgt i64 %indvars.iv35, %5
  br i1 %cmp14.not, label %for.cond30.preheader, label %for.cond16

for.cond30.preheader:                             ; preds = %for.cond13
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %8 = load i32, ptr %y1, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %9 = add nuw i32 %smax, 1
  %smax44 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %10 = add nuw i32 %smax44, 1
  %smax50 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %11 = add nuw i32 %smax50, 1
  %wide.trip.count51 = zext i32 %11 to i64
  %wide.trip.count45 = zext i32 %10 to i64
  %wide.trip.count = zext i32 %9 to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body18 ], [ 1, %for.cond13 ]
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp17.not = icmp sgt i64 %indvars.iv32, %13
  br i1 %cmp17.not, label %for.inc27, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv35, i64 %indvars.iv32
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond13, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc61
  %indvars.iv47 = phi i64 [ 1, %for.cond30.preheader ], [ %indvars.iv.next48, %for.inc61 ]
  %exitcond52 = icmp eq i64 %indvars.iv47, %wide.trip.count51
  br i1 %exitcond52, label %for.cond64, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.inc58
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc58 ], [ 1, %for.cond30 ]
  %exitcond46 = icmp eq i64 %indvars.iv41, %wide.trip.count45
  br i1 %exitcond46, label %for.inc61, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33
  %arrayidx42 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv47, i64 %indvars.iv41
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.body38
  %indvars.iv38 = phi i64 [ 1, %for.cond36.preheader ], [ %indvars.iv.next39, %for.body38 ]
  %exitcond = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond, label %for.inc58, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %14 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %arrayidx46 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv47, i64 %indvars.iv38
  %15 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %arrayidx50 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv38, i64 %indvars.iv41
  %16 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %mul = mul nsw i32 %16, %15
  %add = add nsw i32 %mul, %14
  store i32 %add, ptr %arrayidx42, align 4, !tbaa !5
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond36, !llvm.loop !15

for.inc58:                                        ; preds = %for.cond36
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond33, !llvm.loop !16

for.inc61:                                        ; preds = %for.cond33
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond30, !llvm.loop !17

for.cond64:                                       ; preds = %for.cond30, %for.end78
  %17 = phi i32 [ %.pre, %for.end78 ], [ %6, %for.cond30 ]
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.end78 ], [ 1, %for.cond30 ]
  %18 = sext i32 %17 to i64
  %cmp65.not = icmp sgt i64 %indvars.iv56, %18
  br i1 %cmp65.not, label %for.end87, label %for.cond67

for.cond67:                                       ; preds = %for.cond64, %for.body69
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body69 ], [ 1, %for.cond64 ]
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %20 = sext i32 %19 to i64
  %cmp68 = icmp slt i64 %indvars.iv53, %20
  br i1 %cmp68, label %for.body69, label %for.end78

for.body69:                                       ; preds = %for.cond67
  %arrayidx73 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv56, i64 %indvars.iv53
  %21 = load i32, ptr %arrayidx73, align 4, !tbaa !5
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %21)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call74, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond67, !llvm.loop !18

for.end78:                                        ; preds = %for.cond67
  %arrayidx82 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv56, i64 %20
  %22 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %call83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %22)
  %vtable.i = load ptr, ptr %call83, align 8, !tbaa !19
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call83, i64 %vbase.offset.i
  %call.i25 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call83, i8 noundef signext %call.i25)
  %call.i.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i26)
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !21

for.end87:                                        ; preds = %for.cond64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #6
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

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
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !8, i64 0}
!21 = distinct !{!21, !10, !11}
