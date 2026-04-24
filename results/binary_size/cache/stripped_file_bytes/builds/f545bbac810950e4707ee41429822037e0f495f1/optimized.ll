; ModuleID = '<stdin>'
source_filename = "/tmp/tmp58lbywnm.cpp"
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
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [110 x [110 x i32]], align 16
  %b = alloca [110 x [110 x i32]], align 16
  %c = alloca [110 x [110 x i32]], align 16
  %num = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv37, %1
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num)
  %4 = load i32, ptr %num, align 4, !tbaa !5
  %arrayidx7 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv37, i64 %indvars.iv
  store i32 %4, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc27 ], [ 0, %for.end10 ]
  %5 = load i32, ptr %x2, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp14 = icmp slt i64 %indvars.iv43, %6
  br i1 %cmp14, label %for.cond16, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond13
  %7 = load i32, ptr %x1, align 4, !tbaa !5
  %8 = load i32, ptr %y2, align 4
  %9 = load i32, ptr %y1, align 4
  %smax = call i32 @llvm.smax.i32(i32 %9, i32 0)
  %smax52 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %smax58 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %wide.trip.count59 = zext nneg i32 %smax58 to i64
  %wide.trip.count53 = zext nneg i32 %smax52 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body18 ], [ 0, %for.cond13 ]
  %10 = load i32, ptr %y2, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp17 = icmp slt i64 %indvars.iv40, %11
  br i1 %cmp17, label %for.body18, label %for.inc27

for.body18:                                       ; preds = %for.cond16
  %call19 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num)
  %12 = load i32, ptr %num, align 4, !tbaa !5
  %arrayidx23 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv43, i64 %indvars.iv40
  store i32 %12, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond13, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc61
  %indvars.iv55 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next56, %for.inc61 ]
  %exitcond60.not = icmp eq i64 %indvars.iv55, %wide.trip.count59
  br i1 %exitcond60.not, label %for.cond64, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.inc58
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc58 ], [ 0, %for.cond30 ]
  %exitcond54.not = icmp eq i64 %indvars.iv49, %wide.trip.count53
  br i1 %exitcond54.not, label %for.inc61, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33
  %arrayidx50 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %c, i64 0, i64 %indvars.iv55, i64 %indvars.iv49
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.body38
  %indvars.iv46 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next47, %for.body38 ]
  %exitcond.not = icmp eq i64 %indvars.iv46, %wide.trip.count
  br i1 %exitcond.not, label %for.inc58, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv55, i64 %indvars.iv46
  %13 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %arrayidx46 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv46, i64 %indvars.iv49
  %14 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %mul = mul nsw i32 %14, %13
  %15 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %add = add nsw i32 %mul, %15
  store i32 %add, ptr %arrayidx50, align 4, !tbaa !5
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond36, !llvm.loop !15

for.inc58:                                        ; preds = %for.cond36
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond33, !llvm.loop !16

for.inc61:                                        ; preds = %for.cond33
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond30, !llvm.loop !17

for.cond64:                                       ; preds = %for.cond30, %for.inc86
  %16 = phi i32 [ %19, %for.inc86 ], [ %8, %for.cond30 ]
  %17 = phi i32 [ %.pre, %for.inc86 ], [ %7, %for.cond30 ]
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.inc86 ], [ 0, %for.cond30 ]
  %18 = sext i32 %17 to i64
  %cmp65 = icmp slt i64 %indvars.iv64, %18
  br i1 %cmp65, label %for.cond67, label %for.end88

for.cond67:                                       ; preds = %for.cond64, %for.inc83
  %19 = phi i32 [ %.pre67, %for.inc83 ], [ %16, %for.cond64 ]
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc83 ], [ 0, %for.cond64 ]
  %20 = sext i32 %19 to i64
  %cmp68 = icmp slt i64 %indvars.iv61, %20
  br i1 %cmp68, label %for.body69, label %for.inc86

for.body69:                                       ; preds = %for.cond67
  %sub = add nsw i32 %19, -1
  %21 = sext i32 %sub to i64
  %cmp70 = icmp slt i64 %indvars.iv61, %21
  %arrayidx74 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %c, i64 0, i64 %indvars.iv64, i64 %indvars.iv61
  %22 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %22)
  br i1 %cmp70, label %if.then, label %if.else

if.then:                                          ; preds = %for.body69
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call75, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc83

if.else:                                          ; preds = %for.body69
  %vtable.i = load ptr, ptr %call75, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call75, i64 %vbase.offset.i
  %call.i33 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call75, i8 noundef signext %call.i33)
  %call.i.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i34)
  br label %for.inc83

for.inc83:                                        ; preds = %if.then, %if.else
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %.pre67 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !20

for.inc86:                                        ; preds = %for.cond67
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !21

for.end88:                                        ; preds = %for.cond64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
