; ModuleID = '<stdin>'
source_filename = "/tmp/tmptf3pe3k3.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc13
  %indvars.iv23 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next24, %for.inc13 ]
  %k.0 = phi i32 [ 0, %for.cond2.preheader ], [ %k.1, %for.inc13 ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body4

for.cond16.preheader:                             ; preds = %for.cond2
  %sub = add nsw i32 %k.0, -1
  %smax35 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %for.cond16

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv23
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !12
  %3 = and i32 %2, -2147483647
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %k.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom10
  store i32 %2, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %k.0, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %k.1 = phi i32 [ %inc12, %if.then ], [ %k.0, %for.body4 ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond2, !llvm.loop !13

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc44
  %indvars.iv30 = phi i32 [ %sub, %for.cond16.preheader ], [ %indvars.iv.next31, %for.inc44 ]
  %m.0 = phi i32 [ 0, %for.cond16.preheader ], [ %inc45, %for.inc44 ]
  %exitcond36.not = icmp eq i32 %m.0, %smax35
  br i1 %exitcond36.not, label %for.cond47.preheader, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond16
  %smax32 = call i32 @llvm.smax.i32(i32 %indvars.iv30, i32 0)
  %wide.trip.count33 = zext nneg i32 %smax32 to i64
  br label %for.cond19

for.cond47.preheader:                             ; preds = %for.cond16
  %wide.trip.count40 = zext nneg i32 %smax35 to i64
  br label %for.cond47

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc41
  %indvars.iv27 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next28, %for.inc41 ]
  %exitcond34.not = icmp eq i64 %indvars.iv27, %wide.trip.count33
  br i1 %exitcond34.not, label %for.inc44, label %for.body23

for.body23:                                       ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv27
  %4 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !12
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %arrayidx27 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv.next28
  %5 = load i32, ptr %arrayidx27, align 4, !tbaa !5, !invariant.load !12
  %cmp28 = icmp sgt i32 %4, %5
  br i1 %cmp28, label %if.then29, label %for.inc41

if.then29:                                        ; preds = %for.body23
  store i32 %5, ptr %arrayidx25, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc41

for.inc41:                                        ; preds = %for.body23, %if.then29
  br label %for.cond19, !llvm.loop !14

for.inc44:                                        ; preds = %for.cond19
  %inc45 = add nuw i32 %m.0, 1
  %indvars.iv.next31 = add i32 %indvars.iv30, -1
  br label %for.cond16, !llvm.loop !15

for.cond47:                                       ; preds = %for.cond47.preheader, %for.inc55
  %indvars.iv37 = phi i64 [ 0, %for.cond47.preheader ], [ %indvars.iv.next38, %for.inc55 ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count40
  br i1 %exitcond41.not, label %for.end57, label %for.inc55

for.inc55:                                        ; preds = %for.cond47
  %arrayidx52 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv37
  %6 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !12
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call53, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond47, !llvm.loop !16

for.end57:                                        ; preds = %for.cond47
  %idxprom59 = sext i32 %sub to i64
  %arrayidx60 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom59
  %7 = load i32, ptr %arrayidx60, align 4, !tbaa !5, !invariant.load !12
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
