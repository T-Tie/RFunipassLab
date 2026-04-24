; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_9s95ecz.cpp"
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3cmpPKvS0_(ptr noundef readonly captures(none) %a, ptr noundef readonly captures(none) %b) #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %1 = load i32, ptr %b, align 4, !tbaa !5
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z5chuliPii(ptr noundef readonly captures(none) %p, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %cmp.not20 = icmp sgt i32 %i, 0
  br i1 %cmp.not20, label %for.body.lr.ph, label %cleanup27

for.body.lr.ph:                                   ; preds = %entry
  %invariant.gep = getelementptr i8, ptr %p, i64 -4
  %0 = zext nneg i32 %i to i64
  %gep = getelementptr i32, ptr %invariant.gep, i64 %0
  %1 = load i32, ptr %gep, align 4, !tbaa !5
  %sext = zext nneg i32 %i to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup ]
  %count.021 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %cleanup ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  %cmp3 = icmp sgt i32 %mul, %1
  br i1 %cmp3, label %cleanup27, label %for.body7

for.body7:                                        ; preds = %for.body, %if.end15
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %if.end15 ], [ %indvars.iv, %for.body ]
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv25
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %3, %mul
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.body7
  %inc = add nsw i32 %count.021, 1
  br label %cleanup

if.end15:                                         ; preds = %for.body7
  %cmp21 = icmp sle i32 %3, %mul
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %4 = icmp samesign ult i64 %indvars.iv.next26, %sext
  %or.cond = select i1 %cmp21, i1 %4, i1 false
  br i1 %or.cond, label %for.body7, label %cleanup, !llvm.loop !9

cleanup:                                          ; preds = %if.end15, %if.then14
  %count.1 = phi i32 [ %inc, %if.then14 ], [ %count.021, %if.end15 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %0
  br i1 %exitcond.not, label %cleanup27, label %for.body, !llvm.loop !12

cleanup27:                                        ; preds = %cleanup, %for.body, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %count.021, %for.body ], [ %count.1, %cleanup ]
  ret i32 %count.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca [20 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %a) #6
  %call21 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %vtable22 = load ptr, ptr %call21, align 8, !tbaa !13
  %vbase.offset.ptr23 = getelementptr i8, ptr %vtable22, i64 -24
  %vbase.offset24 = load i64, ptr %vbase.offset.ptr23, align 8
  %add.ptr25 = getelementptr inbounds i8, ptr %call21, i64 %vbase.offset24
  %_M_streambuf_state.i.i.i26 = getelementptr inbounds nuw i8, ptr %add.ptr25, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i26, align 8, !tbaa !15
  %and.i.i.i27 = and i32 %0, 5
  %cmp.i.not.i28 = icmp eq i32 %and.i.i.i27, 0
  %1 = load i32, ptr %a, align 16
  %cmp29 = icmp ne i32 %1, -1
  %2 = select i1 %cmp.i.not.i28, i1 %cmp29, i1 false
  br i1 %2, label %while.cond3.preheader.lr.ph, label %while.end20

while.cond3.preheader.lr.ph:                      ; preds = %entry
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %invariant.gep.i = getelementptr i8, ptr %a, i64 -4
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %while.cond3.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %call59 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx48)
  %vtable610 = load ptr, ptr %call59, align 8, !tbaa !13
  %vbase.offset.ptr711 = getelementptr i8, ptr %vtable610, i64 -24
  %vbase.offset812 = load i64, ptr %vbase.offset.ptr711, align 8
  %add.ptr913 = getelementptr inbounds i8, ptr %call59, i64 %vbase.offset812
  %_M_streambuf_state.i.i.i514 = getelementptr inbounds nuw i8, ptr %add.ptr913, i64 32
  %3 = load i32, ptr %_M_streambuf_state.i.i.i514, align 8, !tbaa !15
  %and.i.i.i615 = and i32 %3, 5
  %cmp.i.not.i716 = icmp eq i32 %and.i.i.i615, 0
  br i1 %cmp.i.not.i716, label %land.rhs11, label %while.end

while.cond3:                                      ; preds = %land.rhs11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx4 = getelementptr inbounds nuw [20 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx4)
  %vtable6 = load ptr, ptr %call5, align 8, !tbaa !13
  %vbase.offset.ptr7 = getelementptr i8, ptr %vtable6, i64 -24
  %vbase.offset8 = load i64, ptr %vbase.offset.ptr7, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %call5, i64 %vbase.offset8
  %_M_streambuf_state.i.i.i5 = getelementptr inbounds nuw i8, ptr %add.ptr9, i64 32
  %4 = load i32, ptr %_M_streambuf_state.i.i.i5, align 8, !tbaa !15
  %and.i.i.i6 = and i32 %4, 5
  %cmp.i.not.i7 = icmp eq i32 %and.i.i.i6, 0
  br i1 %cmp.i.not.i7, label %land.rhs11, label %while.end, !llvm.loop !26

