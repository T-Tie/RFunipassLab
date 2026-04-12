; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9om7aj44.cpp"
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
  %a = alloca [1000 x [41 x i8]], align 16
  %b = alloca [1000 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 41000, ptr noundef nonnull align 16 dereferenceable(41000) %a) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %b) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %vtable.i22 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i23 = getelementptr i8, ptr %vtable.i22, i64 -24
  br label %for.cond10

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [41 x i8]], ptr %a, i64 0, i64 %indvars.iv
  %2 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %arrayidx, i1 noundef false, i1 noundef true, i1 noundef false)
  switch i64 %2, label %if.then6.i [
    i64 0, label %do.end.i
    i64 -1, label %if.else34.i
  ]

do.end.i:                                         ; preds = %for.body
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !9
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  store i64 0, ptr %_M_width.i.i, align 8, !tbaa !10
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i32 noundef 4)
  br label %for.inc

if.then6.i:                                       ; preds = %for.body
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !9
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef %2)
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 32
  %3 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21, !invariant.load !9
  %cmp.i.i = icmp eq i32 %3, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.inc

land.lhs.true.i:                                  ; preds = %if.then6.i
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %4 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !10, !invariant.load !9
  %cmp17.i = icmp slt i64 %4, 1
  %cmp18.i = icmp ult i64 %2, %4
  %or.cond.i = or i1 %cmp17.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %for.inc

if.then19.i:                                      ; preds = %land.lhs.true.i
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 232
  %5 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22, !invariant.load !9
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
  %cmp.i2.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i2.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %for.inc, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %for.inc

if.else34.i:                                      ; preds = %for.body
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  br label %for.inc

for.inc:                                          ; preds = %if.else34.i, %if.then28.i, %if.then19.i, %land.lhs.true.i, %if.then6.i, %do.end.i
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx) #9
  %conv = trunc i64 %call5 to i32
  %arrayidx7 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 %conv, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !30

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc44
  %6 = phi i32 [ %0, %for.cond10.preheader ], [ %.pre, %for.inc44 ]
  %indvars.iv49 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next50, %for.inc44 ]
  %num.0 = phi i32 [ 0, %for.cond10.preheader ], [ %add43, %for.inc44 ]
  %7 = sext i32 %6 to i64
  %cmp11 = icmp slt i64 %indvars.iv49, %7
  br i1 %cmp11, label %for.body12, label %for.end46

for.body12:                                       ; preds = %for.cond10
  %arrayidx14 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv49
  %8 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !9
  %add = add nsw i32 %8, %num.0
  %cmp17 = icmp eq i32 %num.0, 0
  br i1 %cmp17, label %if.end, label %if.end.thread

if.end:                                           ; preds = %for.body12
  %arrayidx19 = getelementptr inbounds nuw [1000 x [41 x i8]], ptr %a, i64 0, i64 %indvars.iv49
  call fastcc void @outlined_ir_func_0(ptr %arrayidx19)
  %cmp22 = icmp slt i32 %add, 81
  br i1 %cmp22, label %for.inc44, label %if.then34

if.end.thread:                                    ; preds = %for.body12
  %cmp2252 = icmp slt i32 %add, 81
  br i1 %cmp2252, label %if.then26, label %if.then34

if.then26:                                        ; preds = %if.end.thread
  %call1.i7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc44.sink.split

if.then34:                                        ; preds = %if.end.thread, %if.end
  %vbase.offset.i24 = load i64, ptr %vbase.offset.ptr.i23, align 8, !invariant.load !9
  %add.ptr.i25 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i24
  %call.i26 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i25, i8 noundef signext 10)
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i26)
  %call.i.i28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i27)
  br label %for.inc44.sink.split

for.inc44.sink.split:                             ; preds = %if.then34, %if.then26
  %num.1.ph = phi i32 [ %add, %if.then26 ], [ %8, %if.then34 ]
  %arrayidx29 = getelementptr inbounds nuw [1000 x [41 x i8]], ptr %a, i64 0, i64 %indvars.iv49
  call fastcc void @outlined_ir_func_0(ptr %arrayidx29)
  br label %for.inc44

for.inc44:                                        ; preds = %for.inc44.sink.split, %if.end
  %num.1 = phi i32 [ %add, %if.end ], [ %num.1.ph, %for.inc44.sink.split ]
  %add43 = add nsw i32 %num.1, 1
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !33

for.end46:                                        ; preds = %for.cond10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %b) #10
  call void @llvm.lifetime.end.p0(i64 noundef 41000, ptr noundef nonnull %a) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr %0) unnamed_addr #7 {
newFuncRoot:
  br label %if.end_to_outline

if.end_to_outline:                                ; preds = %newFuncRoot
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %0, i64 noundef %call.i.i)
  br label %if.end_after_outline.exitStub

if.end_after_outline.exitStub:                    ; preds = %if.end_to_outline
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

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
!10 = !{!11, !12, i64 16}
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
!21 = !{!11, !14, i64 32}
!22 = !{!23, !26, i64 232}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !11, i64 0, !24, i64 216, !7, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!24 = !{!"p1 _ZTSSo", !16, i64 0}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!30 = distinct !{!30, !31, !32}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !31, !32}
