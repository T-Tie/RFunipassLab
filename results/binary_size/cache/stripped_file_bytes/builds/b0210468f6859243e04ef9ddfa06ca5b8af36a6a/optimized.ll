; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxfxbbq0v.cpp"
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
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i17 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i17)
  %call.i.i19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i18)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %.fr = freeze i32 %1
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %a, i8 0, i64 400, i1 false)
  store i32 2, ptr %a, align 16
  %cmp4.not = icmp eq i32 %.fr, 0
  br i1 %cmp4.not, label %while.cond.preheader, label %for.cond.preheader

while.cond.preheader:                             ; preds = %for.cond, %if.end
  br label %while.cond

for.cond.preheader:                               ; preds = %if.end
  %sub = add i32 %.fr, -1
  %smax = call i32 @llvm.smax.i32(i32 %.fr, i32 0)
  %smax34 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.cond.cleanup14
  %i.0 = phi i32 [ %inc37, %for.cond.cleanup14 ], [ 0, %for.cond.preheader ]
  %exitcond35.not = icmp eq i32 %i.0, %smax34
  br i1 %exitcond35.not, label %while.cond.preheader, label %for.cond5

for.cond5:                                        ; preds = %for.cond, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond12, label %for.body8

for.body8:                                        ; preds = %for.cond5
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  store i32 %mul, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !11

for.cond12:                                       ; preds = %for.cond5, %for.cond12.backedge
  %indvars.iv28 = phi i64 [ %4, %for.cond12.backedge ], [ 0, %for.cond5 ]
  %exitcond33.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond33.not, label %for.cond.cleanup14, label %for.body15

for.cond.cleanup14:                               ; preds = %for.cond12
  %inc37 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

for.body15:                                       ; preds = %for.cond12
  %arrayidx17 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv28
  %3 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %3, 9
  %4 = add nuw nsw i64 %indvars.iv28, 1
  br i1 %cmp18, label %if.then19, label %for.cond12.backedge

for.cond12.backedge:                              ; preds = %for.body15, %if.then19
  br label %for.cond12, !llvm.loop !15

if.then19:                                        ; preds = %for.body15
  %arrayidx21 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %div = udiv i32 %3, 10
  %add24 = add nsw i32 %5, %div
  store i32 %add24, ptr %arrayidx21, align 4, !tbaa !5
  %rem26 = urem i32 %3, 10
  store i32 %rem26, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.cond12.backedge

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %while.cond ], [ 99, %while.cond.preheader ]
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %indvars.iv36
  %6 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %6, 0
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, -1
  br i1 %cmp41, label %while.cond, label %for.cond43.preheader, !llvm.loop !16

for.cond43.preheader:                             ; preds = %while.cond
  %7 = trunc nsw i64 %indvars.iv36 to i32
  br label %for.cond43

for.cond43:                                       ; preds = %for.cond43.preheader, %for.body49
  %8 = phi i32 [ %.pre39, %for.body49 ], [ %.fr, %for.cond43.preheader ]
  %j42.0 = phi i32 [ %dec54, %for.body49 ], [ %7, %for.cond43.preheader ]
  %cmp44 = icmp sgt i32 %j42.0, -1
  %cmp46 = icmp ne i32 %8, 0
  %9 = select i1 %cmp44, i1 %cmp46, i1 false
  br i1 %9, label %for.body49, label %for.cond.cleanup48

for.cond.cleanup48:                               ; preds = %for.cond43
  %vtable.i20 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i21 = getelementptr i8, ptr %vtable.i20, i64 -24
  %vbase.offset.i22 = load i64, ptr %vbase.offset.ptr.i21, align 8
  %add.ptr.i23 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i22
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i23, i8 noundef signext 10)
  %call1.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i24)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

for.body49:                                       ; preds = %for.cond43
  %idxprom50 = zext nneg i32 %j42.0 to i64
  %arrayidx51 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %idxprom50
  %10 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10)
  %dec54 = add nsw i32 %j42.0, -1
  %.pre39 = load i32, ptr %n, align 4
  br label %for.cond43, !llvm.loop !17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