land.rhs11:                                       ; preds = %while.cond3.preheader, %while.cond3
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond3 ], [ 1, %while.cond3.preheader ]
  %arrayidx419 = phi ptr [ %arrayidx4, %while.cond3 ], [ %arrayidx48, %while.cond3.preheader ]
  %5 = load i32, ptr %arrayidx419, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.end, label %while.cond3

while.end:                                        ; preds = %land.rhs11, %while.cond3, %while.cond3.preheader
  %idxprom.lcssa = phi i64 [ 1, %while.cond3.preheader ], [ %indvars.iv.next, %while.cond3 ], [ %indvars.iv, %land.rhs11 ]
  call void @qsort(ptr noundef nonnull %a, i64 noundef %idxprom.lcssa, i64 noundef 4, ptr noundef nonnull @_Z3cmpPKvS0_)
  %gep.i = getelementptr i32, ptr %invariant.gep.i, i64 %idxprom.lcssa
  %6 = load i32, ptr %gep.i, align 4, !tbaa !5
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i, %while.end
  %indvars.iv.i = phi i64 [ 0, %while.end ], [ %indvars.iv.next.i, %cleanup.i ]
  %count.021.i = phi i32 [ 0, %while.end ], [ %count.1.i, %cleanup.i ]
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv.i
  %7 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %mul.i = shl nsw i32 %7, 1
  %cmp3.i = icmp sgt i32 %mul.i, %6
  br i1 %cmp3.i, label %_Z5chuliPii.exit, label %for.body7.i

for.body7.i:                                      ; preds = %for.body.i, %if.end15.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %if.end15.i ], [ %indvars.iv.i, %for.body.i ]
  %arrayidx9.i = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv25.i
  %8 = load i32, ptr %arrayidx9.i, align 4, !tbaa !5
  %cmp13.i = icmp eq i32 %8, %mul.i
  br i1 %cmp13.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %for.body7.i
  %inc.i = add nsw i32 %count.021.i, 1
  br label %cleanup.i

if.end15.i:                                       ; preds = %for.body7.i
  %cmp21.i = icmp sle i32 %8, %mul.i
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  %9 = icmp samesign ult i64 %indvars.iv.next26.i, %idxprom.lcssa
  %or.cond.i = select i1 %cmp21.i, i1 %9, i1 false
  br i1 %or.cond.i, label %for.body7.i, label %cleanup.i, !llvm.loop !9

cleanup.i:                                        ; preds = %if.end15.i, %if.then14.i
  %count.1.i = phi i32 [ %inc.i, %if.then14.i ], [ %count.021.i, %if.end15.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %idxprom.lcssa
  br i1 %exitcond.not.i, label %_Z5chuliPii.exit, label %for.body.i, !llvm.loop !12

_Z5chuliPii.exit:                                 ; preds = %for.body.i, %cleanup.i
  %count.0.lcssa.i = phi i32 [ %count.021.i, %for.body.i ], [ %count.1.i, %cleanup.i ]
  %call18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count.0.lcssa.i)
  %vtable.i = load ptr, ptr %call18, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call18, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %10 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !27
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %_Z5chuliPii.exit
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_Z5chuliPii.exit
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 56
  %11 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !35
  %tobool.not.i1.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 67
  %12 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !41
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %10)
  %vtable.i.i.i = load ptr, ptr %10, align 8, !tbaa !13
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %13 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %13(ptr noundef nonnull align 8 dereferenceable(570) %10, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %12, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call18, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %vtable = load ptr, ptr %call, align 8, !tbaa !13
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %14 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !15
  %and.i.i.i = and i32 %14, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  %15 = load i32, ptr %a, align 16
  %cmp = icmp ne i32 %15, -1
  %16 = select i1 %cmp.i.not.i, i1 %cmp, i1 false
  br i1 %16, label %while.cond3.preheader, label %while.end20, !llvm.loop !42

while.end20:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %a) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!15 = !{!16, !19, i64 32}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !7, i64 64, !6, i64 192, !23, i64 200, !24, i64 208}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!26 = distinct !{!26, !10, !11}
!27 = !{!28, !32, i64 240}
!28 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !16, i64 0, !29, i64 216, !7, i64 224, !30, i64 225, !31, i64 232, !32, i64 240, !33, i64 248, !34, i64 256}
!29 = !{!"p1 _ZTSSo", !21, i64 0}
!30 = !{!"bool", !7, i64 0}
!31 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !21, i64 0}
!32 = !{!"p1 _ZTSSt5ctypeIcE", !21, i64 0}
!33 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !21, i64 0}
!34 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !21, i64 0}
!35 = !{!36, !7, i64 56}
!36 = !{!"_ZTSSt5ctypeIcE", !37, i64 0, !38, i64 16, !30, i64 24, !39, i64 32, !39, i64 40, !40, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!37 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!38 = !{!"p1 _ZTS15__locale_struct", !21, i64 0}
!39 = !{!"p1 int", !21, i64 0}
!40 = !{!"p1 short", !21, i64 0}
!41 = !{!7, !7, i64 0}
!42 = distinct !{!42, !10, !11}
