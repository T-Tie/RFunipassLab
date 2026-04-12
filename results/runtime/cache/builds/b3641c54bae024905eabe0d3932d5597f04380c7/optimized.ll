; ModuleID = '<stdin>'
source_filename = "/tmp/tmpi2h1f_1d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %retval.0.i22.loc = alloca ptr, align 8
  %retval.0.i.loc = alloca ptr, align 8
  %__c.addr.i13 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %num = alloca i32, align 4
  %word = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %num) #7
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef nonnull %word) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num)
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %count.1, %if.end31 ]
  %0 = load i32, ptr %num, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %num, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %word)
  %cmp = icmp eq i32 %count.0, 0
  %call.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %word, i64 noundef %call.i.i)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #9
  %conv = trunc i64 %call5 to i32
  br label %if.end31

if.else:                                          ; preds = %while.body
  %1 = trunc i64 %call.i.i to i32
  %2 = add i32 %count.0, 1
  %conv10 = add i32 %2, %1
  %cmp11 = icmp sgt i32 %conv10, 80
  br i1 %cmp11, label %if.then12, label %if.else19

if.then12:                                        ; preds = %if.else
  %vtable.i34 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i35 = getelementptr i8, ptr %vtable.i34, i64 -24
  %vbase.offset.i36 = load i64, ptr %vbase.offset.ptr.i35, align 8, !invariant.load !11
  %add.ptr.i37 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i36
  %call.i38 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i37, i8 noundef signext 10)
  %call1.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i38)
  %call.i.i40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i39)
  %call.i.i1 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #8
  %call1.i2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i40, ptr noundef nonnull %word, i64 noundef %call.i.i1)
  %call17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #9
  %conv18 = trunc i64 %call17 to i32
  br label %if.end31

if.else19:                                        ; preds = %if.else
  %cmp20 = icmp eq i32 %conv10, 80
  br i1 %cmp20, label %if.then21, label %if.else26

if.then21:                                        ; preds = %if.else19
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  call void @llvm.lifetime.start.p0(i64 -1, ptr %retval.0.i.loc)
  call fastcc void @outlined_ir_func_0(ptr %__c.addr.i, ptr %retval.0.i.loc)
  %retval.0.i.reload = load ptr, ptr %retval.0.i.loc, align 8
  call void @llvm.lifetime.end.p0(i64 -1, ptr %retval.0.i.loc)
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %call.i.i4 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #8
  %call1.i5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i.reload, ptr noundef nonnull %word, i64 noundef %call.i.i4)
  %vtable.i41 = load ptr, ptr %retval.0.i.reload, align 8, !tbaa !9
  %vbase.offset.ptr.i42 = getelementptr i8, ptr %vtable.i41, i64 -24
  %vbase.offset.i43 = load i64, ptr %vbase.offset.ptr.i42, align 8, !invariant.load !11
  %add.ptr.i44 = getelementptr inbounds i8, ptr %retval.0.i.reload, i64 %vbase.offset.i43
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i44, i8 noundef signext 10)
  %call1.i45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i.reload, i8 noundef signext %call.i)
  %call.i.i46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i45)
  br label %if.end31

if.else26:                                        ; preds = %if.else19
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i13)
  call void @llvm.lifetime.start.p0(i64 -1, ptr %retval.0.i22.loc)
  call fastcc void @outlined_ir_func_0(ptr %__c.addr.i13, ptr %retval.0.i22.loc)
  %retval.0.i22.reload = load ptr, ptr %retval.0.i22.loc, align 8
  call void @llvm.lifetime.end.p0(i64 -1, ptr %retval.0.i22.loc)
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i13)
  %call.i.i26 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #8
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i22.reload, ptr noundef nonnull %word, i64 noundef %call.i.i26)
  br label %if.end31

if.end31:                                         ; preds = %if.then12, %if.else26, %if.then21, %if.then
  %count.1 = phi i32 [ %conv, %if.then ], [ %conv18, %if.then12 ], [ 0, %if.then21 ], [ %conv10, %if.else26 ]
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef nonnull %word) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %num) #8
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

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !15
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !23
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !9
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !11
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr %0, ptr %1) unnamed_addr #6 {
newFuncRoot:
  br label %if.then21_to_outline

if.then21_to_outline:                             ; preds = %newFuncRoot
  store i8 32, ptr %0, align 1, !tbaa !23
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !11
  %gep50 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %2 = load i64, ptr %gep50, align 8, !tbaa !24, !invariant.load !11
  %cmp.not.i = icmp eq i64 %2, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then21_to_outline
  %call1.i3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %0, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then21_to_outline
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i3, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  br label %if.then21_after_outline.exitStub

if.then21_after_outline.exitStub:                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  store ptr %retval.0.i, ptr %1, align 8
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16, !7, i64 56}
!16 = !{!"_ZTSSt5ctypeIcE", !17, i64 0, !18, i64 16, !20, i64 24, !21, i64 32, !21, i64 40, !22, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!17 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!18 = !{!"p1 _ZTS15__locale_struct", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!"bool", !7, i64 0}
!21 = !{!"p1 int", !19, i64 0}
!22 = !{!"p1 short", !19, i64 0}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !26, i64 16}
!25 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !30, i64 48, !7, i64 64, !6, i64 192, !31, i64 200, !32, i64 208}
!26 = !{!"long", !7, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !26, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!32 = !{!"_ZTSSt6locale", !33, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
