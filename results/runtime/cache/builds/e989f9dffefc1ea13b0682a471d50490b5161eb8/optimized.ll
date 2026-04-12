; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo2r3b3qr.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %a, i8 0, i64 400, i1 false)
  store i32 2, ptr %a, align 16
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i1)
  %call.i.i3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i2)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @_Z5chengPiii(ptr noundef nonnull %a, i32 noundef %0, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5chengPiii(ptr noundef captures(none) %a, i32 noundef %n, i32 noundef %flag) local_unnamed_addr #4 {
entry:
  %b = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %b, i8 0, i64 400, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %while.cond ], [ 100, %entry ]
  %indvars.iv41 = phi i32 [ %indvars.iv.next42, %while.cond ], [ 100, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 99, %entry ]
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars.iv.next42 = add nsw i32 %indvars.iv41, -1
  %indvars.iv.next52 = add nsw i64 %indvars.iv51, -1
  br i1 %cmp, label %while.cond, label %while.end, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %sub = add nsw i32 %n, -1
  %cmp1 = icmp eq i32 %flag, %sub
  br i1 %cmp1, label %for.cond.preheader, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %while.end
  %1 = trunc nsw i64 %indvars.iv to i32
  br label %for.cond5

for.cond.preheader:                               ; preds = %while.end
  %smax63 = tail call i32 @llvm.smax.i32(i32 %indvars.iv41, i32 0)
  %wide.trip.count64 = zext nneg i32 %smax63 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv59 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next60, %for.body ]
  %exitcond65 = icmp eq i64 %indvars.iv59, %wide.trip.count64
  br i1 %exitcond65, label %if.end64, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv59
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %2)
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond, !llvm.loop !14

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %indvars.iv35 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next36, %for.body7 ]
  %i.1 = phi i32 [ %1, %for.cond5.preheader ], [ %dec14, %for.body7 ]
  %cmp6 = icmp sgt i32 %i.1, -1
  br i1 %cmp6, label %for.body7, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond5
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv41, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond16

for.body7:                                        ; preds = %for.cond5
  %idxprom8 = zext nneg i32 %i.1 to i64
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %a, i64 %idxprom8
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %arrayidx12 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv35
  store i32 %3, ptr %arrayidx12, align 4, !tbaa !5
  %dec14 = add nsw i32 %i.1, -1
  br label %for.cond5, !llvm.loop !15

for.cond16:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv38 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next39, %for.body18 ]
  %exitcond = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond, label %for.cond26, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv38
  %4 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %mul = shl nsw i32 %4, 1
  store i32 %mul, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond16, !llvm.loop !16

for.cond26:                                       ; preds = %for.cond16, %for.cond26.backedge
  %indvars.iv43 = phi i64 [ %indvars.iv43.be, %for.cond26.backedge ], [ 0, %for.cond16 ]
  %exitcond50 = icmp eq i64 %indvars.iv43, %wide.trip.count
  br i1 %exitcond50, label %while.cond45, label %for.body28

for.body28:                                       ; preds = %for.cond26
  %arrayidx30 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv43
  %5 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %5, 9
  br i1 %cmp31, label %if.then32, label %for.body28.for.inc41_crit_edge

for.body28.for.inc41_crit_edge:                   ; preds = %for.body28
  %.pre = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond26.backedge

for.cond26.backedge:                              ; preds = %for.body28.for.inc41_crit_edge, %if.then32
  %indvars.iv43.be = phi i64 [ %.pre, %for.body28.for.inc41_crit_edge ], [ %6, %if.then32 ]
  br label %for.cond26, !llvm.loop !17

if.then32:                                        ; preds = %for.body28
  %sub35 = add nsw i32 %5, -10
  store i32 %sub35, ptr %arrayidx30, align 4, !tbaa !5
  %6 = add nuw nsw i64 %indvars.iv43, 1
  %arrayidx39 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %6
  %7 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %inc40 = add nsw i32 %7, 1
  store i32 %inc40, ptr %arrayidx39, align 4, !tbaa !5
  br label %for.cond26.backedge

while.cond45:                                     ; preds = %for.cond26, %while.cond45
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %while.cond45 ], [ %indvars.iv51, %for.cond26 ]
  %arrayidx47 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %indvars.iv53
  %8 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %cmp48 = icmp eq i32 %8, 0
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, -1
  br i1 %cmp48, label %while.cond45, label %for.cond52.preheader, !llvm.loop !18

for.cond52.preheader:                             ; preds = %while.cond45
  %9 = trunc nsw i64 %indvars.iv53 to i32
  br label %for.cond52

for.cond52:                                       ; preds = %for.cond52.preheader, %for.body54
  %indvars.iv56 = phi i64 [ 0, %for.cond52.preheader ], [ %indvars.iv.next57, %for.body54 ]
  %i.4 = phi i32 [ %9, %for.cond52.preheader ], [ %dec61, %for.body54 ]
  %cmp53 = icmp sgt i32 %i.4, -1
  br i1 %cmp53, label %for.body54, label %for.end62

for.body54:                                       ; preds = %for.cond52
  %idxprom55 = zext nneg i32 %i.4 to i64
  %arrayidx56 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %idxprom55
  %10 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %arrayidx59 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv56
  store i32 %10, ptr %arrayidx59, align 4, !tbaa !5
  %dec61 = add nsw i32 %i.4, -1
  br label %for.cond52, !llvm.loop !19

for.end62:                                        ; preds = %for.cond52
  %inc63 = add nsw i32 %flag, 1
  tail call void @_Z5chengPiii(ptr noundef %a, i32 noundef %n, i32 noundef %inc63)
  br label %if.end64

if.end64:                                         ; preds = %for.cond, %for.end62
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %b) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13}
