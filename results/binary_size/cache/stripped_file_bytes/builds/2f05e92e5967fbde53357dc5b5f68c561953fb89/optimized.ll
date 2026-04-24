; ModuleID = '<stdin>'
source_filename = "/tmp/tmpp92bf4r1.cpp"
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
  %input = alloca [101 x i8], align 16
  %word = alloca [100 x [101 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 101, ptr nonnull %input) #6
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %0 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !8
  %tobool.not.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #7
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
  %call2.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %input, i64 noundef 101, i8 noundef signext %retval.0.i.i.i)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %input) #8
  %conv = trunc i64 %call2 to i32
  %cmp.not.not27 = icmp sgt i32 %conv, 0
  br i1 %cmp.not.not27, label %for.body.preheader, label %for.cond30.preheader.thread

for.body.preheader:                               ; preds = %_ZNSi7getlineEPcl.exit
  %wide.trip.count = and i64 %call2, 2147483647
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check, label %for.body.preheader52, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %call2, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %4 = getelementptr inbounds nuw [101 x i8], ptr %input, i64 0, i64 %index
  %wide.load = load <4 x i8>, ptr %4, align 4, !tbaa !34
  %5 = icmp eq <4 x i8> %wide.load, splat (i8 32)
  %6 = zext <4 x i1> %5 to <4 x i32>
  %7 = add <4 x i32> %vec.phi, %6
  %index.next = add nuw i64 %index, 4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %9 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %7)
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %for.body11.preheader, label %for.body.preheader52

for.body.preheader52:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %sumblank.028.ph = phi i32 [ 0, %for.body.preheader ], [ %9, %middle.block ]
  br label %for.body

for.cond30.preheader.thread:                      ; preds = %_ZNSi7getlineEPcl.exit
  call void @llvm.lifetime.start.p0(i64 10100, ptr nonnull %word) #6
  br label %for.body33.preheader

for.body11.preheader:                             ; preds = %for.body, %middle.block
  %spec.select.lcssa = phi i32 [ %9, %middle.block ], [ %spec.select, %for.body ]
  call void @llvm.lifetime.start.p0(i64 10100, ptr nonnull %word) #6
  %wide.trip.count40 = and i64 %call2, 2147483647
  br label %for.body11

for.body:                                         ; preds = %for.body.preheader52, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader52 ]
  %sumblank.028 = phi i32 [ %spec.select, %for.body ], [ %sumblank.028.ph, %for.body.preheader52 ]
  %arrayidx = getelementptr inbounds nuw [101 x i8], ptr %input, i64 0, i64 %indvars.iv
  %10 = load i8, ptr %arrayidx, align 1, !tbaa !34
  %cmp4 = icmp eq i8 %10, 32
  %inc = zext i1 %cmp4 to i32
  %spec.select = add nuw nsw i32 %sumblank.028, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body11.preheader, label %for.body, !llvm.loop !40

for.cond30.preheader:                             ; preds = %for.inc26
  %11 = zext nneg i32 %spec.select.lcssa to i64
  br label %for.body33.preheader

for.body33.preheader:                             ; preds = %for.cond30.preheader, %for.cond30.preheader.thread
  %sumblank.0.lcssa4650 = phi i64 [ 0, %for.cond30.preheader.thread ], [ %11, %for.cond30.preheader ]
  br label %for.body33

for.body11:                                       ; preds = %for.body11.preheader, %for.inc26
  %indvars.iv37 = phi i64 [ 0, %for.body11.preheader ], [ %indvars.iv.next38, %for.inc26 ]
  %k.032 = phi i32 [ 0, %for.body11.preheader ], [ %k.1, %for.inc26 ]
  %i6.031 = phi i32 [ 0, %for.body11.preheader ], [ %i6.1, %for.inc26 ]
  %arrayidx13 = getelementptr inbounds nuw [101 x i8], ptr %input, i64 0, i64 %indvars.iv37
  %12 = load i8, ptr %arrayidx13, align 1, !tbaa !34
  %cmp15 = icmp eq i8 %12, 32
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body11
  %inc17 = add nsw i32 %i6.031, 1
  br label %for.inc26

if.else:                                          ; preds = %for.body11
  %idxprom20 = sext i32 %i6.031 to i64
  %idxprom22 = sext i32 %k.032 to i64
  %arrayidx23 = getelementptr inbounds [100 x [101 x i8]], ptr %word, i64 0, i64 %idxprom20, i64 %idxprom22
  store i8 %12, ptr %arrayidx23, align 1, !tbaa !34
  %inc24 = add nsw i32 %k.032, 1
  br label %for.inc26

for.inc26:                                        ; preds = %if.then16, %if.else
  %i6.1 = phi i32 [ %inc17, %if.then16 ], [ %i6.031, %if.else ]
  %k.1 = phi i32 [ 0, %if.then16 ], [ %inc24, %if.else ]
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %for.cond30.preheader, label %for.body11, !llvm.loop !41

for.cond.cleanup32:                               ; preds = %for.inc47
  call void @llvm.lifetime.end.p0(i64 10100, ptr nonnull %word) #6
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %input) #6
  ret i32 0

for.body33:                                       ; preds = %for.body33.preheader, %for.inc47
  %indvars.iv42 = phi i64 [ %sumblank.0.lcssa4650, %for.body33.preheader ], [ %indvars.iv.next43, %for.inc47 ]
  %cmp34 = icmp eq i64 %indvars.iv42, %sumblank.0.lcssa4650
  br i1 %cmp34, label %for.inc47, label %if.else40

if.else40:                                        ; preds = %for.body33
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc47

for.inc47:                                        ; preds = %for.body33, %if.else40
  %indvars.iv42.pn = phi i64 [ %indvars.iv42, %if.else40 ], [ %sumblank.0.lcssa4650, %for.body33 ]
  %arrayidx37.sink51 = getelementptr inbounds nuw [100 x [101 x i8]], ptr %word, i64 0, i64 %indvars.iv42.pn
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx37.sink51) #6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx37.sink51, i64 noundef %call.i.i)
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1
  %cmp31 = icmp sgt i64 %indvars.iv42, 0
  br i1 %cmp31, label %for.body33, label %for.cond.cleanup32, !llvm.loop !42
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind willreturn memory(read) }

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
!40 = distinct !{!40, !36, !37, !38}
!41 = distinct !{!41, !36, !37}
!42 = distinct !{!42, !36, !37}
