; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcxlvgumc.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %str = alloca [20001 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 80004, ptr nonnull %str) #4
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp23 = icmp sgt i32 %0, 0
  br i1 %cmp23, label %for.body, label %for.cond.cleanup5

for.cond3.preheader:                              ; preds = %for.body
  %cmp429 = icmp sgt i32 %2, 1
  br i1 %cmp429, label %for.cond7.preheader.preheader, label %for.cond.cleanup5

for.cond7.preheader.preheader:                    ; preds = %for.cond3.preheader
  %1 = add nsw i32 %2, -2
  br label %for.cond7.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %str, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond3.preheader, !llvm.loop !9

for.cond7.preheader:                              ; preds = %for.cond7.preheader.preheader, %cleanup
  %i2.031 = phi i32 [ %i2.1, %cleanup ], [ 1, %for.cond7.preheader.preheader ]
  %num.030 = phi i32 [ %num.1, %cleanup ], [ 0, %for.cond7.preheader.preheader ]
  %cmp825 = icmp sgt i32 %i2.031, 0
  br i1 %cmp825, label %for.body10.lr.ph, label %for.cond.cleanup9

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %idxprom13 = zext nneg i32 %i2.031 to i64
  %arrayidx14 = getelementptr inbounds nuw [20001 x i32], ptr %str, i64 0, i64 %idxprom13
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  br label %for.body10

for.cond.cleanup5:                                ; preds = %cleanup, %entry, %for.cond3.preheader
  %num.0.lcssa = phi i32 [ 0, %for.cond3.preheader ], [ 0, %entry ], [ %num.1, %cleanup ]
  %5 = load i32, ptr %str, align 16, !tbaa !5
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %sub4133 = sub nsw i32 %6, %num.0.lcssa
  %cmp4234 = icmp sgt i32 %sub4133, 1
  br i1 %cmp4234, label %for.body44, label %for.cond.cleanup43

for.cond7:                                        ; preds = %for.body10
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next39, %idxprom13
  br i1 %exitcond.not, label %for.cond.cleanup9, label %for.body10, !llvm.loop !12

for.cond.cleanup9:                                ; preds = %for.cond7, %for.cond7.preheader
  %7 = add nsw i32 %i2.031, 1
  br label %cleanup

for.body10:                                       ; preds = %for.body10.lr.ph, %for.cond7
  %indvars.iv38 = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next39, %for.cond7 ]
  %arrayidx12 = getelementptr inbounds nuw [20001 x i32], ptr %str, i64 0, i64 %indvars.iv38
  %8 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %8, %4
  br i1 %cmp15, label %for.cond16.preheader, label %for.cond7

for.cond16.preheader:                             ; preds = %for.body10
  %9 = xor i32 %num.030, -1
  %sub18 = add i32 %2, %9
  %cmp1927 = icmp slt i32 %i2.031, %sub18
  br i1 %cmp1927, label %for.body21.preheader, label %for.cond.cleanup20

for.body21.preheader:                             ; preds = %for.cond16.preheader
  %10 = add i32 %num.030, %i2.031
  %11 = sub i32 %1, %10
  %12 = zext i32 %11 to i64
  %13 = add nuw nsw i64 %12, 1
  %min.iters.check = icmp ult i32 %11, 3
  br i1 %min.iters.check, label %for.body21.preheader51, label %vector.ph

vector.ph:                                        ; preds = %for.body21.preheader
  %n.vec = and i64 %13, 8589934588
  %14 = add nuw nsw i64 %n.vec, %idxprom13
  %invariant.op = add i64 %idxprom13, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %idxprom13
  %.reass = add i64 %index, %invariant.op
  %15 = getelementptr inbounds nuw [20001 x i32], ptr %str, i64 0, i64 %.reass
  %wide.load = load <4 x i32>, ptr %15, align 4, !tbaa !5
  %16 = getelementptr inbounds nuw [20001 x i32], ptr %str, i64 0, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %16, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %13, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup20, label %for.body21.preheader51

for.body21.preheader51:                           ; preds = %for.body21.preheader, %middle.block
  %indvars.iv42.ph = phi i64 [ %idxprom13, %for.body21.preheader ], [ %14, %middle.block ]
  br label %for.body21

for.cond.cleanup20:                               ; preds = %for.body21, %middle.block, %for.cond16.preheader
  %inc29 = add nsw i32 %num.030, 1
  br label %cleanup

