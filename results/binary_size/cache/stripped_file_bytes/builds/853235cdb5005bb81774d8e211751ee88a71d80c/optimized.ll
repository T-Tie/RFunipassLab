; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuhdpzepc.cpp"
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

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6getonePc(ptr noundef nonnull %s) local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi3getERc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 1 dereferenceable(1) %s)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !8
  %and.i.i.i = and i32 %0, 5
  %cmp.i.i.not = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.not, label %while.cond, label %cleanup

while.cond:                                       ; preds = %entry, %while.body
  %s.addr.0 = phi ptr [ %incdec.ptr, %while.body ], [ %s, %entry ]
  %count.0 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %1 = load i8, ptr %s.addr.0, align 1, !tbaa !21
  switch i8 %1, label %while.body [
    i8 32, label %while.end
    i8 0, label %while.end
  ]

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.addr.0, i64 1
  %inc = add nuw nsw i32 %count.0, 1
  %call4 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi3getERc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 1 dereferenceable(1) %incdec.ptr)
  %vtable5 = load ptr, ptr %call4, align 8, !tbaa !5
  %vbase.offset.ptr6 = getelementptr i8, ptr %vtable5, i64 -24
  %vbase.offset7 = load i64, ptr %vbase.offset.ptr6, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %call4, i64 %vbase.offset7
  %_M_streambuf_state.i.i.i7 = getelementptr inbounds nuw i8, ptr %add.ptr8, i64 32
  %2 = load i32, ptr %_M_streambuf_state.i.i.i7, align 8, !tbaa !8
  %and.i.i.i8 = and i32 %2, 5
  %cmp.i.i9.not = icmp eq i32 %and.i.i.i8, 0
  br i1 %cmp.i.i9.not, label %while.cond, label %while.end, !llvm.loop !22

while.end:                                        ; preds = %while.cond, %while.cond, %while.body
  %s.addr.1 = phi ptr [ %incdec.ptr, %while.body ], [ %s.addr.0, %while.cond ], [ %s.addr.0, %while.cond ]
  %count.1 = phi i32 [ %inc, %while.body ], [ %count.0, %while.cond ], [ %count.0, %while.cond ]
  store i8 0, ptr %s.addr.1, align 1, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %count.1, %while.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi3getERc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %s = alloca [41 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %s) #6
  %0 = load i32, ptr %n, align 4, !tbaa !25
  %cmp42 = icmp sgt i32 %0, 0
  br i1 %cmp42, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %s) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

for.body:                                         ; preds = %entry, %for.inc
  %i.044 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %r.043 = phi i32 [ %r.1, %for.inc ], [ 80, %entry ]
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi3getERc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 1 dereferenceable(1) %s)
  %vtable.i = load ptr, ptr %call.i, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call.i, i64 %vbase.offset.i
  %_M_streambuf_state.i.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i.i, align 8, !tbaa !8
  %and.i.i.i.i = and i32 %1, 5
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %while.cond.i, label %_Z6getonePc.exit

while.cond.i:                                     ; preds = %for.body, %while.body.i
  %s.addr.0.i = phi ptr [ %incdec.ptr.i, %while.body.i ], [ %s, %for.body ]
  %count.0.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %for.body ]
  %2 = load i8, ptr %s.addr.0.i, align 1, !tbaa !21
  switch i8 %2, label %while.body.i [
    i8 32, label %while.end.i
    i8 0, label %while.end.i
  ]

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %s.addr.0.i, i64 1
  %inc.i = add nuw nsw i32 %count.0.i, 1
  %call4.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi3getERc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 1 dereferenceable(1) %incdec.ptr.i)
  %vtable5.i = load ptr, ptr %call4.i, align 8, !tbaa !5
  %vbase.offset.ptr6.i = getelementptr i8, ptr %vtable5.i, i64 -24
  %vbase.offset7.i = load i64, ptr %vbase.offset.ptr6.i, align 8
  %add.ptr8.i = getelementptr inbounds i8, ptr %call4.i, i64 %vbase.offset7.i
  %_M_streambuf_state.i.i.i7.i = getelementptr inbounds nuw i8, ptr %add.ptr8.i, i64 32
  %3 = load i32, ptr %_M_streambuf_state.i.i.i7.i, align 8, !tbaa !8
  %and.i.i.i8.i = and i32 %3, 5
  %cmp.i.i9.not.i = icmp eq i32 %and.i.i.i8.i, 0
  br i1 %cmp.i.i9.not.i, label %while.cond.i, label %while.end.i, !llvm.loop !22

