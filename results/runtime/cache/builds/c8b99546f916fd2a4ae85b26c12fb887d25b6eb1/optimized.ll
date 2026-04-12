; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3inmxfpq.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %c, i8 0, i64 40000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv36, %1
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv36, i64 %indvars.iv
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
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc27 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14 = icmp slt i64 %indvars.iv42, %5
  br i1 %cmp14, label %for.cond16, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond13
  %6 = load i32, ptr %y1, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body18 ], [ 0, %for.cond13 ]
  %7 = load i32, ptr %y2, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp17 = icmp slt i64 %indvars.iv39, %8
  br i1 %cmp17, label %for.body18, label %for.inc27

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv42, i64 %indvars.iv39
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond13, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc57
  %indvars.iv52 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next53, %for.inc57 ]
  %exitcond55.not = icmp eq i64 %indvars.iv52, 100
  br i1 %exitcond55.not, label %for.cond60, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.inc54
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc54 ], [ 0, %for.cond30 ]
  %exitcond51.not = icmp eq i64 %indvars.iv48, 100
  br i1 %exitcond51.not, label %for.inc57, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33
  %arrayidx50 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv52, i64 %indvars.iv48
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.body38
  %indvars.iv45 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next46, %for.body38 ]
  %exitcond.not = icmp eq i64 %indvars.iv45, %wide.trip.count
  br i1 %exitcond.not, label %for.inc54, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv52, i64 %indvars.iv45
  %9 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %arrayidx46 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv45, i64 %indvars.iv48
  %10 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %mul = mul nsw i32 %10, %9
  %11 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %add = add nsw i32 %11, %mul
  store i32 %add, ptr %arrayidx50, align 4, !tbaa !5
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond36, !llvm.loop !15

for.inc54:                                        ; preds = %for.cond36
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond33, !llvm.loop !16

for.inc57:                                        ; preds = %for.cond33
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond30, !llvm.loop !17

for.cond60:                                       ; preds = %for.cond30, %for.end75
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.end75 ], [ 0, %for.cond30 ]
  %12 = load i32, ptr %x1, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp61 = icmp slt i64 %indvars.iv59, %13
  br i1 %cmp61, label %for.cond63, label %for.end79

for.cond63:                                       ; preds = %for.cond60, %for.inc73
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc73 ], [ 0, %for.cond60 ]
  %14 = load i32, ptr %y2, align 4, !tbaa !5
  %15 = sext i32 %14 to i64
  %cmp64 = icmp slt i64 %indvars.iv56, %15
  br i1 %cmp64, label %for.body65, label %for.end75

for.body65:                                       ; preds = %for.cond63
  %arrayidx69 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv59, i64 %indvars.iv56
  %16 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %call70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %16)
  %17 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %17, -1
  %18 = sext i32 %sub to i64
  %cmp71 = icmp slt i64 %indvars.iv56, %18
  br i1 %cmp71, label %if.then, label %for.inc73

if.then:                                          ; preds = %for.body65
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !18
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %19 = load i64, ptr %gep, align 8, !tbaa !21
  %cmp.not.i = icmp eq i64 %19, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.inc73

for.inc73:                                        ; preds = %for.body65, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond63, !llvm.loop !32

for.end75:                                        ; preds = %for.cond63
  %vtable.i29 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %vbase.offset.ptr.i30 = getelementptr i8, ptr %vtable.i29, i64 -24
  %vbase.offset.i31 = load i64, ptr %vbase.offset.ptr.i30, align 8
  %add.ptr.i32 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i31
  %call.i33 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i32, i8 noundef signext 10)
  %call1.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i33)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i34)
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond60, !llvm.loop !33

for.end79:                                        ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

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
