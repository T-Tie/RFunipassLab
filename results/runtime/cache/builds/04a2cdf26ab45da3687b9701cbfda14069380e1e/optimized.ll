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
  %n = alloca i32, align 4
  %word = alloca [500 x [50 x i8]], align 16
  %l = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.start.p0(i64 25000, ptr nonnull %word) #8
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %l) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x [50 x i8]], ptr %word, i64 0, i64 %indvars.iv
  %2 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %arrayidx, i1 false, i1 true, i1 false)
  switch i64 %2, label %if.then6.i [
    i64 0, label %do.end.i
    i64 -1, label %if.else34.i
  ]

do.end.i:                                         ; preds = %for.inc
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset.i
  store i64 0, ptr %gep, align 8, !tbaa !11
  %vbase.offset3.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr4.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset3.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr4.i, i32 noundef 4)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then6.i:                                       ; preds = %for.inc
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %gep21 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i
  %3 = load i64, ptr %gep21, align 8, !tbaa !11
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef %2)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i)
  br i1 %call16.i, label %land.lhs.true.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

land.lhs.true.i:                                  ; preds = %if.then6.i
  %cmp17.i = icmp slt i64 %3, 1
  %cmp18.i = icmp ult i64 %2, %3
  %or.cond.i = or i1 %cmp17.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  %vtable20.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr21.i = getelementptr i8, ptr %vtable20.i, i64 -24
  %vbase.offset22.i = load i64, ptr %vbase.offset.ptr21.i, align 8
  %add.ptr23.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i)
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 %conv.i, i64 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.else34.i:                                      ; preds = %for.inc
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %do.end.i, %if.then6.i, %land.lhs.true.i, %if.then19.i, %if.then28.i, %if.else34.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !22

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc14
  %indvars.iv23 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next24, %for.inc14 ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond.not, label %for.cond17, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %l, i64 0, i64 %indvars.iv23
  store i32 0, ptr %arrayidx6, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds nuw [500 x [50 x i8]], ptr %word, i64 0, i64 %indvars.iv23
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body4
  %4 = phi i32 [ 0, %for.body4 ], [ %inc13, %while.body ]
  %q.0 = phi ptr [ %arrayidx8, %for.body4 ], [ %incdec.ptr, %while.body ]
  %5 = load i8, ptr %q.0, align 1, !tbaa !25
  %cmp10.not = icmp eq i8 %5, 0
  br i1 %cmp10.not, label %for.inc14, label %while.body

while.body:                                       ; preds = %while.cond
  %inc13 = add nuw nsw i32 %4, 1
  store i32 %inc13, ptr %arrayidx6, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %q.0, i64 1
  br label %while.cond, !llvm.loop !26

for.inc14:                                        ; preds = %while.cond
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond2, !llvm.loop !27

for.cond17:                                       ; preds = %for.cond2, %for.inc47
  %6 = phi i32 [ %.pre, %for.inc47 ], [ %0, %for.cond2 ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc47 ], [ 0, %for.cond2 ]
  %s.0 = phi i32 [ %add46, %for.inc47 ], [ 0, %for.cond2 ]
  %7 = sext i32 %6 to i64
  %cmp18 = icmp slt i64 %indvars.iv27, %7
  br i1 %cmp18, label %for.body19, label %for.end49

for.body19:                                       ; preds = %for.cond17
  %cmp20 = icmp sgt i32 %s.0, 0
  %arrayidx22 = getelementptr inbounds nuw [500 x i32], ptr %l, i64 0, i64 %indvars.iv27
  %8 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %add = add nsw i32 %8, %s.0
  br i1 %cmp20, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body19
  %cmp23 = icmp slt i32 %add, 81
  br i1 %cmp23, label %if.end35.thread35, label %if.end35.thread

if.end35.thread35:                                ; preds = %land.lhs.true
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  br label %for.inc47.sink.split

if.end:                                           ; preds = %for.body19
  %9 = icmp sgt i32 %add, 80
  br i1 %9, label %if.end35.thread, label %if.end35

if.end35.thread:                                  ; preds = %land.lhs.true, %if.end
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 10)
  br label %for.inc47.sink.split

if.end35:                                         ; preds = %if.end
  %cmp36 = icmp eq i32 %s.0, 0
  br i1 %cmp36, label %for.inc47.sink.split, label %for.inc47

for.inc47.sink.split:                             ; preds = %if.end35, %if.end35.thread, %if.end35.thread35
  %call24.sink = phi ptr [ %call24, %if.end35.thread35 ], [ @_ZSt4cout, %if.end35.thread ], [ @_ZSt4cout, %if.end35 ]
  %s.2.ph = phi i32 [ %s.0, %if.end35.thread35 ], [ 0, %if.end35.thread ], [ 0, %if.end35 ]
  %arrayidx26 = getelementptr inbounds nuw [500 x [50 x i8]], ptr %word, i64 0, i64 %indvars.iv27
  %call28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call24.sink, ptr noundef nonnull %arrayidx26)
  br label %for.inc47

for.inc47:                                        ; preds = %for.inc47.sink.split, %if.end35
  %s.2 = phi i32 [ %s.0, %if.end35 ], [ %s.2.ph, %for.inc47.sink.split ]
  %add45 = add i32 %8, 1
  %add46 = add i32 %add45, %s.2
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !28

for.end49:                                        ; preds = %for.cond17
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %l) #8
  call void @llvm.lifetime.end.p0(i64 25000, ptr nonnull %word) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
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
!11 = !{!12, !13, i64 16}
!12 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !14, i64 24, !15, i64 28, !15, i64 32, !16, i64 40, !18, i64 48, !7, i64 64, !6, i64 192, !19, i64 200, !20, i64 208}
!13 = !{!"long", !7, i64 0}
!14 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!15 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!16 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !13, i64 8}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!7, !7, i64 0}
!26 = distinct !{!26, !23, !24}
!27 = distinct !{!27, !23, !24}
!28 = distinct !{!28, !23, !24}
