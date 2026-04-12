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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %num) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %p.0 = phi i32 [ 0, %entry ], [ %inc17, %for.end12 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %p.0, %0
  br i1 %cmp, label %for.cond1, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %num) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %num, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3funPA100_ii(ptr noundef nonnull %num, i32 noundef %1)
  %5 = load i32, ptr @sum, align 4, !tbaa !5
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %vtable.i = load ptr, ptr %call14, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call14, i64 %vbase.offset.i
  %call.i6 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call14, i8 noundef signext %call.i6)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  store i32 0, ptr @sum, align 4, !tbaa !5
  %inc17 = add nuw nsw i32 %p.0, 1
  br label %for.cond, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3funPA100_ii(ptr noundef captures(none) %num, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @sum, align 4, !tbaa !5
  ret i32 %0

if.end:                                           ; preds = %entry
  tail call void @_Z6small1PA100_ii(ptr noundef %num, i32 noundef %n)
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count59 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %if.end
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc13 ], [ 0, %if.end ]
  %exitcond60.not = icmp eq i64 %indvars.iv56, %wide.trip.count59
  br i1 %exitcond60.not, label %for.end15, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr @r_small, i64 0, i64 %indvars.iv56
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.body4 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc13, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv56, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %2
  store i32 %sub, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !16

for.inc13:                                        ; preds = %for.cond2
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond, !llvm.loop !17

for.end15:                                        ; preds = %for.cond
  tail call void @_Z6small2PA100_ii(ptr noundef %num, i32 noundef %n)
  %wide.trip.count64 = zext i32 %n to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc36, %for.end15
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc36 ], [ 0, %for.end15 ]
  %exitcond70.not = icmp eq i64 %indvars.iv66, %wide.trip.count59
  br i1 %exitcond70.not, label %for.end38, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond16
  %arrayidx27 = getelementptr inbounds nuw [100 x i32], ptr @c_small, i64 0, i64 %indvars.iv66
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body21
  %indvars.iv61 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next62, %for.body21 ]
  %exitcond65.not = icmp eq i64 %indvars.iv61, %wide.trip.count64
  br i1 %exitcond65.not, label %for.inc36, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv61, i64 %indvars.iv66
  %3 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %4 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %sub28 = sub nsw i32 %3, %4
  store i32 %sub28, ptr %arrayidx25, align 4, !tbaa !5
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond19, !llvm.loop !18

for.inc36:                                        ; preds = %for.cond19
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond16, !llvm.loop !19

for.end38:                                        ; preds = %for.cond16
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %num, i64 404
  %5 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %6 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %6, %5
  store i32 %add, ptr @sum, align 4, !tbaa !5
  %sub45 = add i32 %n, -1
  %smax74 = tail call i32 @llvm.smax.i32(i32 %sub45, i32 1)
  %wide.trip.count75 = zext nneg i32 %smax74 to i64
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc60, %for.end38
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc60 ], [ 0, %for.end38 ]
  %exitcond81.not = icmp eq i64 %indvars.iv77, %wide.trip.count59
  br i1 %exitcond81.not, label %for.cond63.preheader, label %for.cond44

for.cond63.preheader:                             ; preds = %for.cond41
  %smax90 = tail call i32 @llvm.smax.i32(i32 %sub45, i32 0)
  %wide.trip.count91 = zext nneg i32 %smax90 to i64
  %wide.trip.count85 = zext i32 %sub45 to i64
  br label %for.cond63

for.cond44:                                       ; preds = %for.cond41, %for.body47
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body47 ], [ 1, %for.cond41 ]
  %exitcond76.not = icmp eq i64 %indvars.iv71, %wide.trip.count75
  br i1 %exitcond76.not, label %for.inc60, label %for.body47

for.body47:                                       ; preds = %for.cond44
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %arrayidx52 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv77, i64 %indvars.iv.next72
  %7 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %arrayidx56 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv77, i64 %indvars.iv71
  store i32 %7, ptr %arrayidx56, align 4, !tbaa !5
  br label %for.cond44, !llvm.loop !20

for.inc60:                                        ; preds = %for.cond44
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond41, !llvm.loop !21

for.cond63:                                       ; preds = %for.cond63.preheader, %for.inc83
  %indvars.iv87 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next88, %for.inc83 ]
  %exitcond92.not = icmp eq i64 %indvars.iv87, %wide.trip.count91
  br i1 %exitcond92.not, label %for.end85, label %for.cond67

for.cond67:                                       ; preds = %for.cond63, %for.body70
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.body70 ], [ 1, %for.cond63 ]
  %exitcond86.not = icmp eq i64 %indvars.iv82, %wide.trip.count85
  br i1 %exitcond86.not, label %for.inc83, label %for.body70

for.body70:                                       ; preds = %for.cond67
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %arrayidx75 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv.next83, i64 %indvars.iv87
  %8 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %arrayidx79 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv82, i64 %indvars.iv87
  store i32 %8, ptr %arrayidx79, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !22

for.inc83:                                        ; preds = %for.cond67
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond63, !llvm.loop !23

for.end85:                                        ; preds = %for.cond63
  %call = tail call noundef i32 @_Z3funPA100_ii(ptr noundef %num, i32 noundef %sub45)
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @_Z6small1PA100_ii(ptr noundef readonly captures(none) %num, i32 noundef %n) local_unnamed_addr #4 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count20 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc22 ], [ 0, %entry ]
  %exitcond21.not = icmp eq i64 %indvars.iv17, %wide.trip.count20
  br i1 %exitcond21.not, label %for.end24, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv17
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw [100 x i32], ptr @r_small, i64 0, i64 %indvars.iv17
  store i32 %0, ptr %arrayidx3, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.body6, %for.body
  %1 = phi i32 [ %., %for.body6 ], [ %0, %for.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc22, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx12 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv17, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  store i32 %., ptr %arrayidx3, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !24

for.inc22:                                        ; preds = %for.cond4
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond, !llvm.loop !25

for.end24:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @_Z6small2PA100_ii(ptr noundef readonly captures(none) %num, i32 noundef %n) local_unnamed_addr #4 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count20 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc22 ], [ 0, %entry ]
  %exitcond21.not = icmp eq i64 %indvars.iv17, %wide.trip.count20
  br i1 %exitcond21.not, label %for.end24, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 0, i64 %indvars.iv17
  %0 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw [100 x i32], ptr @c_small, i64 0, i64 %indvars.iv17
  store i32 %0, ptr %arrayidx3, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.body6, %for.body
  %1 = phi i32 [ %., %for.body6 ], [ %0, %for.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc22, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx12 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 %indvars.iv, i64 %indvars.iv17
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  store i32 %., ptr %arrayidx3, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !26

for.inc22:                                        ; preds = %for.cond4
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond, !llvm.loop !27

for.end24:                                        ; preds = %for.cond
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = distinct !{!12, !10, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
