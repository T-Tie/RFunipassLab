; ModuleID = '<stdin>'
source_filename = "/tmp/tmpy8_8nxfh.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup15, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc117, %for.cond.cleanup15 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.cond.cleanup, label %for.cond1

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv55, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %sub = add nsw i32 %1, -1
  %smax109 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count110 = zext nneg i32 %smax109 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv55, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc111
  %indvars.iv105 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next106, %for.inc111 ]
  %indvars.iv83 = phi i32 [ %sub, %for.cond13.preheader ], [ %indvars.iv.next84, %for.inc111 ]
  %indvars.iv62 = phi i32 [ %1, %for.cond13.preheader ], [ %indvars.iv.next63, %for.inc111 ]
  %m.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add, %for.inc111 ]
  %smax102 = call i32 @llvm.smax.i32(i32 %indvars.iv83, i32 0)
  %smax85 = call i32 @llvm.smax.i32(i32 %indvars.iv83, i32 1)
  %exitcond111.not = icmp eq i64 %indvars.iv105, %wide.trip.count110
  br i1 %exitcond111.not, label %for.cond.cleanup15, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.cond13
  %smax91 = call i32 @llvm.smax.i32(i32 %indvars.iv62, i32 0)
  %5 = sub nsw i64 %2, %indvars.iv105
  %wide.trip.count67 = zext nneg i32 %smax91 to i64
  %wide.trip.count = zext i32 %indvars.iv62 to i64
  br label %for.cond17

for.cond.cleanup15:                               ; preds = %for.cond13
  %call114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %m.0)
  %vtable.i = load ptr, ptr %call114, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call114, i64 %vbase.offset.i
  %call.i53 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call114, i8 noundef signext %call.i53)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc117 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc35
  %indvars.iv64 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next65, %for.inc35 ]
  %exitcond68.not = icmp eq i64 %indvars.iv64, %wide.trip.count67
  br i1 %exitcond68.not, label %for.cond38.preheader, label %for.body20

for.cond38.preheader:                             ; preds = %for.cond17
  %wide.trip.count72 = zext i32 %indvars.iv62 to i64
  br label %for.cond38

for.body20:                                       ; preds = %for.cond17
  %arrayidx.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv64
  %6 = load i32, ptr %arrayidx.i, align 16, !tbaa !5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.body20
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %for.body.i ], [ 0, %for.body20 ]
  %t.0.i = phi i32 [ %spec.select.i, %for.body.i ], [ %6, %for.body20 ]
  %exitcond30.not.i = icmp eq i64 %indvars.iv25.i, %5
  br i1 %exitcond30.not.i, label %for.cond23, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx6.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv64, i64 %indvars.iv25.i
  %7 = load i32, ptr %arrayidx6.i, align 4, !tbaa !5
  %spec.select.i = call i32 @llvm.smin.i32(i32 %t.0.i, i32 %7)
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br label %for.cond.i, !llvm.loop !16

for.cond23:                                       ; preds = %for.cond.i, %for.body26
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.body26 ], [ 0, %for.cond.i ]
  %exitcond.not = icmp eq i64 %indvars.iv58, %wide.trip.count
  br i1 %exitcond.not, label %for.inc35, label %for.body26

for.body26:                                       ; preds = %for.cond23
  %arrayidx30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv64, i64 %indvars.iv58
  %8 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %sub31 = sub nsw i32 %8, %t.0.i
  store i32 %sub31, ptr %arrayidx30, align 4, !tbaa !5
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond23, !llvm.loop !17

for.inc35:                                        ; preds = %for.cond23
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond17, !llvm.loop !18

for.cond38:                                       ; preds = %for.cond38.preheader, %for.inc57
  %indvars.iv74 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next75, %for.inc57 ]
  %exitcond79.not = icmp eq i64 %indvars.iv74, %wide.trip.count67
  br i1 %exitcond79.not, label %for.end59, label %for.body41

for.body41:                                       ; preds = %for.cond38
  %arrayidx15.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv74
  %9 = load i32, ptr %arrayidx15.i, align 4, !tbaa !5
  br label %for.cond16.i

for.cond16.i:                                     ; preds = %for.body19.i, %for.body41
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body19.i ], [ 0, %for.body41 ]
  %t.3.i = phi i32 [ %spec.select21.i, %for.body19.i ], [ %9, %for.body41 ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %5
  br i1 %exitcond.not.i, label %for.cond45, label %for.body19.i

for.body19.i:                                     ; preds = %for.cond16.i
  %arrayidx23.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.i, i64 %indvars.iv74
  %10 = load i32, ptr %arrayidx23.i, align 4, !tbaa !5
  %spec.select21.i = call i32 @llvm.smin.i32(i32 %t.3.i, i32 %10)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond16.i, !llvm.loop !19

for.cond45:                                       ; preds = %for.cond16.i, %for.body48
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body48 ], [ 0, %for.cond16.i ]
  %exitcond73.not = icmp eq i64 %indvars.iv69, %wide.trip.count72
  br i1 %exitcond73.not, label %for.inc57, label %for.body48

