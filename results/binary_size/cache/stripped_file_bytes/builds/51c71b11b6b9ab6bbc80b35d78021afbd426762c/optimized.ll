; ModuleID = '<stdin>'
source_filename = "/tmp/tmpowec55e5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@n = dso_local global i32 0, align 4
@a = dso_local global [201 x [201 x i32]] zeroinitializer, align 16
@i = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@sum = dso_local local_unnamed_addr global i32 0, align 4
@min1 = dso_local local_unnamed_addr global [201 x i32] zeroinitializer, align 16
@min2 = dso_local local_unnamed_addr global [201 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  tail call void @_Z4readv()
  store i32 0, ptr @sum, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.body3, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc.i, %for.body3 ]
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %1, 1
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %sub4 = sub nsw i32 %1, %j.0
  tail call void @_Z3deli(i32 noundef %sub4) #8
  %2 = load i32, ptr @sum, align 4, !tbaa !5
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 808), align 8, !tbaa !5
  %add = add nsw i32 %3, %2
  store i32 %add, ptr @sum, align 4, !tbaa !5
  %4 = load i32, ptr @n, align 4, !tbaa !5
  %sub5 = sub nsw i32 %4, %j.0
  tail call void @_Z4movei(i32 noundef %sub5) #8
  %inc.i = add nuw nsw i32 %j.0, 1
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %5 = load i32, ptr @sum, align 4, !tbaa !5
  %call6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %call7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call6, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z4readv() local_unnamed_addr #3 {
entry:
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = phi i32 [ %.pre, %entry ], [ %2, %for.end ]
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.end ]
  store i32 %storemerge, ptr @i, align 4, !tbaa !5
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.cond1, label %for.end8

for.cond1:                                        ; preds = %for.cond, %for.inc
  %1 = phi i32 [ %.pre5, %for.inc ], [ %storemerge, %for.cond ]
  %2 = phi i32 [ %.pre2, %for.inc ], [ %0, %for.cond ]
  %storemerge1 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr @j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %storemerge1, %2
  br i1 %cmp2, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %1 to i64
  %idxprom4 = sext i32 %storemerge1 to i64
  %arrayidx5 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %idxprom4
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %3 = load i32, ptr @j, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  %.pre2 = load i32, ptr @n, align 4, !tbaa !5
  %.pre5 = load i32, ptr @i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %inc.i = add nsw i32 %1, 1
  br label %for.cond

for.end8:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3deli(i32 noundef %n) local_unnamed_addr #4 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 0)
  %wide.trip.count14 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc20 ], [ 0, %entry ]
  %exitcond15.not = icmp eq i64 %indvars.iv11, %wide.trip.count14
  br i1 %exitcond15.not, label %for.cond23, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv11
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw [201 x i32], ptr @min1, i64 0, i64 %indvars.iv11
  store i32 %0, ptr %arrayidx3, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc20, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx10 = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv11, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !12
  %cmp13 = icmp slt i32 %1, %0
  br i1 %cmp13, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body6
  store i32 %1, ptr %arrayidx3, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body6, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !13

for.inc20:                                        ; preds = %for.cond4
  store i32 %n, ptr @j, align 4, !tbaa !5
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond, !llvm.loop !14

for.cond23:                                       ; preds = %for.cond, %for.inc42
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc42 ], [ 0, %for.cond ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, %wide.trip.count14
  br i1 %exitcond25.not, label %for.cond45, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond23
  %arrayidx34 = getelementptr inbounds nuw [201 x i32], ptr @min1, i64 0, i64 %indvars.iv21
  br label %for.cond26

for.cond26:                                       ; preds = %for.cond26.preheader, %for.inc39
  %indvars.iv16 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next17, %for.inc39 ]
  %exitcond20.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond20.not, label %for.inc42, label %for.inc39

for.inc39:                                        ; preds = %for.cond26
  %arrayidx32 = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv21, i64 %indvars.iv16
  %2 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !12
  %3 = load i32, ptr %arrayidx34, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %2, %3
  store i32 %sub, ptr %arrayidx32, align 4, !tbaa !5
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond26, !llvm.loop !15

for.inc42:                                        ; preds = %for.cond26
  store i32 %n, ptr @j, align 4, !tbaa !5
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond23, !llvm.loop !16

