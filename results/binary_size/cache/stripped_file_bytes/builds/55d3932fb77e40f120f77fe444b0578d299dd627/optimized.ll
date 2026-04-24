; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnf8my731.cpp"
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
  %n = alloca i32, align 4
  %before = alloca [500 x [40 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 20000, ptr nonnull %before) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %0, 0
  br i1 %cmp31, label %for.body, label %for.end62

for.cond20.preheader:                             ; preds = %while.end18
  %1 = icmp sgt i32 %2, 0
  br i1 %1, label %for.body22, label %for.end62

for.body:                                         ; preds = %entry, %while.end18
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.end18 ], [ 0, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %for.body
  %call2 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %trunc = trunc i32 %call2 to i8
  switch i8 %trunc, label %while.end [
    i8 32, label %while.cond.backedge
    i8 10, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %add.ptr = getelementptr inbounds nuw [40 x i8], ptr %before, i64 %indvars.iv
  store i8 %trunc, ptr %add.ptr, align 8, !tbaa !9
  br label %while.cond7

while.cond7:                                      ; preds = %if.else17, %while.end
  %p.0 = phi ptr [ %add.ptr, %while.end ], [ %incdec.ptr, %if.else17 ]
  %call9 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %trunc30 = trunc i32 %call9 to i8
  switch i8 %trunc30, label %if.else17 [
    i8 32, label %while.end18
    i8 10, label %while.end18
  ]

if.else17:                                        ; preds = %while.cond7
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  store i8 %trunc30, ptr %incdec.ptr, align 1, !tbaa !9
  br label %while.cond7, !llvm.loop !10

while.end18:                                      ; preds = %while.cond7, %while.cond7
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  store i8 0, ptr %incdec.ptr19, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond20.preheader, !llvm.loop !13

for.body22:                                       ; preds = %for.cond20.preheader, %for.inc60
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc60 ], [ 0, %for.cond20.preheader ]
  %sum.034 = phi i32 [ %sum.2, %for.inc60 ], [ 0, %for.cond20.preheader ]
  %arrayidx = getelementptr inbounds nuw [500 x [40 x i8]], ptr %before, i64 0, i64 %indvars.iv37
  %call24 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx) #6
  %conv25 = trunc i64 %call24 to i32
  %add = add nsw i32 %sum.034, %conv25
  %add26 = add nsw i32 %add, 1
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %arrayidx30 = getelementptr inbounds nuw [500 x [40 x i8]], ptr %before, i64 0, i64 %indvars.iv.next38
  %call32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx30) #6
  %4 = trunc i64 %call32 to i32
  %conv34 = add i32 %add26, %4
  %cmp35 = icmp sgt i32 %add, 80
  br i1 %cmp35, label %if.then36, label %if.end47

if.then36:                                        ; preds = %for.body22
  %5 = add i64 %call24, 1
  %add44 = add i64 %5, %call32
  %conv45 = trunc i64 %add44 to i32
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %6 = load ptr, ptr %gep, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then36
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then36
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  %7 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 67
  %8 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !9
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %6)
  %vtable.i.i.i = load ptr, ptr %6, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %9 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %9(ptr noundef nonnull align 8 dereferenceable(570) %6, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %8, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i28)
  br label %if.end47

if.end47:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %for.body22
  %sum.1 = phi i32 [ %conv25, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %add, %for.body22 ]
  %sum1.0 = phi i32 [ %conv45, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %conv34, %for.body22 ]
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx) #5
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx, i64 noundef %call.i.i)
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add nsw i32 %10, -1
  %11 = sext i32 %sub to i64
  %cmp52 = icmp slt i64 %indvars.iv37, %11
  %cmp53 = icmp slt i32 %sum1.0, 81
  %or.cond2 = select i1 %cmp52, i1 %cmp53, i1 false
  br i1 %or.cond2, label %if.then54, label %for.inc60

if.then54:                                        ; preds = %if.end47
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc60

for.inc60:                                        ; preds = %if.end47, %if.then54
  %12 = phi i32 [ %10, %if.end47 ], [ %.pre, %if.then54 ]
  %sum.2 = add nsw i32 %sum.1, 1
  %13 = sext i32 %12 to i64
  %cmp21 = icmp slt i64 %indvars.iv.next38, %13
  br i1 %cmp21, label %for.body22, label %for.end62, !llvm.loop !40

for.end62:                                        ; preds = %for.inc60, %entry, %for.cond20.preheader
  call void @llvm.lifetime.end.p0(i64 20000, ptr nonnull %before) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
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
!40 = distinct !{!40, !11, !12}
