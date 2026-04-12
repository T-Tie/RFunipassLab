; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb0pnj8ab.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@sum = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_Z7guilingi(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %.not = icmp slt i32 %n, 1
  br i1 %.not, label %for.end71, label %entry.split

entry.split:                                      ; preds = %entry
  %wide.trip.count = zext nneg i32 %n to i64
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2, %entry.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond2 ], [ 1, %entry.split ]
  %exitcond.not = icmp ne i64 %indvars.iv, %wide.trip.count
  call void @llvm.assume(i1 noundef %exitcond.not) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !5

for.end71:                                        ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) local_unnamed_addr #2 {
entry:
  %sub = add nsw i32 %n, -1
  %smax = call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 0)
  %smax8 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 1)
  %wide.trip.count9 = zext nneg i32 %smax8 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond1, %entry
  %indvars.iv5 = phi i64 [ 1, %entry ], [ %indvars.iv.next6, %for.cond1 ]
  %exitcond10.not = icmp eq i64 %indvars.iv5, %wide.trip.count9
  br i1 %exitcond10.not, label %for.cond13.preheader, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond1

for.cond13.preheader:                             ; preds = %for.cond
  %cmp15 = icmp sgt i32 %n, 2
  br i1 %cmp15, label %for.cond13.preheader3, label %for.end35

for.cond13.preheader3:                            ; preds = %for.cond13.preheader
  %wide.trip.count14 = zext i32 %sub to i64
  br label %for.cond13

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond, label %for.inc, !llvm.loop !8

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv.next6, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !9
  %arrayidx9 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv5, i64 %indvars.iv
  store i32 %0, ptr %arrayidx9, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !13

for.cond13:                                       ; preds = %for.cond17, %for.cond13.preheader3
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond13, %for.inc30
  %indvars.iv11 = phi i64 [ 0, %for.cond13 ], [ %indvars.iv.next12, %for.inc30 ]
  %exitcond15.not = icmp eq i64 %indvars.iv11, %wide.trip.count14
  br i1 %exitcond15.not, label %for.cond13, label %for.inc30

for.inc30:                                        ; preds = %for.cond17
  %arrayidx22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv11
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %arrayidx22, i64 8
  %1 = load i32, ptr %arrayidx25, align 4, !tbaa !9
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %arrayidx22, i64 4
  store i32 %1, ptr %arrayidx29, align 4, !tbaa !9
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond17, !llvm.loop !14

for.end35:                                        ; preds = %for.cond13.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_Z1fi(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %.not.i = icmp slt i32 %n, 1
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.else, %entry
  %n.tr = phi i32 [ %n, %entry ], [ %sub, %if.else ]
  %cmp = icmp eq i32 %n.tr, 1
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %tailrecurse
  call void @llvm.assume(i1 noundef %.not.i) #10
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !9
  %1 = load i32, ptr @sum, align 4, !tbaa !9
  %add = add nsw i32 %1, %0
  store i32 %add, ptr @sum, align 4, !tbaa !9
  tail call void @_Z8xiaojiani(i32 noundef %n.tr) #11
  %sub = add nsw i32 %n.tr, -1
  br label %tailrecurse

if.end:                                           ; preds = %tailrecurse
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #12
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ]
  %0 = load i32, ptr %n, align 4, !tbaa !9
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @sum, align 4, !tbaa !9
  br label %for.cond1

for.cond1:                                        ; preds = %for.end, %for.body
  %1 = phi i32 [ %2, %for.end ], [ %0, %for.body ]
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.end ], [ 0, %for.body ]
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %for.cond5, label %for.inc17

for.cond5:                                        ; preds = %for.cond1, %for.inc
  %2 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %3 = sext i32 %2 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp6, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv3, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !9
  br label %for.cond5, !llvm.loop !15

for.end:                                          ; preds = %for.cond5
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %for.cond1

for.inc17:                                        ; preds = %for.cond1
  call void @_Z1fi(i32 noundef %1) #13
  %4 = load i32, ptr @sum, align 4, !tbaa !9
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4)
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc18 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !16

for.end19:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #13
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { memory(write) }
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
!16 = distinct !{!16, !6, !7}
