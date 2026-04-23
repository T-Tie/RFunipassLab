; ModuleID = '<stdin>'
source_filename = "/tmp/tmpy8_8nxfh.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end113, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end118

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv30, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %cmp14 = icmp sgt i32 %1, 1
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv30, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.end110
  %indvars.iv48.in = phi i32 [ %1, %for.cond13.preheader ], [ %indvars.iv48, %for.end110 ]
  %indvars.iv37 = phi i32 [ %1, %for.cond13.preheader ], [ %indvars.iv.next38, %for.end110 ]
  %l.0 = phi i32 [ 0, %for.cond13.preheader ], [ %inc58.i15, %for.end110 ]
  %indvars.iv48 = add i32 %indvars.iv48.in, -1
  %smax55 = call i32 @llvm.smax.i32(i32 %indvars.iv48, i32 noundef 0)
  br i1 %cmp14, label %for.cond17.preheader, label %for.end113

for.cond17.preheader:                             ; preds = %for.cond13
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv37, i32 noundef 0)
  %sub18 = sub nsw i32 %1, %l.0
  %smax13.i = call i32 @llvm.smax.i32(i32 %sub18, i32 noundef 0)
  %wide.trip.count14.i = zext nneg i32 %smax13.i to i64
  %wide.trip.count42 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %indvars.iv37 to i64
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc35
  %indvars.iv39 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next40, %for.inc35 ]
  %exitcond43.not = icmp eq i64 %indvars.iv39, %wide.trip.count42
  br i1 %exitcond43.not, label %for.cond38.preheader, label %for.body20

for.cond38.preheader:                             ; preds = %for.cond17
  %cmp40 = icmp sgt i32 %sub18, 0
  %5 = load i32, ptr %a, align 16
  br i1 %cmp40, label %for.cond38.preheader.split, label %for.end85

for.cond38.preheader.split:                       ; preds = %for.cond38.preheader
  %wide.trip.count14.i13.le = zext nneg i32 %sub18 to i64
  %wide.trip.count62 = zext i32 %indvars.iv37 to i64
  br label %for.cond38

for.body20:                                       ; preds = %for.cond17
  %arrayidx.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv39
  %6 = load i32, ptr %arrayidx.i, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.body20
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body.i ], [ 0, %for.body20 ]
  %t.0.i = phi i32 [ %spec.select.i, %for.body.i ], [ %6, %for.body20 ]
  %exitcond15.not.i = icmp eq i64 %indvars.iv10.i, %wide.trip.count14.i
  br i1 %exitcond15.not.i, label %for.cond23.preheader, label %for.body.i

for.cond23.preheader:                             ; preds = %for.cond.i
  br label %for.cond23

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx6.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv39, i64 %indvars.iv10.i
  %7 = load i32, ptr %arrayidx6.i, align 4, !tbaa !5, !invariant.load !13
  %spec.select.i = call i32 @llvm.smin.i32(i32 %t.0.i, i32 %7)
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  br label %for.cond.i, !llvm.loop !14

for.cond23:                                       ; preds = %for.cond23.preheader, %for.inc32
  %indvars.iv33 = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next34, %for.inc32 ]
  %exitcond.not = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond.not, label %for.inc35, label %for.inc32

for.inc32:                                        ; preds = %for.cond23
  %arrayidx30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv39, i64 %indvars.iv33
  %8 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !13
  %sub31 = sub nsw i32 %8, %t.0.i
  store i32 %sub31, ptr %arrayidx30, align 4, !tbaa !5
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond23, !llvm.loop !15

for.inc35:                                        ; preds = %for.cond23
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond17, !llvm.loop !16

for.cond38:                                       ; preds = %for.cond38.preheader.split, %for.end56
  %indvars.iv64 = phi i64 [ 0, %for.cond38.preheader.split ], [ %indvars.iv.next65, %for.end56 ]
  br label %for.cond16.i

