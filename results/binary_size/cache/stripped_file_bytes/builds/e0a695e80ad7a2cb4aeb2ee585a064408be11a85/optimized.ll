; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv1yohbld.cpp"
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
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc8 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv39, %1
  br i1 %cmp.not, label %for.end10, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp3.not, label %for.inc8, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv39, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.inc27 ], [ 1, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14.not = icmp sgt i64 %indvars.iv45, %5
  br i1 %cmp14.not, label %for.cond30.preheader, label %for.cond16

for.cond30.preheader:                             ; preds = %for.cond13
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %8 = load i32, ptr %y1, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %9 = add nuw i32 %smax, 1
  %smax54 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %10 = add nuw i32 %smax54, 1
  %smax60 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %11 = add nuw i32 %smax60, 1
  %wide.trip.count61 = zext i32 %11 to i64
  %wide.trip.count55 = zext i32 %10 to i64
  %wide.trip.count = zext i32 %9 to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.body18 ], [ 1, %for.cond13 ]
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp17.not = icmp sgt i64 %indvars.iv42, %13
  br i1 %cmp17.not, label %for.inc27, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv45, i64 %indvars.iv42
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond13, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc65
  %indvars.iv57 = phi i64 [ 1, %for.cond30.preheader ], [ %indvars.iv.next58, %for.inc65 ]
  %exitcond62 = icmp eq i64 %indvars.iv57, %wide.trip.count61
  br i1 %exitcond62, label %for.cond68, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.inc62
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.inc62 ], [ 1, %for.cond30 ]
  %exitcond56 = icmp eq i64 %indvars.iv51, %wide.trip.count55
  br i1 %exitcond56, label %for.inc65, label %for.body35

for.body35:                                       ; preds = %for.cond33
  %arrayidx39 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv57, i64 %indvars.iv51
  store i32 0, ptr %arrayidx39, align 4, !tbaa !5
  br label %for.cond40

for.cond40:                                       ; preds = %for.body42, %for.body35
  %14 = phi i32 [ %add, %for.body42 ], [ 0, %for.body35 ]
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body42 ], [ 1, %for.body35 ]
  %exitcond = icmp eq i64 %indvars.iv48, %wide.trip.count
  br i1 %exitcond, label %for.inc62, label %for.body42

for.body42:                                       ; preds = %for.cond40
  %arrayidx46 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv57, i64 %indvars.iv48
  %15 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %arrayidx50 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv48, i64 %indvars.iv51
  %16 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %mul = mul nsw i32 %16, %15
  %add = add nsw i32 %mul, %14
  store i32 %add, ptr %arrayidx39, align 4, !tbaa !5
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond40, !llvm.loop !15

for.inc62:                                        ; preds = %for.cond40
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond33, !llvm.loop !16

for.inc65:                                        ; preds = %for.cond33
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond30, !llvm.loop !17

for.cond68:                                       ; preds = %for.cond30, %for.inc90
  %17 = phi i32 [ %20, %for.inc90 ], [ %7, %for.cond30 ]
  %18 = phi i32 [ %.pre, %for.inc90 ], [ %6, %for.cond30 ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc90 ], [ 1, %for.cond30 ]
  %19 = sext i32 %18 to i64
  %cmp69.not = icmp sgt i64 %indvars.iv66, %19
  br i1 %cmp69.not, label %for.end92, label %for.cond71

for.cond71:                                       ; preds = %for.cond68, %for.inc87
  %20 = phi i32 [ %.pre69, %for.inc87 ], [ %17, %for.cond68 ]
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.inc87 ], [ 1, %for.cond68 ]
  %21 = sext i32 %20 to i64
  %cmp72.not = icmp sgt i64 %indvars.iv63, %21
  br i1 %cmp72.not, label %for.inc90, label %for.body73

for.body73:                                       ; preds = %for.cond71
  %22 = zext i32 %20 to i64
  %cmp74.not = icmp eq i64 %indvars.iv63, %22
  %arrayidx84 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv66, i64 %indvars.iv63
  %23 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %call85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %23)
  br i1 %cmp74.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body73
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call85, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc87

if.else:                                          ; preds = %for.body73
  %vtable.i = load ptr, ptr %call85, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call85, i64 %vbase.offset.i
  %call.i35 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call85, i8 noundef signext %call.i35)
  %call.i.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i36)
  br label %for.inc87

for.inc87:                                        ; preds = %if.then, %if.else
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %.pre69 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond71, !llvm.loop !20

for.inc90:                                        ; preds = %for.cond71
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond68, !llvm.loop !21

for.end92:                                        ; preds = %for.cond68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
