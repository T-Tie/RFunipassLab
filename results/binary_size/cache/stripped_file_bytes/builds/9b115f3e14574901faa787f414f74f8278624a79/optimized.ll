; ModuleID = '<stdin>'
source_filename = "/tmp/tmphr0bq4l5.cpp"
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
  %k = alloca i32, align 4
  %h = alloca [30 x i32], align 16
  %l = alloca [30 x i32], align 16
  %r = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %k) #6
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef nonnull align 16 %h) #6
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef nonnull align 16 %l) #6
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef nonnull align 16 %r) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 1)
  %wide.trip.count14 = zext nneg i32 %smax to i64
  br label %for.cond6

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %arrayidx3 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds nuw [30 x i32], ptr %r, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx5, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc30
  %indvars.iv10 = phi i64 [ 1, %for.cond6.preheader ], [ %indvars.iv.next11, %for.inc30 ]
  %exitcond15.not = icmp eq i64 %indvars.iv10, %wide.trip.count14
  br i1 %exitcond15.not, label %for.end32, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond6
  %arrayidx15 = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %indvars.iv10
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !12
  %arrayidx20 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %indvars.iv10
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.preheader, %for.inc27
  %indvars.iv7 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next8, %for.inc27 ]
  %exitcond.not = icmp eq i64 %indvars.iv7, %indvars.iv10
  br i1 %exitcond.not, label %for.inc30, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %arrayidx13 = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %indvars.iv7
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !12
  %cmp16.not = icmp slt i32 %3, %2
  br i1 %cmp16.not, label %for.inc27, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body11
  %arrayidx18 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %indvars.iv7
  %4 = load i32, ptr %arrayidx18, align 4, !tbaa !5, !invariant.load !12
  %add = add nsw i32 %4, 1
  %5 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !12
  %spec.store.select = call i32 @llvm.smax.i32(i32 %add, i32 %5)
  store i32 %spec.store.select, ptr %arrayidx20, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %land.lhs.true, %for.body11
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond9, !llvm.loop !13

for.inc30:                                        ; preds = %for.cond9
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond6, !llvm.loop !14

for.end32:                                        ; preds = %for.cond6
  %sub = add i32 %0, -2
  %6 = sext i32 %sub to i64
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc63, %for.end32
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc63 ], [ %6, %for.end32 ]
  %cmp34 = icmp sgt i64 %indvars.iv20, 0
  br i1 %cmp34, label %for.cond38.preheader, label %for.cond66.preheader

for.cond66.preheader:                             ; preds = %for.cond33
  %smax27 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax27 to i64
  br label %for.cond66

for.cond38.preheader:                             ; preds = %for.cond33
  %arrayidx45 = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %indvars.iv20
  %arrayidx52 = getelementptr inbounds nuw [30 x i32], ptr %r, i64 0, i64 %indvars.iv20
  br label %for.cond38

for.cond38:                                       ; preds = %for.cond38.preheader, %for.inc61
  %indvars.iv17 = phi i64 [ %1, %for.cond38.preheader ], [ %indvars.iv.next18, %for.inc61 ]
  %indvars.iv.next18 = add nsw i64 %indvars.iv17, -1
  %cmp39 = icmp sgt i64 %indvars.iv.next18, %indvars.iv20
  br i1 %cmp39, label %for.body41, label %for.inc63

for.body41:                                       ; preds = %for.cond38
  %arrayidx43 = getelementptr inbounds [30 x i32], ptr %h, i64 0, i64 %indvars.iv.next18
  %7 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !12
  %8 = load i32, ptr %arrayidx45, align 4, !tbaa !5, !invariant.load !12
  %cmp46.not = icmp sgt i32 %7, %8
  br i1 %cmp46.not, label %for.inc61, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %for.body41
  %arrayidx49 = getelementptr inbounds [30 x i32], ptr %r, i64 0, i64 %indvars.iv.next18
  %9 = load i32, ptr %arrayidx49, align 4, !tbaa !5, !invariant.load !12
  %add50 = add nsw i32 %9, 1
  %10 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !12
  %spec.store.select5 = call i32 @llvm.smax.i32(i32 %add50, i32 %10)
  store i32 %spec.store.select5, ptr %arrayidx52, align 4
  br label %for.inc61

for.inc61:                                        ; preds = %land.lhs.true47, %for.body41
  br label %for.cond38, !llvm.loop !15

for.inc63:                                        ; preds = %for.cond38
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, -1
  br label %for.cond33, !llvm.loop !16

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body68
  %indvars.iv23 = phi i64 [ 0, %for.cond66.preheader ], [ %indvars.iv.next24, %for.body68 ]
  %m.0 = phi i32 [ 0, %for.cond66.preheader ], [ %spec.select, %for.body68 ]
  %exitcond28.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond28.not, label %for.end86, label %for.body68

for.body68:                                       ; preds = %for.cond66
  %arrayidx70 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %indvars.iv23
  %11 = load i32, ptr %arrayidx70, align 4, !tbaa !5, !invariant.load !12
  %arrayidx72 = getelementptr inbounds nuw [30 x i32], ptr %r, i64 0, i64 %indvars.iv23
  %12 = load i32, ptr %arrayidx72, align 4, !tbaa !5, !invariant.load !12
  %add73 = add i32 %11, -1
  %sub74 = add i32 %add73, %12
  %spec.select = call i32 @llvm.smax.i32(i32 %sub74, i32 %m.0)
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond66, !llvm.loop !17

for.end86:                                        ; preds = %for.cond66
  %call87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %m.0)
  %call88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call87, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef nonnull %r) #7
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef nonnull %l) #7
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef nonnull %h) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %k) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
