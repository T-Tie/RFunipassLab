; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmiy9qrxx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@g_a = dso_local local_unnamed_addr global i32 0, align 4
@g_Matrix = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7lineDeli(i32 noundef %times) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %times, 0
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_Matrix, i64 404), align 4
  br i1 %cmp, label %for.cond.preheader, label %for.end28

for.cond.preheader:                               ; preds = %entry
  %narrow = add nuw i32 %times, 1
  %1 = zext i32 %narrow to i64
  %2 = add nuw i32 %times, 1
  %wide.trip.count = zext i32 %2 to i64
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr @g_Matrix, i64 0, i64 %1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.end25
  %indvars.iv12 = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next13, %for.end25 ]
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.cond ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv12, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.end:                                          ; preds = %for.cond2
  store i32 0, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc23, %for.end
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc23 ], [ 1, %for.end ]
  %exitcond11 = icmp eq i64 %indvars.iv7, %wide.trip.count
  br i1 %exitcond11, label %for.end25, label %for.inc23

for.inc23:                                        ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv12, i64 %indvars.iv7
  %4 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %4, %min.0
  store i32 %sub, ptr %arrayidx22, align 4, !tbaa !5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond16, !llvm.loop !13

for.end25:                                        ; preds = %for.cond16
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond

for.end28:                                        ; preds = %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local void @_Z6rowDeli(i32 noundef %times) local_unnamed_addr #2 {
entry:
  %cmp = icmp slt i32 %times, 1
  call void @llvm.assume(i1 %cmp)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z9Transformi(i32 noundef %times) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %times, 0
  br i1 %cmp, label %for.cond.preheader, label %for.end43

for.cond.preheader:                               ; preds = %entry
  %0 = add nuw i32 %times, 1
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond1, %for.cond.preheader
  %indvars.iv13 = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next14, %for.cond1 ]
  %cmp4 = icmp eq i64 %indvars.iv13, 1
  %cmp26 = icmp samesign ugt i64 %indvars.iv13, 1
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv.next14, i64 1
  %arrayidx24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv13, i64 1
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond ], [ %indvars.iv.next, %for.inc ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %cmp5 = icmp samesign ugt i64 %indvars.iv, 1
  %or.cond = and i1 %cmp4, %cmp5
  br i1 %or.cond, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %for.body3
  %1 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 1, i64 %1
  %2 = load i32, ptr %arrayidx7, align 4, !tbaa !5, !invariant.load !9
  %arrayidx11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 1, i64 %indvars.iv
  store i32 %2, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.inc

if.end:                                           ; preds = %for.body3
  %cmp12 = icmp eq i64 %indvars.iv, 1
  br i1 %cmp12, label %land.lhs.true13, label %if.end25

land.lhs.true13:                                  ; preds = %if.end
  br i1 %cmp26, label %land.lhs.true27.thread, label %for.inc

land.lhs.true27.thread:                           ; preds = %land.lhs.true13
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !9
  store i32 %3, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc

if.end25:                                         ; preds = %if.end
  br i1 %cmp26, label %if.then29, label %for.inc

if.then29:                                        ; preds = %if.end25
  %4 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv.next14, i64 %4
  %5 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !9
  %arrayidx39 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv13, i64 %indvars.iv
  store i32 %5, ptr %arrayidx39, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true27.thread, %if.end.thread, %land.lhs.true13, %if.end25, %if.then29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !14

for.end43:                                        ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @_Z9Operationi(i32 noundef %times) local_unnamed_addr #3 {
entry:
  %cmp.i = icmp slt i32 %times, 1
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add, %for.end ]
  %times.tr = phi i32 [ %times, %entry ], [ %sub, %for.end ]
  %cmp.not = icmp eq i32 %times.tr, 1
  br i1 %cmp.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %smax = call i32 @llvm.smax.i32(i32 %times.tr, i32 0)
  %0 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr @g_Matrix, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  tail call void @_Z7lineDeli(i32 noundef %times.tr) #11
  tail call void @llvm.assume(i1 %cmp.i)
  %1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_Matrix, i64 808), align 8, !tbaa !5
  %sub = add nsw i32 %times.tr, -1
  tail call void @_Z9Transformi(i32 noundef %sub) #11
  %add = add nsw i32 %1, %accumulator.tr
  br label %tailrecurse

cleanup:                                          ; preds = %tailrecurse
  ret i32 %accumulator.tr
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #12
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %0, ptr @g_a, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end9, %entry
  %1 = phi i32 [ %.pr, %for.end9 ], [ %0, %entry ]
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  %.pre = load i32, ptr @g_a, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc7
  %2 = phi i32 [ %.pre, %for.cond.preheader ], [ %4, %for.inc7 ]
  %indvars.iv2 = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next3, %for.inc7 ]
  %3 = sext i32 %2 to i64
  %cmp.not = icmp sgt i64 %indvars.iv2, %3
  br i1 %cmp.not, label %for.end9, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %4 = phi i32 [ %.pre5, %for.inc ], [ %2, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv, %5
  br i1 %cmp2.not, label %for.inc7, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv2, i64 %indvars.iv
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre5 = load i32, ptr @g_a, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !16

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond, !llvm.loop !17

for.end9:                                         ; preds = %for.cond
  %call10 = call noundef i32 @_Z9Operationi(i32 noundef %2) #13
  %call11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call10)
  %call12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call11, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #13
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nofree nosync nounwind }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }

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
