; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv7g7j52m.cpp"
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
@r_small = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16
@c_small = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %num) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end18

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %2, %for.end ], [ %0, %for.cond ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.end ], [ 0, %for.cond ]
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %2 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %3 = sext i32 %2 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %num, i64 0, i64 %indvars.iv4, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3funPA100_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %num, i32 noundef %1) #10
  %4 = load i32, ptr @sum, align 4, !tbaa !5
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr @sum, align 4, !tbaa !5
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull align 16 dereferenceable(40000) %num) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3funPA100_ii(ptr nofree noundef captures(none) %num, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @sum, align 4, !tbaa !5
  ret i32 %0

if.end:                                           ; preds = %entry
  tail call void @_Z6small1PA100_ii(ptr nofree noundef readonly captures(none) %num, i32 noundef %n) #11
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count12 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %if.end
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.inc13 ], [ 0, %if.end ]
  %exitcond13.not = icmp eq i64 %indvars.iv9, %wide.trip.count12
  br i1 %exitcond13.not, label %for.end15, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr @r_small, i64 0, i64 %indvars.iv9
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc13, label %for.inc

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv9, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !12
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %1, %2
  store i32 %sub, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !13

for.inc13:                                        ; preds = %for.cond2
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond, !llvm.loop !14

for.end15:                                        ; preds = %for.cond
  tail call void @_Z6small2PA100_ii(ptr nofree noundef readonly captures(none) %num, i32 noundef %n) #11
  %wide.trip.count17 = zext i32 %n to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc36, %for.end15
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc36 ], [ 0, %for.end15 ]
  %exitcond23.not = icmp eq i64 %indvars.iv19, %wide.trip.count12
  br i1 %exitcond23.not, label %for.end38, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond16
  %arrayidx27 = getelementptr inbounds nuw [100 x i32], ptr @c_small, i64 0, i64 %indvars.iv19
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc33
  %indvars.iv14 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next15, %for.inc33 ]
  %exitcond18.not = icmp eq i64 %indvars.iv14, %wide.trip.count17
  br i1 %exitcond18.not, label %for.inc36, label %for.inc33

for.inc33:                                        ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv14, i64 %indvars.iv19
  %3 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !12
  %4 = load i32, ptr %arrayidx27, align 4, !tbaa !5, !invariant.load !12
  %sub28 = sub nsw i32 %3, %4
  store i32 %sub28, ptr %arrayidx25, align 4, !tbaa !5
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond19, !llvm.loop !15

for.inc36:                                        ; preds = %for.cond19
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond16, !llvm.loop !16

for.end38:                                        ; preds = %for.cond16
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %num, i64 404
  %5 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !12
  %6 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %6, %5
  store i32 %add, ptr @sum, align 4, !tbaa !5
  %cmp42 = icmp sgt i32 %n, 0
  %sub45 = add i32 %n, -1
  br i1 %cmp42, label %for.cond41.preheader, label %for.cond63.preheader

for.cond41.preheader:                             ; preds = %for.end38
  %wide.trip.count38 = zext i32 %sub45 to i64
  br label %for.cond41

for.cond41:                                       ; preds = %for.cond41.preheader, %for.end59
  %indvars.iv40 = phi i64 [ 0, %for.cond41.preheader ], [ %indvars.iv.next41, %for.end59 ]
  br label %for.cond44

for.cond63.preheader:                             ; preds = %for.end38
  %smax32 = call i32 @llvm.smax.i32(i32 %sub45, i32 0)
  %wide.trip.count33 = zext nneg i32 %smax32 to i64
  %wide.trip.count27 = zext i32 %sub45 to i64
  br label %for.cond63

for.cond44:                                       ; preds = %for.cond41, %for.inc57
  %indvars.iv35 = phi i64 [ 1, %for.cond41 ], [ %indvars.iv.next36, %for.inc57 ]
  %exitcond39.not = icmp eq i64 %indvars.iv35, %wide.trip.count38
  br i1 %exitcond39.not, label %for.end59, label %for.inc57

for.inc57:                                        ; preds = %for.cond44
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %arrayidx52 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv40, i64 %indvars.iv.next36
  %7 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !12
  %arrayidx56 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv40, i64 %indvars.iv35
  store i32 %7, ptr %arrayidx56, align 4, !tbaa !5
  br label %for.cond44, !llvm.loop !17

for.end59:                                        ; preds = %for.cond44
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond41

for.cond63:                                       ; preds = %for.cond63.preheader, %for.inc83
  %indvars.iv29 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next30, %for.inc83 ]
  %exitcond34.not = icmp eq i64 %indvars.iv29, %wide.trip.count33
  br i1 %exitcond34.not, label %for.end85, label %for.cond67

for.cond67:                                       ; preds = %for.cond63, %for.inc80
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc80 ], [ 1, %for.cond63 ]
  %exitcond28.not = icmp eq i64 %indvars.iv24, %wide.trip.count27
  br i1 %exitcond28.not, label %for.inc83, label %for.inc80

for.inc80:                                        ; preds = %for.cond67
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %arrayidx75 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv.next25, i64 %indvars.iv29
  %8 = load i32, ptr %arrayidx75, align 4, !tbaa !5, !invariant.load !12
  %arrayidx79 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv24, i64 %indvars.iv29
  store i32 %8, ptr %arrayidx79, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !18

for.inc83:                                        ; preds = %for.cond67
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond63, !llvm.loop !19

for.end85:                                        ; preds = %for.cond63
  %call = tail call noundef i32 @_Z3funPA100_ii(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(408) %num, i32 noundef %sub45) #11
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @_Z6small1PA100_ii(ptr nofree noundef readonly captures(none) %num, i32 noundef %n) local_unnamed_addr #6 {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %entry.split, label %for.end24

entry.split:                                      ; preds = %entry
  %0 = load i32, ptr %num, align 4, !tbaa !5, !invariant.load !12
  %wide.trip.count = zext nneg i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry.split
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.end ], [ 0, %entry.split ]
  store i32 %0, ptr @r_small, align 16, !tbaa !5
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr @r_small, i64 0, i64 %indvars.iv3
  br label %for.cond4

for.cond4:                                        ; preds = %for.body6, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 1, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !12
  %arrayidx12 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv3, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5, !invariant.load !12
  %3 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  store i32 %3, ptr %arrayidx8, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !20

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %for.cond

for.end24:                                        ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @_Z6small2PA100_ii(ptr nofree noundef readonly captures(none) %num, i32 noundef %n) local_unnamed_addr #6 {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %entry.split, label %for.end24

entry.split:                                      ; preds = %entry
  %0 = load i32, ptr %num, align 4, !tbaa !5, !invariant.load !12
  %wide.trip.count = zext nneg i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry.split
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.end ], [ 0, %entry.split ]
  store i32 %0, ptr @c_small, align 16, !tbaa !5
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr @c_small, i64 0, i64 %indvars.iv3
  br label %for.cond4

for.cond4:                                        ; preds = %for.body6, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 1, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !12
  %arrayidx10 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv
  %arrayidx12 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv, i64 %indvars.iv3
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5, !invariant.load !12
  %cmp13 = icmp slt i32 %1, %2
  %spec.select = select i1 %cmp13, ptr @c_small, ptr %arrayidx10
  %arrayidx19 = getelementptr inbounds nuw [100 x i32], ptr %spec.select, i64 0, i64 %indvars.iv3
  %3 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %3, ptr %arrayidx8, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !21

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %for.cond

for.end24:                                        ; preds = %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nofree nosync nounwind }

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
