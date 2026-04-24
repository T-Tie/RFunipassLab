; ModuleID = '<stdin>'
source_filename = "/tmp/tmphp33jyau.cpp"
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
  %N = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #7
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %a, i8 0, i64 400, i1 false)
  store i32 2, ptr %a, align 16, !tbaa !5
  %0 = load i32, ptr %N, align 4, !tbaa !5
  switch i32 %0, label %for.cond.preheader [
    i32 0, label %if.end71.sink.split
    i32 1, label %if.then4
  ]

for.cond.preheader:                               ; preds = %entry
  %smax57 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  br label %for.cond

if.then4:                                         ; preds = %entry
  br label %if.end71.sink.split

for.cond:                                         ; preds = %for.cond.preheader, %for.inc36
  %i.0 = phi i32 [ %inc37, %for.inc36 ], [ 1, %for.cond.preheader ]
  %m.0 = phi i32 [ %add, %for.inc36 ], [ undef, %for.cond.preheader ]
  %exitcond58.not = icmp eq i32 %i.0, %smax57
  br i1 %exitcond58.not, label %for.end38, label %for.cond.i

for.cond.i:                                       ; preds = %for.cond, %for.cond.i
  %indvars.iv47 = phi i32 [ %indvars.iv.next48, %for.cond.i ], [ 99, %for.cond ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.cond.i ], [ 99, %for.cond ]
  %arrayidx.i = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.i
  %1 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %cmp.i = icmp eq i32 %1, 0
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %indvars.iv.next48 = add i32 %indvars.iv47, -1
  br i1 %cmp.i, label %for.cond.i, label %_Z5shumuPi.exit, !llvm.loop !9

_Z5shumuPi.exit:                                  ; preds = %for.cond.i
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv47, i32 -1)
  %2 = add i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond11

for.cond11:                                       ; preds = %for.body13, %_Z5shumuPi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13 ], [ 0, %_Z5shumuPi.exit ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond17, label %for.body13

for.body13:                                       ; preds = %for.cond11
  %arrayidx14 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  store i32 %mul, ptr %arrayidx14, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond11, !llvm.loop !12

for.cond17:                                       ; preds = %for.cond11, %for.cond17.backedge
  %indvars.iv49 = phi i64 [ %5, %for.cond17.backedge ], [ 0, %for.cond11 ]
  %exitcond56 = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond56, label %for.inc36, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %arrayidx21 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv49
  %4 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %4, 9
  %5 = add nuw nsw i64 %indvars.iv49, 1
  br i1 %cmp22, label %if.then23, label %for.cond17.backedge

for.cond17.backedge:                              ; preds = %for.body19, %if.then23
  br label %for.cond17, !llvm.loop !13

if.then23:                                        ; preds = %for.body19
  %arrayidx26 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %5
  %6 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %inc27 = add nsw i32 %6, 1
  store i32 %inc27, ptr %arrayidx26, align 4, !tbaa !5
  %sub30 = add nsw i32 %4, -10
  store i32 %sub30, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.cond17.backedge

for.inc36:                                        ; preds = %for.cond17
  %7 = trunc nsw i64 %indvars.iv.i to i32
  %add = add nsw i32 %7, 1
  %inc37 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

for.end38:                                        ; preds = %for.cond
  %idxprom39 = sext i32 %m.0 to i64
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom39
  %8 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %8, 0
  br i1 %cmp41, label %for.cond44.preheader, label %for.cond58

for.cond44.preheader:                             ; preds = %for.end38
  %9 = zext i32 %m.0 to i64
  br label %for.cond44

for.cond44:                                       ; preds = %for.cond44.preheader, %for.body46
  %indvars.iv60 = phi i64 [ %9, %for.cond44.preheader ], [ %11, %for.body46 ]
  %10 = trunc nuw i64 %indvars.iv60 to i32
  %cmp45 = icmp sgt i32 %10, 0
  br i1 %cmp45, label %for.body46, label %if.end71

for.body46:                                       ; preds = %for.cond44
  %11 = add nsw i64 %indvars.iv60, -1
  %arrayidx48 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %11
  %12 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %call49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  br label %for.cond44, !llvm.loop !15

for.cond58:                                       ; preds = %for.end38, %for.body60
  %i.2 = phi i32 [ %dec65, %for.body60 ], [ %m.0, %for.end38 ]
  %cmp59 = icmp sgt i32 %i.2, -1
  br i1 %cmp59, label %for.body60, label %if.end71

for.body60:                                       ; preds = %for.cond58
  %idxprom61 = zext nneg i32 %i.2 to i64
  %arrayidx62 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %idxprom61
  %13 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %dec65 = add nsw i32 %i.2, -1
  br label %for.cond58, !llvm.loop !16

if.end71.sink.split:                              ; preds = %entry, %if.then4
  %.sink = phi i32 [ 2, %if.then4 ], [ 1, %entry ]
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.sink)
  br label %if.end71

if.end71:                                         ; preds = %for.cond58, %for.cond44, %if.end71.sink.split
  %call5.sink65 = phi ptr [ %call5, %if.end71.sink.split ], [ @_ZSt4cout, %for.cond44 ], [ @_ZSt4cout, %for.cond58 ]
  %vtable.i26 = load ptr, ptr %call5.sink65, align 8, !tbaa !17
  %vbase.offset.ptr.i27 = getelementptr i8, ptr %vtable.i26, i64 -24
  %vbase.offset.i28 = load i64, ptr %vbase.offset.ptr.i27, align 8
  %add.ptr.i29 = getelementptr inbounds i8, ptr %call5.sink65, i64 %vbase.offset.i28
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i29, i8 noundef signext 10)
  %call1.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call5.sink65, i8 noundef signext %call.i)
  %call.i.i31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i30)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z5shumuPi(ptr noundef readonly captures(none) %a) local_unnamed_addr #4 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 99, %entry ]
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %cmp, label %for.cond, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %1 = trunc nsw i64 %indvars.iv to i32
  ret i32 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
