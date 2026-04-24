; ModuleID = '<stdin>'
source_filename = "/tmp/tmph87e372d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x [100 x i32]]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z3SumiPA100_i(i32 noundef %n, ptr nofree noundef captures(none) %t) local_unnamed_addr #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end98, %entry
  %indvars.iv76.in = phi i32 [ %indvars.iv76, %for.end98 ], [ %n, %entry ]
  %n.tr = phi i32 [ %sub70, %for.end98 ], [ %n, %entry ]
  %indvars.iv76 = add i32 %indvars.iv76.in, -1
  %smax83 = call i32 @llvm.smax.i32(i32 %indvars.iv76, i32 0)
  %smax70 = call i32 @llvm.smax.i32(i32 %n.tr, i32 0)
  %wide.trip.count55 = zext nneg i32 %smax70 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %tailrecurse
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc24 ], [ 0, %tailrecurse ]
  %exitcond56.not = icmp eq i64 %indvars.iv52, %wide.trip.count55
  br i1 %exitcond56.not, label %for.cond27.preheader, label %for.body

for.cond27.preheader:                             ; preds = %for.cond
  %wide.trip.count60 = zext i32 %n.tr to i64
  br label %for.cond27

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv52
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv52, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc21
  %indvars.iv47 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next48, %for.inc21 ]
  %exitcond51.not = icmp eq i64 %indvars.iv47, %wide.trip.count
  br i1 %exitcond51.not, label %for.inc24, label %for.inc21

for.inc21:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv52, i64 %indvars.iv47
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond14, !llvm.loop !13

for.inc24:                                        ; preds = %for.cond14
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond, !llvm.loop !14

for.cond27:                                       ; preds = %for.cond27.preheader, %for.end60
  %indvars.iv67 = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next68, %for.end60 ]
  %exitcond72.not = icmp eq i64 %indvars.iv67, %wide.trip.count55
  br i1 %exitcond72.not, label %for.end63, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %arrayidx32 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 0, i64 %indvars.iv67
  %3 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond33

for.cond33:                                       ; preds = %for.body35, %for.body29
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.body35 ], [ 0, %for.body29 ]
  %min.2 = phi i32 [ %spec.select44, %for.body35 ], [ %3, %for.body29 ]
  %exitcond61.not = icmp eq i64 %indvars.iv57, %wide.trip.count60
  br i1 %exitcond61.not, label %for.cond50.preheader, label %for.body35

for.cond50.preheader:                             ; preds = %for.cond33
  br label %for.cond50

for.body35:                                       ; preds = %for.cond33
  %arrayidx39 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv57, i64 %indvars.iv67
  %4 = load i32, ptr %arrayidx39, align 4, !tbaa !5, !invariant.load !9
  %spec.select44 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.2)
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond33, !llvm.loop !15

for.cond50:                                       ; preds = %for.cond50.preheader, %for.inc58
  %indvars.iv62 = phi i64 [ 0, %for.cond50.preheader ], [ %indvars.iv.next63, %for.inc58 ]
  %exitcond66.not = icmp eq i64 %indvars.iv62, %wide.trip.count60
  br i1 %exitcond66.not, label %for.end60, label %for.inc58

for.inc58:                                        ; preds = %for.cond50
  %arrayidx56 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv62, i64 %indvars.iv67
  %5 = load i32, ptr %arrayidx56, align 4, !tbaa !5, !invariant.load !9
  %sub57 = sub nsw i32 %5, %min.2
  store i32 %sub57, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond50, !llvm.loop !16

for.end60:                                        ; preds = %for.cond50
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond27

for.end63:                                        ; preds = %for.cond27
  %cmp66 = icmp eq i32 %n.tr, 2
  br i1 %cmp66, label %cleanup, label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.end63
  %wide.trip.count84 = zext nneg i32 %smax83 to i64
  %wide.trip.count78 = zext i32 %indvars.iv76 to i64
  br label %for.cond69

for.cond69:                                       ; preds = %for.cond73, %for.cond69.preheader
  %indvars.iv80 = phi i64 [ 0, %for.cond69.preheader ], [ %indvars.iv.next81, %for.cond73 ]
  %exitcond85.not = icmp eq i64 %indvars.iv80, %wide.trip.count84
  br i1 %exitcond85.not, label %for.end98, label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %for.cond69
  %cmp80 = icmp eq i64 %indvars.iv80, 0
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %6 = and i64 %indvars.iv.next81, 4294967295
  %idxprom85 = select i1 %cmp80, i64 0, i64 %6
  br label %for.cond73

for.cond73:                                       ; preds = %for.cond73.preheader, %for.body76
  %indvars.iv73 = phi i64 [ 0, %for.cond73.preheader ], [ %indvars.iv.next74, %for.body76 ]
  %exitcond79.not = icmp eq i64 %indvars.iv73, %wide.trip.count78
  br i1 %exitcond79.not, label %for.cond69, label %for.body76

for.body76:                                       ; preds = %for.cond73
  %cmp77 = icmp eq i64 %indvars.iv73, 0
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %7 = and i64 %indvars.iv.next74, 4294967295
  %idxprom87 = select i1 %cmp77, i64 0, i64 %7
  %arrayidx88 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %idxprom85, i64 %idxprom87
  %8 = load i32, ptr %arrayidx88, align 4, !tbaa !5, !invariant.load !9
  %arrayidx92 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv80, i64 %indvars.iv73
  store i32 %8, ptr %arrayidx92, align 4, !tbaa !5
  br label %for.cond73, !llvm.loop !17

for.end98:                                        ; preds = %for.cond69
  %sub70 = add nsw i32 %n.tr, -1
  br label %tailrecurse

cleanup:                                          ; preds = %for.end63
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %t, i64 404
  %9 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !9
  %10 = add i32 %n, -1
  %accumulator.ret.tr = mul i32 %9, %10
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(4000000) @a, i8 noundef 0, i64 noundef 4000000, i1 noundef false) #10
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end16, %entry
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.end16 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end24

for.cond1:                                        ; preds = %for.cond, %for.inc14
  %1 = phi i32 [ %3, %for.inc14 ], [ %0, %for.cond ]
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc14 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv10, %2
  br i1 %cmp2, label %for.cond5, label %for.end16

for.cond5:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp6, label %for.inc, label %for.inc14

for.inc:                                          ; preds = %for.cond5
  %arrayidx12 = getelementptr inbounds nuw [100 x [100 x [100 x i32]]], ptr @a, i64 0, i64 %indvars.iv13, i64 %indvars.iv10, i64 %indvars.iv
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !18

for.inc14:                                        ; preds = %for.cond5
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond1, !llvm.loop !19

for.end16:                                        ; preds = %for.cond1
  %arrayidx18 = getelementptr inbounds nuw [100 x [100 x [100 x i32]]], ptr @a, i64 0, i64 %indvars.iv13
  %call19 = call noundef i32 @_Z3SumiPA100_i(i32 noundef %1, ptr nofree noundef nonnull captures(none) %arrayidx18) #11
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call19)
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call20, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond

for.end24:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nofree }
attributes #11 = { nounwind }

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
