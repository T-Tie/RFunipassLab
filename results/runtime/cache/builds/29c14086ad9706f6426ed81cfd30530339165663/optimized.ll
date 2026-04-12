; ModuleID = '<stdin>'
source_filename = "/tmp/tmpy_twpipt.cpp"
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
  %a = alloca [102 x [102 x i32]], align 16
  %b = alloca [102 x [102 x i32]], align 16
  %c = alloca [102 x [102 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.start.p0(i64 41616, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 41616, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 41616, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41616) %c, i8 0, i64 41616, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup4, %entry
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.cond.cleanup4 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv45, %1
  br i1 %cmp.not, label %for.cond.cleanup, label %for.cond2

for.cond.cleanup:                                 ; preds = %for.cond
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call13, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond15

for.cond2:                                        ; preds = %for.cond, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp3.not, label %for.cond.cleanup4, label %for.body5

for.cond.cleanup4:                                ; preds = %for.cond2
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i28 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i28)
  %call.i.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i29)
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond, !llvm.loop !11

for.body5:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv45, i64 %indvars.iv
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !14

for.cond15:                                       ; preds = %for.cond.cleanup21, %for.cond.cleanup
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.cond.cleanup21 ], [ 1, %for.cond.cleanup ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp16.not = icmp sgt i64 %indvars.iv51, %5
  br i1 %cmp16.not, label %for.cond35.preheader, label %for.cond19

for.cond35.preheader:                             ; preds = %for.cond15
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %8 = load i32, ptr %y1, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %9 = add nuw i32 %smax, 1
  %smax60 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %10 = add nuw i32 %smax60, 1
  %smax66 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %11 = add nuw i32 %smax66, 1
  %wide.trip.count67 = zext i32 %11 to i64
  %wide.trip.count61 = zext i32 %10 to i64
  %wide.trip.count = zext i32 %9 to i64
  br label %for.cond35

for.cond19:                                       ; preds = %for.cond15, %for.body22
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body22 ], [ 1, %for.cond15 ]
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp20.not = icmp sgt i64 %indvars.iv48, %13
  br i1 %cmp20.not, label %for.cond.cleanup21, label %for.body22

for.cond.cleanup21:                               ; preds = %for.cond19
  %vtable.i31 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i32 = getelementptr i8, ptr %vtable.i31, i64 -24
  %vbase.offset.i33 = load i64, ptr %vbase.offset.ptr.i32, align 8
  %add.ptr.i34 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i33
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i34, i8 noundef signext 10)
  %call1.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i35)
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond15, !llvm.loop !15

for.body22:                                       ; preds = %for.cond19
  %arrayidx26 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %b, i64 0, i64 %indvars.iv51, i64 %indvars.iv48
  %call27 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx26)
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond19, !llvm.loop !16

for.cond35:                                       ; preds = %for.cond35.preheader, %for.cond.cleanup41
  %indvars.iv63 = phi i64 [ 1, %for.cond35.preheader ], [ %indvars.iv.next64, %for.cond.cleanup41 ]
  %exitcond68 = icmp eq i64 %indvars.iv63, %wide.trip.count67
  br i1 %exitcond68, label %for.cond68, label %for.cond39

for.cond39:                                       ; preds = %for.cond35, %for.cond.cleanup45
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.cond.cleanup45 ], [ 1, %for.cond35 ]
  %exitcond62 = icmp eq i64 %indvars.iv57, %wide.trip.count61
  br i1 %exitcond62, label %for.cond.cleanup41, label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.cond39
  %arrayidx58 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %c, i64 0, i64 %indvars.iv63, i64 %indvars.iv57
  br label %for.cond43

for.cond.cleanup41:                               ; preds = %for.cond39
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond35, !llvm.loop !17

for.cond43:                                       ; preds = %for.cond43.preheader, %for.body46
  %indvars.iv54 = phi i64 [ 1, %for.cond43.preheader ], [ %indvars.iv.next55, %for.body46 ]
  %exitcond = icmp eq i64 %indvars.iv54, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup45, label %for.body46

for.cond.cleanup45:                               ; preds = %for.cond43
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond39, !llvm.loop !18

for.body46:                                       ; preds = %for.cond43
  %arrayidx50 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv63, i64 %indvars.iv54
  %14 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %arrayidx54 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %b, i64 0, i64 %indvars.iv54, i64 %indvars.iv57
  %15 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %mul = mul nsw i32 %15, %14
  %16 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %add = add nsw i32 %16, %mul
  store i32 %add, ptr %arrayidx58, align 4, !tbaa !5
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond43, !llvm.loop !19

for.cond68:                                       ; preds = %for.cond35, %for.cond.cleanup74
  %17 = phi i32 [ %.pre, %for.cond.cleanup74 ], [ %6, %for.cond35 ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.cond.cleanup74 ], [ 1, %for.cond35 ]
  %18 = sext i32 %17 to i64
  %cmp69.not = icmp sgt i64 %indvars.iv72, %18
  br i1 %cmp69.not, label %for.cond.cleanup70, label %for.cond72

for.cond.cleanup70:                               ; preds = %for.cond68
  call void @llvm.lifetime.end.p0(i64 41616, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 41616, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 41616, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  ret i32 0

for.cond72:                                       ; preds = %for.cond68, %for.inc91
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc91 ], [ 1, %for.cond68 ]
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %20 = sext i32 %19 to i64
  %cmp73.not = icmp sgt i64 %indvars.iv69, %20
  br i1 %cmp73.not, label %for.cond.cleanup74, label %for.body75

for.cond.cleanup74:                               ; preds = %for.cond72
  %vtable.i37 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i38 = getelementptr i8, ptr %vtable.i37, i64 -24
  %vbase.offset.i39 = load i64, ptr %vbase.offset.ptr.i38, align 8
  %add.ptr.i40 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i39
  %call.i41 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i40, i8 noundef signext 10)
  %call1.i42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i41)
  %call.i.i43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i42)
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond68, !llvm.loop !20

for.body75:                                       ; preds = %for.cond72
  %21 = zext i32 %19 to i64
  %cmp76.not = icmp eq i64 %indvars.iv69, %21
  %arrayidx88 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %c, i64 0, i64 %indvars.iv72, i64 %indvars.iv69
  %22 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %call89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %22)
  br i1 %cmp76.not, label %for.inc91, label %if.then

if.then:                                          ; preds = %for.body75
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call89, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc91

for.inc91:                                        ; preds = %for.body75, %if.then
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond72, !llvm.loop !21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

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
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12, !13}
!21 = distinct !{!21, !12, !13}
