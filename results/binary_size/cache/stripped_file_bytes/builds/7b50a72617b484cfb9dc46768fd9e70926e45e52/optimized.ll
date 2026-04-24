; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6xbv65n8.cpp"
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
  %x = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %x) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %0, 0
  br i1 %cmp18, label %for.body, label %for.end21

for.cond2.preheader:                              ; preds = %for.body
  %cmp322 = icmp sgt i32 %2, 0
  br i1 %cmp322, label %for.body4.preheader, label %for.end21

for.body4.preheader:                              ; preds = %for.cond2.preheader
  %1 = zext nneg i32 %2 to i64
  %wide.trip.count36 = zext nneg i32 %2 to i64
  br label %for.body4

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %x, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.cond2.loopexit:                               ; preds = %for.inc16, %middle.block, %for.body4
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %for.end21, label %for.body4, !llvm.loop !12

for.body4:                                        ; preds = %for.body4.preheader, %for.cond2.loopexit
  %indvars.iv33 = phi i64 [ 0, %for.body4.preheader ], [ %indvars.iv.next34, %for.cond2.loopexit ]
  %indvars.iv28 = phi i64 [ 1, %for.body4.preheader ], [ %indvars.iv.next29, %for.cond2.loopexit ]
  %4 = xor i64 %indvars.iv33, -1
  %5 = add nsw i64 %4, %wide.trip.count36
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %cmp620 = icmp samesign ult i64 %indvars.iv.next34, %1
  br i1 %cmp620, label %for.body7.lr.ph, label %for.cond2.loopexit

for.body7.lr.ph:                                  ; preds = %for.body4
  %arrayidx9 = getelementptr inbounds nuw [20000 x i32], ptr %x, i64 0, i64 %indvars.iv33
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %for.body7.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body7.lr.ph
  %n.vec = and i64 %5, -4
  %6 = add i64 %indvars.iv28, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue48, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue48 ]
  %offset.idx = add i64 %indvars.iv28, %index
  %7 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %8 = getelementptr inbounds nuw [20000 x i32], ptr %x, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %8, align 4, !tbaa !5
  %9 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %10 = extractelement <4 x i1> %9, i64 0
  br i1 %10, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %11 = getelementptr inbounds nuw [20000 x i32], ptr %x, i64 0, i64 %offset.idx
  store i32 0, ptr %11, align 4, !tbaa !5
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %12 = extractelement <4 x i1> %9, i64 1
  br i1 %12, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue
  %13 = add i64 %offset.idx, 1
  %14 = getelementptr inbounds nuw [20000 x i32], ptr %x, i64 0, i64 %13
  store i32 0, ptr %14, align 4, !tbaa !5
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue
  %15 = extractelement <4 x i1> %9, i64 2
  br i1 %15, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %16 = add i64 %offset.idx, 2
  %17 = getelementptr inbounds nuw [20000 x i32], ptr %x, i64 0, i64 %16
  store i32 0, ptr %17, align 4, !tbaa !5
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %18 = extractelement <4 x i1> %9, i64 3
  br i1 %18, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %19 = add i64 %offset.idx, 3
  %20 = getelementptr inbounds nuw [20000 x i32], ptr %x, i64 0, i64 %19
  store i32 0, ptr %20, align 4, !tbaa !5
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %index.next = add nuw i64 %index, 4
  %21 = icmp eq i64 %index.next, %n.vec
  br i1 %21, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %pred.store.continue48
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %for.cond2.loopexit, label %for.body7.preheader

for.body7.preheader:                              ; preds = %for.body7.lr.ph, %middle.block
  %indvars.iv30.ph = phi i64 [ %indvars.iv28, %for.body7.lr.ph ], [ %6, %middle.block ]
  br label %for.body7

for.body7:                                        ; preds = %for.body7.preheader, %for.inc16
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc16 ], [ %indvars.iv30.ph, %for.body7.preheader ]
  %22 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %arrayidx11 = getelementptr inbounds nuw [20000 x i32], ptr %x, i64 0, i64 %indvars.iv30
  %23 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12.not = icmp eq i32 %22, %23
  br i1 %cmp12.not, label %if.then, label %for.inc16

if.then:                                          ; preds = %for.body7
  store i32 0, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.inc16

for.inc16:                                        ; preds = %for.body7, %if.then
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count36
  br i1 %exitcond.not, label %for.cond2.loopexit, label %for.body7, !llvm.loop !16

for.end21:                                        ; preds = %for.cond2.loopexit, %entry, %for.cond2.preheader
  %24 = load i32, ptr %x, align 16, !tbaa !5
  %call23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %24)
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2524 = icmp sgt i32 %25, 1
  br i1 %cmp2524, label %for.body26, label %for.end38

for.body26:                                       ; preds = %for.end21, %for.inc36
  %26 = phi i32 [ %29, %for.inc36 ], [ %25, %for.end21 ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc36 ], [ 1, %for.end21 ]
  %arrayidx28 = getelementptr inbounds nuw [20000 x i32], ptr %x, i64 0, i64 %indvars.iv38
  %27 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %cmp29.not = icmp eq i32 %27, 0
  br i1 %cmp29.not, label %for.inc36, label %if.then30

if.then30:                                        ; preds = %for.body26
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %28 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %28)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc36

for.inc36:                                        ; preds = %for.body26, %if.then30
  %29 = phi i32 [ %26, %for.body26 ], [ %.pre, %if.then30 ]
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %30 = sext i32 %29 to i64
  %cmp25 = icmp slt i64 %indvars.iv.next39, %30
  br i1 %cmp25, label %for.body26, label %for.end38, !llvm.loop !17

for.end38:                                        ; preds = %for.inc36, %for.end21
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %31 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !20
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end38
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end38
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 56
  %32 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !38
  %tobool.not.i1.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 67
  %33 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !44
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %31)
  %vtable.i.i.i = load ptr, ptr %31, align 8, !tbaa !18
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %34 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %34(ptr noundef nonnull align 8 dereferenceable(570) %31, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %33, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i16)
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %x) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
