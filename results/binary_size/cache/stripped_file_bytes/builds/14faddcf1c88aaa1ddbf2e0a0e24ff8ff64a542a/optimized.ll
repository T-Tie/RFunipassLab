; ModuleID = '<stdin>'
source_filename = "/tmp/tmpslc6poj8.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %c, i8 0, i64 40000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv32, %1
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv32, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc27 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14 = icmp slt i64 %indvars.iv38, %5
  br i1 %cmp14, label %for.cond16, label %for.end29

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.body18 ], [ 0, %for.cond13 ]
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp17 = icmp slt i64 %indvars.iv35, %7
  br i1 %cmp17, label %for.body18, label %for.inc27

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv38, i64 %indvars.iv35
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond13, !llvm.loop !14

for.end29:                                        ; preds = %for.cond13
  %8 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %8, %4
  br i1 %cmp30, label %for.cond31.preheader, label %for.cond61.preheader

for.cond61.preheader:                             ; preds = %for.cond31, %for.end29
  br label %for.cond61

for.cond31.preheader:                             ; preds = %for.end29
  %9 = load i32, ptr %x1, align 4, !tbaa !5
  %10 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %smax48 = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %smax54 = call i32 @llvm.smax.i32(i32 %9, i32 0)
  %wide.trip.count55 = zext nneg i32 %smax54 to i64
  %wide.trip.count49 = zext nneg i32 %smax48 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond31

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc58
  %indvars.iv51 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next52, %for.inc58 ]
  %exitcond56.not = icmp eq i64 %indvars.iv51, %wide.trip.count55
  br i1 %exitcond56.not, label %for.cond61.preheader, label %for.cond34

for.cond34:                                       ; preds = %for.cond31, %for.inc55
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc55 ], [ 0, %for.cond31 ]
  %exitcond50.not = icmp eq i64 %indvars.iv44, %wide.trip.count49
  br i1 %exitcond50.not, label %for.inc58, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond34
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv51, i64 %indvars.iv44
  br label %for.cond37

for.cond37:                                       ; preds = %for.cond37.preheader, %for.body39
  %indvars.iv41 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next42, %for.body39 ]
  %exitcond.not = icmp eq i64 %indvars.iv41, %wide.trip.count
  br i1 %exitcond.not, label %for.inc55, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %11 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %arrayidx47 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv44, i64 %indvars.iv41
  %12 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %mul = mul nsw i32 %12, %11
  %arrayidx51 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv51, i64 %indvars.iv41
  %13 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %add = add nsw i32 %13, %mul
  store i32 %add, ptr %arrayidx51, align 4, !tbaa !5
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond37, !llvm.loop !15

for.inc55:                                        ; preds = %for.cond37
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond34, !llvm.loop !16

for.inc58:                                        ; preds = %for.cond34
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond31, !llvm.loop !17

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc85
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.inc85 ], [ 0, %for.cond61.preheader ]
  %14 = load i32, ptr %x1, align 4, !tbaa !5
  %15 = sext i32 %14 to i64
  %cmp62 = icmp slt i64 %indvars.iv60, %15
  br i1 %cmp62, label %for.cond64, label %for.end87

for.cond64:                                       ; preds = %for.cond61, %for.inc82
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc82 ], [ 0, %for.cond61 ]
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %17 = sext i32 %16 to i64
  %cmp65 = icmp slt i64 %indvars.iv57, %17
  br i1 %cmp65, label %for.body66, label %for.inc85

for.body66:                                       ; preds = %for.cond64
  %sub = add nsw i32 %16, -1
  %18 = zext i32 %sub to i64
  %cmp67 = icmp eq i64 %indvars.iv57, %18
  %arrayidx72 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv60, i64 %indvars.iv57
  %19 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %19)
  br i1 %cmp67, label %if.then68, label %if.else

if.then68:                                        ; preds = %for.body66
  %vtable.i = load ptr, ptr %call73, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call73, i64 %vbase.offset.i
  %call.i28 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call73, i8 noundef signext %call.i28)
  %call.i.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i29)
  br label %for.inc82

if.else:                                          ; preds = %for.body66
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call73, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc82

for.inc82:                                        ; preds = %if.then68, %if.else
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond64, !llvm.loop !20

for.inc85:                                        ; preds = %for.cond64
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond61, !llvm.loop !21

for.end87:                                        ; preds = %for.cond61
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
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
