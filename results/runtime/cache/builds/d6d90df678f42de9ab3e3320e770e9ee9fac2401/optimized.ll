; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwdd4usic.cpp"
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
  %__c.addr.i22 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %sum = alloca [40 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sum) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 40
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [40 x i8], ptr %sum, i64 0, i64 %indvars.iv
  store i8 48, ptr %arrayidx, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %sum, i64 39
  store i8 49, ptr %arrayidx1, align 1, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !11
  %cmp2 = icmp eq i32 %0, 0
  br i1 %cmp2, label %if.then, label %while.cond

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 49, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  %1 = load i64, ptr %_M_width.i.i, align 8, !tbaa !15
  %cmp.not.i = icmp eq i64 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 49)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %cleanup

while.cond:                                       ; preds = %for.end, %for.end36
  %2 = phi i32 [ %dec37, %for.end36 ], [ %0, %for.end ]
  %temp.0 = phi i32 [ %temp.1, %for.end36 ], [ 39, %for.end ]
  %step.0 = phi i32 [ %step.1, %for.end36 ], [ 0, %for.end ]
  %cmp5 = icmp sgt i32 %2, 0
  br i1 %cmp5, label %for.cond6, label %for.cond39

for.cond6:                                        ; preds = %while.cond, %for.inc13
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc13 ], [ 0, %while.cond ]
  %exitcond52.not = icmp eq i64 %indvars.iv49, 40
  br i1 %exitcond52.not, label %for.end15, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [40 x i8], ptr %sum, i64 0, i64 %indvars.iv49
  %3 = load i8, ptr %arrayidx10, align 1, !tbaa !5
  %cmp11.not = icmp eq i8 %3, 48
  br i1 %cmp11.not, label %for.inc13, label %for.end15.split.loop.exit

for.inc13:                                        ; preds = %for.body8
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond6, !llvm.loop !26

for.end15.split.loop.exit:                        ; preds = %for.body8
  %4 = trunc nuw nsw i64 %indvars.iv49 to i32
  br label %for.end15

for.end15:                                        ; preds = %for.cond6, %for.end15.split.loop.exit
  %temp.1 = phi i32 [ %4, %for.end15.split.loop.exit ], [ %temp.0, %for.cond6 ]
  %sub = add nsw i32 %temp.1, -1
  %5 = sext i32 %sub to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.body18, %for.end15
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body18 ], [ 39, %for.end15 ]
  %step.1 = phi i32 [ %step.2, %for.body18 ], [ %step.0, %for.end15 ]
  %cmp17.not = icmp slt i64 %indvars.iv53, %5
  br i1 %cmp17.not, label %for.end36, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds [40 x i8], ptr %sum, i64 0, i64 %indvars.iv53
  %6 = load i8, ptr %arrayidx20, align 1, !tbaa !5
  %conv21 = sext i8 %6 to i32
  %sub22 = shl nsw i32 %conv21, 1
  %mul = add nsw i32 %sub22, -96
  %add = or disjoint i32 %mul, %step.1
  %cmp23 = icmp sgt i32 %add, 9
  %7 = trunc i32 %add to i8
  %storemerge.v = select i1 %cmp23, i8 38, i8 48
  %storemerge = add i8 %storemerge.v, %7
  %step.2 = zext i1 %cmp23 to i32
  store i8 %storemerge, ptr %arrayidx20, align 1, !tbaa !5
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, -1
  br label %for.cond16, !llvm.loop !27

for.end36:                                        ; preds = %for.cond16
  %dec37 = add nsw i32 %2, -1
  store i32 %dec37, ptr %n, align 4, !tbaa !11
  br label %while.cond, !llvm.loop !28

for.cond39:                                       ; preds = %while.cond, %for.inc48
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc48 ], [ 0, %while.cond ]
  %exitcond59.not = icmp eq i64 %indvars.iv56, 39
  br i1 %exitcond59.not, label %for.end50, label %for.body41

for.body41:                                       ; preds = %for.cond39
  %arrayidx43 = getelementptr inbounds nuw [40 x i8], ptr %sum, i64 0, i64 %indvars.iv56
  %8 = load i8, ptr %arrayidx43, align 1, !tbaa !5
  %cmp45.not = icmp eq i8 %8, 48
  br i1 %cmp45.not, label %for.inc48, label %for.end50.split.loop.exit

for.inc48:                                        ; preds = %for.body41
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond39, !llvm.loop !29

for.end50.split.loop.exit:                        ; preds = %for.body41
  %9 = trunc nuw nsw i64 %indvars.iv56 to i32
  br label %for.end50

for.end50:                                        ; preds = %for.cond39, %for.end50.split.loop.exit
  %temp.2 = phi i32 [ %9, %for.end50.split.loop.exit ], [ %temp.0, %for.cond39 ]
  %10 = sext i32 %temp.2 to i64
  %smax = call i32 @llvm.smax.i32(i32 %temp.2, i32 40)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond51

for.cond51:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit34, %for.end50
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit34 ], [ %10, %for.end50 ]
  %exitcond63.not = icmp eq i64 %indvars.iv60, %wide.trip.count
  br i1 %exitcond63.not, label %cleanup, label %for.body53

for.body53:                                       ; preds = %for.cond51
  %arrayidx55 = getelementptr inbounds [40 x i8], ptr %sum, i64 0, i64 %indvars.iv60
  %11 = load i8, ptr %arrayidx55, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i22)
  store i8 %11, ptr %__c.addr.i22, align 1, !tbaa !5
  %vtable.i23 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i24 = getelementptr i8, ptr %vtable.i23, i64 -24
  %vbase.offset.i25 = load i64, ptr %vbase.offset.ptr.i24, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i25
  %12 = load i64, ptr %gep, align 8, !tbaa !15
  %cmp.not.i28 = icmp eq i64 %12, 0
  br i1 %cmp.not.i28, label %if.end.i32, label %if.then.i29

if.then.i29:                                      ; preds = %for.body53
  %call1.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i22, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit34

if.end.i32:                                       ; preds = %for.body53
  %call2.i33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %11)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit34

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit34: ; preds = %if.then.i29, %if.end.i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i22)
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 1
  br label %for.cond51, !llvm.loop !30

cleanup:                                          ; preds = %for.cond51, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %_ZSt4cout.sink69 = phi ptr [ %retval.0.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ @_ZSt4cout, %for.cond51 ]
  %vtable.i42 = load ptr, ptr %_ZSt4cout.sink69, align 8, !tbaa !13
  %vbase.offset.ptr.i43 = getelementptr i8, ptr %vtable.i42, i64 -24
  %vbase.offset.i44 = load i64, ptr %vbase.offset.ptr.i43, align 8
  %add.ptr.i45 = getelementptr inbounds i8, ptr %_ZSt4cout.sink69, i64 %vbase.offset.i44
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i45, i8 noundef signext 10)
  %call1.i46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink69, i8 noundef signext %call.i)
  %call.i.i47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i46)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sum) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !6, i64 64, !12, i64 192, !23, i64 200, !24, i64 208}
!17 = !{!"long", !6, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!26 = distinct !{!26, !9, !10}
!27 = distinct !{!27, !9, !10}
!28 = distinct !{!28, !9, !10}
!29 = distinct !{!29, !9, !10}
!30 = distinct !{!30, !9, !10}
