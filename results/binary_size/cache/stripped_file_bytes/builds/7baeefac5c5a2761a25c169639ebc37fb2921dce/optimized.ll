; ModuleID = '<stdin>'
source_filename = "/tmp/tmphc6f2by6.cpp"
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  %cmp17 = icmp sgt i32 %3, 0
  br i1 %cmp17, label %for.body, label %for.cond.cleanup34

for.cond.cleanup:                                 ; preds = %for.body
  %.pre = load i32, ptr %vla, align 16, !tbaa !5
  store i32 %.pre, ptr %vla1, align 16, !tbaa !5
  %cmp723 = icmp sgt i32 %5, 1
  br i1 %cmp723, label %for.cond9.preheader.preheader, label %for.cond.cleanup34

for.cond9.preheader.preheader:                    ; preds = %for.cond.cleanup
  %wide.trip.count38 = zext nneg i32 %5 to i64
  br label %for.cond9.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !9

for.cond9.preheader:                              ; preds = %for.cond9.preheader.preheader, %for.inc28
  %indvars.iv35 = phi i64 [ 1, %for.cond9.preheader.preheader ], [ %indvars.iv.next36, %for.inc28 ]
  %s.025 = phi i32 [ 1, %for.cond9.preheader.preheader ], [ %s.1, %for.inc28 ]
  %cmp1019 = icmp sgt i32 %s.025, 0
  br i1 %cmp1019, label %for.body11.lr.ph, label %for.end19

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv35
  %7 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %wide.trip.count = zext nneg i32 %s.025 to i64
  br label %for.body11

for.cond32.preheader:                             ; preds = %for.inc28
  %sub = add i32 %s.1, -1
  %cmp3327 = icmp sgt i32 %s.1, 1
  br i1 %cmp3327, label %for.body35.preheader, label %for.cond.cleanup34

for.body35.preheader:                             ; preds = %for.cond32.preheader
  %wide.trip.count43 = zext nneg i32 %sub to i64
  br label %for.body35

for.body11:                                       ; preds = %for.body11.lr.ph, %for.inc17
  %indvars.iv32 = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next33, %for.inc17 ]
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv32
  %8 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %7, %8
  br i1 %cmp16, label %for.end19.loopexit, label %for.inc17

for.inc17:                                        ; preds = %for.body11
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count
  br i1 %exitcond.not, label %if.then21, label %for.body11, !llvm.loop !12

for.end19.loopexit:                               ; preds = %for.body11
  %9 = trunc nuw nsw i64 %indvars.iv32 to i32
  br label %for.end19

for.end19:                                        ; preds = %for.end19.loopexit, %for.cond9.preheader
  %j.0.lcssa = phi i32 [ 0, %for.cond9.preheader ], [ %9, %for.end19.loopexit ]
  %cmp20 = icmp eq i32 %j.0.lcssa, %s.025
  br i1 %cmp20, label %if.then21, label %for.inc28

if.then21:                                        ; preds = %for.inc17, %for.end19
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv35
  %10 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %idxprom24 = sext i32 %s.025 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom24
  store i32 %10, ptr %arrayidx25, align 4, !tbaa !5
  %inc26 = add nsw i32 %s.025, 1
  br label %for.inc28

for.inc28:                                        ; preds = %for.end19, %if.then21
  %s.1 = phi i32 [ %inc26, %if.then21 ], [ %s.025, %for.end19 ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %for.cond32.preheader, label %for.cond9.preheader, !llvm.loop !13

for.cond.cleanup34:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %entry, %for.cond.cleanup, %for.cond32.preheader
  %sub50 = phi i32 [ %sub, %for.cond32.preheader ], [ 0, %for.cond.cleanup ], [ 0, %entry ], [ %sub, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %idxprom44 = sext i32 %sub50 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom44
  %11 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0

for.body35:                                       ; preds = %for.body35.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv40 = phi i64 [ 0, %for.body35.preheader ], [ %indvars.iv.next41, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %arrayidx37 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv40
  %12 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !14
  %vtable.i = load ptr, ptr %call38, align 8, !tbaa !15
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call38, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  %13 = load i64, ptr %_M_width.i.i, align 8, !tbaa !17
  %cmp.not.i = icmp eq i64 %13, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body35
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call38, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body35
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call38, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %for.cond.cleanup34, label %for.body35, !llvm.loop !28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

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
!13 = distinct !{!13, !10, !11}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!18, !19, i64 16}
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
!28 = distinct !{!28, !10, !11}
