; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7o3e_gp1.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %re = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %re) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 100
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  switch i32 %0, label %if.else8 [
    i32 0, label %if.end56.sink.split
    i32 1, label %if.then5
  ]

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %re, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

if.then5:                                         ; preds = %for.cond.cleanup
  br label %if.end56.sink.split

if.else8:                                         ; preds = %for.cond.cleanup
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %re, i64 396
  store i32 2, ptr %arrayidx9, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc35, %if.else8
  %i.0 = phi i32 [ 1, %if.else8 ], [ %inc36, %for.inc35 ]
  %exitcond49.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond49.not, label %while.cond38, label %while.cond

while.cond:                                       ; preds = %for.cond10, %while.body
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %while.body ], [ 99, %for.cond10 ]
  %cmp13.not = icmp eq i64 %indvars.iv42, 0
  br i1 %cmp13.not, label %while.cond18, label %while.body

while.body:                                       ; preds = %while.cond
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %re, i64 0, i64 %indvars.iv42
  %1 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = shl nsw i32 %1, 1
  store i32 %mul, ptr %arrayidx15, align 4, !tbaa !5
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1
  br label %while.cond, !llvm.loop !12

while.cond18:                                     ; preds = %while.cond, %while.cond18.backedge
  %indvars.iv45 = phi i64 [ %indvars.iv45.be, %while.cond18.backedge ], [ 99, %while.cond ]
  %cmp19.not = icmp eq i64 %indvars.iv45, 0
  br i1 %cmp19.not, label %for.inc35, label %while.body20

while.body20:                                     ; preds = %while.cond18
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %re, i64 0, i64 %indvars.iv45
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp sgt i32 %2, 9
  br i1 %cmp23, label %if.then24, label %while.body20.if.end_crit_edge

while.body20.if.end_crit_edge:                    ; preds = %while.body20
  %.pre = add nsw i64 %indvars.iv45, -1
  br label %while.cond18.backedge

while.cond18.backedge:                            ; preds = %while.body20.if.end_crit_edge, %if.then24
  %indvars.iv45.be = phi i64 [ %.pre, %while.body20.if.end_crit_edge ], [ %3, %if.then24 ]
  br label %while.cond18, !llvm.loop !13

if.then24:                                        ; preds = %while.body20
  %div = udiv i32 %2, 10
  %3 = add nsw i64 %indvars.iv45, -1
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %re, i64 0, i64 %3
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %add = add nsw i32 %4, %div
  store i32 %add, ptr %arrayidx28, align 4, !tbaa !5
  %rem40 = urem i32 %2, 10
  store i32 %rem40, ptr %arrayidx22, align 4, !tbaa !5
  br label %while.cond18.backedge

for.inc35:                                        ; preds = %while.cond18
  %inc36 = add nuw i32 %i.0, 1
  br label %for.cond10, !llvm.loop !14

while.cond38:                                     ; preds = %for.cond10, %while.cond38
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %while.cond38 ], [ 0, %for.cond10 ]
  %arrayidx40 = getelementptr inbounds nuw [100 x i32], ptr %re, i64 0, i64 %indvars.iv50
  %5 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %5, 0
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br i1 %cmp41, label %while.cond38, label %for.cond45, !llvm.loop !15

for.cond45:                                       ; preds = %while.cond38, %for.body47
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body47 ], [ %indvars.iv50, %while.cond38 ]
  %cmp46 = icmp samesign ult i64 %indvars.iv53, 100
  br i1 %cmp46, label %for.body47, label %if.end56

for.body47:                                       ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds nuw [100 x i32], ptr %re, i64 0, i64 %indvars.iv53
  %6 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond45, !llvm.loop !16

if.end56.sink.split:                              ; preds = %for.cond.cleanup, %if.then5
  %.str.1.sink = phi ptr [ @.str.1, %if.then5 ], [ @.str, %for.cond.cleanup ]
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %.str.1.sink, i64 noundef 1)
  br label %if.end56

if.end56:                                         ; preds = %for.cond45, %if.end56.sink.split
  %vtable.i27 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i28 = getelementptr i8, ptr %vtable.i27, i64 -24
  %vbase.offset.i29 = load i64, ptr %vbase.offset.ptr.i28, align 8
  %add.ptr.i30 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i29
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i30, i8 noundef signext 10)
  %call1.i31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i31)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %re) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

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
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
