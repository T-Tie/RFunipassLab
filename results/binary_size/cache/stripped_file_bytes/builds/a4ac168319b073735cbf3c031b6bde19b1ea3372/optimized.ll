; ModuleID = '<stdin>'
source_filename = "/tmp/tmpoaz5opal.cpp"
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
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@switch.table.main = private unnamed_addr constant [10 x i32] [i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30], align 4
@switch.table.main.1 = private unnamed_addr constant [10 x i32] [i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30], align 4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not50 = icmp slt i32 %0, 1
  br i1 %cmp.not50, label %for.end65, label %for.body

for.body:                                         ; preds = %entry, %if.end62
  %i.051 = phi i32 [ %inc64, %if.end62 ], [ 1, %entry ]
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %b)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %c)
  %1 = load i32, ptr %b, align 4, !tbaa !5
  %2 = load i32, ptr %c, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %1, %2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %b, align 4, !tbaa !5
  store i32 %1, ptr %c, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = phi i32 [ %1, %if.then ], [ %2, %for.body ]
  %.pr = phi i32 [ %2, %if.then ], [ %1, %for.body ]
  %4 = load i32, ptr %a, align 4, !tbaa !5
  %rem = srem i32 %4, 400
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %rem6 = srem i32 %4, 100
  %cmp7.not = icmp ne i32 %rem6, 0
  %5 = and i32 %4, 3
  %cmp9 = icmp eq i32 %5, 0
  %or.cond16 = and i1 %cmp7.not, %cmp9
  br i1 %or.cond16, label %if.then10, label %for.cond30thread-pre-split

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %cmp1246 = icmp slt i32 %.pr, %3
  br i1 %cmp1246, label %for.body13, label %if.then56

for.body13:                                       ; preds = %if.then10, %for.inc
  %sum.147 = phi i32 [ %add, %for.inc ], [ 0, %if.then10 ]
  %6 = phi i32 [ %inc, %for.inc ], [ %.pr, %if.then10 ]
  %switch.tableidx = add i32 %6, -2
  %7 = icmp ult i32 %switch.tableidx, 10
  br i1 %7, label %switch.lookup, label %for.inc

switch.lookup:                                    ; preds = %for.body13
  %8 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [10 x i32], ptr @switch.table.main, i64 0, i64 %8
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13, %switch.lookup
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 31, %for.body13 ]
  %add = add nuw nsw i32 %sum.147, %.sink
  %inc = add nsw i32 %6, 1
  %exitcond52.not = icmp eq i32 %inc, %3
  br i1 %exitcond52.not, label %if.end53, label %for.body13, !llvm.loop !9

for.cond30thread-pre-split:                       ; preds = %lor.lhs.false
  %cmp3144 = icmp slt i32 %.pr, %3
  br i1 %cmp3144, label %for.body32, label %if.then56

for.body32:                                       ; preds = %for.cond30thread-pre-split, %for.inc50
  %sum.445 = phi i32 [ %add35, %for.inc50 ], [ 0, %for.cond30thread-pre-split ]
  %9 = phi i32 [ %inc51, %for.inc50 ], [ %.pr, %for.cond30thread-pre-split ]
  %switch.tableidx60 = add i32 %9, -2
  %10 = icmp ult i32 %switch.tableidx60, 10
  br i1 %10, label %switch.lookup59, label %for.inc50

switch.lookup59:                                  ; preds = %for.body32
  %11 = zext nneg i32 %switch.tableidx60 to i64
  %switch.gep61 = getelementptr inbounds nuw [10 x i32], ptr @switch.table.main.1, i64 0, i64 %11
  %switch.load62 = load i32, ptr %switch.gep61, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.body32, %switch.lookup59
  %.sink57 = phi i32 [ %switch.load62, %switch.lookup59 ], [ 31, %for.body32 ]
  %add35 = add nuw nsw i32 %sum.445, %.sink57
  %inc51 = add nsw i32 %9, 1
  %exitcond.not = icmp eq i32 %inc51, %3
  br i1 %exitcond.not, label %if.end53, label %for.body32, !llvm.loop !12