for.cond16.i:                                     ; preds = %for.body19.i, %for.cond38
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body19.i ], [ 0, %for.cond38 ]
  %t.3.i = phi i32 [ %spec.select6.i, %for.body19.i ], [ %5, %for.cond38 ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count14.i13.le
  br i1 %exitcond.not.i, label %for.cond45.preheader, label %for.body19.i

for.cond45.preheader:                             ; preds = %for.cond16.i
  br label %for.cond45

for.body19.i:                                     ; preds = %for.cond16.i
  %arrayidx23.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.i, i64 0
  %9 = load i32, ptr %arrayidx23.i, align 4, !tbaa !5, !invariant.load !13
  %spec.select6.i = call i32 @llvm.smin.i32(i32 %t.3.i, i32 %9)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond16.i, !llvm.loop !17

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc54
  %indvars.iv58 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next59, %for.inc54 ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count62
  br i1 %exitcond63.not, label %for.end56, label %for.inc54

for.inc54:                                        ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv58, i64 %indvars.iv64
  %10 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !13
  %sub53 = sub nsw i32 %10, %t.3.i
  store i32 %sub53, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond45, !llvm.loop !18

for.end56:                                        ; preds = %for.cond45
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond38

for.end85:                                        ; preds = %for.cond38.preheader
  %wide.trip.count56 = zext nneg i32 %smax55 to i64
  %wide.trip.count50 = zext i32 %indvars.iv48 to i64
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc108, %for.end85
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc108 ], [ 0, %for.end85 ]
  %exitcond57.not = icmp eq i64 %indvars.iv52, %wide.trip.count56
  br i1 %exitcond57.not, label %for.end110, label %for.cond91

for.cond91:                                       ; preds = %for.cond86, %for.inc105
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc105 ], [ 1, %for.cond86 ]
  %exitcond51.not = icmp eq i64 %indvars.iv44, %wide.trip.count50
  br i1 %exitcond51.not, label %for.inc108, label %for.inc105

for.inc105:                                       ; preds = %for.cond91
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %arrayidx100 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next45, i64 %indvars.iv52
  %11 = load i32, ptr %arrayidx100, align 4, !tbaa !5, !invariant.load !13
  %arrayidx104 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv44, i64 %indvars.iv52
  store i32 %11, ptr %arrayidx104, align 4, !tbaa !5
  br label %for.cond91, !llvm.loop !19

for.inc108:                                       ; preds = %for.cond91
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond86, !llvm.loop !20

for.end110:                                       ; preds = %for.cond86
  %inc58.i15 = add nuw nsw i32 %l.0, 1
  %indvars.iv.next38 = add i32 %indvars.iv37, -1
  br label %for.cond13

for.end113:                                       ; preds = %for.cond13
  %call114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %call115 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call114, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond

for.end118:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull align 16 dereferenceable(40000) %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3minPA100_iiii(ptr nofree noundef nonnull readonly captures(none) %a, i32 noundef %s, i32 noundef %l, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %s, 0
  %idxprom = sext i32 %l to i64
  %smax13 = call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 0)
  %wide.trip.count14 = zext nneg i32 %smax13 to i64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.body ], [ 0, %if.then ]
  %t.0 = phi i32 [ %spec.select, %for.body ], [ %0, %if.then ]
  %exitcond15.not = icmp eq i64 %indvars.iv10, %wide.trip.count14
  br i1 %exitcond15.not, label %if.end34, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom, i64 %indvars.iv10
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !13
  %spec.select = tail call i32 @llvm.smin.i32(i32 %t.0, i32 %1)
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond, !llvm.loop !14

if.else:                                          ; preds = %entry
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond16

for.cond16:                                       ; preds = %for.body19, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body19 ], [ 0, %if.else ]
  %t.3 = phi i32 [ %spec.select6, %for.body19 ], [ %2, %if.else ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count14
  br i1 %exitcond.not, label %if.end34, label %for.body19

for.body19:                                       ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv, i64 %idxprom
  %3 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !13
  %spec.select6 = tail call i32 @llvm.smin.i32(i32 %t.3, i32 %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond16, !llvm.loop !17

if.end34:                                         ; preds = %for.cond16, %for.cond
  %t.2 = phi i32 [ %t.0, %for.cond ], [ %t.3, %for.cond16 ]
  ret i32 %t.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nofree nounwind }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