while.end.i:                                      ; preds = %while.body.i, %while.cond.i, %while.cond.i
  %s.addr.1.i = phi ptr [ %incdec.ptr.i, %while.body.i ], [ %s.addr.0.i, %while.cond.i ], [ %s.addr.0.i, %while.cond.i ]
  %count.1.i = phi i32 [ %inc.i, %while.body.i ], [ %count.0.i, %while.cond.i ], [ %count.0.i, %while.cond.i ]
  store i8 0, ptr %s.addr.1.i, align 1, !tbaa !21
  br label %_Z6getonePc.exit

_Z6getonePc.exit:                                 ; preds = %for.body, %while.end.i
  %retval.0.i = phi i32 [ %count.1.i, %while.end.i ], [ -1, %for.body ]
  %cmp3 = icmp eq i32 %r.043, 80
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %_Z6getonePc.exit
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %s, i64 noundef %call.i.i)
  %sub = sub nsw i32 80, %retval.0.i
  br label %for.inc

if.else:                                          ; preds = %_Z6getonePc.exit
  %cmp6 = icmp sgt i32 %r.043, %retval.0.i
  br i1 %cmp6, label %if.then7, label %if.else12

if.then7:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !21
  %vtable.i12 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i13 = getelementptr i8, ptr %vtable.i12, i64 -24
  %vbase.offset.i14 = load i64, ptr %vbase.offset.ptr.i13, align 8
  %gep41 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i14
  %4 = load i64, ptr %gep41, align 8, !tbaa !26
  %cmp.not.i = icmp eq i64 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then7
  %call1.i16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then7
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i17 = phi ptr [ %call1.i16, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %call.i.i18 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #6
  %call1.i19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i17, ptr noundef nonnull %s, i64 noundef %call.i.i18)
  %add.neg = xor i32 %retval.0.i, -1
  %sub11 = add i32 %r.043, %add.neg
  br label %for.inc

if.else12:                                        ; preds = %if.else
  %vtable.i35 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i36 = getelementptr i8, ptr %vtable.i35, i64 -24
  %vbase.offset.i37 = load i64, ptr %vbase.offset.ptr.i36, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i37
  %5 = load ptr, ptr %gep, align 8, !tbaa !27
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else12
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.else12
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %6 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !35
  %tobool.not.i1.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 67
  %7 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !21
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %5)
  %vtable.i.i.i = load ptr, ptr %5, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %8 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %8(ptr noundef nonnull align 8 dereferenceable(570) %5, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %7, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i39)
  %call.i.i27 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #6
  %call1.i28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i40, ptr noundef nonnull %s, i64 noundef %call.i.i27)
  %sub16 = sub nsw i32 80, %retval.0.i
  br label %for.inc

for.inc:                                          ; preds = %if.then, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %r.1 = phi i32 [ %sub, %if.then ], [ %sub11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %sub16, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %inc = add nuw nsw i32 %i.044, 1
  %9 = load i32, ptr %n, align 4, !tbaa !25
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !41
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 32}
!9 = !{!"_ZTSSt8ios_base", !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 28, !13, i64 32, !14, i64 40, !16, i64 48, !11, i64 64, !17, i64 192, !18, i64 200, !19, i64 208}
!10 = !{!"long", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!13 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!14 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !10, i64 8}
!17 = !{!"int", !11, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!21 = !{!11, !11, i64 0}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!17, !17, i64 0}
!26 = !{!9, !10, i64 16}
!27 = !{!28, !32, i64 240}
!28 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !9, i64 0, !29, i64 216, !11, i64 224, !30, i64 225, !31, i64 232, !32, i64 240, !33, i64 248, !34, i64 256}
!29 = !{!"p1 _ZTSSo", !15, i64 0}
!30 = !{!"bool", !11, i64 0}
!31 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!32 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!33 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!34 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!35 = !{!36, !11, i64 56}
!36 = !{!"_ZTSSt5ctypeIcE", !37, i64 0, !38, i64 16, !30, i64 24, !39, i64 32, !39, i64 40, !40, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!37 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!38 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!39 = !{!"p1 int", !15, i64 0}
!40 = !{!"p1 short", !15, i64 0}
!41 = distinct !{!41, !23, !24}
