; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfonl7t3n.cpp"
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
  %a = alloca [111 x [111 x i32]], align 16
  %b = alloca [111 x [111 x i32]], align 16
  %c = alloca [111 x [111 x i32]], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 49284, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 49284, ptr noundef nonnull align 16 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 49284, ptr noundef nonnull align 16 %c) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #5
  store i32 1, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #5
  store i32 1, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #5
  store i32 1, ptr %y1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #5
  store i32 1, ptr %y2, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv10, %1
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv10, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc27 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14 = icmp slt i64 %indvars.iv16, %5
  br i1 %cmp14, label %for.cond16, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond13
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 noundef 0)
  %smax26 = call i32 @llvm.smax.i32(i32 %7, i32 noundef 0)
  %smax32 = call i32 @llvm.smax.i32(i32 %6, i32 noundef 0)
  %wide.trip.count33 = zext nneg i32 %smax32 to i64
  %wide.trip.count27 = zext nneg i32 %smax26 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.inc24
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc24 ], [ 0, %for.cond13 ]
  %8 = load i32, ptr %y2, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp17 = icmp slt i64 %indvars.iv13, %9
  br i1 %cmp17, label %for.inc24, label %for.inc27

for.inc24:                                        ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %b, i64 0, i64 %indvars.iv16, i64 %indvars.iv13
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond13, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc57
  %indvars.iv29 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next30, %for.inc57 ]
  %exitcond34.not = icmp eq i64 %indvars.iv29, %wide.trip.count33
  br i1 %exitcond34.not, label %for.cond60, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.inc54
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc54 ], [ 0, %for.cond30 ]
  %exitcond28.not = icmp eq i64 %indvars.iv23, %wide.trip.count27
  br i1 %exitcond28.not, label %for.inc57, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33
  %arrayidx50 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %c, i64 0, i64 %indvars.iv29, i64 %indvars.iv23
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc51
  %indvars.iv19 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next20, %for.inc51 ]
  %sum.0 = phi i32 [ 0, %for.cond36.preheader ], [ %add, %for.inc51 ]
  %exitcond.not = icmp eq i64 %indvars.iv19, %wide.trip.count
  br i1 %exitcond.not, label %for.inc54, label %for.inc51

for.inc51:                                        ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv29, i64 %indvars.iv19
  %10 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !15
  %arrayidx46 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %b, i64 0, i64 %indvars.iv19, i64 %indvars.iv23
  %11 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !15
  %mul = mul nsw i32 %11, %10
  %add = add nsw i32 %mul, %sum.0
  store i32 %add, ptr %arrayidx50, align 4, !tbaa !5
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond36, !llvm.loop !16

for.inc54:                                        ; preds = %for.cond36
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond33, !llvm.loop !17

for.inc57:                                        ; preds = %for.cond33
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond30, !llvm.loop !18

for.cond60:                                       ; preds = %for.cond30, %for.inc78
  %12 = phi i32 [ %15, %for.inc78 ], [ %7, %for.cond30 ]
  %13 = phi i32 [ %.pre, %for.inc78 ], [ %6, %for.cond30 ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc78 ], [ 0, %for.cond30 ]
  %14 = sext i32 %13 to i64
  %cmp61 = icmp slt i64 %indvars.iv38, %14
  br i1 %cmp61, label %for.cond64.preheader, label %for.end80

for.cond64.preheader:                             ; preds = %for.cond60
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br label %for.cond64

for.cond64:                                       ; preds = %for.cond64.preheader, %for.inc75
  %15 = phi i32 [ %12, %for.cond64.preheader ], [ %.pre41, %for.inc75 ]
  %indvars.iv35 = phi i64 [ 0, %for.cond64.preheader ], [ %indvars.iv.next36, %for.inc75 ]
  %16 = sext i32 %15 to i64
  %cmp65 = icmp slt i64 %indvars.iv35, %16
  br i1 %cmp65, label %for.body66, label %for.inc78

for.body66:                                       ; preds = %for.cond64
  %arrayidx70 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %c, i64 0, i64 %indvars.iv38, i64 %indvars.iv35
  %17 = load i32, ptr %arrayidx70, align 4, !tbaa !5, !invariant.load !15
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %17)
  %18 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %18, -1
  %19 = zext i32 %sub to i64
  %cmp72.not = icmp eq i64 %indvars.iv35, %19
  br i1 %cmp72.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body66
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc75

if.else:                                          ; preds = %for.body66
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !15
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i1)
  %call.i.i3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i2)
  br label %for.inc75

for.inc75:                                        ; preds = %if.then, %if.else
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %.pre41 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !19

for.inc78:                                        ; preds = %for.cond64
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !20

for.end80:                                        ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 49284, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 49284, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 49284, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
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
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
