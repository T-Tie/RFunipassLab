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
  %retval.0.i57.loc = alloca ptr, align 8
  %retval.0.i27.loc = alloca ptr, align 8
  %retval.0.i.loc = alloca ptr, align 8
  %__c.addr.i48 = alloca i8, align 1
  %__c.addr.i18 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %words = alloca [1000 x [20 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 20000, ptr noundef nonnull %words) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %vtable.i76 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i77 = getelementptr i8, ptr %vtable.i76, i64 -24
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc55
  %2 = phi i32 [ %0, %for.cond2.preheader ], [ %.pre, %for.inc55 ]
  %indvars.iv115 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next116, %for.inc55 ]
  %csum.0 = phi i64 [ 0, %for.cond2.preheader ], [ %csum.1, %for.inc55 ]
  %j.0 = phi i32 [ 0, %for.cond2.preheader ], [ %j.2, %for.inc55 ]
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv115, %3
  br i1 %cmp3, label %for.body4, label %for.end57

for.body4:                                        ; preds = %for.cond2
  %sext = shl i64 %csum.0, 32
  %conv = ashr exact i64 %sext, 32
  %arrayidx6 = getelementptr inbounds nuw [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv115
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx6) #8
  %add = add nsw i64 %conv, 1
  %add9 = add i64 %add, %call8
  %conv10 = trunc i64 %add9 to i32
  %cmp11 = icmp eq i32 %conv10, 81
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %idxprom12 = sext i32 %j.0 to i64
  %arrayidx13 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %idxprom12
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx13) #7
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx13, i64 noundef %call.i.i)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br label %for.cond17

for.cond17:                                       ; preds = %for.body19, %if.then
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.body19 ], [ %idxprom12, %if.then ]
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1
  %cmp18.not.not = icmp slt i64 %indvars.iv112, %indvars.iv115
  br i1 %cmp18.not.not, label %for.body19, label %for.inc55.sink.split

for.body19:                                       ; preds = %for.cond17
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  call void @llvm.lifetime.start.p0(i64 -1, ptr %retval.0.i.loc)
  call fastcc void @outlined_ir_func_0(ptr %__c.addr.i, ptr %vbase.offset.ptr.i, ptr %retval.0.i.loc)
  %retval.0.i.reload = load ptr, ptr %retval.0.i.loc, align 8
  call void @llvm.lifetime.end.p0(i64 -1, ptr %retval.0.i.loc)
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %arrayidx22 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv.next113
  %call.i.i2 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx22) #7
  %call1.i3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i.reload, ptr noundef nonnull %arrayidx22, i64 noundef %call.i.i2)
  br label %for.cond17, !llvm.loop !12

if.end:                                           ; preds = %for.body4
  %cmp29 = icmp sgt i32 %conv10, 81
  br i1 %cmp29, label %if.then30, label %for.inc55

if.then30:                                        ; preds = %if.end
  %idxprom31 = sext i32 %j.0 to i64
  %arrayidx32 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %idxprom31
  %call.i.i10 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx32) #7
  %call1.i11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx32, i64 noundef %call.i.i10)
  %vtable.i19 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i20 = getelementptr i8, ptr %vtable.i19, i64 -24
  br label %for.cond36

for.cond36:                                       ; preds = %for.body38, %if.then30
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.body38 ], [ %idxprom31, %if.then30 ]
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, 1
  %cmp37 = icmp slt i64 %indvars.iv.next110, %indvars.iv115
  br i1 %cmp37, label %for.body38, label %for.end46

for.body38:                                       ; preds = %for.cond36
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i18)
  call void @llvm.lifetime.start.p0(i64 -1, ptr %retval.0.i27.loc)
  call fastcc void @outlined_ir_func_0(ptr %__c.addr.i18, ptr %vbase.offset.ptr.i20, ptr %retval.0.i27.loc)
  %retval.0.i27.reload = load ptr, ptr %retval.0.i27.loc, align 8
  call void @llvm.lifetime.end.p0(i64 -1, ptr %retval.0.i27.loc)
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i18)
  %arrayidx41 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv.next110
  %call.i.i31 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx41) #7
  %call1.i32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i27.reload, ptr noundef nonnull %arrayidx41, i64 noundef %call.i.i31)
  br label %for.cond36, !llvm.loop !13

