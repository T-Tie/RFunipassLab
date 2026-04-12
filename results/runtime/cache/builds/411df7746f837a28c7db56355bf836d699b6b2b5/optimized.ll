; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo2r3b3qr.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 dereferenceable(400) %a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(400) %a, i8 noundef 0, i64 noundef 400, i1 noundef false) #8
  store i32 2, ptr %a, align 16
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @_Z5chengPiii(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(400) %a, i32 noundef %0, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5chengPiii(ptr nofree noundef nonnull captures(none) %a, i32 noundef %n, i32 noundef %flag) local_unnamed_addr #5 {
entry:
  %b = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %b) #10
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %while.cond ], [ 100, %entry ]
  %indvars.iv36 = phi i32 [ %indvars.iv.next37, %while.cond ], [ 100, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 99, %entry ]
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars.iv.next37 = add nsw i32 %indvars.iv36, -1
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, -1
  br i1 %cmp, label %while.cond, label %while.end, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %sub = add nsw i32 %n, -1
  %cmp1 = icmp eq i32 %flag, %sub
  br i1 %cmp1, label %for.cond.preheader, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %while.end
  %1 = trunc nsw i64 %indvars.iv to i32
  br label %for.cond5

for.cond.preheader:                               ; preds = %while.end
  %smax58 = call i32 @llvm.smax.i32(i32 %indvars.iv36, i32 0)
  %wide.trip.count59 = zext nneg i32 %smax58 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv54 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next55, %for.inc ]
  %exitcond60 = icmp eq i64 %indvars.iv54, %wide.trip.count59
  br i1 %exitcond60, label %if.end64, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv54
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !12
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %2)
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond, !llvm.loop !13

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc13
  %indvars.iv30 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next31, %for.inc13 ]
  %i.1 = phi i32 [ %1, %for.cond5.preheader ], [ %dec14, %for.inc13 ]
  %cmp6 = icmp sgt i32 %i.1, -1
  br i1 %cmp6, label %for.inc13, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond5
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv36, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond16

for.inc13:                                        ; preds = %for.cond5
  %idxprom8 = zext nneg i32 %i.1 to i64
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %a, i64 %idxprom8
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %arrayidx12 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv30
  store i32 %3, ptr %arrayidx12, align 4, !tbaa !5
  %dec14 = add nsw i32 %i.1, -1
  br label %for.cond5, !llvm.loop !14

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc23
  %indvars.iv33 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next34, %for.inc23 ]
  %exitcond = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond, label %for.cond26, label %for.inc23

for.inc23:                                        ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv33
  %4 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !12
  %mul = shl nsw i32 %4, 1
  store i32 %mul, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond16, !llvm.loop !15

for.cond26:                                       ; preds = %for.cond16, %for.inc41
  %indvars.iv38 = phi i64 [ %indvars.iv.next39.pre-phi, %for.inc41 ], [ 0, %for.cond16 ]
  %exitcond45 = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond45, label %while.cond45, label %for.body28

for.body28:                                       ; preds = %for.cond26
  %arrayidx30 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv38
  %5 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !12
  %cmp31 = icmp sgt i32 %5, 9
  %6 = add nuw nsw i64 %indvars.iv38, 1
  br i1 %cmp31, label %if.then32, label %for.body28.for.inc41_crit_edge

for.body28.for.inc41_crit_edge:                   ; preds = %for.body28
  br label %for.inc41

if.then32:                                        ; preds = %for.body28
  %sub35 = add nsw i32 %5, -10
  store i32 %sub35, ptr %arrayidx30, align 4, !tbaa !5
  %arrayidx39 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %6
  %7 = load i32, ptr %arrayidx39, align 4, !tbaa !5, !invariant.load !12
  %inc40 = add nsw i32 %7, 1
  store i32 %inc40, ptr %arrayidx39, align 4, !tbaa !5
  br label %for.inc41

for.inc41:                                        ; preds = %for.body28.for.inc41_crit_edge, %if.then32
  %indvars.iv.next39.pre-phi = phi i64 [ %6, %for.body28.for.inc41_crit_edge ], [ %6, %if.then32 ]
  br label %for.cond26, !llvm.loop !16

while.cond45:                                     ; preds = %for.cond26, %while.cond45
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %while.cond45 ], [ %indvars.iv46, %for.cond26 ]
  %arrayidx47 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %indvars.iv48
  %8 = load i32, ptr %arrayidx47, align 4, !tbaa !5, !invariant.load !12
  %cmp48 = icmp eq i32 %8, 0
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, -1
  br i1 %cmp48, label %while.cond45, label %for.cond52.preheader, !llvm.loop !17

for.cond52.preheader:                             ; preds = %while.cond45
  %9 = trunc nsw i64 %indvars.iv48 to i32
  br label %for.cond52

for.cond52:                                       ; preds = %for.cond52.preheader, %for.inc60
  %indvars.iv51 = phi i64 [ 0, %for.cond52.preheader ], [ %indvars.iv.next52, %for.inc60 ]
  %i.4 = phi i32 [ %9, %for.cond52.preheader ], [ %dec61, %for.inc60 ]
  %cmp53 = icmp sgt i32 %i.4, -1
  br i1 %cmp53, label %for.inc60, label %for.end62

for.inc60:                                        ; preds = %for.cond52
  %idxprom55 = zext nneg i32 %i.4 to i64
  %arrayidx56 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %idxprom55
  %10 = load i32, ptr %arrayidx56, align 4, !tbaa !5, !invariant.load !12
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %arrayidx59 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv51
  store i32 %10, ptr %arrayidx59, align 4, !tbaa !5
  %dec61 = add nsw i32 %i.4, -1
  br label %for.cond52, !llvm.loop !18

for.end62:                                        ; preds = %for.cond52
  %inc63 = add nsw i32 %flag, 1
  tail call void @_Z5chengPiii(ptr nofree noundef nonnull captures(none) %a, i32 noundef %n, i32 noundef %inc63)
  br label %if.end64

if.end64:                                         ; preds = %for.cond, %for.end62
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %b) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nofree willreturn }
attributes #9 = { nounwind }
attributes #10 = { nofree nounwind }

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
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
