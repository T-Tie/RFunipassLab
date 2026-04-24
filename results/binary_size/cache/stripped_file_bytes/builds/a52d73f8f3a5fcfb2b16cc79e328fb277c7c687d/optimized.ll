; ModuleID = '<stdin>'
source_filename = "/tmp/tmp33njbwyd.cpp"
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
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [110 x [110 x i32]], align 16
  %b = alloca [110 x [110 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %b) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %l)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %m)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup4, %entry
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.cond.cleanup4 ], [ 0, %entry ]
  %0 = load i32, ptr %l, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv30, %1
  br i1 %cmp, label %for.cond2, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call12, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond15

for.cond2:                                        ; preds = %for.cond, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.cond ]
  %2 = load i32, ptr %m, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4

for.cond.cleanup4:                                ; preds = %for.cond2
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond, !llvm.loop !9

for.body5:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv30, i64 %indvars.iv
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond.cleanup22, %for.cond.cleanup
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.cond.cleanup22 ], [ 0, %for.cond.cleanup ]
  %4 = load i32, ptr %m, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp16 = icmp slt i64 %indvars.iv36, %5
  br i1 %cmp16, label %for.cond20, label %for.cond36

for.cond20:                                       ; preds = %for.cond15, %for.body23
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body23 ], [ 0, %for.cond15 ]
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp21 = icmp slt i64 %indvars.iv33, %7
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup22

for.cond.cleanup22:                               ; preds = %for.cond20
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond15, !llvm.loop !13

for.body23:                                       ; preds = %for.cond20
  %arrayidx27 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv36, i64 %indvars.iv33
  %call28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx27)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond20, !llvm.loop !14

for.cond36:                                       ; preds = %for.cond15, %for.cond.cleanup43
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.cond.cleanup43 ], [ 0, %for.cond15 ]
  %8 = load i32, ptr %l, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp37 = icmp slt i64 %indvars.iv45, %9
  br i1 %cmp37, label %for.cond41, label %for.cond.cleanup38

for.cond.cleanup38:                               ; preds = %for.cond36
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #5
  ret i32 0

for.cond41:                                       ; preds = %for.cond36, %for.inc76
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc76 ], [ 0, %for.cond36 ]
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp42 = icmp slt i64 %indvars.iv42, %11
  br i1 %cmp42, label %for.body44, label %for.cond.cleanup43

for.cond.cleanup43:                               ; preds = %for.cond41
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond36, !llvm.loop !15

for.body44:                                       ; preds = %for.cond41
  %12 = load i32, ptr %m, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond49

for.cond49:                                       ; preds = %for.body52, %for.body44
  %13 = phi i32 [ %add, %for.body52 ], [ 0, %for.body44 ]
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body52 ], [ 0, %for.body44 ]
  %exitcond.not = icmp eq i64 %indvars.iv39, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup51, label %for.body52

for.cond.cleanup51:                               ; preds = %for.cond49
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add nsw i32 %14, -1
  %15 = zext i32 %sub to i64
  %cmp73 = icmp eq i64 %indvars.iv42, %15
  br i1 %cmp73, label %if.then, label %if.else

for.body52:                                       ; preds = %for.cond49
  %arrayidx56 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv45, i64 %indvars.iv39
  %16 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %arrayidx60 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv39, i64 %indvars.iv42
  %17 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %mul = mul nsw i32 %17, %16
  %add = add nsw i32 %13, %mul
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond49, !llvm.loop !16

if.then:                                          ; preds = %for.cond.cleanup51
  %vtable.i23 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i24 = getelementptr i8, ptr %vtable.i23, i64 -24
  %vbase.offset.i25 = load i64, ptr %vbase.offset.ptr.i24, align 8
  %add.ptr.i26 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i25
  %call.i27 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i26, i8 noundef signext 10)
  %call1.i28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i27)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i28)
  br label %for.inc76

if.else:                                          ; preds = %for.cond.cleanup51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !19
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %18 = load i64, ptr %gep, align 8, !tbaa !20
  %cmp.not.i = icmp eq i64 %18, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.else
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.inc76

for.inc76:                                        ; preds = %if.then, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond41, !llvm.loop !31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !22, i64 16}
!21 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !23, i64 24, !24, i64 28, !24, i64 32, !25, i64 40, !27, i64 48, !7, i64 64, !6, i64 192, !28, i64 200, !29, i64 208}
!22 = !{!"long", !7, i64 0}
!23 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!24 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!25 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !22, i64 8}
!28 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!29 = !{!"_ZTSSt6locale", !30, i64 0}
!30 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
!31 = distinct !{!31, !10, !11}
