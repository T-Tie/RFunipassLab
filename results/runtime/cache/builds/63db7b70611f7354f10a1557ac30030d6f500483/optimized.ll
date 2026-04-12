; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9hqh8wxi.cpp"
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z7smallerii(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %spec.select = tail call i32 @llvm.smin.i32(i32 noundef %a, i32 noundef %b)
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3Sumi(i32 noundef %n) local_unnamed_addr #1 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end101, %entry
  %indvars.iv61.in = phi i32 [ %indvars.iv61, %for.end101 ], [ %n, %entry ]
  %accumulator.tr = phi i32 [ %add104, %for.end101 ], [ 0, %entry ]
  %smax55 = tail call i32 @llvm.smax.i32(i32 %indvars.iv61.in, i32 noundef 0)
  %wide.trip.count40 = zext nneg i32 %smax55 to i64
  %wide.trip.count = zext i32 %indvars.iv61.in to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %tailrecurse
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc22 ], [ 0, %tailrecurse ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count40
  br i1 %exitcond41.not, label %for.cond26, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv37
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !5, !invariant.load !9
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select.i, %for.inc ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond11.preheader, label %for.inc

for.cond11.preheader:                             ; preds = %for.cond2
  br label %for.cond11

for.inc:                                          ; preds = %for.cond2
  %arrayidx9 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv37, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !9
  %spec.select.i = tail call noundef i32 @llvm.smin.i32(i32 %min.0, i32 %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.cond11:                                       ; preds = %for.cond11.preheader, %for.inc19
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc19 ], [ 0, %for.cond11.preheader ]
  %exitcond36.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond36.not, label %for.inc22, label %for.inc19

for.inc19:                                        ; preds = %for.cond11
  %arrayidx18 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv37, i64 %indvars.iv32
  %2 = load i32, ptr %arrayidx18, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx18, align 4, !tbaa !5
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond11, !llvm.loop !13

for.inc22:                                        ; preds = %for.cond11
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond, !llvm.loop !14

for.cond26:                                       ; preds = %for.cond, %for.inc59
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc59 ], [ 0, %for.cond ]
  %exitcond57.not = icmp eq i64 %indvars.iv52, %wide.trip.count40
  br i1 %exitcond57.not, label %for.end61, label %for.body29

for.body29:                                       ; preds = %for.cond26
  %arrayidx32 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv52
  %3 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc43, %for.body29
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc43 ], [ 0, %for.body29 ]
  %min30.0 = phi i32 [ %spec.select.i2, %for.inc43 ], [ %3, %for.body29 ]
  %exitcond46.not = icmp eq i64 %indvars.iv42, %wide.trip.count
  br i1 %exitcond46.not, label %for.cond47.preheader, label %for.inc43

for.cond47.preheader:                             ; preds = %for.cond34
  br label %for.cond47

for.inc43:                                        ; preds = %for.cond34
  %arrayidx41 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv42, i64 %indvars.iv52
  %4 = load i32, ptr %arrayidx41, align 4, !tbaa !5, !invariant.load !9
  %spec.select.i2 = tail call noundef i32 @llvm.smin.i32(i32 %min30.0, i32 %4)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond34, !llvm.loop !15

for.cond47:                                       ; preds = %for.cond47.preheader, %for.inc56
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc56 ], [ 0, %for.cond47.preheader ]
  %exitcond51.not = icmp eq i64 %indvars.iv47, %wide.trip.count
  br i1 %exitcond51.not, label %for.inc59, label %for.inc56

for.inc56:                                        ; preds = %for.cond47
  %arrayidx54 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv47, i64 %indvars.iv52
  %5 = load i32, ptr %arrayidx54, align 4, !tbaa !5, !invariant.load !9
  %sub55 = sub nsw i32 %5, %min30.0
  store i32 %sub55, ptr %arrayidx54, align 4, !tbaa !5
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond47, !llvm.loop !16

for.inc59:                                        ; preds = %for.cond47
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond26, !llvm.loop !17

for.end61:                                        ; preds = %for.cond26
  %indvars.iv61 = add i32 %indvars.iv61.in, -1
  %cmp62 = icmp eq i32 %indvars.iv61.in, 2
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  br i1 %cmp62, label %if.then, label %if.end

if.then:                                          ; preds = %for.end61
  %accumulator.ret.tr = add nsw i32 %6, %accumulator.tr
  ret i32 %accumulator.ret.tr

if.end:                                           ; preds = %for.end61
  %smax68 = tail call i32 @llvm.smax.i32(i32 %indvars.iv61, i32 noundef 1)
  %wide.trip.count69 = zext nneg i32 %smax68 to i64
  %wide.trip.count63 = zext i32 %indvars.iv61 to i64
  br label %for.cond64

for.cond64:                                       ; preds = %for.cond81, %if.end
  %indvars.iv65 = phi i64 [ 1, %if.end ], [ %indvars.iv.next66, %for.cond81 ]
  %exitcond70.not = icmp eq i64 %indvars.iv65, %wide.trip.count69
  br i1 %exitcond70.not, label %for.end101, label %for.body68

for.body68:                                       ; preds = %for.cond64
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %arrayidx70 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv.next66
  %7 = load i32, ptr %arrayidx70, align 4, !tbaa !5, !invariant.load !9
  %arrayidx72 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv65
  store i32 %7, ptr %arrayidx72, align 4, !tbaa !5
  %arrayidx75 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next66
  %8 = load i32, ptr %arrayidx75, align 16, !tbaa !5, !invariant.load !9
  %arrayidx78 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv65
  store i32 %8, ptr %arrayidx78, align 16, !tbaa !5
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc96, %for.body68
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc96 ], [ 1, %for.body68 ]
  %exitcond64.not = icmp eq i64 %indvars.iv58, %wide.trip.count63
  br i1 %exitcond64.not, label %for.cond64, label %for.inc96, !llvm.loop !18

for.inc96:                                        ; preds = %for.cond81
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %arrayidx91 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next66, i64 %indvars.iv.next59
  %9 = load i32, ptr %arrayidx91, align 4, !tbaa !5, !invariant.load !9
  %arrayidx95 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv65, i64 %indvars.iv58
  store i32 %9, ptr %arrayidx95, align 4, !tbaa !5
  br label %for.cond81, !llvm.loop !19

for.end101:                                       ; preds = %for.cond64
  %add104 = add nsw i32 %6, %accumulator.tr
  br label %tailrecurse
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end20

for.cond1:                                        ; preds = %for.cond, %for.inc12
  %1 = phi i32 [ %3, %for.inc12 ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc12 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond5, label %for.inc18

for.cond5:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !20

for.inc12:                                        ; preds = %for.cond5
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !21

for.inc18:                                        ; preds = %for.cond1
  %call15 = call noundef i32 @_Z3Sumi(i32 noundef %1) #9
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call15)
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call16, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc19 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !22

for.end20:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
