; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdap_z7jo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@num = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3wrhiiPiii(i32 noundef %n, i32 noundef %r, ptr noundef captures(none) %b, i32 noundef %y, i32 noundef %a) local_unnamed_addr #0 {
entry:
  %div = sdiv i32 %a, 2
  %cmp.not23 = icmp sgt i32 %y, %div
  br i1 %cmp.not23, label %for.end18, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %idxprom = sext i32 %n to i64
  %arrayidx = getelementptr inbounds i32, ptr %b, i64 %idxprom
  %cmp3.not20 = icmp slt i32 %n, 1
  %add = add i32 %n, 1
  br i1 %cmp3.not20, label %for.body.lr.ph.split.us, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %wide.trip.count = zext i32 %add to i64
  %0 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %add, 5
  %n.vec = and i64 %0, -4
  %1 = or disjoint i64 %n.vec, 1
  %invariant.gep = getelementptr i8, ptr %b, i64 4
  %cmp.n = icmp eq i64 %0, %n.vec
  br label %for.body

for.body.lr.ph.split.us:                          ; preds = %for.body.lr.ph
  %cmp7.us = icmp eq i32 %a, 1
  br i1 %cmp7.us, label %for.body.us.us, label %for.body.lr.ph.split.us.split

for.body.us.us:                                   ; preds = %for.body.lr.ph.split.us, %for.body.us.us
  %i.024.us.us = phi i32 [ %inc17.us.us, %for.body.us.us ], [ %y, %for.body.lr.ph.split.us ]
  %rem.us.us = srem i32 %r, %i.024.us.us
  %cmp1.us.us = icmp eq i32 %rem.us.us, 0
  %inc17.us.us = add i32 %i.024.us.us, 1
  br i1 %cmp1.us.us, label %if.then.us.us, label %for.body.us.us, !llvm.loop !5

if.then.us.us:                                    ; preds = %for.body.us.us
  store i32 %i.024.us.us, ptr %arrayidx, align 4, !tbaa !8
  br label %if.then8

for.body.lr.ph.split.us.split:                    ; preds = %for.body.lr.ph.split.us
  %cmp10.us = icmp slt i32 %a, 1
  br i1 %cmp10.us, label %for.body.us.us26, label %for.body.us

for.body.us.us26:                                 ; preds = %for.body.lr.ph.split.us.split, %for.inc16.us.us31
  %i.024.us.us27 = phi i32 [ %inc17.us.us32, %for.inc16.us.us31 ], [ %y, %for.body.lr.ph.split.us.split ]
  %rem.us.us28 = srem i32 %r, %i.024.us.us27
  %cmp1.us.us29 = icmp eq i32 %rem.us.us28, 0
  br i1 %cmp1.us.us29, label %if.then.us.us30, label %for.inc16.us.us31

if.then.us.us30:                                  ; preds = %for.body.us.us26
  store i32 %i.024.us.us27, ptr %arrayidx, align 4, !tbaa !8
  br label %for.end18

for.inc16.us.us31:                                ; preds = %for.body.us.us26
  %inc17.us.us32 = add i32 %i.024.us.us27, 1
  %exitcond43.not = icmp eq i32 %i.024.us.us27, %div
  br i1 %exitcond43.not, label %for.end18, label %for.body.us.us26, !llvm.loop !5

for.body.us:                                      ; preds = %for.body.lr.ph.split.us.split, %for.inc16.us
  %i.024.us = phi i32 [ %inc17.us, %for.inc16.us ], [ %y, %for.body.lr.ph.split.us.split ]
  %rem.us = srem i32 %r, %i.024.us
  %div12.us = sdiv i32 %r, %i.024.us
  %cmp1.us = icmp eq i32 %rem.us, 0
  br i1 %cmp1.us, label %if.then.us, label %for.inc16.us

if.then.us:                                       ; preds = %for.body.us
  store i32 %i.024.us, ptr %arrayidx, align 4, !tbaa !8
  %call.us = tail call noundef i32 @_Z3wrhiiPiii(i32 noundef %add, i32 noundef %div12.us, ptr noundef nonnull %b, i32 noundef %i.024.us, i32 noundef %a)
  br label %for.inc16.us

for.inc16.us:                                     ; preds = %if.then.us, %for.body.us
  %inc17.us = add i32 %i.024.us, 1
  %exitcond42.not = icmp eq i32 %i.024.us, %div
  br i1 %exitcond42.not, label %for.end18, label %for.body.us, !llvm.loop !5

for.body:                                         ; preds = %for.body.preheader, %for.inc16
  %i.024 = phi i32 [ %inc17, %for.inc16 ], [ %y, %for.body.preheader ]
  %rem = srem i32 %r, %i.024
  %div12 = sdiv i32 %r, %i.024
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %for.inc16