for.body21:                                       ; preds = %for.body21.preheader51, %for.body21
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.body21 ], [ %indvars.iv42.ph, %for.body21.preheader51 ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %arrayidx23 = getelementptr inbounds nuw [20001 x i32], ptr %str, i64 0, i64 %indvars.iv.next43
  %18 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %arrayidx25 = getelementptr inbounds nuw [20001 x i32], ptr %str, i64 0, i64 %indvars.iv42
  store i32 %18, ptr %arrayidx25, align 4, !tbaa !5
  %19 = trunc nuw i64 %indvars.iv.next43 to i32
  %cmp19 = icmp sgt i32 %sub18, %19
  br i1 %cmp19, label %for.body21, label %for.cond.cleanup20, !llvm.loop !16

cleanup:                                          ; preds = %for.cond.cleanup20, %for.cond.cleanup9
  %num.1 = phi i32 [ %inc29, %for.cond.cleanup20 ], [ %num.030, %for.cond.cleanup9 ]
  %i2.1 = phi i32 [ %i2.031, %for.cond.cleanup20 ], [ %7, %for.cond.cleanup9 ]
  %sub = sub nsw i32 %2, %num.1
  %cmp4 = icmp slt i32 %i2.1, %sub
  br i1 %cmp4, label %for.cond7.preheader, label %for.cond.cleanup5, !llvm.loop !17

for.cond.cleanup43:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond.cleanup5
  %vtable.i18 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i19 = getelementptr i8, ptr %vtable.i18, i64 -24
  %vbase.offset.i20 = load i64, ptr %vbase.offset.ptr.i19, align 8
  %add.ptr.i21 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i20
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i21, i64 240
  %20 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !20
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup43
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup43
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 56
  %21 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !38
  %tobool.not.i1.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 67
  %22 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !44
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %20)
  %vtable.i.i.i = load ptr, ptr %20, align 8, !tbaa !18
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %23 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %23(ptr noundef nonnull align 8 dereferenceable(570) %20, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %22, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i22)
  call void @llvm.lifetime.end.p0(i64 80004, ptr nonnull %str) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0

for.body44:                                       ; preds = %for.cond.cleanup5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 1, %for.cond.cleanup5 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !44
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %24 = load i64, ptr %gep, align 8, !tbaa !45
  %cmp.not.i = icmp eq i64 %24, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body44
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body44
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %arrayidx47 = getelementptr inbounds nuw [20001 x i32], ptr %str, i64 0, i64 %indvars.iv45
  %25 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i32 noundef %25)
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %sub41 = sub nsw i32 %26, %num.0.lcssa
  %27 = sext i32 %sub41 to i64
  %cmp42 = icmp slt i64 %indvars.iv.next46, %27
  br i1 %cmp42, label %for.body44, label %for.cond.cleanup43, !llvm.loop !46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
!13 = distinct !{!13, !10, !11, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !11, !14}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = !{!21, !35, i64 240}
!21 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !22, i64 0, !32, i64 216, !7, i64 224, !33, i64 225, !34, i64 232, !35, i64 240, !36, i64 248, !37, i64 256}
!22 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 28, !25, i64 32, !26, i64 40, !28, i64 48, !7, i64 64, !6, i64 192, !29, i64 200, !30, i64 208}
!23 = !{!"long", !7, i64 0}
!24 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!25 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!26 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !23, i64 8}
!29 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!30 = !{!"_ZTSSt6locale", !31, i64 0}
!31 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!32 = !{!"p1 _ZTSSo", !27, i64 0}
!33 = !{!"bool", !7, i64 0}
!34 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !27, i64 0}
!35 = !{!"p1 _ZTSSt5ctypeIcE", !27, i64 0}
!36 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!37 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!38 = !{!39, !7, i64 56}
!39 = !{!"_ZTSSt5ctypeIcE", !40, i64 0, !41, i64 16, !33, i64 24, !42, i64 32, !42, i64 40, !43, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!40 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!41 = !{!"p1 _ZTS15__locale_struct", !27, i64 0}
!42 = !{!"p1 int", !27, i64 0}
!43 = !{!"p1 short", !27, i64 0}
!44 = !{!7, !7, i64 0}
!45 = !{!22, !23, i64 16}
!46 = distinct !{!46, !10, !11}
