; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfsasrghc.cpp"
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
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv38, %1
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %2 = load i32, ptr %x2, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv38, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc27 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %y1, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14 = icmp slt i64 %indvars.iv44, %5
  br i1 %cmp14, label %for.cond16, label %for.end29

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.body18 ], [ 0, %for.cond13 ]
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp17 = icmp slt i64 %indvars.iv41, %7
  br i1 %cmp17, label %for.body18, label %for.inc27

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv44, i64 %indvars.iv41
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond13, !llvm.loop !14

for.end29:                                        ; preds = %for.cond13
  store i32 0, ptr %c, align 16, !tbaa !5
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %9 = load i32, ptr %y2, align 4
  %10 = load i32, ptr %x2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %smax53 = call i32 @llvm.smax.i32(i32 %9, i32 0)
  %smax59 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %wide.trip.count60 = zext nneg i32 %smax59 to i64
  %wide.trip.count54 = zext nneg i32 %smax53 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond32

for.cond32:                                       ; preds = %for.cond.cleanup, %for.end29
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.cond.cleanup ], [ 0, %for.end29 ]
  %exitcond61.not = icmp eq i64 %indvars.iv56, %wide.trip.count60
  br i1 %exitcond61.not, label %for.cond68, label %for.cond36

for.cond36:                                       ; preds = %for.cond32, %for.cond.cleanup41
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.cond.cleanup41 ], [ 0, %for.cond32 ]
  %exitcond55.not = icmp eq i64 %indvars.iv50, %wide.trip.count54
  br i1 %exitcond55.not, label %for.cond.cleanup, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.cond36
  %arrayidx46 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv56, i64 %indvars.iv50
  br label %for.cond39

for.cond.cleanup:                                 ; preds = %for.cond36
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond32, !llvm.loop !15

for.cond39:                                       ; preds = %for.cond39.preheader, %for.body42
  %indvars.iv47 = phi i64 [ 0, %for.cond39.preheader ], [ %indvars.iv.next48, %for.body42 ]
  %exitcond.not = icmp eq i64 %indvars.iv47, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup41, label %for.body42

for.cond.cleanup41:                               ; preds = %for.cond39
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond36, !llvm.loop !16

for.body42:                                       ; preds = %for.cond39
  %11 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %arrayidx50 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv56, i64 %indvars.iv47
  %12 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %arrayidx54 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv47, i64 %indvars.iv50
  %13 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %mul = mul nsw i32 %13, %12
  %add = add nsw i32 %mul, %11
  store i32 %add, ptr %arrayidx46, align 4, !tbaa !5
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond39, !llvm.loop !17

for.cond68:                                       ; preds = %for.cond32, %for.cond.cleanup74
  %14 = phi i32 [ %17, %for.cond.cleanup74 ], [ %9, %for.cond32 ]
  %15 = phi i32 [ %.pre, %for.cond.cleanup74 ], [ %8, %for.cond32 ]
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.cond.cleanup74 ], [ 0, %for.cond32 ]
  %16 = sext i32 %15 to i64
  %cmp69 = icmp slt i64 %indvars.iv65, %16
  br i1 %cmp69, label %for.cond72, label %for.end95

for.cond72:                                       ; preds = %for.cond68, %for.inc90
  %17 = phi i32 [ %.pre68, %for.inc90 ], [ %14, %for.cond68 ]
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.inc90 ], [ 0, %for.cond68 ]
  %18 = sext i32 %17 to i64
  %cmp73 = icmp slt i64 %indvars.iv62, %18
  br i1 %cmp73, label %for.body75, label %for.cond.cleanup74

for.cond.cleanup74:                               ; preds = %for.cond72
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond68, !llvm.loop !18

for.body75:                                       ; preds = %for.cond72
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %19 = trunc nuw i64 %indvars.iv.next63 to i32
  %rem = srem i32 %19, %17
  %cmp77.not = icmp eq i32 %rem, 0
  %arrayidx87 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv65, i64 %indvars.iv62
  %20 = load i32, ptr %arrayidx87, align 4, !tbaa !5
  %call88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %20)
  br i1 %cmp77.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body75
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !19
  %vtable.i = load ptr, ptr %call88, align 8, !tbaa !20
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call88, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  %21 = load i64, ptr %_M_width.i.i, align 8, !tbaa !22
  %cmp.not.i = icmp eq i64 %21, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call88, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call88, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.inc90

if.else:                                          ; preds = %for.body75
  %vtable.i31 = load ptr, ptr %call88, align 8, !tbaa !20
  %vbase.offset.ptr.i32 = getelementptr i8, ptr %vtable.i31, i64 -24
  %vbase.offset.i33 = load i64, ptr %vbase.offset.ptr.i32, align 8
  %add.ptr.i34 = getelementptr inbounds i8, ptr %call88, i64 %vbase.offset.i33
  %call.i35 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i34, i8 noundef signext 10)
  %call1.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call88, i8 noundef signext %call.i35)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i36)
  br label %for.inc90

for.inc90:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %if.else
  %.pre68 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond72, !llvm.loop !33

for.end95:                                        ; preds = %for.cond68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

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
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
!22 = !{!23, !24, i64 16}
!23 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !25, i64 24, !26, i64 28, !26, i64 32, !27, i64 40, !29, i64 48, !7, i64 64, !6, i64 192, !30, i64 200, !31, i64 208}
!24 = !{!"long", !7, i64 0}
!25 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!26 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!27 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !28, i64 0}
!28 = !{!"any pointer", !7, i64 0}
!29 = !{!"_ZTSNSt8ios_base6_WordsE", !28, i64 0, !24, i64 8}
!30 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !28, i64 0}
!31 = !{!"_ZTSSt6locale", !32, i64 0}
!32 = !{!"p1 _ZTSNSt6locale5_ImplE", !28, i64 0}
!33 = distinct !{!33, !10, !11}
