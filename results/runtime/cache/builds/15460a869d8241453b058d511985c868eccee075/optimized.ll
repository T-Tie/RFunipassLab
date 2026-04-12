; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0hyled79.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %__c.addr.i1 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %sentence = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef nonnull align 16 %sentence) #7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %entry ]
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = tail call i32 @getc(ptr noundef %0) #7
  %sext.mask = and i32 %call.i, 255
  %cmp.not = icmp eq i32 %sext.mask, 10
  br i1 %cmp.not, label %while.cond2.preheader, label %while.body

while.cond2.preheader:                            ; preds = %while.cond
  %idx.ext = and i64 %indvars.iv, 4294967295
  %add.ptr = getelementptr inbounds nuw i8, ptr %sentence, i64 %idx.ext
  br label %while.cond2

while.body:                                       ; preds = %while.cond
  %conv = trunc i32 %call.i to i8
  %arrayidx = getelementptr inbounds nuw [50 x i8], ptr %sentence, i64 0, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %while.cond, !llvm.loop !11

while.cond2:                                      ; preds = %while.cond2.preheader, %if.end
  %p.0 = phi ptr [ %p.1, %if.end ], [ %sentence, %while.cond2.preheader ]
  %cmp4 = icmp ult ptr %p.0, %add.ptr
  br i1 %cmp4, label %while.body5, label %while.end16

while.body5:                                      ; preds = %while.cond2
  %1 = load i8, ptr %p.0, align 1, !tbaa !10
  %cmp7.not = icmp eq i8 %1, 32
  br i1 %cmp7.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body5
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i) #8
  store i8 %1, ptr %__c.addr.i, align 1, !tbaa !10
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !16
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %2 = load i64, ptr %gep, align 8, !tbaa !17
  %cmp.not.i = icmp eq i64 %2, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  br label %if.end

if.else:                                          ; preds = %while.body5
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i1)
  store i8 32, ptr %__c.addr.i1, align 1, !tbaa !10
  %vtable.i2 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i3 = getelementptr i8, ptr %vtable.i2, i64 -24
  %vbase.offset.i4 = load i64, ptr %vbase.offset.ptr.i3, align 8, !invariant.load !16
  %gep29 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i4
  %3 = load i64, ptr %gep29, align 8, !tbaa !17
  %cmp.not.i7 = icmp eq i64 %3, 0
  br i1 %cmp.not.i7, label %if.end.i11, label %if.then.i8

if.then.i8:                                       ; preds = %if.else
  %call1.i9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i1, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit13

if.end.i11:                                       ; preds = %if.else
  %call2.i12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit13

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit13: ; preds = %if.then.i8, %if.end.i11
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i1)
  br label %while.cond10

while.cond10:                                     ; preds = %while.cond10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit13
  %p.2 = phi ptr [ %p.0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit13 ], [ %incdec.ptr14, %while.cond10 ]
  %4 = load i8, ptr %p.2, align 1, !tbaa !10
  %cmp12 = icmp eq i8 %4, 32
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %p.2, i64 1
  br i1 %cmp12, label %while.cond10, label %if.end, !llvm.loop !28

if.end:                                           ; preds = %while.cond10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %p.1 = phi ptr [ %incdec.ptr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %p.2, %while.cond10 ]
  br label %while.cond2, !llvm.loop !29

while.end16:                                      ; preds = %while.cond2
  %vtable.i15 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i16 = getelementptr i8, ptr %vtable.i15, i64 -24
  %vbase.offset.i17 = load i64, ptr %vbase.offset.ptr.i16, align 8, !invariant.load !16
  %add.ptr.i18 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i17
  %call.i19 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i18, i8 noundef signext 10)
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i19)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i20)
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef nonnull %sentence) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #5 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !30
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !10
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !14
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !16
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !9, i64 0}
!16 = !{}
!17 = !{!18, !19, i64 16}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !23, i64 48, !8, i64 64, !24, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !8, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !19, i64 8}
!24 = !{!"int", !8, i64 0}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!28 = distinct !{!28, !12, !13}
!29 = distinct !{!29, !12, !13}
!30 = !{!31, !8, i64 56}
!31 = !{!"_ZTSSt5ctypeIcE", !32, i64 0, !33, i64 16, !34, i64 24, !35, i64 32, !35, i64 40, !36, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!32 = !{!"_ZTSNSt6locale5facetE", !24, i64 8}
!33 = !{!"p1 _ZTS15__locale_struct", !7, i64 0}
!34 = !{!"bool", !8, i64 0}
!35 = !{!"p1 int", !7, i64 0}
!36 = !{!"p1 short", !7, i64 0}