for.end46:                                        ; preds = %for.cond36
  %call50 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx6) #8
  %add51 = add i64 %call50, 1
  br label %for.inc55.sink.split

for.inc55.sink.split:                             ; preds = %for.cond17, %for.end46
  %csum.1.ph = phi i64 [ %add51, %for.end46 ], [ 0, %for.cond17 ]
  %j.2.ph.in = phi i64 [ %indvars.iv.next110, %for.end46 ], [ %indvars.iv.next113, %for.cond17 ]
  %j.2.ph = trunc i64 %j.2.ph.in to i32
  %vbase.offset.i78 = load i64, ptr %vbase.offset.ptr.i77, align 8, !invariant.load !14
  %add.ptr.i79 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i78
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i79, i8 noundef signext 10)
  %call1.i80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i80)
  br label %for.inc55

for.inc55:                                        ; preds = %for.inc55.sink.split, %if.end
  %csum.1 = phi i64 [ %add9, %if.end ], [ %csum.1.ph, %for.inc55.sink.split ]
  %j.2 = phi i32 [ %j.0, %if.end ], [ %j.2.ph, %for.inc55.sink.split ]
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !15

for.end57:                                        ; preds = %for.cond2
  %idxprom58 = sext i32 %j.0 to i64
  %arrayidx59 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %idxprom58
  %call.i.i40 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx59) #7
  %call1.i41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx59, i64 noundef %call.i.i40)
  %vtable.i49 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i50 = getelementptr i8, ptr %vtable.i49, i64 -24
  br label %for.cond63

for.cond63:                                       ; preds = %for.body65, %for.end57
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body65 ], [ %idxprom58, %for.end57 ]
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp64 = icmp slt i64 %indvars.iv.next120, %5
  br i1 %cmp64, label %for.body65, label %for.end73

for.body65:                                       ; preds = %for.cond63
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i48)
  call void @llvm.lifetime.start.p0(i64 -1, ptr %retval.0.i57.loc)
  call fastcc void @outlined_ir_func_0(ptr %__c.addr.i48, ptr %vbase.offset.ptr.i50, ptr %retval.0.i57.loc)
  %retval.0.i57.reload = load ptr, ptr %retval.0.i57.loc, align 8
  call void @llvm.lifetime.end.p0(i64 -1, ptr %retval.0.i57.loc)
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i48)
  %arrayidx68 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv.next120
  %call.i.i61 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx68) #7
  %call1.i62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i57.reload, ptr noundef nonnull %arrayidx68, i64 noundef %call.i.i61)
  br label %for.cond63, !llvm.loop !16

for.end73:                                        ; preds = %for.cond63
  call void @llvm.lifetime.end.p0(i64 noundef 20000, ptr noundef nonnull %words) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr %0, ptr %1, ptr %2) unnamed_addr #5 {
newFuncRoot:
  br label %for.body19_to_outline

for.body19_to_outline:                            ; preds = %newFuncRoot
  store i8 32, ptr %0, align 1, !tbaa !17
  %vbase.offset.i = load i64, ptr %1, align 8, !invariant.load !14
  %gep106 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %3 = load i64, ptr %gep106, align 8, !tbaa !18, !invariant.load !14
  %cmp.not.i = icmp eq i64 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body19_to_outline
  %call1.i1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %0, i64 noundef 1)
  br label %for.inc25

if.end.i:                                         ; preds = %for.body19_to_outline
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc25

for.inc25:                                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call1.i1, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  br label %for.body19_after_outline.exitStub

for.body19_after_outline.exitStub:                ; preds = %for.inc25
  store ptr %retval.0.i, ptr %2, align 8
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !20, i64 16}
!19 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !25, i64 48, !7, i64 64, !6, i64 192, !26, i64 200, !27, i64 208}
!20 = !{!"long", !7, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !24, i64 0, !20, i64 8}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !24, i64 0}
!27 = !{!"_ZTSSt6locale", !28, i64 0}
!28 = !{!"p1 _ZTSNSt6locale5_ImplE", !24, i64 0}
