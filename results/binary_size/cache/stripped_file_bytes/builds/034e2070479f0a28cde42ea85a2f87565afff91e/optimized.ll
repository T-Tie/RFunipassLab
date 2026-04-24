; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcsvu213f.cpp"
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
@num = dso_local local_unnamed_addr global [200 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @_Z6searchPA5_ci(ptr noundef readonly captures(none) %s, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %j to i64
  %arrayidx = getelementptr inbounds [5 x i8], ptr %s, i64 %idxprom
  %0 = load i32, ptr @n, align 4
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %smax18 = tail call i32 @llvm.smax.i32(i32 %j, i32 1)
  %wide.trip.count19 = zext nneg i32 %smax18 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc29 ], [ 1, %entry ]
  %exitcond20.not = icmp eq i64 %indvars.iv15, %wide.trip.count19
  br i1 %exitcond20.not, label %cleanup35, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv15
  %2 = load i8, ptr %arrayidx3, align 1, !tbaa !5
  %cmp6 = icmp eq i8 %1, %2
  br i1 %cmp6, label %for.cond7, label %for.inc29

for.cond7:                                        ; preds = %for.body, %for.body10
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10 ], [ 1, %for.body ]
  %count.0 = phi i32 [ %spec.select, %for.body10 ], [ 1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup9, label %for.body10

for.cond.cleanup9:                                ; preds = %for.cond7
  %cmp23 = icmp eq i32 %count.0, 0
  br i1 %cmp23, label %for.inc29, label %cleanup35

for.body10:                                       ; preds = %for.cond7
  %arrayidx14 = getelementptr inbounds [5 x i8], ptr %s, i64 %idxprom, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx14, align 1, !tbaa !5
  %arrayidx19 = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv15, i64 %indvars.iv
  %4 = load i8, ptr %arrayidx19, align 1, !tbaa !5
  %cmp21.not = icmp eq i8 %3, %4
  %spec.select = select i1 %cmp21.not, i32 %count.0, i32 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond7, !llvm.loop !8

for.inc29:                                        ; preds = %for.body, %for.cond.cleanup9
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond, !llvm.loop !11

cleanup35:                                        ; preds = %for.cond, %for.cond.cleanup9
  %indvars.iv15.lcssa21.sink = phi i64 [ %indvars.iv15, %for.cond.cleanup9 ], [ %idxprom, %for.cond ]
  %arrayidx26 = getelementptr inbounds [200 x i32], ptr @num, i64 0, i64 %indvars.iv15.lcssa21.sink
  %5 = load i32, ptr %arrayidx26, align 4, !tbaa !12
  %inc27 = add nsw i32 %5, 1
  store i32 %inc27, ptr %arrayidx26, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %__c.addr.i = alloca i8, align 1
  %s = alloca [200 x [5 x i8]], align 16
  %c = alloca [500 x i8], align 16
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %s) #6
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %c) #6
  %call1 = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 1, %entry ]
  %call2 = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %conv = trunc i32 %call2 to i8
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %c, i64 0, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !5
  %sext.mask = and i32 %call2, 255
  %cmp.not = icmp eq i32 %sext.mask, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp.not, label %for.cond.preheader, label %while.cond, !llvm.loop !14

for.cond.preheader:                               ; preds = %while.cond
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.cond.cleanup7
  %indvars.iv51 = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next52, %for.cond.cleanup7 ]
  %1 = load i32, ptr @n, align 4, !tbaa !12
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  %2 = sext i32 %add to i64
  %cmp4.not = icmp sgt i64 %indvars.iv51, %2
  br i1 %cmp4.not, label %for.cond21, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv47 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next48, %for.body8 ]
  %exitcond.not = icmp eq i64 %indvars.iv47, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup7, label %for.body8

for.cond.cleanup7:                                ; preds = %for.cond5
  %3 = trunc nuw nsw i64 %indvars.iv51 to i32
  call void @_Z6searchPA5_ci(ptr noundef nonnull %s, i32 noundef %3)
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond, !llvm.loop !15

for.body8:                                        ; preds = %for.cond5
  %4 = add nuw nsw i64 %indvars.iv47, %indvars.iv51
  %arrayidx11 = getelementptr inbounds nuw [500 x i8], ptr %c, i64 0, i64 %4
  %5 = load i8, ptr %arrayidx11, align 1, !tbaa !5
  %arrayidx15 = getelementptr inbounds nuw [200 x [5 x i8]], ptr %s, i64 0, i64 %indvars.iv51, i64 %indvars.iv47
  store i8 %5, ptr %arrayidx15, align 1, !tbaa !5
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond5, !llvm.loop !16