for.cond45:                                       ; preds = %for.cond23, %for.inc73
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc73 ], [ 0, %for.cond23 ]
  %exitcond35.not = icmp eq i64 %indvars.iv31, %wide.trip.count14
  br i1 %exitcond35.not, label %for.cond76, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds nuw [201 x i32], ptr @a, i64 0, i64 %indvars.iv31
  %4 = load i32, ptr %arrayidx49, align 4, !tbaa !5, !invariant.load !12
  %arrayidx51 = getelementptr inbounds nuw [201 x i32], ptr @min2, i64 0, i64 %indvars.iv31
  store i32 %4, ptr %arrayidx51, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc70, %for.body47
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc70 ], [ 0, %for.body47 ]
  %exitcond30.not = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond30.not, label %for.inc73, label %for.body54

for.body54:                                       ; preds = %for.cond52
  %arrayidx58 = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv26, i64 %indvars.iv31
  %5 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !12
  %cmp61 = icmp slt i32 %5, %4
  br i1 %cmp61, label %if.then62, label %for.inc70

if.then62:                                        ; preds = %for.body54
  store i32 %5, ptr %arrayidx51, align 4, !tbaa !5
  br label %for.inc70

for.inc70:                                        ; preds = %for.body54, %if.then62
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond52, !llvm.loop !17

for.inc73:                                        ; preds = %for.cond52
  store i32 %n, ptr @j, align 4, !tbaa !5
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond45, !llvm.loop !18

for.cond76:                                       ; preds = %for.cond45, %for.end95
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.end95 ], [ 0, %for.cond45 ]
  %exitcond45.not = icmp eq i64 %indvars.iv41, %wide.trip.count14
  br i1 %exitcond45.not, label %for.end98, label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %for.cond76
  %arrayidx87 = getelementptr inbounds nuw [201 x i32], ptr @min2, i64 0, i64 %indvars.iv41
  br label %for.cond79

for.cond79:                                       ; preds = %for.cond79.preheader, %for.inc93
  %indvars.iv36 = phi i64 [ 0, %for.cond79.preheader ], [ %indvars.iv.next37, %for.inc93 ]
  %exitcond40.not = icmp eq i64 %indvars.iv36, %wide.trip.count
  br i1 %exitcond40.not, label %for.end95, label %for.inc93

for.inc93:                                        ; preds = %for.cond79
  %arrayidx85 = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv36, i64 %indvars.iv41
  %6 = load i32, ptr %arrayidx85, align 4, !tbaa !5, !invariant.load !12
  %7 = load i32, ptr %arrayidx87, align 4, !tbaa !5, !invariant.load !12
  %sub88 = sub nsw i32 %6, %7
  store i32 %sub88, ptr %arrayidx85, align 4, !tbaa !5
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond79, !llvm.loop !19

for.end95:                                        ; preds = %for.cond79
  store i32 %n, ptr @j, align 4, !tbaa !5
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond76

for.end98:                                        ; preds = %for.cond76
  store i32 %smax, ptr @i, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4movei(i32 noundef %n) local_unnamed_addr #4 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 2)
  %wide.trip.count11 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc10 ], [ 2, %entry ]
  %exitcond12.not = icmp eq i64 %indvars.iv7, %wide.trip.count11
  br i1 %exitcond12.not, label %for.cond13.preheader, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add nsw i64 %indvars.iv7, -1
  br label %for.cond1

for.cond13.preheader:                             ; preds = %for.cond
  %smax22 = tail call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 0)
  %wide.trip.count23 = zext nneg i32 %smax22 to i64
  br label %for.cond13

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc10, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv7, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !12
  %arrayidx9 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %0, i64 %indvars.iv
  store i32 %1, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !20

for.inc10:                                        ; preds = %for.cond1
  store i32 %n, ptr @j, align 4, !tbaa !5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond, !llvm.loop !21

for.cond13:                                       ; preds = %for.cond13.preheader, %for.end30
  %indvars.iv19 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next20, %for.end30 ]
  %exitcond24.not = icmp eq i64 %indvars.iv19, %wide.trip.count23
  br i1 %exitcond24.not, label %for.end33, label %for.cond16

for.cond16:                                       ; preds = %for.cond13, %for.inc28
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc28 ], [ 2, %for.cond13 ]
  %exitcond18.not = icmp eq i64 %indvars.iv13, %wide.trip.count11
  br i1 %exitcond18.not, label %for.end30, label %for.inc28

for.inc28:                                        ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv19, i64 %indvars.iv13
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !12
  %3 = add nsw i64 %indvars.iv13, -1
  %arrayidx27 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv19, i64 %3
  store i32 %2, ptr %arrayidx27, align 4, !tbaa !5
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond16, !llvm.loop !22

for.end30:                                        ; preds = %for.cond16
  store i32 %smax, ptr @j, align 4, !tbaa !5
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond13

for.end33:                                        ; preds = %for.cond13
  store i32 %smax22, ptr @i, align 4, !tbaa !5
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
