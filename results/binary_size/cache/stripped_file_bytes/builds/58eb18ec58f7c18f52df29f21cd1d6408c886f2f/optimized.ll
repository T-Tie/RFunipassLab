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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %m, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca [40 x i8], i64 %4, align 16
  %cmp.not.not91 = icmp sgt i32 %3, 0
  br i1 %cmp.not.not91, label %if.else34.i, label %for.end60

for.cond3.preheader:                              ; preds = %if.else34.i
  %cmp5.not.not93 = icmp sgt i32 %5, 0
  br i1 %cmp5.not.not93, label %for.body6.preheader, label %for.end60

for.body6.preheader:                              ; preds = %for.cond3.preheader
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %for.body6

if.else34.i:                                      ; preds = %entry, %if.else34.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else34.i ], [ 0, %entry ]
  %add.ptr = getelementptr inbounds nuw [40 x i8], ptr %vla1, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %add.ptr, i64 noundef 9223372036854775807)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %m, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp.not.not, label %if.else34.i, label %for.cond3.preheader, !llvm.loop !9

for.body6:                                        ; preds = %for.body6.preheader, %for.body6
  %indvars.iv110 = phi i64 [ 0, %for.body6.preheader ], [ %indvars.iv.next111, %for.body6 ]
  %arrayidx = getelementptr inbounds nuw [40 x i8], ptr %vla1, i64 %indvars.iv110
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx) #7
  %conv = trunc i64 %call8 to i32
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv110
  store i32 %conv, ptr %add.ptr10, align 4, !tbaa !5
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond.not, label %for.body16, label %for.body6, !llvm.loop !12

for.body16:                                       ; preds = %for.body6, %for.inc58
  %7 = phi i32 [ %19, %for.inc58 ], [ %5, %for.body6 ]
  %c.0107 = phi i32 [ %c.1, %for.inc58 ], [ 0, %for.body6 ]
  %i.2106 = phi i32 [ %inc59, %for.inc58 ], [ 0, %for.body6 ]
  %k.0105 = phi i32 [ %k.1, %for.inc58 ], [ 0, %for.body6 ]
  %idxprom17 = sext i32 %i.2106 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %vla, i64 %idxprom17
  %8 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add = add nsw i32 %8, %k.0105
  %add19 = add nsw i32 %add, 1
  %cmp20 = icmp sgt i32 %add, 80
  br i1 %cmp20, label %for.cond21.preheader, label %if.else

for.cond21.preheader:                             ; preds = %for.body16
  %sub22 = add nsw i32 %i.2106, -1
  %cmp2398 = icmp slt i32 %c.0107, %sub22
  br i1 %cmp2398, label %for.body24.preheader, label %for.end32

for.body24.preheader:                             ; preds = %for.cond21.preheader
  %9 = sext i32 %c.0107 to i64
  br label %for.body24

for.body24:                                       ; preds = %for.body24.preheader, %for.body24
  %indvars.iv117 = phi i64 [ %9, %for.body24.preheader ], [ %indvars.iv.next118, %for.body24 ]
  %add.ptr26 = getelementptr inbounds [40 x i8], ptr %vla1, i64 %indvars.iv117
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr26) #6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr26, i64 noundef %call.i.i)
  %call1.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1
  %lftr.wideiv120 = trunc i64 %indvars.iv.next118 to i32
  %exitcond121.not = icmp eq i32 %sub22, %lftr.wideiv120
  br i1 %exitcond121.not, label %for.end32, label %for.body24, !llvm.loop !13

for.end32:                                        ; preds = %for.body24, %for.cond21.preheader
  %j.0.lcssa = phi i32 [ %c.0107, %for.cond21.preheader ], [ %sub22, %for.body24 ]
  %idx.ext33 = sext i32 %j.0.lcssa to i64
  %add.ptr34 = getelementptr inbounds [40 x i8], ptr %vla1, i64 %idx.ext33
  %call.i.i37 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr34) #6
  %call1.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr34, i64 noundef %call.i.i37)
  %vtable.i64 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i65 = getelementptr i8, ptr %vtable.i64, i64 -24
  %vbase.offset.i66 = load i64, ptr %vbase.offset.ptr.i65, align 8
  %gep103 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i66
  %10 = load ptr, ptr %gep103, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end32
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end32
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 56
  %11 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 67
  %12 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %for.inc58.sink.split

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %10)
  %vtable.i.i.i = load ptr, ptr %10, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %13 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %13(ptr noundef nonnull align 8 dereferenceable(570) %10, i8 noundef signext 10)
  br label %for.inc58.sink.split

if.else:                                          ; preds = %for.body16
  %sub38 = add nsw i32 %7, -1
  %cmp39 = icmp eq i32 %i.2106, %sub38
  br i1 %cmp39, label %for.cond41.preheader, label %for.inc58

for.cond41.preheader:                             ; preds = %if.else
  %cmp4295 = icmp slt i32 %c.0107, %i.2106
  %14 = sext i32 %c.0107 to i64
  br i1 %cmp4295, label %for.body43, label %for.end51

