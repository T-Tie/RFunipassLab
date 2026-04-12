; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_7fz4w5h.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i72 = alloca i8, align 1
  %__c.addr.i42 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %words = alloca [1000 x [20 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 20000, ptr nonnull %words) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond, %for.inc55
  %2 = phi i32 [ %.pre, %for.inc55 ], [ %0, %for.cond ]
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.inc55 ], [ 0, %for.cond ]
  %csum.0 = phi i64 [ %csum.1, %for.inc55 ], [ 0, %for.cond ]
  %j.0 = phi i32 [ %j.2, %for.inc55 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv115, %3
  br i1 %cmp3, label %for.body4, label %for.end57

for.body4:                                        ; preds = %for.cond2
  %sext = shl i64 %csum.0, 32
  %conv = ashr exact i64 %sext, 32
  %arrayidx6 = getelementptr inbounds nuw [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv115
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx6) #6
  %add = add nsw i64 %conv, 1
  %add9 = add i64 %add, %call8
  %conv10 = trunc i64 %add9 to i32
  %cmp11 = icmp eq i32 %conv10, 81
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %idxprom12 = sext i32 %j.0 to i64
  br label %for.cond17

for.cond17:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %if.then
  %indvars.iv.next113.sink = phi i64 [ %indvars.iv.next113, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %idxprom12, %if.then ]
  %retval.0.i.sink = phi ptr [ %retval.0.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ @_ZSt4cout, %if.then ]
  %arrayidx22 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv.next113.sink
  %call.i.i26 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx22) #5
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i.sink, ptr noundef nonnull %arrayidx22, i64 noundef %call.i.i26)
  %indvars.iv.next113 = add nsw i64 %indvars.iv.next113.sink, 1
  %cmp18.not.not = icmp slt i64 %indvars.iv.next113.sink, %indvars.iv115
  br i1 %cmp18.not.not, label %for.body19, label %for.inc55.sink.split

for.body19:                                       ; preds = %for.cond17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !12
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep106 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %4 = load i64, ptr %gep106, align 8, !tbaa !15
  %cmp.not.i = icmp eq i64 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body19
  %call1.i25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body19
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i25, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.cond17, !llvm.loop !26

if.end:                                           ; preds = %for.body4
  %cmp29 = icmp sgt i32 %conv10, 81
  br i1 %cmp29, label %if.then30, label %for.inc55

if.then30:                                        ; preds = %if.end
  %idxprom31 = sext i32 %j.0 to i64
  br label %for.cond36

for.cond36:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit54, %if.then30
  %indvars.iv.next110.sink = phi i64 [ %indvars.iv.next110, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit54 ], [ %idxprom31, %if.then30 ]
  %retval.0.i51.sink = phi ptr [ %retval.0.i51, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit54 ], [ @_ZSt4cout, %if.then30 ]
  %arrayidx41 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv.next110.sink
  %call.i.i55 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx41) #5
  %call1.i56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i51.sink, ptr noundef nonnull %arrayidx41, i64 noundef %call.i.i55)
  %indvars.iv.next110 = add nsw i64 %indvars.iv.next110.sink, 1
  %cmp37 = icmp slt i64 %indvars.iv.next110, %indvars.iv115
  br i1 %cmp37, label %for.body38, label %for.end46

for.body38:                                       ; preds = %for.cond36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i42)
  store i8 32, ptr %__c.addr.i42, align 1, !tbaa !12
  %vtable.i43 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i44 = getelementptr i8, ptr %vtable.i43, i64 -24
  %vbase.offset.i45 = load i64, ptr %vbase.offset.ptr.i44, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i45
  %5 = load i64, ptr %gep, align 8, !tbaa !15
  %cmp.not.i48 = icmp eq i64 %5, 0
  br i1 %cmp.not.i48, label %if.end.i52, label %if.then.i49

if.then.i49:                                      ; preds = %for.body38
  %call1.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i42, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit54

if.end.i52:                                       ; preds = %for.body38
  %call2.i53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit54

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit54: ; preds = %if.then.i49, %if.end.i52
  %retval.0.i51 = phi ptr [ %call1.i50, %if.then.i49 ], [ @_ZSt4cout, %if.end.i52 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i42)
  br label %for.cond36, !llvm.loop !27

for.end46:                                        ; preds = %for.cond36
  %call50 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx6) #6
  %add51 = add i64 %call50, 1
  br label %for.inc55.sink.split

for.inc55.sink.split:                             ; preds = %for.cond17, %for.end46
  %csum.1.ph = phi i64 [ %add51, %for.end46 ], [ 0, %for.cond17 ]
  %j.2.ph.in = phi i64 [ %indvars.iv.next110, %for.end46 ], [ %indvars.iv.next113, %for.cond17 ]
  %j.2.ph = trunc i64 %j.2.ph.in to i32
  %vtable.i100 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i101 = getelementptr i8, ptr %vtable.i100, i64 -24
  %vbase.offset.i102 = load i64, ptr %vbase.offset.ptr.i101, align 8
  %add.ptr.i103 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i102
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i103, i8 noundef signext 10)
  %call1.i104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i104)
  br label %for.inc55

for.inc55:                                        ; preds = %for.inc55.sink.split, %if.end
  %csum.1 = phi i64 [ %add9, %if.end ], [ %csum.1.ph, %for.inc55.sink.split ]
  %j.2 = phi i32 [ %j.0, %if.end ], [ %j.2.ph, %for.inc55.sink.split ]
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !28

for.end57:                                        ; preds = %for.cond2
  %idxprom58 = sext i32 %j.0 to i64
  br label %for.cond63

for.cond63:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit84, %for.end57
  %indvars.iv.next120.sink = phi i64 [ %indvars.iv.next120, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit84 ], [ %idxprom58, %for.end57 ]
  %retval.0.i81.sink = phi ptr [ %retval.0.i81, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit84 ], [ @_ZSt4cout, %for.end57 ]
  %arrayidx68 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv.next120.sink
  %call.i.i85 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx68) #5
  %call1.i86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i81.sink, ptr noundef nonnull %arrayidx68, i64 noundef %call.i.i85)
  %indvars.iv.next120 = add nsw i64 %indvars.iv.next120.sink, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp64 = icmp slt i64 %indvars.iv.next120, %7
  br i1 %cmp64, label %for.body65, label %for.end73

for.body65:                                       ; preds = %for.cond63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i72)
  store i8 32, ptr %__c.addr.i72, align 1, !tbaa !12
  %vtable.i73 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i74 = getelementptr i8, ptr %vtable.i73, i64 -24
  %vbase.offset.i75 = load i64, ptr %vbase.offset.ptr.i74, align 8
  %gep107 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i75
  %8 = load i64, ptr %gep107, align 8, !tbaa !15
  %cmp.not.i78 = icmp eq i64 %8, 0
  br i1 %cmp.not.i78, label %if.end.i82, label %if.then.i79

if.then.i79:                                      ; preds = %for.body65
  %call1.i80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i72, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit84

if.end.i82:                                       ; preds = %for.body65
  %call2.i83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit84

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit84: ; preds = %if.then.i79, %if.end.i82
  %retval.0.i81 = phi ptr [ %call1.i80, %if.then.i79 ], [ @_ZSt4cout, %if.end.i82 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i72)
  br label %for.cond63, !llvm.loop !29

for.end73:                                        ; preds = %for.cond63
  call void @llvm.lifetime.end.p0(i64 20000, ptr nonnull %words) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !7, i64 64, !6, i64 192, !23, i64 200, !24, i64 208}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
