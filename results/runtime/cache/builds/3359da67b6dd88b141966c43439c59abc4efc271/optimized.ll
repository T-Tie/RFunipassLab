; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgn9td3mj.cpp"
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
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40804) %a, i8 0, i64 40804, i1 false)
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40804) %b, i8 0, i64 40804, i1 false)
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40804) %c, i8 0, i64 40804, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc8 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv36, %1
  br i1 %cmp.not, label %for.end10, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp3.not, label %for.inc8, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv36, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc27 ], [ 1, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14.not = icmp sgt i64 %indvars.iv42, %5
  br i1 %cmp14.not, label %for.cond30.preheader, label %for.cond16

for.cond30.preheader:                             ; preds = %for.cond13
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %8 = load i32, ptr %y1, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %9 = add nuw i32 %smax, 1
  %smax51 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %10 = add nuw i32 %smax51, 1
  %smax57 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %11 = add nuw i32 %smax57, 1
  %wide.trip.count58 = zext i32 %11 to i64
  %wide.trip.count52 = zext i32 %10 to i64
  %wide.trip.count = zext i32 %9 to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body18 ], [ 1, %for.cond13 ]
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp17.not = icmp sgt i64 %indvars.iv39, %13
  br i1 %cmp17.not, label %for.inc27, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv42, i64 %indvars.iv39
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond13, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc57
  %indvars.iv54 = phi i64 [ 1, %for.cond30.preheader ], [ %indvars.iv.next55, %for.inc57 ]
  %exitcond59 = icmp eq i64 %indvars.iv54, %wide.trip.count58
  br i1 %exitcond59, label %for.cond60, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.inc54
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc54 ], [ 1, %for.cond30 ]
  %exitcond53 = icmp eq i64 %indvars.iv48, %wide.trip.count52
  br i1 %exitcond53, label %for.inc57, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33
  %arrayidx50 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv54, i64 %indvars.iv48
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.body38
  %indvars.iv45 = phi i64 [ 1, %for.cond36.preheader ], [ %indvars.iv.next46, %for.body38 ]
  %exitcond = icmp eq i64 %indvars.iv45, %wide.trip.count
  br i1 %exitcond, label %for.inc54, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv54, i64 %indvars.iv45
  %14 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %arrayidx46 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv45, i64 %indvars.iv48
  %15 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %mul = mul nsw i32 %15, %14
  %16 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %add = add nsw i32 %16, %mul
  store i32 %add, ptr %arrayidx50, align 4, !tbaa !5
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond36, !llvm.loop !15

for.inc54:                                        ; preds = %for.cond36
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond33, !llvm.loop !16

for.inc57:                                        ; preds = %for.cond33
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond30, !llvm.loop !17

for.cond60:                                       ; preds = %for.cond30, %for.end78
  %17 = phi i32 [ %.pre, %for.end78 ], [ %6, %for.cond30 ]
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.end78 ], [ 1, %for.cond30 ]
  %18 = sext i32 %17 to i64
  %cmp61.not = icmp sgt i64 %indvars.iv63, %18
  br i1 %cmp61.not, label %for.end82, label %for.body62

for.body62:                                       ; preds = %for.cond60
  %arrayidx65 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv63, i64 1
  %19 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %call66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %19)
  br label %for.cond67

for.cond67:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.body62
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 2, %for.body62 ]
  %20 = load i32, ptr %y2, align 4, !tbaa !5
  %21 = sext i32 %20 to i64
  %cmp68.not = icmp sgt i64 %indvars.iv60, %21
  br i1 %cmp68.not, label %for.end78, label %for.body69

for.body69:                                       ; preds = %for.cond67
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !18
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %22 = load i64, ptr %gep, align 8, !tbaa !21
  %cmp.not.i = icmp eq i64 %22, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body69
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body69
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %arrayidx74 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv63, i64 %indvars.iv60
  %23 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i32 noundef %23)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond67, !llvm.loop !32

for.end78:                                        ; preds = %for.cond67
  %vtable.i29 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %vbase.offset.ptr.i30 = getelementptr i8, ptr %vtable.i29, i64 -24
  %vbase.offset.i31 = load i64, ptr %vbase.offset.ptr.i30, align 8
  %add.ptr.i32 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i31
  %call.i33 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i32, i8 noundef signext 10)
  %call1.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i33)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i34)
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !33

for.end82:                                        ; preds = %for.cond60
  %call83 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call84 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!17 = distinct !{!17, !10, !11}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !8, i64 0}
!21 = !{!22, !23, i64 16}
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
!32 = distinct !{!32, !10, !11}
!33 = distinct !{!33, !10, !11}