for.cond21:                                       ; preds = %for.cond, %for.body26
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.body26 ], [ 1, %for.cond ]
  %max.0 = phi i32 [ %spec.select, %for.body26 ], [ 0, %for.cond ]
  %cmp24.not = icmp sgt i64 %indvars.iv54, %2
  br i1 %cmp24.not, label %for.cond.cleanup25, label %for.body26

for.cond.cleanup25:                               ; preds = %for.cond21
  %cmp35 = icmp eq i32 %max.0, 1
  br i1 %cmp35, label %if.then36, label %if.else

for.body26:                                       ; preds = %for.cond21
  %arrayidx28 = getelementptr inbounds nuw [200 x i32], ptr @num, i64 0, i64 %indvars.iv54
  %6 = load i32, ptr %arrayidx28, align 4, !tbaa !12
  %spec.select = tail call i32 @llvm.smax.i32(i32 %6, i32 %max.0)
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond21, !llvm.loop !17

if.then36:                                        ; preds = %for.cond.cleanup25
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i26 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i27 = getelementptr i8, ptr %vtable.i26, i64 -24
  %vbase.offset.i28 = load i64, ptr %vbase.offset.ptr.i27, align 8
  %add.ptr.i29 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i28
  %call.i30 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i29, i8 noundef signext 10)
  %call1.i31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i30)
  %call.i.i32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i31)
  br label %if.end70

if.else:                                          ; preds = %for.cond.cleanup25
  %call39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %vtable.i33 = load ptr, ptr %call39, align 8, !tbaa !18
  %vbase.offset.ptr.i34 = getelementptr i8, ptr %vtable.i33, i64 -24
  %vbase.offset.i35 = load i64, ptr %vbase.offset.ptr.i34, align 8
  %add.ptr.i36 = getelementptr inbounds i8, ptr %call39, i64 %vbase.offset.i35
  %call.i = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i36, i8 noundef signext 10)
  %call1.i37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call39, i8 noundef signext %call.i)
  %call.i.i38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i37)
  br label %for.cond42

for.cond42:                                       ; preds = %if.end65, %if.else
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %if.end65 ], [ 1, %if.else ]
  %7 = load i32, ptr @n, align 4, !tbaa !12
  %sub43 = sub nsw i32 %0, %7
  %8 = sext i32 %sub43 to i64
  %cmp45.not = icmp sgt i64 %indvars.iv60, %8
  br i1 %cmp45.not, label %if.end70, label %for.body47

for.body47:                                       ; preds = %for.cond42
  %arrayidx49 = getelementptr inbounds nuw [200 x i32], ptr @num, i64 0, i64 %indvars.iv60
  %9 = load i32, ptr %arrayidx49, align 4, !tbaa !12
  %cmp50 = icmp eq i32 %9, %max.0
  br i1 %cmp50, label %for.cond53, label %if.end65

for.cond53:                                       ; preds = %for.body47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %10 = phi i32 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %7, %for.body47 ]
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %for.body47 ]
  %11 = sext i32 %10 to i64
  %cmp54 = icmp slt i64 %indvars.iv57, %11
  br i1 %cmp54, label %for.body56, label %if.end65

for.body56:                                       ; preds = %for.cond53
  %arrayidx60 = getelementptr inbounds nuw [200 x [5 x i8]], ptr %s, i64 0, i64 %indvars.iv60, i64 %indvars.iv57
  %12 = load i8, ptr %arrayidx60, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %12, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %13 = load i64, ptr %gep, align 8, !tbaa !20
  %cmp.not.i = icmp eq i64 %13, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body56
  %call1.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body56
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %12)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !12
  br label %for.cond53, !llvm.loop !31

if.end65:                                         ; preds = %for.cond53, %for.body47
  %vtable.i39 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i40 = getelementptr i8, ptr %vtable.i39, i64 -24
  %vbase.offset.i41 = load i64, ptr %vbase.offset.ptr.i40, align 8
  %add.ptr.i42 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i41
  %call.i43 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i42, i8 noundef signext 10)
  %call1.i44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i43)
  %call.i.i45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i44)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond42, !llvm.loop !32

if.end70:                                         ; preds = %for.cond42, %if.then36
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %s) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !7, i64 0}
!20 = !{!21, !22, i64 16}
!21 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !23, i64 24, !24, i64 28, !24, i64 32, !25, i64 40, !27, i64 48, !6, i64 64, !13, i64 192, !28, i64 200, !29, i64 208}
!22 = !{!"long", !6, i64 0}
!23 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!24 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!25 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!26 = !{!"any pointer", !6, i64 0}
!27 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !22, i64 8}
!28 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!29 = !{!"_ZTSSt6locale", !30, i64 0}
!30 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
!31 = distinct !{!31, !9, !10}
!32 = distinct !{!32, !9, !10}
