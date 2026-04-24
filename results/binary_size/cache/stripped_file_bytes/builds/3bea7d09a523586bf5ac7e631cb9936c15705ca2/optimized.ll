; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyf5nuhlf.cpp"
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
  %w = alloca [2000 x [50 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 100000, ptr nonnull %w) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100000) %w, i8 0, i64 100000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %j.1, %do.cond ]
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %do.cond ]
  %jishu.0 = phi i32 [ 0, %entry ], [ %jishu.1, %do.cond ]
  %call2 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  switch i32 %call2, label %if.then [
    i32 32, label %if.else
    i32 10, label %if.else
  ]

if.then:                                          ; preds = %do.body
  %conv = trunc i32 %call2 to i8
  %idxprom = sext i32 %i.0 to i64
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [2000 x [50 x i8]], ptr %w, i64 0, i64 %idxprom, i64 %idxprom4
  store i8 %conv, ptr %arrayidx5, align 1, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %do.cond

if.else:                                          ; preds = %do.body, %do.body
  %inc6 = add nsw i32 %i.0, 1
  %inc7 = add nsw i32 %jishu.0, 1
  br label %do.cond

do.cond:                                          ; preds = %if.then, %if.else
  %j.1 = phi i32 [ %inc, %if.then ], [ 0, %if.else ]
  %i.1 = phi i32 [ %i.0, %if.then ], [ %inc6, %if.else ]
  %jishu.1 = phi i32 [ %jishu.0, %if.then ], [ %inc7, %if.else ]
  %0 = load i32, ptr %n, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %jishu.1, %0
  br i1 %cmp8, label %do.body, label %for.cond.preheader, !llvm.loop !10

for.cond.preheader:                               ; preds = %do.cond
  %cmp926 = icmp sgt i32 %0, 0
  br i1 %cmp926, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %cd.028 = phi i32 [ %cd.1, %for.inc ], [ 0, %for.cond.preheader ]
  %conv10 = sext i32 %cd.028 to i64
  %arrayidx12 = getelementptr inbounds nuw [2000 x [50 x i8]], ptr %w, i64 0, i64 %indvars.iv
  %call13 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #6
  %add = add i64 %call13, %conv10
  %cmp14 = icmp ult i64 %add, 81
  br i1 %cmp14, label %if.then15, label %if.else45

if.then15:                                        ; preds = %for.body
  %cmp16 = icmp eq i32 %cd.028, 0
  br i1 %cmp16, label %if.then17, label %if.else30

if.then17:                                        ; preds = %if.then15
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx12, i64 noundef %call13)
  %call27 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #7
  %1 = trunc i64 %call27 to i32
  %conv29 = add i32 %1, 1
  br label %for.inc

if.else30:                                        ; preds = %if.then15
  %call1.i19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %call.i.i20 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #6
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx12, i64 noundef %call.i.i20)
  %add36 = add nsw i32 %cd.028, 1
  %call41 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #7
  %2 = trunc i64 %call41 to i32
  %conv43 = add i32 %add36, %2
  br label %for.inc

if.else45:                                        ; preds = %for.body
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %3 = load ptr, ptr %gep, align 8, !tbaa !15
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else45
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.else45
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %4 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !33
  %tobool.not.i1.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 67
  %5 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %3)
  %vtable.i.i.i = load ptr, ptr %3, align 8, !tbaa !13
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %6 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %6(ptr noundef nonnull align 8 dereferenceable(570) %3, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %5, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i24)
  %call.i.i22 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #6
  %call1.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx12, i64 noundef %call.i.i22)
  %call54 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #7
  %7 = trunc i64 %call54 to i32
  %conv56 = add i32 %7, 1
  br label %for.inc

for.inc:                                          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %if.else30, %if.then17
  %cd.1 = phi i32 [ %conv29, %if.then17 ], [ %conv43, %if.else30 ], [ %conv56, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr %n, align 4, !tbaa !8
  %9 = sext i32 %8 to i64
  %cmp9 = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp9, label %for.body, label %for.end, !llvm.loop !39

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  call void @llvm.lifetime.end.p0(i64 100000, ptr nonnull %w) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = !{!16, !30, i64 240}
!16 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0, !27, i64 216, !6, i64 224, !28, i64 225, !29, i64 232, !30, i64 240, !31, i64 248, !32, i64 256}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !23, i64 48, !6, i64 64, !9, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !6, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!22 = !{!"any pointer", !6, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!27 = !{!"p1 _ZTSSo", !22, i64 0}
!28 = !{!"bool", !6, i64 0}
!29 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!30 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!31 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!32 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!33 = !{!34, !6, i64 56}
!34 = !{!"_ZTSSt5ctypeIcE", !35, i64 0, !36, i64 16, !28, i64 24, !37, i64 32, !37, i64 40, !38, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!35 = !{!"_ZTSNSt6locale5facetE", !9, i64 8}
!36 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!37 = !{!"p1 int", !22, i64 0}
!38 = !{!"p1 short", !22, i64 0}
!39 = distinct !{!39, !11, !12}
