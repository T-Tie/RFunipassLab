; ModuleID = '<stdin>'
source_filename = "/tmp/tmp20hb142r.cpp"
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
  %length = alloca i32, align 4
  %a = alloca [110 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #5
  store i32 0, ptr %length, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 440, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(440) %a, i8 0, i64 440, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %length)
  %0 = load i32, ptr %length, align 4, !tbaa !5
  %cmp68 = icmp sgt i32 %0, 0
  br i1 %cmp68, label %for.body, label %while.end25

while.cond.preheader:                             ; preds = %for.body
  %cmp272 = icmp sgt i32 %1, 1
  br i1 %cmp272, label %while.cond3.preheader, label %while.end25

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [110 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %length, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %while.cond.preheader, !llvm.loop !9

while.cond3.preheader:                            ; preds = %while.cond.preheader, %while.end
  %sec.073 = phi i32 [ %mul, %while.end ], [ 1, %while.cond.preheader ]
  %mul = shl i32 %sec.073, 1
  %invariant.op = mul i32 %sec.073, 3
  %3 = sext i32 %mul to i64
  br label %while.body6

while.body6:                                      ; preds = %while.cond3.preheader, %if.end
  %indvars.iv77 = phi i64 [ 0, %while.cond3.preheader ], [ %indvars.iv.next78, %if.end ]
  %add471 = phi i32 [ %sec.073, %while.cond3.preheader ], [ %add4.reass, %if.end ]
  %arrayidx8 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %indvars.iv77
  %4 = load i32, ptr %arrayidx8, align 8, !tbaa !5
  %idxprom10 = sext i32 %add471 to i64
  %arrayidx11 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %idxprom10
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %4, %5
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.body6
  store i32 %5, ptr %arrayidx8, align 8, !tbaa !5
  store i32 %4, ptr %arrayidx11, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body6
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, %3
  %6 = trunc nsw i64 %indvars.iv77 to i32
  %add4.reass = add i32 %invariant.op, %6
  %cmp5 = icmp slt i32 %add4.reass, %1
  br i1 %cmp5, label %while.body6, label %while.end, !llvm.loop !12

while.end:                                        ; preds = %if.end
  %cmp2 = icmp slt i32 %mul, %1
  br i1 %cmp2, label %while.cond3.preheader, label %while.end25.loopexit, !llvm.loop !13

while.end25.loopexit:                             ; preds = %while.end
  %7 = lshr i32 %mul, 2
  br label %while.end25

while.end25:                                      ; preds = %entry, %while.end25.loopexit, %while.cond.preheader
  %sec.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %7, %while.end25.loopexit ], [ 0, %entry ]
  %8 = load i32, ptr %a, align 16, !tbaa !5
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %vtable.i = load ptr, ptr %call27, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call27, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %9 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %while.end25
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %while.end25
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 56
  %10 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 67
  %11 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %9)
  %vtable.i.i.i = load ptr, ptr %9, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %12 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %12(ptr noundef nonnull align 8 dereferenceable(570) %9, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %11, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call27, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %idxprom29 = zext nneg i32 %sec.0.lcssa to i64
  %arrayidx30 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 0, i64 %idxprom29
  %13 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %mul31 = shl nuw nsw i32 %sec.0.lcssa, 1
  %idxprom32 = zext nneg i32 %mul31 to i64
  %arrayidx33 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 0, i64 %idxprom32
  %14 = load i32, ptr %arrayidx33, align 8, !tbaa !5
  %cmp34 = icmp sgt i32 %13, %14
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %vtable.i28 = load ptr, ptr %call38, align 8, !tbaa !14
  %vbase.offset.ptr.i29 = getelementptr i8, ptr %vtable.i28, i64 -24
  %vbase.offset.i30 = load i64, ptr %vbase.offset.ptr.i29, align 8
  %add.ptr.i31 = getelementptr inbounds i8, ptr %call38, i64 %vbase.offset.i30
  %_M_ctype.i.i32 = getelementptr inbounds nuw i8, ptr %add.ptr.i31, i64 240
  %15 = load ptr, ptr %_M_ctype.i.i32, align 8, !tbaa !16
  %tobool.not.i.i.i33 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i33, label %if.then.i.i.i46, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i34

if.then.i.i.i46:                                  ; preds = %if.then35
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i34: ; preds = %if.then35
  %_M_widen_ok.i.i.i35 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %16 = load i8, ptr %_M_widen_ok.i.i.i35, align 8, !tbaa !34
  %tobool.not.i1.i.i36 = icmp eq i8 %16, 0
  br i1 %tobool.not.i1.i.i36, label %if.end.i.i.i42, label %if.then.i2.i.i37

if.then.i2.i.i37:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i34
  %arrayidx.i.i.i38 = getelementptr inbounds nuw i8, ptr %15, i64 67
  %17 = load i8, ptr %arrayidx.i.i.i38, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

if.end.i.i.i42:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i34
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %15)
  %vtable.i.i.i43 = load ptr, ptr %15, align 8, !tbaa !14
  %vfn.i.i.i44 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i43, i64 48
  %18 = load ptr, ptr %vfn.i.i.i44, align 8
  %call.i.i.i45 = call noundef signext i8 %18(ptr noundef nonnull align 8 dereferenceable(570) %15, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47: ; preds = %if.then.i2.i.i37, %if.end.i.i.i42
  %retval.0.i.i.i39 = phi i8 [ %17, %if.then.i2.i.i37 ], [ %call.i.i.i45, %if.end.i.i.i42 ]
  %call1.i40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call38, i8 noundef signext %retval.0.i.i.i39)
  br label %if.end45

