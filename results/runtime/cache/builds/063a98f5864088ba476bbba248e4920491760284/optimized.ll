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
  %0 = add i32 %times, 1
  %1 = add i32 %times, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %times, i32 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count26 = zext i32 %2 to i64
  %wide.trip.count = zext i32 %1 to i64
  %idxprom14 = zext nneg i32 %0 to i64
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr @g_Matrix, i64 0, i64 %idxprom14
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc26 ], [ 1, %entry ]
  %exitcond27 = icmp eq i64 %indvars.iv23, %wide.trip.count26
  br i1 %exitcond27, label %for.end28, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv23, i64 1
  %3 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %3, %for.body ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv23, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  store i32 0, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.body18, %for.end
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body18 ], [ 1, %for.end ]
  %exitcond22 = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond22, label %for.inc26, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv23, i64 %indvars.iv18
  %5 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %sub = sub nsw i32 %5, %min.0
  store i32 %sub, ptr %arrayidx22, align 4, !tbaa !5
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond16, !llvm.loop !12

for.inc26:                                        ; preds = %for.cond16
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond, !llvm.loop !13

for.end28:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z6rowDeli(i32 noundef %times) local_unnamed_addr #0 {
entry:
  %0 = add i32 %times, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %times, i32 0)
  %1 = add nuw i32 %smax, 1
  %wide.trip.count26 = zext i32 %1 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc27 ], [ 1, %entry ]
  %exitcond27 = icmp eq i64 %indvars.iv23, %wide.trip.count26
  br i1 %exitcond27, label %for.end29, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr @g_Matrix, i64 0, i64 %indvars.iv23
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.inc27, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds nuw [100 x i32], ptr getelementptr inbounds nuw (i8, ptr @g_Matrix, i64 400), i64 0, i64 %indvars.iv23
  %3 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %if.then ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ %3, %if.then ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond16, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx9 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv, i64 %indvars.iv23
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !14

for.cond16:                                       ; preds = %for.cond3, %for.body18
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body18 ], [ 1, %for.cond3 ]
  %exitcond22 = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond22, label %for.inc27, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv18, i64 %indvars.iv23
  %5 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %sub = sub nsw i32 %5, %min.0
  store i32 %sub, ptr %arrayidx22, align 4, !tbaa !5
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond16, !llvm.loop !15

for.inc27:                                        ; preds = %for.cond16, %for.body
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond, !llvm.loop !16

for.end29:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z9Transformi(i32 noundef %times) local_unnamed_addr #0 {
entry:
  %0 = add i32 %times, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %times, i32 0)
  %1 = add nuw i32 %smax, 1
  %wide.trip.count37 = zext i32 %1 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond1, %entry
  %indvars.iv34 = phi i64 [ 1, %entry ], [ %indvars.iv.next35, %for.cond1 ]
  %exitcond38 = icmp eq i64 %indvars.iv34, %wide.trip.count37
  br i1 %exitcond38, label %for.end43, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %cmp4 = icmp eq i64 %indvars.iv34, 1
  %cmp14 = icmp samesign ugt i64 %indvars.iv34, 1
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv.next35, i64 1
  %arrayidx24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv34, i64 1
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond, label %for.body3, !llvm.loop !17

for.body3:                                        ; preds = %for.cond1
  %cmp5 = icmp samesign ugt i64 %indvars.iv, 1
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.end25.thread39, label %if.end

if.end25.thread39:                                ; preds = %for.body3
  %2 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx7 = getelementptr inbounds nuw [100 x i32], ptr getelementptr inbounds nuw (i8, ptr @g_Matrix, i64 400), i64 0, i64 %2
  %3 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr getelementptr inbounds nuw (i8, ptr @g_Matrix, i64 400), i64 0, i64 %indvars.iv
  store i32 %3, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.inc

if.end:                                           ; preds = %for.body3
  %cmp12 = icmp eq i64 %indvars.iv, 1
  %or.cond1 = select i1 %cmp12, i1 %cmp14, i1 false
  br i1 %or.cond1, label %if.end25.thread, label %if.end25

if.end25.thread:                                  ; preds = %if.end
  %4 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc

if.end25:                                         ; preds = %if.end
  %or.cond2 = select i1 %cmp14, i1 %cmp5, i1 false
  br i1 %or.cond2, label %if.then29, label %for.inc

if.then29:                                        ; preds = %if.end25
  %5 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv.next35, i64 %5
  %6 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %arrayidx39 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv34, i64 %indvars.iv
  store i32 %6, ptr %arrayidx39, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end25.thread39, %if.end25.thread, %if.end25, %if.then29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !18

for.end43:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z9Operationi(i32 noundef %times) local_unnamed_addr #2 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add, %for.end ]
  %times.tr = phi i32 [ %times, %entry ], [ %sub, %for.end ]
  %cmp.not = icmp eq i32 %times.tr, 1
  br i1 %cmp.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %smax = tail call i32 @llvm.smax.i32(i32 %times.tr, i32 0)
  %0 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr @g_Matrix, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  tail call void @_Z7lineDeli(i32 noundef %times.tr)
  tail call void @_Z6rowDeli(i32 noundef %times.tr)
  %1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_Matrix, i64 808), align 8, !tbaa !5
  %sub = add nsw i32 %times.tr, -1
  tail call void @_Z9Transformi(i32 noundef %sub)
  %add = add nsw i32 %1, %accumulator.tr
  br label %tailrecurse

cleanup:                                          ; preds = %tailrecurse
  ret i32 %accumulator.tr
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
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
  %indvars.iv7 = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next8, %for.inc7 ]
  %3 = sext i32 %2 to i64
  %cmp.not = icmp sgt i64 %indvars.iv7, %3
  br i1 %cmp.not, label %for.end9, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %4 = phi i32 [ %.pre10, %for.body3 ], [ %2, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 1, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv, %5
  br i1 %cmp2.not, label %for.inc7, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @g_Matrix, i64 0, i64 %indvars.iv7, i64 %indvars.iv
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre10 = load i32, ptr @g_a, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !20

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond, !llvm.loop !21

for.end9:                                         ; preds = %for.cond
  %call10 = call noundef i32 @_Z9Operationi(i32 noundef %2)
  %call11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call10)
  %vtable.i = load ptr, ptr %call11, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call11, i64 %vbase.offset.i
  %call.i5 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call11, i8 noundef signext %call.i5)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = distinct !{!24, !10, !11}
