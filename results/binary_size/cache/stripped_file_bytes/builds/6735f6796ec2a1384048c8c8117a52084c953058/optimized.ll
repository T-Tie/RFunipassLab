; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1j5p72um.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %m, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca [40 x i8], i64 %4, align 16
  br label %for.cond

for.cond:                                         ; preds = %if.else34.i, %entry
  %5 = phi i32 [ %.pre, %if.else34.i ], [ %3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else34.i ], [ 0, %entry ]
  %6 = sext i32 %5 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %6
  br i1 %cmp.not.not, label %if.else34.i, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond3

if.else34.i:                                      ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw [40 x i8], ptr %vla1, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %add.ptr, i64 noundef 9223372036854775807)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body6
  %indvars.iv71 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next72, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv71, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14, label %for.body6

for.body6:                                        ; preds = %for.cond3
  %arrayidx = getelementptr inbounds nuw [40 x i8], ptr %vla1, i64 %indvars.iv71
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx) #8
  %conv = trunc i64 %call8 to i32
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv71
  store i32 %conv, ptr %add.ptr10, align 4, !tbaa !5
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond3, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond3, %for.inc58
  %7 = phi i32 [ %.pre87, %for.inc58 ], [ %5, %for.cond3 ]
  %k.0 = phi i32 [ %k.1, %for.inc58 ], [ 0, %for.cond3 ]
  %i.2 = phi i32 [ %inc59, %for.inc58 ], [ 0, %for.cond3 ]
  %c.0 = phi i32 [ %c.1, %for.inc58 ], [ 0, %for.cond3 ]
  %cmp15 = icmp slt i32 %i.2, %7
  br i1 %cmp15, label %for.body16, label %for.end60

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %i.2 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %vla, i64 %idxprom17
  %8 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add = add nsw i32 %8, %k.0
  %add19 = add nsw i32 %add, 1
  %cmp20 = icmp sgt i32 %add, 80
  br i1 %cmp20, label %for.cond21.preheader, label %if.else

for.cond21.preheader:                             ; preds = %for.body16
  %sub22 = add nsw i32 %i.2, -1
  %9 = sext i32 %c.0 to i64
  %smax84 = call i32 @llvm.smax.i32(i32 %c.0, i32 %sub22)
  %wide.trip.count85 = sext i32 %smax84 to i64
  br label %for.cond21

for.cond21:                                       ; preds = %for.cond21.preheader, %for.body24
  %indvars.iv81 = phi i64 [ %9, %for.cond21.preheader ], [ %indvars.iv.next82, %for.body24 ]
  %exitcond86.not = icmp eq i64 %indvars.iv81, %wide.trip.count85
  br i1 %exitcond86.not, label %for.inc58.sink.split, label %for.body24

for.body24:                                       ; preds = %for.cond21
  %add.ptr26 = getelementptr inbounds [40 x i8], ptr %vla1, i64 %indvars.iv81
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr26) #7
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr26, i64 noundef %call.i.i)
  %call1.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1
  br label %for.cond21, !llvm.loop !13

if.else:                                          ; preds = %for.body16
  %sub38 = add nsw i32 %7, -1
  %cmp39 = icmp eq i32 %i.2, %sub38
  br i1 %cmp39, label %for.cond41.preheader, label %for.inc58

for.cond41.preheader:                             ; preds = %if.else
  %10 = sext i32 %c.0 to i64
  %smax78 = call i32 @llvm.smax.i32(i32 %c.0, i32 %i.2)
  %wide.trip.count79 = sext i32 %smax78 to i64
  br label %for.cond41

for.cond41:                                       ; preds = %for.cond41.preheader, %for.body43
  %indvars.iv75 = phi i64 [ %10, %for.cond41.preheader ], [ %indvars.iv.next76, %for.body43 ]
  %exitcond80.not = icmp eq i64 %indvars.iv75, %wide.trip.count79
  br i1 %exitcond80.not, label %for.inc58.sink.split, label %for.body43

for.body43:                                       ; preds = %for.cond41
  %add.ptr45 = getelementptr inbounds [40 x i8], ptr %vla1, i64 %indvars.iv75
  %call.i.i41 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr45) #7
  %call1.i42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr45, i64 noundef %call.i.i41)
  %call1.i48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1
  br label %for.cond41, !llvm.loop !14

for.inc58.sink.split:                             ; preds = %for.cond41, %for.cond21
  %wide.trip.count85.sink = phi i64 [ %wide.trip.count85, %for.cond21 ], [ %wide.trip.count79, %for.cond41 ]
  %k.1.ph = phi i32 [ 0, %for.cond21 ], [ %add19, %for.cond41 ]
  %i.3.ph = phi i32 [ %sub22, %for.cond21 ], [ %i.2, %for.cond41 ]
  %c.1.ph = phi i32 [ %i.2, %for.cond21 ], [ %c.0, %for.cond41 ]
  %add.ptr34 = getelementptr inbounds [40 x i8], ptr %vla1, i64 %wide.trip.count85.sink
  %call.i.i35 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr34) #7
  %call1.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr34, i64 noundef %call.i.i35)
  %vtable.i56 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i57 = getelementptr i8, ptr %vtable.i56, i64 -24
  %vbase.offset.i58 = load i64, ptr %vbase.offset.ptr.i57, align 8
  %add.ptr.i59 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i58
  %call.i60 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i59, i8 noundef signext 10)
  %call1.i61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i60)
  %call.i.i62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i61)
  br label %for.inc58

for.inc58:                                        ; preds = %for.inc58.sink.split, %if.else
  %k.1 = phi i32 [ %add19, %if.else ], [ %k.1.ph, %for.inc58.sink.split ]
  %i.3 = phi i32 [ %i.2, %if.else ], [ %i.3.ph, %for.inc58.sink.split ]
  %c.1 = phi i32 [ %c.0, %if.else ], [ %c.1.ph, %for.inc58.sink.split ]
  %inc59 = add nsw i32 %i.3, 1
  %.pre87 = load i32, ptr %m, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !17

for.end60:                                        ; preds = %for.cond14
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = distinct !{!17, !10, !11}