for.body48:                                       ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv69, i64 %indvars.iv74
  %11 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub53 = sub nsw i32 %11, %t.3.i
  store i32 %sub53, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond45, !llvm.loop !20

for.inc57:                                        ; preds = %for.cond45
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond38, !llvm.loop !21

for.end59:                                        ; preds = %for.cond38
  %12 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %wide.trip.count86 = zext nneg i32 %smax85 to i64
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc83, %for.end59
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.inc83 ], [ 0, %for.end59 ]
  %exitcond93.not = icmp eq i64 %indvars.iv88, %wide.trip.count67
  br i1 %exitcond93.not, label %for.cond86.preheader, label %for.cond66

for.cond86.preheader:                             ; preds = %for.cond62
  %wide.trip.count103 = zext nneg i32 %smax102 to i64
  %wide.trip.count97 = zext i32 %indvars.iv83 to i64
  br label %for.cond86

for.cond66:                                       ; preds = %for.cond62, %for.body70
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.body70 ], [ 1, %for.cond62 ]
  %exitcond87.not = icmp eq i64 %indvars.iv80, %wide.trip.count86
  br i1 %exitcond87.not, label %for.inc83, label %for.body70

for.body70:                                       ; preds = %for.cond66
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %arrayidx75 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv88, i64 %indvars.iv.next81
  %13 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv88, i64 %indvars.iv80
  store i32 %13, ptr %arrayidx79, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !22

for.inc83:                                        ; preds = %for.cond66
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond62, !llvm.loop !23

for.cond86:                                       ; preds = %for.cond86.preheader, %for.inc108
  %indvars.iv99 = phi i64 [ 0, %for.cond86.preheader ], [ %indvars.iv.next100, %for.inc108 ]
  %exitcond104.not = icmp eq i64 %indvars.iv99, %wide.trip.count103
  br i1 %exitcond104.not, label %for.inc111, label %for.cond91

for.cond91:                                       ; preds = %for.cond86, %for.body95
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body95 ], [ 1, %for.cond86 ]
  %exitcond98.not = icmp eq i64 %indvars.iv94, %wide.trip.count97
  br i1 %exitcond98.not, label %for.inc108, label %for.body95

for.body95:                                       ; preds = %for.cond91
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %arrayidx100 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next95, i64 %indvars.iv99
  %14 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %arrayidx104 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv94, i64 %indvars.iv99
  store i32 %14, ptr %arrayidx104, align 4, !tbaa !5
  br label %for.cond91, !llvm.loop !24

for.inc108:                                       ; preds = %for.cond91
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  br label %for.cond86, !llvm.loop !25

for.inc111:                                       ; preds = %for.cond86
  %add = add nsw i32 %12, %m.0
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %indvars.iv.next63 = add i32 %indvars.iv62, -1
  %indvars.iv.next84 = add i32 %indvars.iv83, -1
  br label %for.cond13, !llvm.loop !26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3minPA100_iiii(ptr noundef readonly captures(none) %a, i32 noundef %s, i32 noundef %l, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %s, 0
  %idxprom = sext i32 %l to i64
  %smax28 = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count29 = zext nneg i32 %smax28 to i64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.body ], [ 0, %if.then ]
  %t.0 = phi i32 [ %spec.select, %for.body ], [ %0, %if.then ]
  %exitcond30.not = icmp eq i64 %indvars.iv25, %wide.trip.count29
  br i1 %exitcond30.not, label %if.end34, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom, i64 %indvars.iv25
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %t.0, i32 %1)
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond, !llvm.loop !16

if.else:                                          ; preds = %entry
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.body19, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body19 ], [ 0, %if.else ]
  %t.3 = phi i32 [ %spec.select21, %for.body19 ], [ %2, %if.else ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count29
  br i1 %exitcond.not, label %if.end34, label %for.body19

for.body19:                                       ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv, i64 %idxprom
  %3 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %spec.select21 = tail call i32 @llvm.smin.i32(i32 %t.3, i32 %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond16, !llvm.loop !19

if.end34:                                         ; preds = %for.cond16, %for.cond
  %t.2 = phi i32 [ %t.0, %for.cond ], [ %t.3, %for.cond16 ]
  ret i32 %t.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
