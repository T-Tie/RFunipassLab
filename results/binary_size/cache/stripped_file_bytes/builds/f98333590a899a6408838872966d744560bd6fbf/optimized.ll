; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnhrh_2f_.cpp"
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
  %c = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %c) #5
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %0 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !8
  %tobool.not.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !28
  %tobool.not.i1.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 67
  %2 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !34
  br label %_ZNSi7getlineEPcl.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %0)
  %vtable.i.i.i = load ptr, ptr %0, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %3 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %3(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext 10)
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %2, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call2.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %c, i64 noundef 1000, i8 noundef signext %retval.0.i.i.i)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %c) #7
  %conv = trunc i64 %call2 to i32
  %cmp22 = icmp sgt i32 %conv, 0
  br i1 %cmp22, label %for.body, label %for.cond.cleanup28

for.cond26.preheader:                             ; preds = %for.inc22
  %cmp2725 = icmp sgt i32 %l.1, 0
  br i1 %cmp2725, label %for.body29.preheader, label %for.cond.cleanup28

for.body29.preheader:                             ; preds = %for.cond26.preheader
  %wide.trip.count33 = zext nneg i32 %l.1 to i64
  br label %for.body29

for.body:                                         ; preds = %_ZNSi7getlineEPcl.exit, %for.inc22
  %i.024 = phi i32 [ %inc23, %for.inc22 ], [ 0, %_ZNSi7getlineEPcl.exit ]
  %l.023 = phi i32 [ %l.1, %for.inc22 ], [ %conv, %_ZNSi7getlineEPcl.exit ]
  %idxprom = sext i32 %i.024 to i64
  %arrayidx = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !34
  %cmp4 = icmp eq i8 %4, 32
  br i1 %cmp4, label %land.lhs.true, label %for.inc22

land.lhs.true:                                    ; preds = %for.body
  %add = add nsw i32 %i.024, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %idxprom8
  %5 = load i8, ptr %arrayidx9, align 1, !tbaa !34
  %cmp11 = icmp eq i8 %5, 32
  br i1 %cmp11, label %for.cond12.preheader, label %for.inc22

for.cond12.preheader:                             ; preds = %land.lhs.true
  %sub = add nsw i32 %l.023, -1
  %cmp1320 = icmp slt i32 %i.024, %sub
  br i1 %cmp1320, label %iter.check, label %for.cond.cleanup14

iter.check:                                       ; preds = %for.cond12.preheader
  %wide.trip.count = sext i32 %sub to i64
  %6 = sub nsw i64 %wide.trip.count, %idxprom
  %min.iters.check = icmp ult i64 %6, 4
  br i1 %min.iters.check, label %for.body15.preheader, label %vector.main.loop.iter.check

for.body15.preheader:                             ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block, %iter.check
  %indvars.iv.ph = phi i64 [ %idxprom, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %11, %vec.epilog.middle.block ]
  br label %for.body15

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i64 %6, 16
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %6, -16
  %invariant.op = add i64 %idxprom, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %7 = add i64 %index, %idxprom
  %.reass = add i64 %index, %invariant.op
  %8 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %.reass
  %wide.load = load <16 x i8>, ptr %8, align 1, !tbaa !34
  %9 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %7
  store <16 x i8> %wide.load, ptr %9, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 16
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup14, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = add nsw i64 %n.vec, %idxprom
  %n.vec.remaining = and i64 %6, 12
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body15.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check, %vector.main.loop.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %6, -4
  %11 = add nsw i64 %n.vec39, %idxprom
  %invariant.op44 = add i64 %idxprom, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ]
  %offset.idx = add i64 %index40, %idxprom
  %.reass45 = add i64 %index40, %invariant.op44
  %12 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %.reass45
  %wide.load41 = load <4 x i8>, ptr %12, align 1, !tbaa !34
  %13 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %offset.idx
  store <4 x i8> %wide.load41, ptr %13, align 1, !tbaa !34
  %index.next42 = add nuw i64 %index40, 4
  %14 = icmp eq i64 %index.next42, %n.vec39
  br i1 %14, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %6, %n.vec39
  br i1 %cmp.n43, label %for.cond.cleanup14, label %for.body15.preheader

for.cond.cleanup14:                               ; preds = %for.body15, %middle.block, %vec.epilog.middle.block, %for.cond12.preheader
  %dec21 = add nsw i32 %i.024, -1
  br label %for.inc22

for.body15:                                       ; preds = %for.body15.preheader, %for.body15
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body15 ], [ %indvars.iv.ph, %for.body15.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %arrayidx18 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %indvars.iv.next
  %15 = load i8, ptr %arrayidx18, align 1, !tbaa !34
  %arrayidx20 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %indvars.iv
  store i8 %15, ptr %arrayidx20, align 1, !tbaa !34
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup14, label %for.body15, !llvm.loop !41

for.inc22:                                        ; preds = %for.body, %land.lhs.true, %for.cond.cleanup14
  %l.1 = phi i32 [ %sub, %for.cond.cleanup14 ], [ %l.023, %land.lhs.true ], [ %l.023, %for.body ]
  %i.1 = phi i32 [ %dec21, %for.cond.cleanup14 ], [ %i.024, %land.lhs.true ], [ %i.024, %for.body ]
  %inc23 = add nsw i32 %i.1, 1
  %cmp = icmp slt i32 %inc23, %l.1
  br i1 %cmp, label %for.body, label %for.cond26.preheader, !llvm.loop !42

for.cond.cleanup28:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNSi7getlineEPcl.exit, %for.cond26.preheader
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %c) #5
  ret i32 0

for.body29:                                       ; preds = %for.body29.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv30 = phi i64 [ 0, %for.body29.preheader ], [ %indvars.iv.next31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %arrayidx31 = getelementptr inbounds nuw [1000 x i8], ptr %c, i64 0, i64 %indvars.iv30
  %16 = load i8, ptr %arrayidx31, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %16, ptr %__c.addr.i, align 1, !tbaa !34
  %vtable.i15 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i16 = getelementptr i8, ptr %vtable.i15, i64 -24
  %vbase.offset.i17 = load i64, ptr %vbase.offset.ptr.i16, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i17
  %17 = load i64, ptr %gep, align 8, !tbaa !43
  %cmp.not.i = icmp eq i64 %17, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body29
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body29
  %call2.i19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %16)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %for.cond.cleanup28, label %for.body29, !llvm.loop !44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !25, i64 240}
!9 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 0, !22, i64 216, !12, i64 224, !23, i64 225, !24, i64 232, !25, i64 240, !26, i64 248, !27, i64 256}
!10 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !12, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !11, i64 8}
!18 = !{!"int", !12, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = !{!"p1 _ZTSSo", !16, i64 0}
!23 = !{!"bool", !12, i64 0}
!24 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!25 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!26 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!27 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!28 = !{!29, !12, i64 56}
!29 = !{!"_ZTSSt5ctypeIcE", !30, i64 0, !31, i64 16, !23, i64 24, !32, i64 32, !32, i64 40, !33, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!30 = !{!"_ZTSNSt6locale5facetE", !18, i64 8}
!31 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!32 = !{!"p1 int", !16, i64 0}
!33 = !{!"p1 short", !16, i64 0}
!34 = !{!12, !12, i64 0}
!35 = distinct !{!35, !36, !37, !38, !39}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !36, !37, !38, !39}
!41 = distinct !{!41, !36, !37, !38}
!42 = distinct !{!42, !36, !37}
!43 = !{!10, !11, i64 16}
!44 = distinct !{!44, !36, !37}
