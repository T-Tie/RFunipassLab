; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz1zrnb1e.cpp"
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
  %__c.addr.i32 = alloca i8, align 1
  %__c.addr.i19 = alloca i8, align 1
  %__c.addr.i6 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %a = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef nonnull %a) #9
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vtable.i45 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i46 = getelementptr i8, ptr %vtable.i45, i64 -24
  br label %for.cond

for.cond:                                         ; preds = %for.inc43, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc44, %for.inc43 ]
  %num.0 = phi i32 [ 0, %entry ], [ %num.1, %for.inc43 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %if.then6.i, label %for.end45

if.then6.i:                                       ; preds = %for.cond
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !9
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(50) %a, i64 noundef 50)
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !10, !invariant.load !9
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

land.lhs.true.i:                                  ; preds = %if.then6.i
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %2 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !21, !invariant.load !9
  %3 = add i64 %2, -51
  %or.cond.i = icmp ult i64 %3, -50
  br i1 %or.cond.i, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 232
  %4 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22, !invariant.load !9
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
  %cmp.i2.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i2.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %if.then6.i, %land.lhs.true.i, %if.then19.i, %if.then28.i
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #10
  %conv = trunc i64 %call4 to i32
  %cmp5 = icmp eq i32 %num.0, 0
  br i1 %cmp5, label %for.cond6.preheader, label %if.else

for.cond6.preheader:                              ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %vtable.i1 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i2 = getelementptr i8, ptr %vtable.i1, i64 -24
  %smax80 = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count81 = zext nneg i32 %smax80 to i64
  br label %for.cond6

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc
  %indvars.iv77 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next78, %for.inc ]
  %exitcond82.not = icmp eq i64 %indvars.iv77, %wide.trip.count81
  br i1 %exitcond82.not, label %for.inc43, label %for.body9

for.body9:                                        ; preds = %for.cond6
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv77
  %5 = load i8, ptr %add.ptr, align 1, !tbaa !30, !invariant.load !9
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 %5, ptr %__c.addr.i, align 1, !tbaa !30
  %vbase.offset.i3 = load i64, ptr %vbase.offset.ptr.i2, align 8, !invariant.load !9
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i3
  %6 = load i64, ptr %gep, align 8, !tbaa !21, !invariant.load !9
  %cmp.not.i = icmp eq i64 %6, 0
  call fastcc void @outlined_ir_func_0(i1 %cmp.not.i, ptr %__c.addr.i, i8 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond6, !llvm.loop !31

if.else:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %add11 = add nsw i32 %num.0, %conv
  %cmp13 = icmp slt i32 %add11, 80
  br i1 %cmp13, label %if.then14, label %if.else29

if.then14:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i6)
  store i8 32, ptr %__c.addr.i6, align 1, !tbaa !30
  %vbase.offset.i9 = load i64, ptr %vbase.offset.ptr.i46, align 8, !invariant.load !9
  %gep68 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i9
  %7 = load i64, ptr %gep68, align 8, !tbaa !21, !invariant.load !9
  %cmp.not.i12 = icmp eq i64 %7, 0
  call fastcc void @outlined_ir_func_0(i1 %cmp.not.i12, ptr %__c.addr.i6, i8 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18: ; preds = %if.then14
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i6)
  %smax74 = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count75 = zext nneg i32 %smax74 to i64
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc24, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc24 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18 ]
  %exitcond76.not = icmp eq i64 %indvars.iv71, %wide.trip.count75
  br i1 %exitcond76.not, label %for.end26, label %for.body20

for.body20:                                       ; preds = %for.cond17
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv71
  %8 = load i8, ptr %add.ptr22, align 1, !tbaa !30, !invariant.load !9
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i19)
  store i8 %8, ptr %__c.addr.i19, align 1, !tbaa !30
  call fastcc void @outlined_ir_func_0(i1 %cmp.not.i12, ptr %__c.addr.i19, i8 %8)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body20
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i19)
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond17, !llvm.loop !34

for.end26:                                        ; preds = %for.cond17
  %add27 = add i32 %num.0, 1
  %add28 = add i32 %add27, %conv
  br label %for.inc43

if.else29:                                        ; preds = %if.else
  %vbase.offset.i47 = load i64, ptr %vbase.offset.ptr.i46, align 8, !invariant.load !9
  %add.ptr.i48 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i47
  %call.i49 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i48, i8 noundef signext 10)
  %call1.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i49)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i50)
  %_M_width.i.i37 = getelementptr inbounds nuw i8, ptr %add.ptr.i48, i64 16
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc39, %if.else29
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc39 ], [ 0, %if.else29 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc43, label %for.body35

for.body35:                                       ; preds = %for.cond32
  %add.ptr37 = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv
  %9 = load i8, ptr %add.ptr37, align 1, !tbaa !30, !invariant.load !9
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i32)
  store i8 %9, ptr %__c.addr.i32, align 1, !tbaa !30
  %10 = load i64, ptr %_M_width.i.i37, align 8, !tbaa !21, !invariant.load !9
  %cmp.not.i38 = icmp eq i64 %10, 0
  call fastcc void @outlined_ir_func_0(i1 %cmp.not.i38, ptr %__c.addr.i32, i8 %9)
  br label %for.inc39

for.inc39:                                        ; preds = %for.body35
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i32)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond32, !llvm.loop !35

for.inc43:                                        ; preds = %for.cond32, %for.cond6, %for.end26
  %num.1 = phi i32 [ %add28, %for.end26 ], [ %conv, %for.cond6 ], [ %conv, %for.cond32 ]
  %inc44 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !36

for.end45:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(i1 %0, ptr %1, i8 %2) unnamed_addr #7 {
newFuncRoot:
  br label %for.body9_to_outline

for.body9_to_outline:                             ; preds = %newFuncRoot
  br i1 %0, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body9_to_outline
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %1, i64 noundef 1)
  br label %for.inc.exitStub

if.end.i:                                         ; preds = %for.body9_to_outline
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %2)
  br label %for.inc.exitStub

for.inc.exitStub:                                 ; preds = %if.end.i, %if.then.i
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!9 = !{}
!10 = !{!11, !14, i64 32}
!11 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !7, i64 64, !6, i64 192, !18, i64 200, !19, i64 208}
!12 = !{!"long", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !12, i64 8}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!21 = !{!11, !12, i64 16}
!22 = !{!23, !26, i64 232}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !11, i64 0, !24, i64 216, !7, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!24 = !{!"p1 _ZTSSo", !16, i64 0}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!30 = !{!7, !7, i64 0}
!31 = distinct !{!31, !32, !33}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !32, !33}
!35 = distinct !{!35, !32, !33}
!36 = distinct !{!36, !32, !33}
