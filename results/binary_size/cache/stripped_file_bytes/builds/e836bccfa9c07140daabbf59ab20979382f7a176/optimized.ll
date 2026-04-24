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
  %switch = icmp eq i32 %c, 1
  %idxprom = sext i32 %low to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %min.3.in = select i1 %switch, ptr %arrayidx, ptr %arrayidx18
  %min.3 = load i32, ptr %min.3.in, align 4, !tbaa !5, !invariant.load !9
  ret i32 %min.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3decii(i32 noundef %n, i32 noundef %sum) local_unnamed_addr #2 {
entry:
  %0 = sext i32 %n to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end79, %entry
  %indvars.iv76.in = phi i64 [ %indvars.iv76, %for.end79 ], [ %0, %entry ]
  %sum.tr = phi i32 [ %add, %for.end79 ], [ %sum, %entry ]
  %indvars.iv76 = add i64 %indvars.iv76.in, -1
  %smax78 = tail call i64 @llvm.smax.i64(i64 %indvars.iv76, i64 noundef 1)
  %1 = icmp eq i64 %indvars.iv76.in, 1
  br i1 %1, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %2 = trunc nsw i64 %indvars.iv76.in to i32
  %smax70 = tail call i32 @llvm.smax.i32(i32 %2, i32 noundef 0)
  %wide.trip.count42 = zext nneg i32 %smax70 to i64
  %wide.trip.count = and i64 %indvars.iv76.in, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc11
  %indvars.iv39 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next40, %for.inc11 ]
  %exitcond43.not = icmp eq i64 %indvars.iv39, %wide.trip.count42
  br i1 %exitcond43.not, label %for.cond14, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv39
  %min.3.i = load i32, ptr %arrayidx.i, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc11, label %for.inc

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv39, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %3, %min.3.i
  store i32 %sub, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.inc11:                                        ; preds = %for.cond2
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond, !llvm.loop !13

for.cond14:                                       ; preds = %for.cond, %for.inc33
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc33 ], [ 0, %for.cond ]
  %exitcond54.not = icmp eq i64 %indvars.iv49, %wide.trip.count42
  br i1 %exitcond54.not, label %for.end35, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx18.i = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv49
  %min.3.i2 = load i32, ptr %arrayidx18.i, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc30, %for.body16
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc30 ], [ 0, %for.body16 ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, %wide.trip.count
  br i1 %exitcond48.not, label %for.inc33, label %for.inc30

for.inc30:                                        ; preds = %for.cond18
  %arrayidx24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv44, i64 %indvars.iv49
  %4 = load i32, ptr %arrayidx24, align 4, !tbaa !5, !invariant.load !9
  %sub25 = sub nsw i32 %4, %min.3.i2
  store i32 %sub25, ptr %arrayidx24, align 4, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond18, !llvm.loop !14

for.inc33:                                        ; preds = %for.cond18
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond14, !llvm.loop !15

for.end35:                                        ; preds = %for.cond14
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc55, %for.end35
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc55 ], [ 0, %for.end35 ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count42
  br i1 %exitcond63.not, label %for.cond58, label %for.cond39

for.cond39:                                       ; preds = %for.cond36, %for.inc52
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc52 ], [ 1, %for.cond36 ]
  %exitcond.not80 = icmp eq i64 %indvars.iv55, %smax78
  br i1 %exitcond.not80, label %for.inc55, label %for.inc52

for.inc52:                                        ; preds = %for.cond39
  %indvars.iv.next56 = add nuw i64 %indvars.iv55, 1
  %arrayidx47 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next56, i64 %indvars.iv58
  %6 = load i32, ptr %arrayidx47, align 4, !tbaa !5, !invariant.load !9
  %arrayidx51 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv55, i64 %indvars.iv58
  store i32 %6, ptr %arrayidx51, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !16

for.inc55:                                        ; preds = %for.cond39
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond36, !llvm.loop !17

for.cond58:                                       ; preds = %for.cond36, %for.inc77
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc77 ], [ 0, %for.cond36 ]
  %exitcond72.not = icmp eq i64 %indvars.iv67, %wide.trip.count42
  br i1 %exitcond72.not, label %for.end79, label %for.cond61

for.cond61:                                       ; preds = %for.cond58, %for.inc74
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.inc74 ], [ 1, %for.cond58 ]
  %exitcond79.not = icmp eq i64 %indvars.iv64, %smax78
  br i1 %exitcond79.not, label %for.inc77, label %for.inc74

for.inc74:                                        ; preds = %for.cond61
  %indvars.iv.next65 = add nuw i64 %indvars.iv64, 1
  %arrayidx69 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv67, i64 %indvars.iv.next65
  %7 = load i32, ptr %arrayidx69, align 4, !tbaa !5, !invariant.load !9
  %arrayidx73 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv67, i64 %indvars.iv64
  store i32 %7, ptr %arrayidx73, align 4, !tbaa !5
  br label %for.cond61, !llvm.loop !18

for.inc77:                                        ; preds = %for.cond61
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond58, !llvm.loop !19

for.end79:                                        ; preds = %for.cond58
  %add = add nsw i32 %5, %sum.tr
  br label %tailrecurse

return:                                           ; preds = %tailrecurse
  ret i32 %sum.tr
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end18

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv9, %2
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv9, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !20

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond1, !llvm.loop !21

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3decii(i32 noundef %1, i32 noundef 0) #9
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