if.end53:                                         ; preds = %for.inc50, %for.inc
  %sum.3 = phi i32 [ %add, %for.inc ], [ %add35, %for.inc50 ]
  store i32 %3, ptr %b, align 4, !tbaa !5
  %rem54 = srem i32 %sum.3, 7
  %cmp55 = icmp eq i32 %rem54, 0
  br i1 %cmp55, label %if.then56, label %if.else59

if.then56:                                        ; preds = %for.cond30thread-pre-split, %if.then10, %if.end53
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep49 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %12 = load ptr, ptr %gep49, align 8, !tbaa !15
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then56
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then56
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 56
  %13 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !33
  %tobool.not.i1.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 67
  %14 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !39
  br label %if.end62

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %12)
  %vtable.i.i.i = load ptr, ptr %12, align 8, !tbaa !13
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %15 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %15(ptr noundef nonnull align 8 dereferenceable(570) %12, i8 noundef signext 10)
  br label %if.end62

if.else59:                                        ; preds = %if.end53
  %call1.i18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  %vtable.i22 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i23 = getelementptr i8, ptr %vtable.i22, i64 -24
  %vbase.offset.i24 = load i64, ptr %vbase.offset.ptr.i23, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i24
  %16 = load ptr, ptr %gep, align 8, !tbaa !15
  %tobool.not.i.i.i27 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i27, label %if.then.i.i.i40, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28

if.then.i.i.i40:                                  ; preds = %if.else59
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28: ; preds = %if.else59
  %_M_widen_ok.i.i.i29 = getelementptr inbounds nuw i8, ptr %16, i64 56
  %17 = load i8, ptr %_M_widen_ok.i.i.i29, align 8, !tbaa !33
  %tobool.not.i1.i.i30 = icmp eq i8 %17, 0
  br i1 %tobool.not.i1.i.i30, label %if.end.i.i.i36, label %if.then.i2.i.i31

if.then.i2.i.i31:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28
  %arrayidx.i.i.i32 = getelementptr inbounds nuw i8, ptr %16, i64 67
  %18 = load i8, ptr %arrayidx.i.i.i32, align 1, !tbaa !39
  br label %if.end62

if.end.i.i.i36:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %16)
  %vtable.i.i.i37 = load ptr, ptr %16, align 8, !tbaa !13
  %vfn.i.i.i38 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i37, i64 48
  %19 = load ptr, ptr %vfn.i.i.i38, align 8
  %call.i.i.i39 = call noundef signext i8 %19(ptr noundef nonnull align 8 dereferenceable(570) %16, i8 noundef signext 10)
  br label %if.end62

if.end62:                                         ; preds = %if.end.i.i.i36, %if.then.i2.i.i31, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i33.sink = phi i8 [ %14, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %18, %if.then.i2.i.i31 ], [ %call.i.i.i39, %if.end.i.i.i36 ]
  %call1.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i33.sink)
  %call.i.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i34)
  %inc64 = add nuw nsw i32 %i.051, 1
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.051, %20
  br i1 %cmp.not.not, label %for.body, label %for.end65, !llvm.loop !40

for.end65:                                        ; preds = %if.end62, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

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
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = !{!16, !30, i64 240}
!16 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0, !27, i64 216, !7, i64 224, !28, i64 225, !29, i64 232, !30, i64 240, !31, i64 248, !32, i64 256}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !23, i64 48, !7, i64 64, !6, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !7, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!27 = !{!"p1 _ZTSSo", !22, i64 0}
!28 = !{!"bool", !7, i64 0}
!29 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!30 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!31 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!32 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!33 = !{!34, !7, i64 56}
!34 = !{!"_ZTSSt5ctypeIcE", !35, i64 0, !36, i64 16, !28, i64 24, !37, i64 32, !37, i64 40, !38, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!35 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!36 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!37 = !{!"p1 int", !22, i64 0}
!38 = !{!"p1 short", !22, i64 0}
!39 = !{!7, !7, i64 0}
!40 = distinct !{!40, !10, !11}
