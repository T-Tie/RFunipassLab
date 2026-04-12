; ModuleID = '<stdin>'
source_filename = "/tmp/tmpiegxet4h.cpp"
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
  %m = alloca [20001 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 80004, ptr nonnull %m) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80004) %m, i8 0, i64 80004, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond2, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %m, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond, %for.cond.cleanup
  %n.promoted29 = phi i32 [ %sub25.ph, %for.cond.cleanup ], [ %0, %for.cond ]
  %i.1 = phi i32 [ %inc29, %for.cond.cleanup ], [ 1, %for.cond ]
  %cmp3.not = icmp sgt i32 %i.1, %n.promoted29
  br i1 %cmp3.not, label %for.cond31, label %for.cond5.outer

for.cond5:                                        ; preds = %for.cond5.outer, %for.body7
  %j.0.in = phi i32 [ %j.0, %for.body7 ], [ %j.0.in.ph, %for.cond5.outer ]
  %cmp6.not.not = icmp slt i32 %j.0.in, %sub25.ph
  br i1 %cmp6.not.not, label %for.body7, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond5
  %inc29 = add nsw i32 %i.2.ph, 1
  br label %for.cond2, !llvm.loop !12

for.body7:                                        ; preds = %for.cond5
  %j.0 = add nsw i32 %j.0.in, 1
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds [20001 x i32], ptr %m, i64 0, i64 %idxprom10
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %2, %3
  br i1 %cmp12, label %for.cond13.preheader, label %for.cond5, !llvm.loop !13

for.cond13.preheader:                             ; preds = %for.body7
  %4 = sext i32 %j.0.in to i64
  %5 = add nsw i64 %4, 1
  %6 = sext i32 %sub25.ph to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body15
  %indvars.iv31 = phi i64 [ %5, %for.cond13.preheader ], [ %indvars.iv.next32, %for.body15 ]
  %cmp14.not = icmp sgt i64 %indvars.iv31, %6
  br i1 %cmp14.not, label %for.end23, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1
  %arrayidx18 = getelementptr inbounds [20001 x i32], ptr %m, i64 0, i64 %indvars.iv.next32
  %7 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds [20001 x i32], ptr %m, i64 0, i64 %indvars.iv31
  store i32 %7, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !14

for.end23:                                        ; preds = %for.cond13
  %8 = trunc nsw i64 %indvars.iv31 to i32
  %sub = add nsw i32 %sub25.ph, -1
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %sub24 = add nsw i32 %i.2.ph, -1
  br label %for.cond5.outer, !llvm.loop !13

for.cond5.outer:                                  ; preds = %for.cond2, %for.end23
  %sub25.ph = phi i32 [ %sub, %for.end23 ], [ %n.promoted29, %for.cond2 ]
  %i.2.ph = phi i32 [ %sub24, %for.end23 ], [ %i.1, %for.cond2 ]
  %j.0.in.ph = phi i32 [ %8, %for.end23 ], [ %i.1, %for.cond2 ]
  %idxprom8 = sext i32 %i.2.ph to i64
  %arrayidx9 = getelementptr inbounds [20001 x i32], ptr %m, i64 0, i64 %idxprom8
  br label %for.cond5

for.cond31:                                       ; preds = %for.cond2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %9 = phi i32 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %n.promoted29, %for.cond2 ]
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 1, %for.cond2 ]
  %10 = sext i32 %9 to i64
  %cmp33.not.not = icmp slt i64 %indvars.iv34, %10
  br i1 %cmp33.not.not, label %for.body34, label %for.end41

for.body34:                                       ; preds = %for.cond31
  %arrayidx36 = getelementptr inbounds nuw [20001 x i32], ptr %m, i64 0, i64 %indvars.iv34
  %11 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !15
  %vtable.i = load ptr, ptr %call37, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call37, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  %12 = load i64, ptr %_M_width.i.i, align 8, !tbaa !18
  %cmp.not.i = icmp eq i64 %12, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body34
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call37, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body34
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call37, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !29

for.end41:                                        ; preds = %for.cond31
  %arrayidx43 = getelementptr inbounds [20001 x i32], ptr %m, i64 0, i64 %10
  %13 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %vtable.i17 = load ptr, ptr %call44, align 8, !tbaa !16
  %vbase.offset.ptr.i18 = getelementptr i8, ptr %vtable.i17, i64 -24
  %vbase.offset.i19 = load i64, ptr %vbase.offset.ptr.i18, align 8
  %add.ptr.i20 = getelementptr inbounds i8, ptr %call44, i64 %vbase.offset.i19
  %call.i21 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i20, i8 noundef signext 10)
  %call1.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call44, i8 noundef signext %call.i21)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i22)
  call void @llvm.lifetime.end.p0(i64 80004, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!14 = distinct !{!14, !10, !11}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{!19, !20, i64 16}
!19 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !25, i64 48, !7, i64 64, !6, i64 192, !26, i64 200, !27, i64 208}
!20 = !{!"long", !7, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !24, i64 0, !20, i64 8}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !24, i64 0}
!27 = !{!"_ZTSSt6locale", !28, i64 0}
!28 = !{!"p1 _ZTSNSt6locale5_ImplE", !24, i64 0}
!29 = distinct !{!29, !10, !11}
