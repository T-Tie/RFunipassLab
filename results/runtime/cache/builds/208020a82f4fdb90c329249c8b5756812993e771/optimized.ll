; ModuleID = '<stdin>'
source_filename = "/tmp/tmptnqr7doq.cpp"
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
  %sentence = alloca [1000 x [20 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 20000, ptr noundef nonnull align 16 dereferenceable(20000) %sentence) #8
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br label %while.cond

while.cond:                                       ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, %entry
  %indvars.iv26 = phi i32 [ %indvars.iv.next27, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ -1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [1000 x [20 x i8]], ptr %sentence, i64 0, i64 %indvars.iv
  %0 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %arrayidx, i1 noundef false, i1 noundef true, i1 noundef false) #9
  switch i64 %0, label %if.then6.i [
    i64 0, label %do.end.i
    i64 -1, label %if.else34.i
  ]

do.end.i:                                         ; preds = %while.cond
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !5
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  store i64 0, ptr %_M_width.i.i, align 8, !tbaa !6
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i32 noundef 4)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then6.i:                                       ; preds = %while.cond
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !5
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef %0)
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !20, !invariant.load !5
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

land.lhs.true.i:                                  ; preds = %if.then6.i
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %2 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !6, !invariant.load !5
  %cmp17.i = icmp slt i64 %2, 1
  %cmp18.i = icmp ult i64 %0, %2
  %or.cond.i = or i1 %cmp17.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !21, !invariant.load !5
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i2.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i2.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.else34.i:                                      ; preds = %while.cond
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %do.end.i, %if.then6.i, %land.lhs.true.i, %if.then19.i, %if.then28.i, %if.else34.i
  %vtable = load ptr, ptr @_ZSt3cin, align 8, !tbaa !29
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !5
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 32), i64 %vbase.offset
  %4 = load i32, ptr %gep, align 8, !tbaa !20, !invariant.load !5
  %and.i.i.i = and i32 %4, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next27 = add nsw i32 %indvars.iv26, 1
  br i1 %cmp.i.not.i, label %while.cond, label %while.end, !llvm.loop !31

while.end:                                        ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %smax = call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %indvars.iv26, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc ], [ 0, %while.end ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds nuw [1000 x [20 x i8]], ptr %sentence, i64 0, i64 %indvars.iv23
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(1) %arrayidx3)
  %call1.i8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %arrayidx9 = getelementptr inbounds nuw [1000 x [20 x i8]], ptr %sentence, i64 0, i64 %wide.trip.count
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(1) %arrayidx9)
  call void @llvm.lifetime.end.p0(i64 noundef 20000, ptr noundef nonnull %sentence) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) local_unnamed_addr #3 align 2 {
entry:
  %_M_streambuf_state.i = getelementptr inbounds nuw i8, ptr %this, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i, align 8, !tbaa !20, !invariant.load !5
  %or.i = or i32 %0, %__state
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %or.i)
  ret void
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define available_externally noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %this) local_unnamed_addr #3 align 2 {
entry:
  %_M_in_cur.i = getelementptr inbounds nuw i8, ptr %this, i64 16
  %0 = load ptr, ptr %_M_in_cur.i, align 8, !tbaa !35, !invariant.load !5
  %_M_in_end.i = getelementptr inbounds nuw i8, ptr %this, i64 24
  %1 = load ptr, ptr %_M_in_end.i, align 8, !tbaa !38, !invariant.load !5
  %cmp = icmp ult ptr %0, %1
  %conv = zext i1 %cmp to i64
  %expval = tail call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool.not = icmp eq i64 %expval, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %0, align 1, !tbaa !39, !invariant.load !5
  %conv.i = zext i8 %2 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable = load ptr, ptr %this, align 8, !tbaa !29, !invariant.load !5
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 72
  %3 = load ptr, ptr %vfn, align 8, !invariant.load !5
  %call5 = tail call noundef i32 %3(ptr noundef nonnull align 8 dereferenceable(64) %this)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %__ret.0 = phi i32 [ %conv.i, %if.then ], [ %call5, %if.else ]
  ret i32 %__ret.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(1) %0) unnamed_addr #7 {
for.inc_after_outline.exitStub:
  %call.i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %0, i64 noundef %call.i.i)
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{}
!6 = !{!7, !8, i64 16}
!7 = !{!"_ZTSSt8ios_base", !8, i64 8, !8, i64 16, !11, i64 24, !12, i64 28, !12, i64 32, !13, i64 40, !15, i64 48, !9, i64 64, !16, i64 192, !17, i64 200, !18, i64 208}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!12 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!13 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !8, i64 8}
!16 = !{!"int", !9, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!18 = !{!"_ZTSSt6locale", !19, i64 0}
!19 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!20 = !{!7, !12, i64 32}
!21 = !{!22, !25, i64 232}
!22 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !7, i64 0, !23, i64 216, !9, i64 224, !24, i64 225, !25, i64 232, !26, i64 240, !27, i64 248, !28, i64 256}
!23 = !{!"p1 _ZTSSo", !14, i64 0}
!24 = !{!"bool", !9, i64 0}
!25 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 0}
!26 = !{!"p1 _ZTSSt5ctypeIcE", !14, i64 0}
!27 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!28 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !10, i64 0}
!31 = distinct !{!31, !32, !33}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !32, !33}
!35 = !{!36, !37, i64 16}
!36 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !18, i64 56}
!37 = !{!"p1 omnipotent char", !14, i64 0}
!38 = !{!36, !37, i64 24}
!39 = !{!9, !9, i64 0}
