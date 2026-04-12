; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqxreubj9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12compose_wordPA25_ci(ptr noundef nonnull dereferenceable(1) %word, i32 noundef %number) #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #8
  %conv = trunc i64 %call to i32
  %0 = sext i32 %number to i64
  %1 = add nsw i64 %0, -1
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %len.0 = phi i32 [ %conv, %entry ], [ %len.1, %while.end ]
  %i.0 = phi i32 [ 0, %entry ], [ %i.2, %while.end ]
  %cmp = icmp slt i32 %i.0, %number
  br i1 %cmp, label %while.cond.preheader, label %for.end

while.cond.preheader:                             ; preds = %for.cond
  %2 = sext i32 %i.0 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end10
  %indvars.iv = phi i64 [ %2, %while.cond.preheader ], [ %indvars.iv.next, %if.end10 ]
  %count.1 = phi i32 [ 0, %while.cond.preheader ], [ %add6, %if.end10 ]
  %len.1 = phi i32 [ %len.0, %while.cond.preheader ], [ %conv15, %if.end10 ]
  %tobool.not = phi i1 [ true, %while.cond.preheader ], [ false, %if.end10 ]
  %add = add nsw i32 %len.1, %count.1
  %cmp1 = icmp slt i32 %add, 80
  br i1 %cmp1, label %while.body, label %while.end.split.loop.exit28

while.body:                                       ; preds = %while.cond
  br i1 %tobool.not, label %if.else.i, label %if.then

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !10
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %3 = load i64, ptr %gep, align 8, !tbaa !11, !invariant.load !10
  %cmp.not.i = icmp eq i64 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %inc = add nsw i32 %count.1, 1
  br label %if.else.i

if.else.i:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %while.body
  %count.2 = phi i32 [ %inc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %count.1, %while.body ]
  %arrayidx3 = getelementptr inbounds [25 x i8], ptr %word, i64 %indvars.iv
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx3) #9
  %call1.i1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx3, i64 noundef %call.i.i)
  %exitcond.not = icmp eq i64 %indvars.iv, %1
  br i1 %exitcond.not, label %while.end, label %if.end10

if.end10:                                         ; preds = %if.else.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %add6 = add nsw i32 %count.2, %len.1
  %arrayidx12 = getelementptr inbounds [25 x i8], ptr %word, i64 %indvars.iv.next
  %call14 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #10
  %conv15 = trunc i64 %call14 to i32
  br label %while.cond, !llvm.loop !23

while.end.split.loop.exit28:                      ; preds = %while.cond
  %4 = trunc nsw i64 %indvars.iv to i32
  br label %while.end

while.end:                                        ; preds = %if.else.i, %while.end.split.loop.exit28
  %i.2 = phi i32 [ %4, %while.end.split.loop.exit28 ], [ %number, %if.else.i ]
  %vtable.i8 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %vbase.offset.ptr.i9 = getelementptr i8, ptr %vtable.i8, i64 -24
  %vbase.offset.i10 = load i64, ptr %vbase.offset.ptr.i9, align 8, !invariant.load !10
  %add.ptr.i11 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i10
  %call.i12 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i11, i8 noundef signext 10)
  %call1.i13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i12)
  %call.i.i14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i13)
  %cmp17.not = icmp slt i32 %i.2, %number
  br i1 %cmp17.not, label %for.cond, label %for.end, !llvm.loop !26

for.end:                                          ; preds = %while.end, %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #3 {
entry:
  %number = alloca i32, align 4
  %word = alloca [1000 x [25 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %number) #11
  store i32 0, ptr %number, align 4, !tbaa !27
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %number)
  %0 = load ptr, ptr @stdin, align 8, !tbaa !28
  %call.i = call i32 @getc(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 noundef 25000, ptr noundef nonnull align 16 captures(none) dereferenceable(25000) %word) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 captures(none) dereferenceable(25000) %word, i8 noundef 0, i64 noundef 25000, i1 noundef false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %1 = load i32, ptr %number, align 4, !tbaa !27
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv, %2
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [25 x i8]], ptr %word, i64 0, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  call void @_Z12compose_wordPA25_ci(ptr noundef nonnull align 16 dereferenceable(25000) %word, i32 noundef %1)
  call void @llvm.lifetime.end.p0(i64 noundef 25000, ptr noundef nonnull %word) #12
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %number) #12
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #4

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @__isoc23_scanf(ptr noundef, ...) #4

declare i32 @getc(ptr noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #0 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #0 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !31
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !8
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !10
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nosync nounwind willreturn memory(read) }
attributes #9 = { nosync nounwind memory(read) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nofree nounwind willreturn }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{}
!11 = !{!12, !13, i64 16}
!12 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !14, i64 24, !15, i64 28, !15, i64 32, !16, i64 40, !18, i64 48, !6, i64 64, !19, i64 192, !20, i64 200, !21, i64 208}
!13 = !{!"long", !6, i64 0}
!14 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!15 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!16 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !13, i64 8}
!19 = !{!"int", !6, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!21 = !{!"_ZTSSt6locale", !22, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !24, !25}
!27 = !{!19, !19, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!30 = distinct !{!30, !24, !25}
!31 = !{!32, !6, i64 56}
!32 = !{!"_ZTSSt5ctypeIcE", !33, i64 0, !34, i64 16, !35, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!33 = !{!"_ZTSNSt6locale5facetE", !19, i64 8}
!34 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!35 = !{!"bool", !6, i64 0}
!36 = !{!"p1 int", !17, i64 0}
!37 = !{!"p1 short", !17, i64 0}