if.else:                                          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %14)
  %vtable.i48 = load ptr, ptr %call43, align 8, !tbaa !14
  %vbase.offset.ptr.i49 = getelementptr i8, ptr %vtable.i48, i64 -24
  %vbase.offset.i50 = load i64, ptr %vbase.offset.ptr.i49, align 8
  %add.ptr.i51 = getelementptr inbounds i8, ptr %call43, i64 %vbase.offset.i50
  %_M_ctype.i.i52 = getelementptr inbounds nuw i8, ptr %add.ptr.i51, i64 240
  %19 = load ptr, ptr %_M_ctype.i.i52, align 8, !tbaa !16
  %tobool.not.i.i.i53 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i53, label %if.then.i.i.i66, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i54

if.then.i.i.i66:                                  ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i54: ; preds = %if.else
  %_M_widen_ok.i.i.i55 = getelementptr inbounds nuw i8, ptr %19, i64 56
  %20 = load i8, ptr %_M_widen_ok.i.i.i55, align 8, !tbaa !34
  %tobool.not.i1.i.i56 = icmp eq i8 %20, 0
  br i1 %tobool.not.i1.i.i56, label %if.end.i.i.i62, label %if.then.i2.i.i57

if.then.i2.i.i57:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i54
  %arrayidx.i.i.i58 = getelementptr inbounds nuw i8, ptr %19, i64 67
  %21 = load i8, ptr %arrayidx.i.i.i58, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67

if.end.i.i.i62:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i54
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %19)
  %vtable.i.i.i63 = load ptr, ptr %19, align 8, !tbaa !14
  %vfn.i.i.i64 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i63, i64 48
  %22 = load ptr, ptr %vfn.i.i.i64, align 8
  %call.i.i.i65 = call noundef signext i8 %22(ptr noundef nonnull align 8 dereferenceable(570) %19, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67: ; preds = %if.then.i2.i.i57, %if.end.i.i.i62
  %retval.0.i.i.i59 = phi i8 [ %21, %if.then.i2.i.i57 ], [ %call.i.i.i65, %if.end.i.i.i62 ]
  %call1.i60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call43, i8 noundef signext %retval.0.i.i.i59)
  br label %if.end45

if.end45:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47
  %call1.i60.sink = phi ptr [ %call1.i60, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67 ], [ %call1.i40, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47 ]
  %call.i.i61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i60.sink)
  call void @llvm.lifetime.end.p0(i64 440, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

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
