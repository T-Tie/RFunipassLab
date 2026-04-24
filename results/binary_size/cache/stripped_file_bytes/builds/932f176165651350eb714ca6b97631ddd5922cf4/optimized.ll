; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb382xlmd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [200 x [200 x i32]] zeroinitializer, align 16
@sum = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z2xji(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %n, 1
  br i1 %cmp, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %wide.trip.count7 = zext nneg i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond2, %for.cond.preheader
  %indvars.iv4 = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next5, %for.cond2 ]
  %exitcond8.not = icmp eq i64 %indvars.iv4, %wide.trip.count7
  br i1 %exitcond8.not, label %for.cond14, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count7
  br i1 %exitcond.not, label %for.cond, label %for.inc, !llvm.loop !5

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv.next5, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx6, align 4, !tbaa !8, !invariant.load !12
  %arrayidx10 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv4, i64 %indvars.iv
  store i32 %0, ptr %arrayidx10, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !13

for.cond14:                                       ; preds = %for.cond17, %for.cond
  %indvars.iv14 = phi i64 [ 1, %for.cond ], [ %indvars.iv.next15, %for.cond17 ]
  %exitcond18.not = icmp eq i64 %indvars.iv14, %wide.trip.count7
  br i1 %exitcond18.not, label %if.end, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.cond14
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc29
  %indvars.iv9 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next10, %for.inc29 ]
  %exitcond13.not = icmp eq i64 %indvars.iv9, %wide.trip.count7
  br i1 %exitcond13.not, label %for.cond14, label %for.inc29, !llvm.loop !14

for.inc29:                                        ; preds = %for.cond17
  %arrayidx24 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv9, i64 %indvars.iv.next15
  %1 = load i32, ptr %arrayidx24, align 4, !tbaa !8, !invariant.load !12
  %arrayidx28 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv9, i64 %indvars.iv14
  store i32 %1, ptr %arrayidx28, align 4, !tbaa !8
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond17, !llvm.loop !15

if.end:                                           ; preds = %for.cond14, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z2gli(i32 noundef %n) local_unnamed_addr #2 {
entry:
  %cmp = icmp sgt i32 %n, 1
  br i1 %cmp, label %for.body, label %cleanup.cont

for.body:                                         ; preds = %entry
  %0 = load i32, ptr @a, align 16, !tbaa !8, !invariant.load !12
  %wide.trip.count = zext nneg i32 %n to i64
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body5

for.cond16.preheader:                             ; preds = %for.cond3
  br label %for.cond16

for.body5:                                        ; preds = %for.cond3
  %arrayidx9 = getelementptr inbounds nuw [200 x i32], ptr @a, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !8, !invariant.load !12
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !16

for.cond16:                                       ; preds = %for.cond16.preheader, %for.cond16
  %2 = phi i32 [ %0, %for.cond16.preheader ], [ %.pre, %for.cond16 ]
  %indvars.iv14 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next15, %for.cond16 ]
  %arrayidx22 = getelementptr inbounds nuw [200 x i32], ptr @a, i64 0, i64 %indvars.iv14
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx22, align 4, !tbaa !8
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %arrayidx22.phi.trans.insert = getelementptr inbounds nuw [200 x i32], ptr @a, i64 0, i64 %indvars.iv.next15
  %.pre = load i32, ptr %arrayidx22.phi.trans.insert, align 4, !tbaa !8, !invariant.load !12
  br label %for.cond16

cleanup.cont:                                     ; preds = %entry
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end13, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @sum, align 4, !tbaa !8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc11, %for.body
  %1 = phi i32 [ %3, %for.inc11 ], [ %0, %for.body ]
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc11 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv2, %2
  br i1 %cmp2, label %for.cond4, label %for.end13

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc11

for.inc:                                          ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv2, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !8
  br label %for.cond4, !llvm.loop !17

for.inc11:                                        ; preds = %for.cond4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond1, !llvm.loop !18

for.end13:                                        ; preds = %for.cond1
  call void @_Z2gli(i32 noundef %1) #10
  %5 = load i32, ptr @sum, align 4, !tbaa !8
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  ret i32 0
}

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
!16 = distinct !{!16, !6, !7}
!17 = distinct !{!17, !6, !7}
!18 = distinct !{!18, !6, !7}
