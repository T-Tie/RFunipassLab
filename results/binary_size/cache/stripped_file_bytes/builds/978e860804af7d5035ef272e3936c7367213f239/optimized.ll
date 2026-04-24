; ModuleID = '<stdin>'
source_filename = "/tmp/tmpeelvfx2q.cpp"
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
define dso_local noundef i32 @_Z4fjysiiiiPi(i32 noundef %n, i32 noundef %m, i32 noundef %i, i32 noundef %d, ptr noundef captures(none) %ji) local_unnamed_addr #0 {
entry:
  %cmp21 = icmp slt i32 %i, %m
  br i1 %cmp21, label %for.body.lr.ph, label %for.end14

for.body.lr.ph:                                   ; preds = %entry
  %idxprom = sext i32 %d to i64
  %arrayidx = getelementptr inbounds i32, ptr %ji, i64 %idxprom
  %cmp3.not18 = icmp slt i32 %d, 0
  %add = add i32 %d, 1
  br i1 %cmp3.not18, label %for.body.lr.ph.split.us, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %wide.trip.count = zext i32 %add to i64
  %min.iters.check = icmp ult i32 %add, 4
  %n.vec = and i64 %wide.trip.count, 4294967292
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %for.body

for.body.lr.ph.split.us:                          ; preds = %for.body.lr.ph
  %cmp7.us = icmp eq i32 %m, 1
  br i1 %cmp7.us, label %for.body.us.us, label %for.body.us

for.body.us.us:                                   ; preds = %for.body.lr.ph.split.us, %for.body.us.us
  %a.022.us.us = phi i32 [ %inc13.us.us, %for.body.us.us ], [ %i, %for.body.lr.ph.split.us ]
  %rem.us.us = srem i32 %n, %a.022.us.us
  %cmp1.us.us = icmp eq i32 %rem.us.us, 0
  %inc13.us.us = add i32 %a.022.us.us, 1
  br i1 %cmp1.us.us, label %if.then.us.us, label %for.body.us.us

if.then.us.us:                                    ; preds = %for.body.us.us
  store i32 %a.022.us.us, ptr %arrayidx, align 4, !tbaa !5
  br label %cleanup

for.body.us:                                      ; preds = %for.body.lr.ph.split.us, %for.inc12.us
  %a.022.us = phi i32 [ %inc13.us, %for.inc12.us ], [ %i, %for.body.lr.ph.split.us ]
  %rem.us = srem i32 %n, %a.022.us
  %div.us = sdiv i32 %n, %a.022.us
  %cmp1.us = icmp eq i32 %rem.us, 0
  br i1 %cmp1.us, label %if.then.us, label %for.inc12.us

if.then.us:                                       ; preds = %for.body.us
  store i32 %a.022.us, ptr %arrayidx, align 4, !tbaa !5
  %call.us = tail call noundef i32 @_Z4fjysiiiiPi(i32 noundef %div.us, i32 noundef %m, i32 noundef %a.022.us, i32 noundef %add, ptr noundef nonnull %ji)
  br label %for.inc12.us

for.inc12.us:                                     ; preds = %if.then.us, %for.body.us
  %inc13.us = add i32 %a.022.us, 1
  %exitcond29.not = icmp eq i32 %inc13.us, %m
  br i1 %exitcond29.not, label %for.end14, label %for.body.us, !llvm.loop !9

for.body:                                         ; preds = %for.body.preheader, %for.inc12
  %a.022 = phi i32 [ %inc13, %for.inc12 ], [ %i, %for.body.preheader ]
  %rem = srem i32 %n, %a.022
  %div = sdiv i32 %n, %a.022
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %for.inc12

if.then:                                          ; preds = %for.body
  store i32 %a.022, ptr %arrayidx, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body4.preheader, label %vector.body

vector.body:                                      ; preds = %if.then, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %if.then ]
  %vec.phi = phi <4 x i32> [ %1, %vector.body ], [ splat (i32 1), %if.then ]
  %0 = getelementptr inbounds nuw i32, ptr %ji, i64 %index
  %wide.load = load <4 x i32>, ptr %0, align 4, !tbaa !5
  %1 = mul <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %2 = icmp eq i64 %index.next, %n.vec
  br i1 %2, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %3 = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %1)
  br i1 %cmp.n, label %for.cond2.for.end_crit_edge, label %for.body4.preheader

for.body4.preheader:                              ; preds = %if.then, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %if.then ], [ %n.vec, %middle.block ]
  %chenji.019.ph = phi i32 [ 1, %if.then ], [ %3, %middle.block ]
  br label %for.body4

for.body4:                                        ; preds = %for.body4.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ %indvars.iv.ph, %for.body4.preheader ]
  %chenji.019 = phi i32 [ %mul, %for.body4 ], [ %chenji.019.ph, %for.body4.preheader ]
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %ji, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %mul = mul nsw i32 %4, %chenji.019
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond2.for.end_crit_edge, label %for.body4, !llvm.loop !15

for.cond2.for.end_crit_edge:                      ; preds = %for.body4, %middle.block
  %mul.lcssa = phi i32 [ %3, %middle.block ], [ %mul, %for.body4 ]
  %cmp7 = icmp eq i32 %mul.lcssa, %m
  br i1 %cmp7, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.cond2.for.end_crit_edge
  %call = tail call noundef i32 @_Z4fjysiiiiPi(i32 noundef %div, i32 noundef %m, i32 noundef %a.022, i32 noundef %add, ptr noundef nonnull %ji)
  br label %for.inc12

cleanup:                                          ; preds = %for.cond2.for.end_crit_edge, %if.then.us.us
  %5 = load i32, ptr @num, align 4, !tbaa !5
  %inc9 = add nsw i32 %5, 1
  store i32 %inc9, ptr @num, align 4, !tbaa !5
  br label %for.end14

for.inc12:                                        ; preds = %cleanup.thread, %for.body
  %inc13 = add i32 %a.022, 1
  %exitcond28.not = icmp eq i32 %inc13, %m
  br i1 %exitcond28.not, label %for.end14, label %for.body, !llvm.loop !9

for.end14:                                        ; preds = %for.inc12, %for.inc12.us, %entry, %cleanup
  %6 = load i32, ptr @num, align 4, !tbaa !5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %ji = alloca [20 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ji) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %ji, i8 0, i64 80, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %cmp.not2 = icmp slt i32 %0, 1
  br i1 %cmp.not2, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %j.03 = phi i32 [ %inc, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 1, %entry ]
  store i32 0, ptr @num, align 4, !tbaa !5
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z4fjysiiiiPi(i32 noundef %1, i32 noundef %1, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %ji)
  %add = add nsw i32 %call2, 1
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %add)
  %vtable.i = load ptr, ptr %call3, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call3, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %2 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !18
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.body
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
  %inc = add nuw nsw i32 %j.03, 1
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %j.03, %6
  br i1 %cmp.not.not, label %for.body, label %for.end, !llvm.loop !43

for.end:                                          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ji) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
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
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11, !13}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{!19, !33, i64 240}
!19 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0, !30, i64 216, !7, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !26, i64 48, !7, i64 64, !6, i64 192, !27, i64 200, !28, i64 208}
!21 = !{!"long", !7, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !21, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!30 = !{!"p1 _ZTSSo", !25, i64 0}
!31 = !{!"bool", !7, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !25, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!36 = !{!37, !7, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !25, i64 0}
!40 = !{!"p1 int", !25, i64 0}
!41 = !{!"p1 short", !25, i64 0}
!42 = !{!7, !7, i64 0}
!43 = distinct !{!43, !10, !11}