for.body43:                                       ; preds = %for.cond41.preheader, %for.body43
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.body43 ], [ %14, %for.cond41.preheader ]
  %add.ptr45 = getelementptr inbounds [40 x i8], ptr %vla1, i64 %indvars.iv113
  %call.i.i45 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr45) #6
  %call1.i46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr45, i64 noundef %call.i.i45)
  %call1.i54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next114 = add nsw i64 %indvars.iv113, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next114 to i32
  %exitcond116.not = icmp eq i32 %i.2106, %lftr.wideiv
  br i1 %exitcond116.not, label %for.end51, label %for.body43, !llvm.loop !41

for.end51:                                        ; preds = %for.body43, %for.cond41.preheader
  %idx.ext52.pre-phi = phi i64 [ %14, %for.cond41.preheader ], [ %idxprom17, %for.body43 ]
  %add.ptr53 = getelementptr inbounds [40 x i8], ptr %vla1, i64 %idx.ext52.pre-phi
  %call.i.i55 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr53) #6
  %call1.i56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr53, i64 noundef %call.i.i55)
  %vtable.i70 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i71 = getelementptr i8, ptr %vtable.i70, i64 -24
  %vbase.offset.i72 = load i64, ptr %vbase.offset.ptr.i71, align 8
  %gep102 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i72
  %15 = load ptr, ptr %gep102, align 8, !tbaa !16
  %tobool.not.i.i.i75 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i75, label %if.then.i.i.i88, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76

if.then.i.i.i88:                                  ; preds = %for.end51
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76: ; preds = %for.end51
  %_M_widen_ok.i.i.i77 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %16 = load i8, ptr %_M_widen_ok.i.i.i77, align 8, !tbaa !34
  %tobool.not.i1.i.i78 = icmp eq i8 %16, 0
  br i1 %tobool.not.i1.i.i78, label %if.end.i.i.i84, label %if.then.i2.i.i79

if.then.i2.i.i79:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76
  %arrayidx.i.i.i80 = getelementptr inbounds nuw i8, ptr %15, i64 67
  %17 = load i8, ptr %arrayidx.i.i.i80, align 1, !tbaa !40
  br label %for.inc58.sink.split

if.end.i.i.i84:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %15)
  %vtable.i.i.i85 = load ptr, ptr %15, align 8, !tbaa !14
  %vfn.i.i.i86 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i85, i64 48
  %18 = load ptr, ptr %vfn.i.i.i86, align 8
  %call.i.i.i87 = call noundef signext i8 %18(ptr noundef nonnull align 8 dereferenceable(570) %15, i8 noundef signext 10)
  br label %for.inc58.sink.split

for.inc58.sink.split:                             ; preds = %if.end.i.i.i84, %if.then.i2.i.i79, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i.sink = phi i8 [ %12, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %17, %if.then.i2.i.i79 ], [ %call.i.i.i87, %if.end.i.i.i84 ]
  %k.1.ph = phi i32 [ 0, %if.then.i2.i.i ], [ 0, %if.end.i.i.i ], [ %add19, %if.then.i2.i.i79 ], [ %add19, %if.end.i.i.i84 ]
  %i.3.ph = phi i32 [ %sub22, %if.then.i2.i.i ], [ %sub22, %if.end.i.i.i ], [ %i.2106, %if.then.i2.i.i79 ], [ %i.2106, %if.end.i.i.i84 ]
  %c.1.ph = phi i32 [ %i.2106, %if.then.i2.i.i ], [ %i.2106, %if.end.i.i.i ], [ %c.0107, %if.then.i2.i.i79 ], [ %c.0107, %if.end.i.i.i84 ]
  %call1.i68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i.sink)
  %call.i.i69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i68)
  br label %for.inc58

for.inc58:                                        ; preds = %for.inc58.sink.split, %if.else
  %k.1 = phi i32 [ %add19, %if.else ], [ %k.1.ph, %for.inc58.sink.split ]
  %i.3 = phi i32 [ %i.2106, %if.else ], [ %i.3.ph, %for.inc58.sink.split ]
  %c.1 = phi i32 [ %c.0107, %if.else ], [ %c.1.ph, %for.inc58.sink.split ]
  %inc59 = add nsw i32 %i.3, 1
  %19 = load i32, ptr %m, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %inc59, %19
  br i1 %cmp15, label %for.body16, label %for.end60, !llvm.loop !42

for.end60:                                        ; preds = %for.inc58, %entry, %for.cond3.preheader
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #6
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { noreturn }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!17, !31, i64 240}
!17 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0, !28, i64 216, !7, i64 224, !29, i64 225, !30, i64 232, !31, i64 240, !32, i64 248, !33, i64 256}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !7, i64 64, !6, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = !{!"p1 _ZTSSo", !23, i64 0}
!29 = !{!"bool", !7, i64 0}
!30 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 0}
!31 = !{!"p1 _ZTSSt5ctypeIcE", !23, i64 0}
!32 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!33 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!34 = !{!35, !7, i64 56}
!35 = !{!"_ZTSSt5ctypeIcE", !36, i64 0, !37, i64 16, !29, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!36 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!37 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!38 = !{!"p1 int", !23, i64 0}
!39 = !{!"p1 short", !23, i64 0}
!40 = !{!7, !7, i64 0}
!41 = distinct !{!41, !10, !11}
!42 = distinct !{!42, !10, !11}
