; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7iugsbgx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@g_pos = dso_local local_unnamed_addr global i32 38, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [40 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %num) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %num, i8 0, i64 160, i1 false)
  %arrayidx = getelementptr inbounds nuw i8, ptr %num, i64 152
  store i32 1, ptr %arrayidx, align 8, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14.i = icmp eq i32 %0, 0
  %.pre = load i32, ptr @g_pos, align 4, !tbaa !5
  br i1 %cmp14.i, label %_Z3PowPii.exit, label %for.cond.preheader.i.preheader

for.cond.preheader.i.preheader:                   ; preds = %entry
  %scevgep = getelementptr inbounds nuw i8, ptr %num, i64 156
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.cond.preheader.i.preheader, %while.end.i
  %1 = phi i32 [ %6, %while.end.i ], [ %.pre, %for.cond.preheader.i.preheader ]
  %n.tr15.i = phi i32 [ %sub12.i, %while.end.i ], [ %0, %for.cond.preheader.i.preheader ]
  %cmp1.not12.i = icmp sgt i32 %1, 39
  br i1 %cmp1.not12.i, label %while.cond.i.preheader, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %2 = sext i32 %1 to i64
  %load_initial = load i32, ptr %scevgep, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %store_forwarded = phi i32 [ %load_initial, %for.body.i.preheader ], [ %add.i, %for.body.i ]
  %indvars.iv.i = phi i64 [ 39, %for.body.i.preheader ], [ %indvars.iv.next.i, %for.body.i ]
  %3 = getelementptr i32, ptr %num, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %3, i64 -4
  %4 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %mul.i = shl nsw i32 %4, 1
  %div.i = sdiv i32 %store_forwarded, 10
  %add.i = add nsw i32 %div.i, %mul.i
  store i32 %add.i, ptr %arrayidx.i, align 4, !tbaa !5
  %rem.i = srem i32 %store_forwarded, 10
  store i32 %rem.i, ptr %3, align 4, !tbaa !5
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %cmp1.not.not.i = icmp sgt i64 %indvars.iv.i, %2
  br i1 %cmp1.not.not.i, label %for.body.i, label %while.cond.i.preheader, !llvm.loop !9

while.cond.i.preheader:                           ; preds = %for.body.i, %for.cond.preheader.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.cond.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %while.cond.i ], [ 0, %while.cond.i.preheader ]
  %arrayidx10.i = getelementptr inbounds nuw i32, ptr %num, i64 %indvars.iv17.i
  %5 = load i32, ptr %arrayidx10.i, align 4, !tbaa !5
  %cmp11.i = icmp eq i32 %5, 0
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1
  br i1 %cmp11.i, label %while.cond.i, label %while.end.i, !llvm.loop !12

while.end.i:                                      ; preds = %while.cond.i
  %6 = trunc nuw nsw i64 %indvars.iv17.i to i32
  %sub12.i = add nsw i32 %n.tr15.i, -1
  %cmp.i = icmp eq i32 %sub12.i, 0
  br i1 %cmp.i, label %_Z3PowPii.exit.loopexit, label %for.cond.preheader.i

_Z3PowPii.exit.loopexit:                          ; preds = %while.end.i
  store i32 %6, ptr @g_pos, align 4, !tbaa !5
  br label %_Z3PowPii.exit

_Z3PowPii.exit:                                   ; preds = %_Z3PowPii.exit.loopexit, %entry
  %7 = phi i32 [ %6, %_Z3PowPii.exit.loopexit ], [ %.pre, %entry ]
  %cmp4 = icmp slt i32 %7, 39
  br i1 %cmp4, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %_Z3PowPii.exit
  %8 = sext i32 %7 to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %_Z3PowPii.exit
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %9 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !15
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 56
  %10 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !33
  %tobool.not.i1.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 67
  %11 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !39
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %9)
  %vtable.i.i.i = load ptr, ptr %9, align 8, !tbaa !13
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %12 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %12(ptr noundef nonnull align 8 dereferenceable(570) %9, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %11, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %num) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %8, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx1 = getelementptr inbounds [40 x i32], ptr %num, i64 0, i64 %indvars.iv
  %13 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %14 = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %14, 39
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !40
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z3PowPii(ptr noundef captures(none) %num, i32 noundef %n) local_unnamed_addr #4 {
entry:
  %cmp14 = icmp eq i32 %n, 0
  br i1 %cmp14, label %cleanup, label %for.cond.preheader.preheader

for.cond.preheader.preheader:                     ; preds = %entry
  %.pre = load i32, ptr @g_pos, align 4, !tbaa !5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.preheader, %while.end
  %0 = phi i32 [ %6, %while.end ], [ %.pre, %for.cond.preheader.preheader ]
  %n.tr15 = phi i32 [ %sub12, %while.end ], [ %n, %for.cond.preheader.preheader ]
  %cmp1.not12 = icmp sgt i32 %0, 39
  br i1 %cmp1.not12, label %while.cond.preheader, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 39, %for.cond.preheader ]
  %1 = getelementptr i32, ptr %num, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %1, i64 -4
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  %3 = load i32, ptr %1, align 4, !tbaa !5
  %div = sdiv i32 %3, 10
  %add = add nsw i32 %div, %mul
  store i32 %add, ptr %arrayidx, align 4, !tbaa !5
  %rem = srem i32 %3, 10
  store i32 %rem, ptr %1, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %4 = load i32, ptr @g_pos, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp1.not.not = icmp sgt i64 %indvars.iv, %5
  br i1 %cmp1.not.not, label %for.body, label %while.cond.preheader, !llvm.loop !9

while.cond.preheader:                             ; preds = %for.body, %for.cond.preheader
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %while.cond ], [ 0, %while.cond.preheader ]
  %6 = trunc nuw nsw i64 %indvars.iv17 to i32
  store i32 %6, ptr @g_pos, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds nuw i32, ptr %num, i64 %indvars.iv17
  %7 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %7, 0
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br i1 %cmp11, label %while.cond, label %while.end, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %sub12 = add nsw i32 %n.tr15, -1
  %cmp = icmp eq i32 %sub12, 0
  br i1 %cmp, label %cleanup, label %for.cond.preheader

cleanup:                                          ; preds = %while.end, %entry
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
