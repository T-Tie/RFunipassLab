; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkq9jel0q.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %word = alloca [500 x [50 x i8]], align 16
  %l = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 25000, ptr noundef nonnull align 16 %word) #7
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %l) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x [50 x i8]], ptr %word, i64 0, i64 %indvars.iv
  %2 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %arrayidx, i1 noundef false, i1 noundef true, i1 noundef false)
  switch i64 %2, label %if.then6.i [
    i64 0, label %do.end.i
    i64 -1, label %if.else34.i
  ]

do.end.i:                                         ; preds = %for.body
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !11
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset.i
  store i64 0, ptr %gep, align 8, !tbaa !12
  %vbase.offset3.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !11
  %add.ptr4.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset3.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr4.i, i32 noundef 4)
  br label %for.inc

if.then6.i:                                       ; preds = %for.body
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !11
  %gep46 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i
  %3 = load i64, ptr %gep46, align 8, !tbaa !12
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef %2)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8, !invariant.load !11
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %4 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !23
  %cmp.i.i = icmp eq i32 %4, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.inc

land.lhs.true.i:                                  ; preds = %if.then6.i
  %cmp17.i = icmp slt i64 %3, 1
  %cmp18.i = icmp ult i64 %2, %3
  %or.cond.i = or i1 %cmp17.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %for.inc

if.then19.i:                                      ; preds = %land.lhs.true.i
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %5 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !24
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
  %cmp.i2.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i2.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %for.inc, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8, !invariant.load !11
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %for.inc

if.else34.i:                                      ; preds = %for.body
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  br label %for.inc

for.inc:                                          ; preds = %if.else34.i, %if.then28.i, %if.then19.i, %land.lhs.true.i, %if.then6.i, %do.end.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !32

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc14
  %indvars.iv49 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next50, %for.inc14 ]
  %exitcond.not = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond.not, label %for.cond17.preheader, label %for.body4

for.cond17.preheader:                             ; preds = %for.cond2
  br label %for.cond17

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %l, i64 0, i64 %indvars.iv49
  store i32 0, ptr %arrayidx6, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds nuw [500 x [50 x i8]], ptr %word, i64 0, i64 %indvars.iv49
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body4
  %6 = phi i32 [ 0, %for.body4 ], [ %inc13, %while.body ]
  %q.0 = phi ptr [ %arrayidx8, %for.body4 ], [ %incdec.ptr, %while.body ]
  %7 = load i8, ptr %q.0, align 1, !tbaa !35
  %cmp10.not = icmp eq i8 %7, 0
  br i1 %cmp10.not, label %for.inc14, label %while.body

while.body:                                       ; preds = %while.cond
  %inc13 = add nuw nsw i32 %6, 1
  store i32 %inc13, ptr %arrayidx6, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %q.0, i64 1
  br label %while.cond, !llvm.loop !36

for.inc14:                                        ; preds = %while.cond
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond2, !llvm.loop !37

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc47
  %8 = phi i32 [ %.pre, %for.inc47 ], [ %0, %for.cond17.preheader ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc47 ], [ 0, %for.cond17.preheader ]
  %s.0 = phi i32 [ %add46, %for.inc47 ], [ 0, %for.cond17.preheader ]
  %9 = sext i32 %8 to i64
  %cmp18 = icmp slt i64 %indvars.iv53, %9
  br i1 %cmp18, label %for.body19, label %for.end49

for.body19:                                       ; preds = %for.cond17
  %cmp20 = icmp sgt i32 %s.0, 0
  %arrayidx22 = getelementptr inbounds nuw [500 x i32], ptr %l, i64 0, i64 %indvars.iv53
  %10 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %add = add nsw i32 %10, %s.0
  br i1 %cmp20, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body19
  %cmp23 = icmp slt i32 %add, 81
  br i1 %cmp23, label %if.end35.thread61, label %if.then33

if.end35.thread61:                                ; preds = %land.lhs.true
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc47.sink.split

if.end:                                           ; preds = %for.body19
  %11 = icmp sgt i32 %add, 80
  br i1 %11, label %if.then33, label %if.end35

if.then33:                                        ; preds = %land.lhs.true, %if.end
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 10, ptr %__c.addr.i, align 1, !tbaa !35
  %vtable.i8 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i9 = getelementptr i8, ptr %vtable.i8, i64 -24
  %vbase.offset.i10 = load i64, ptr %vbase.offset.ptr.i9, align 8, !invariant.load !11
  %gep47 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i10
  %12 = load i64, ptr %gep47, align 8, !tbaa !12
  %cmp.not.i = icmp eq i64 %12, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then33
  %call1.i13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %if.end35.thread

if.end.i:                                         ; preds = %if.then33
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 10)
  br label %if.end35.thread

if.end35.thread:                                  ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  br label %for.inc47.sink.split

if.end35:                                         ; preds = %if.end
  %cmp36 = icmp eq i32 %s.0, 0
  br i1 %cmp36, label %for.inc47.sink.split, label %for.inc47

for.inc47.sink.split:                             ; preds = %if.end35, %if.end35.thread, %if.end35.thread61
  %s.144.ph = phi i32 [ %s.0, %if.end35.thread61 ], [ 0, %if.end35.thread ], [ 0, %if.end35 ]
  %arrayidx26 = getelementptr inbounds nuw [500 x [50 x i8]], ptr %word, i64 0, i64 %indvars.iv53
  %call.i.i2 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx26) #8
  %call1.i3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx26, i64 noundef %call.i.i2)
  br label %for.inc47

for.inc47:                                        ; preds = %for.inc47.sink.split, %if.end35
  %s.144 = phi i32 [ %s.0, %if.end35 ], [ %s.144.ph, %for.inc47.sink.split ]
  %add45 = add i32 %10, 1
  %add46 = add i32 %add45, %s.144
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !38

for.end49:                                        ; preds = %for.cond17
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %l) #8
  call void @llvm.lifetime.end.p0(i64 noundef 25000, ptr noundef nonnull %word) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{}
!12 = !{!13, !14, i64 16}
!13 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !19, i64 48, !7, i64 64, !6, i64 192, !20, i64 200, !21, i64 208}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !14, i64 8}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!21 = !{!"_ZTSSt6locale", !22, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!23 = !{!13, !16, i64 32}
!24 = !{!25, !28, i64 232}
!25 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !13, i64 0, !26, i64 216, !7, i64 224, !27, i64 225, !28, i64 232, !29, i64 240, !30, i64 248, !31, i64 256}
!26 = !{!"p1 _ZTSSo", !18, i64 0}
!27 = !{!"bool", !7, i64 0}
!28 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!29 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!30 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!31 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!7, !7, i64 0}
!36 = distinct !{!36, !33, !34}
!37 = distinct !{!37, !33, !34}
!38 = distinct !{!38, !33, !34}