if.then:                                          ; preds = %for.body
  store i32 %i.024, ptr %arrayidx, align 4, !tbaa !8
  br i1 %min.iters.check, label %for.body4.preheader, label %vector.body

vector.body:                                      ; preds = %if.then, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %if.then ]
  %vec.phi = phi <4 x i32> [ %2, %vector.body ], [ splat (i32 1), %if.then ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !8
  %2 = mul <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %4 = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %2)
  br i1 %cmp.n, label %for.cond2.for.end_crit_edge, label %for.body4.preheader

for.body4.preheader:                              ; preds = %if.then, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %if.then ], [ %1, %middle.block ]
  %now.021.ph = phi i32 [ 1, %if.then ], [ %4, %middle.block ]
  br label %for.body4

for.body4:                                        ; preds = %for.body4.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ %indvars.iv.ph, %for.body4.preheader ]
  %now.021 = phi i32 [ %mul, %for.body4 ], [ %now.021.ph, %for.body4.preheader ]
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx6, align 4, !tbaa !8
  %mul = mul nsw i32 %5, %now.021
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond2.for.end_crit_edge, label %for.body4, !llvm.loop !15

for.cond2.for.end_crit_edge:                      ; preds = %for.body4, %middle.block
  %mul.lcssa = phi i32 [ %4, %middle.block ], [ %mul, %for.body4 ]
  %cmp7 = icmp eq i32 %mul.lcssa, %a
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.cond2.for.end_crit_edge, %if.then.us.us
  %6 = load i32, ptr @num, align 4, !tbaa !8
  %inc9 = add nsw i32 %6, 1
  store i32 %inc9, ptr @num, align 4, !tbaa !8
  br label %for.end18

if.end:                                           ; preds = %for.cond2.for.end_crit_edge
  %cmp10 = icmp sgt i32 %mul.lcssa, %a
  br i1 %cmp10, label %for.end18, label %cleanup

cleanup:                                          ; preds = %if.end
  %call = tail call noundef i32 @_Z3wrhiiPiii(i32 noundef %add, i32 noundef %div12, ptr noundef nonnull %b, i32 noundef %i.024, i32 noundef %a)
  br label %for.inc16

for.inc16:                                        ; preds = %cleanup, %for.body
  %inc17 = add i32 %i.024, 1
  %exitcond41.not = icmp eq i32 %i.024, %div
  br i1 %exitcond41.not, label %for.end18, label %for.body, !llvm.loop !5

for.end18:                                        ; preds = %for.inc16, %if.end, %for.inc16.us, %for.inc16.us.us31, %entry, %if.then.us.us30, %if.then8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %s = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %b) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %s)
  %.pr = load i32, ptr %s, align 4, !tbaa !8
  %cmp1 = icmp sgt i32 %.pr, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  store i32 0, ptr @num, align 4, !tbaa !8
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %0 = load i32, ptr %a, align 4, !tbaa !8
  %call2 = call noundef i32 @_Z3wrhiiPiii(i32 noundef 1, i32 noundef %0, ptr noundef nonnull %b, i32 noundef 2, i32 noundef %0)
  %1 = load i32, ptr @num, align 4, !tbaa !8
  %add = add nsw i32 %1, 1
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %add)
  %vtable.i = load ptr, ptr %call3, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call3, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %2 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !18
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %while.body
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %while.body
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %3 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !36
  %tobool.not.i1.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 67
  %4 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %2)
  %vtable.i.i.i = load ptr, ptr %2, align 8, !tbaa !16
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %5 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %5(ptr noundef nonnull align 8 dereferenceable(570) %2, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %4, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call3, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %6 = load i32, ptr %s, align 4, !tbaa !8
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %s, align 4, !tbaa !8
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !43

while.end:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !7, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !6, !7, !13}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !11, i64 0}
!18 = !{!19, !33, i64 240}
!19 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0, !30, i64 216, !10, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !26, i64 48, !10, i64 64, !9, i64 192, !27, i64 200, !28, i64 208}
!21 = !{!"long", !10, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !10, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !10, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!25 = !{!"any pointer", !10, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !21, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!30 = !{!"p1 _ZTSSo", !25, i64 0}
!31 = !{!"bool", !10, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !25, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!36 = !{!37, !10, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !10, i64 56, !10, i64 57, !10, i64 313, !10, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !9, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !25, i64 0}
!40 = !{!"p1 int", !25, i64 0}
!41 = !{!"p1 short", !25, i64 0}
!42 = !{!10, !10, i64 0}
!43 = distinct !{!43, !6, !7}
