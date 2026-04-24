; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2p90rhzx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z7findminiii(i32 noundef %c, i32 noundef %low, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %c, 1
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %low to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !5
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %min.1 = phi i32 [ %spec.select, %for.body ], [ %0, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.end13, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

if.end13:                                         ; preds = %for.cond, %entry
  %min.0 = phi i32 [ undef, %entry ], [ %min.1, %for.cond ]
  %cmp14 = icmp eq i32 %c, 0
  br i1 %cmp14, label %if.then15, label %if.end36

if.then15:                                        ; preds = %if.end13
  %idxprom17 = sext i32 %low to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom17
  %2 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %smax22 = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count23 = zext nneg i32 %smax22 to i64
  br label %for.cond19

for.cond19:                                       ; preds = %for.body21, %if.then15
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.body21 ], [ 0, %if.then15 ]
  %min.4 = phi i32 [ %spec.select17, %for.body21 ], [ %2, %if.then15 ]
  %exitcond24.not = icmp eq i64 %indvars.iv19, %wide.trip.count23
  br i1 %exitcond24.not, label %if.end36, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv19, i64 %idxprom17
  %3 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %spec.select17 = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.4)
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond19, !llvm.loop !12

if.end36:                                         ; preds = %for.cond19, %if.end13
  %min.3 = phi i32 [ %min.0, %if.end13 ], [ %min.4, %for.cond19 ]
  ret i32 %min.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3decii(i32 noundef %n, i32 noundef %sum) local_unnamed_addr #2 {
entry:
  %0 = sext i32 %n to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end79, %entry
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.end79 ], [ %0, %entry ]
  %sum.tr = phi i32 [ %add, %for.end79 ], [ %sum, %entry ]
  %1 = trunc nsw i64 %indvars.iv82 to i32
  %2 = icmp eq i64 %indvars.iv82, 1
  br i1 %2, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %smax79 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count51 = zext nneg i32 %smax79 to i64
  %wide.trip.count = and i64 %indvars.iv82, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc11
  %indvars.iv48 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next49, %for.inc11 ]
  %exitcond52.not = icmp eq i64 %indvars.iv48, %wide.trip.count51
  br i1 %exitcond52.not, label %for.cond14.preheader, label %for.body

for.cond14.preheader:                             ; preds = %for.cond
  %wide.trip.count56 = and i64 %indvars.iv82, 4294967295
  br label %for.cond14

for.body:                                         ; preds = %for.cond
  %3 = trunc nuw nsw i64 %indvars.iv48 to i32
  %call = tail call noundef i32 @_Z7findminiii(i32 noundef 1, i32 noundef %3, i32 noundef %1)
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc11, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv48, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %sub = sub nsw i32 %4, %call
  store i32 %sub, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !13

for.inc11:                                        ; preds = %for.cond2
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond, !llvm.loop !14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc33
  %indvars.iv58 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next59, %for.inc33 ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count51
  br i1 %exitcond63.not, label %for.end35, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx18.i = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv58
  %5 = load i32, ptr %arrayidx18.i, align 4, !tbaa !5
  br label %for.cond19.i

for.cond19.i:                                     ; preds = %for.body21.i, %for.body16
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i, %for.body21.i ], [ 0, %for.body16 ]
  %min.4.i = phi i32 [ %spec.select17.i, %for.body21.i ], [ %5, %for.body16 ]
  %exitcond24.not.i = icmp eq i64 %indvars.iv19.i, %wide.trip.count51
  br i1 %exitcond24.not.i, label %for.cond18, label %for.body21.i

for.body21.i:                                     ; preds = %for.cond19.i
  %arrayidx25.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv19.i, i64 %indvars.iv58
  %6 = load i32, ptr %arrayidx25.i, align 4, !tbaa !5
  %spec.select17.i = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.4.i)
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  br label %for.cond19.i, !llvm.loop !12

for.cond18:                                       ; preds = %for.cond19.i, %for.body20
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body20 ], [ 0, %for.cond19.i ]
  %exitcond57.not = icmp eq i64 %indvars.iv53, %wide.trip.count56
  br i1 %exitcond57.not, label %for.inc33, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %arrayidx24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv53, i64 %indvars.iv58
  %7 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %sub25 = sub nsw i32 %7, %min.4.i
  store i32 %sub25, ptr %arrayidx24, align 4, !tbaa !5
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond18, !llvm.loop !15

for.inc33:                                        ; preds = %for.cond18
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond14, !llvm.loop !16

for.end35:                                        ; preds = %for.cond14
  %8 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, -1
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc55, %for.end35
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc55 ], [ 0, %for.end35 ]
  %exitcond72.not = icmp eq i64 %indvars.iv67, %wide.trip.count51
  br i1 %exitcond72.not, label %for.cond58, label %for.cond39

for.cond39:                                       ; preds = %for.cond36, %for.body42
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.body42 ], [ 1, %for.cond36 ]
  %cmp41 = icmp slt i64 %indvars.iv64, %indvars.iv.next83
  br i1 %cmp41, label %for.body42, label %for.inc55

for.body42:                                       ; preds = %for.cond39
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %arrayidx47 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next65, i64 %indvars.iv67
  %9 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %arrayidx51 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv64, i64 %indvars.iv67
  store i32 %9, ptr %arrayidx51, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !17

for.inc55:                                        ; preds = %for.cond39
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond36, !llvm.loop !18

for.cond58:                                       ; preds = %for.cond36, %for.inc77
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.inc77 ], [ 0, %for.cond36 ]
  %exitcond81.not = icmp eq i64 %indvars.iv76, %wide.trip.count51
  br i1 %exitcond81.not, label %for.end79, label %for.cond61

for.cond61:                                       ; preds = %for.cond58, %for.body64
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.body64 ], [ 1, %for.cond58 ]
  %cmp63 = icmp slt i64 %indvars.iv73, %indvars.iv.next83
  br i1 %cmp63, label %for.body64, label %for.inc77

for.body64:                                       ; preds = %for.cond61
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %arrayidx69 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv76, i64 %indvars.iv.next74
  %10 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %arrayidx73 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv76, i64 %indvars.iv73
  store i32 %10, ptr %arrayidx73, align 4, !tbaa !5
  br label %for.cond61, !llvm.loop !19

for.inc77:                                        ; preds = %for.cond61
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond58, !llvm.loop !20

for.end79:                                        ; preds = %for.cond58
  %add = add nsw i32 %8, %sum.tr
  br label %tailrecurse

return:                                           ; preds = %tailrecurse
  ret i32 %sum.tr
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc17, %for.end12 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.cond.cleanup, label %for.cond1

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !21

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !22

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3decii(i32 noundef %1, i32 noundef 0)
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %vtable.i = load ptr, ptr %call14, align 8, !tbaa !23
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call14, i64 %vbase.offset.i
  %call.i6 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call14, i8 noundef signext %call.i6)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc17 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !25
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = distinct !{!25, !10, !11}
