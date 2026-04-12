; ModuleID = '<stdin>'
source_filename = "/tmp/tmp53ktk9u0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@a = dso_local global [105 x [105 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #11
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc11.i4, %for.end12 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44100) @a, i8 noundef 0, i64 noundef 44100, i1 noundef false)
  br label %for.cond1

for.cond1:                                        ; preds = %for.end, %for.body
  %1 = phi i32 [ %3, %for.end ], [ %0, %for.body ]
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.end ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv11, %2
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv11, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z7guilingi(i32 noundef %1) #12
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc11.i4 = add nuw nsw i32 %k.0, 1
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z7guilingi(i32 noundef %n) local_unnamed_addr #4 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.else, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add, %if.else ]
  %n.tr = phi i32 [ %n, %entry ], [ %sub75, %if.else ]
  %smax59 = call i32 @llvm.smax.i32(i32 %n.tr, i32 noundef 0)
  %wide.trip.count44 = zext nneg i32 %smax59 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end26, %tailrecurse
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.end26 ], [ 0, %tailrecurse ]
  %exitcond45.not = icmp eq i64 %indvars.iv41, %wide.trip.count44
  br i1 %exitcond45.not, label %for.cond31.preheader, label %for.body

for.cond31.preheader:                             ; preds = %for.cond
  br label %for.cond31

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv41
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !12
  br label %for.cond2

for.cond2:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body5

for.cond16.preheader:                             ; preds = %for.cond2
  br label %for.cond16

for.body5:                                        ; preds = %for.cond2
  %arrayidx9 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv41, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2

for.cond16:                                       ; preds = %for.cond16.preheader, %for.body19
  %indvars.iv36 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next37, %for.body19 ]
  %exitcond40.not = icmp eq i64 %indvars.iv36, %wide.trip.count
  br i1 %exitcond40.not, label %for.end26, label %for.body19

for.body19:                                       ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv41, i64 %indvars.iv36
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond16

for.end26:                                        ; preds = %for.cond16
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond

for.cond31:                                       ; preds = %for.cond31.preheader, %for.end69
  %indvars.iv56 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next57, %for.end69 ]
  %exitcond61.not = icmp eq i64 %indvars.iv56, %wide.trip.count44
  br i1 %exitcond61.not, label %for.end72, label %for.body34

for.body34:                                       ; preds = %for.cond31
  %arrayidx37 = getelementptr inbounds nuw [105 x i32], ptr @a, i64 0, i64 %indvars.iv56
  %3 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !12
  br label %for.cond39

for.cond39:                                       ; preds = %for.body42, %for.body34
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body42 ], [ 1, %for.body34 ]
  %min35.0 = phi i32 [ %spec.select34, %for.body42 ], [ %3, %for.body34 ]
  %exitcond50.not = icmp eq i64 %indvars.iv46, %wide.trip.count
  br i1 %exitcond50.not, label %for.cond58.preheader, label %for.body42

for.cond58.preheader:                             ; preds = %for.cond39
  br label %for.cond58

for.body42:                                       ; preds = %for.cond39
  %arrayidx46 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv46, i64 %indvars.iv56
  %4 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !12
  %spec.select34 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min35.0)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond39

for.cond58:                                       ; preds = %for.cond58.preheader, %for.body61
  %indvars.iv51 = phi i64 [ 0, %for.cond58.preheader ], [ %indvars.iv.next52, %for.body61 ]
  %exitcond55.not = icmp eq i64 %indvars.iv51, %wide.trip.count
  br i1 %exitcond55.not, label %for.end69, label %for.body61

for.body61:                                       ; preds = %for.cond58
  %arrayidx65 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv51, i64 %indvars.iv56
  %5 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !12
  %sub66 = sub nsw i32 %5, %min35.0
  store i32 %sub66, ptr %arrayidx65, align 4, !tbaa !5
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond58

for.end69:                                        ; preds = %for.cond58
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond31

for.end72:                                        ; preds = %for.cond31
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 424), align 8, !tbaa !5
  %cmp73 = icmp eq i32 %n.tr, 2
  br i1 %cmp73, label %cleanup, label %if.else

if.else:                                          ; preds = %for.end72
  tail call void @_Z8xiaojiani(i32 noundef %n.tr) #13
  %sub75 = add nsw i32 %n.tr, -1
  %add = add nsw i32 %6, %accumulator.tr
  br label %tailrecurse

cleanup:                                          ; preds = %for.end72
  %accumulator.ret.tr = add nsw i32 %6, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) local_unnamed_addr #7 {
entry:
  %sub = add nsw i32 %n, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 1)
  %wide.trip.count20 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %sub to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond10, %entry
  %indvars.iv17 = phi i64 [ 1, %entry ], [ %indvars.iv.next18, %for.cond10 ]
  %exitcond21.not = icmp eq i64 %indvars.iv17, %wide.trip.count20
  br i1 %exitcond21.not, label %for.end27, label %for.body

for.body:                                         ; preds = %for.cond
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %arrayidx = getelementptr inbounds nuw [105 x i32], ptr @a, i64 0, i64 %indvars.iv.next18
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !12
  %arrayidx2 = getelementptr inbounds nuw [105 x i32], ptr @a, i64 0, i64 %indvars.iv17
  store i32 %0, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv.next18
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !12
  %arrayidx8 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv17
  store i32 %1, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond, label %for.inc

for.inc:                                          ; preds = %for.cond10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx20 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv.next18, i64 %indvars.iv.next
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !12
  %arrayidx24 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv17, i64 %indvars.iv
  store i32 %2, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !13

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #6 comdat {
entry:
  %tobool.not = icmp eq ptr %__f, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #5 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !14, !invariant.load !12
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !22, !invariant.load !12
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !23, !invariant.load !12
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !12
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nofree nosync nounwind }
attributes #14 = { noreturn }

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
!14 = !{!15, !7, i64 56}
!15 = !{!"_ZTSSt5ctypeIcE", !16, i64 0, !17, i64 16, !19, i64 24, !20, i64 32, !20, i64 40, !21, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!16 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!17 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"bool", !7, i64 0}
!20 = !{!"p1 int", !18, i64 0}
!21 = !{!"p1 short", !18, i64 0}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
