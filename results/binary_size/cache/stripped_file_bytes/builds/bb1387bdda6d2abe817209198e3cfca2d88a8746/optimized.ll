; ModuleID = '<stdin>'
source_filename = "/tmp/tmp94w20kgz.cpp"
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
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc8 ], [ 0, %entry ]
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp = icmp slt i64 %indvars.iv30, %7
  br i1 %cmp, label %for.cond2.preheader, label %for.end10

for.cond2.preheader:                              ; preds = %for.cond
  %8 = mul nuw nsw i64 %indvars.iv30, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %8
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.body4 ]
  %9 = load i32, ptr %y1, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %10
  br i1 %cmp3, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %11 = load i32, ptr %x2, align 4, !tbaa !5
  %12 = zext i32 %11 to i64
  %13 = load i32, ptr %y2, align 4, !tbaa !5
  %14 = zext i32 %13 to i64
  %15 = mul nuw i64 %14, %12
  %vla13 = alloca i32, i64 %15, align 16
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc28, %for.end10
  %16 = phi i32 [ %20, %for.inc28 ], [ %13, %for.end10 ]
  %17 = phi i32 [ %.pre, %for.inc28 ], [ %11, %for.end10 ]
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc28 ], [ 0, %for.end10 ]
  %18 = sext i32 %17 to i64
  %cmp15 = icmp slt i64 %indvars.iv36, %18
  br i1 %cmp15, label %for.cond17.preheader, label %for.end30

for.cond17.preheader:                             ; preds = %for.cond14
  %19 = mul nuw nsw i64 %indvars.iv36, %14
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %vla13, i64 %19
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %20 = phi i32 [ %16, %for.cond17.preheader ], [ %.pre49, %for.body19 ]
  %indvars.iv33 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next34, %for.body19 ]
  %21 = sext i32 %20 to i64
  %cmp18 = icmp slt i64 %indvars.iv33, %21
  br i1 %cmp18, label %for.body19, label %for.inc28

for.body19:                                       ; preds = %for.cond17
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %arrayidx21, i64 %indvars.iv33
  %call24 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx23)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %.pre49 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond17
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %.pre = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !14

for.end30:                                        ; preds = %for.cond14
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %c, i8 0, i64 40000, i1 false)
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc72, %for.end30
  %22 = phi i32 [ %26, %for.inc72 ], [ %16, %for.end30 ]
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.inc72 ], [ 0, %for.end30 ]
  %23 = load i32, ptr %x1, align 4, !tbaa !5
  %24 = sext i32 %23 to i64
  %cmp32 = icmp slt i64 %indvars.iv45, %24
  br i1 %cmp32, label %for.cond34.preheader, label %for.end74

for.cond34.preheader:                             ; preds = %for.cond31
  %25 = mul nuw nsw i64 %indvars.iv45, %3
  %arrayidx41 = getelementptr inbounds nuw i32, ptr %vla, i64 %25
  br label %for.cond34

for.cond34:                                       ; preds = %for.cond34.preheader, %for.inc69
  %26 = phi i32 [ %22, %for.cond34.preheader ], [ %.pre48, %for.inc69 ]
  %indvars.iv42 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next43, %for.inc69 ]
  %27 = sext i32 %26 to i64
  %cmp35 = icmp slt i64 %indvars.iv42, %27
  br i1 %cmp35, label %for.cond37.preheader, label %for.inc72

for.cond37.preheader:                             ; preds = %for.cond34
  %28 = load i32, ptr %x2, align 4, !tbaa !5
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla13, i64 %indvars.iv42
  %arrayidx51 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv45, i64 %indvars.iv42
  %smax = call i32 @llvm.smax.i32(i32 %28, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond37

for.cond37:                                       ; preds = %for.cond37.preheader, %for.body39
  %indvars.iv39 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next40, %for.body39 ]
  %exitcond.not = icmp eq i64 %indvars.iv39, %wide.trip.count
  br i1 %exitcond.not, label %for.end54, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw i32, ptr %arrayidx41, i64 %indvars.iv39
  %29 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %30 = mul nuw nsw i64 %indvars.iv39, %14
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %30
  %31 = load i32, ptr %gep, align 4, !tbaa !5
  %mul = mul nsw i32 %31, %29
  %32 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %add = add nsw i32 %32, %mul
  store i32 %add, ptr %arrayidx51, align 4, !tbaa !5
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond37, !llvm.loop !15

for.end54:                                        ; preds = %for.cond37
  %sub = add nsw i32 %26, -1
  %33 = sext i32 %sub to i64
  %cmp55 = icmp slt i64 %indvars.iv42, %33
  br i1 %cmp55, label %if.then, label %if.else

if.then:                                          ; preds = %for.end54
  %34 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %34)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc69

if.else:                                          ; preds = %for.end54
  %arrayidx66 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv45, i64 %33
  %35 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %call67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %35)
  %vtable.i = load ptr, ptr %call67, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call67, i64 %vbase.offset.i
  %call.i26 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call67, i8 noundef signext %call.i26)
  %call.i.i28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i27)
  br label %for.inc69

for.inc69:                                        ; preds = %if.then, %if.else
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %.pre48 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !18

for.inc72:                                        ; preds = %for.cond34
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond31, !llvm.loop !19

for.end74:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #7
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
