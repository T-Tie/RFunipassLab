; ModuleID = '<stdin>'
source_filename = "/tmp/tmprxnguj0q.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end133, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end138

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %3, %for.end ], [ %0, %for.cond ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.end ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv53, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv53, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond1
  %cmp14 = icmp sgt i32 %1, 1
  br i1 %cmp14, label %for.cond16.preheader, label %for.end133

for.cond16.preheader:                             ; preds = %for.cond13
  %wide.trip.count70 = zext nneg i32 %1 to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.preheader, %for.end46
  %indvars.iv66 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next67, %for.end46 ]
  %exitcond71.not = icmp eq i64 %indvars.iv66, %wide.trip.count70
  br i1 %exitcond71.not, label %for.cond50, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv66
  %5 = load i32, ptr %arrayidx20, align 16, !tbaa !5, !invariant.load !13
  br label %for.cond22

for.cond22:                                       ; preds = %for.body24, %for.body18
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.body24 ], [ 1, %for.body18 ]
  %min.0 = phi i32 [ %spec.select, %for.body24 ], [ %5, %for.body18 ]
  %exitcond.not = icmp eq i64 %indvars.iv56, %wide.trip.count70
  br i1 %exitcond.not, label %for.cond37.preheader, label %for.body24

for.cond37.preheader:                             ; preds = %for.cond22
  br label %for.cond37

for.body24:                                       ; preds = %for.cond22
  %arrayidx28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv66, i64 %indvars.iv56
  %6 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %6, i32 %min.0)
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond22, !llvm.loop !14

for.cond37:                                       ; preds = %for.cond37.preheader, %for.body39
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.body39 ], [ 0, %for.cond37.preheader ]
  %exitcond65.not = icmp eq i64 %indvars.iv60, %wide.trip.count70
  br i1 %exitcond65.not, label %for.end46, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv66, i64 %indvars.iv60
  %7 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %7, %min.0
  store i32 %sub, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond37, !llvm.loop !15

for.end46:                                        ; preds = %for.cond37
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond16, !llvm.loop !16

for.cond50:                                       ; preds = %for.cond16, %for.end83
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.end83 ], [ 0, %for.cond16 ]
  br label %for.cond56

for.cond56:                                       ; preds = %for.body58, %for.cond50
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.body58 ], [ 1, %for.cond50 ]
  %min.2 = phi i32 [ %spec.select51, %for.body58 ], [ undef, %for.cond50 ]
  %exitcond77.not = icmp eq i64 %indvars.iv72, %wide.trip.count70
  br i1 %exitcond77.not, label %for.cond73.preheader, label %for.body58

for.cond73.preheader:                             ; preds = %for.cond56
  br label %for.cond73

for.body58:                                       ; preds = %for.cond56
  %arrayidx62 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv72, i64 %indvars.iv84
  %8 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !13
  %spec.select51 = call i32 @llvm.smin.i32(i32 %8, i32 %min.2)
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond56, !llvm.loop !17

for.cond73:                                       ; preds = %for.cond73.preheader, %for.body75
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.body75 ], [ 0, %for.cond73.preheader ]
  %exitcond83.not = icmp eq i64 %indvars.iv78, %wide.trip.count70
  br i1 %exitcond83.not, label %for.end83, label %for.body75

for.body75:                                       ; preds = %for.cond73
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv78, i64 %indvars.iv84
  %9 = load i32, ptr %arrayidx79, align 4, !tbaa !5, !invariant.load !13
  %sub80 = sub nsw i32 %9, %min.2
  store i32 %sub80, ptr %arrayidx79, align 4, !tbaa !5
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond73, !llvm.loop !18

for.end83:                                        ; preds = %for.cond73
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond50

for.end133:                                       ; preds = %for.cond13
  %call134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %call135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call134, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond

for.end138:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
