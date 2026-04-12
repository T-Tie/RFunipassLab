; ModuleID = '<stdin>'
source_filename = "/tmp/tmpoluqoz53.cpp"
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
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i3 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %a = alloca [10000 x i8], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull align 16 dereferenceable(10000) %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(10000) %a, i64 noundef 10000)
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ]
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp.not, label %while.cond4.preheader, label %while.cond, !llvm.loop !8

while.cond4.preheader:                            ; preds = %while.cond
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %vtable.i16 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i17 = getelementptr i8, ptr %vtable.i16, i64 -24
  br label %while.cond4

while.cond4:                                      ; preds = %while.cond4.preheader, %if.end44
  %len.0 = phi i32 [ %len.1, %if.end44 ], [ %1, %while.cond4.preheader ]
  %p.0 = phi ptr [ %incdec.ptr47, %if.end44 ], [ %a, %while.cond4.preheader ]
  %lenq.0 = phi i64 [ %indvars.iv55, %if.end44 ], [ %indvars.iv, %while.cond4.preheader ]
  %2 = load i32, ptr %n, align 4, !tbaa !11
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %n, align 4, !tbaa !11
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %while.end48, label %while.body5

while.body5:                                      ; preds = %while.cond4
  %idx.ext6 = and i64 %lenq.0, 4294967295
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %p.0, i64 %idx.ext6
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %add.ptr7, i64 1
  br label %while.cond8

while.cond8:                                      ; preds = %while.body17, %while.body5
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %while.body17 ], [ 0, %while.body5 ]
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %incdec.ptr, i64 %indvars.iv55
  %3 = load i8, ptr %add.ptr10, align 1, !tbaa !5, !invariant.load !13
  switch i8 %3, label %while.body17 [
    i8 32, label %while.end19
    i8 0, label %while.end19
  ]

while.body17:                                     ; preds = %while.cond8
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %while.cond8, !llvm.loop !14

while.end19:                                      ; preds = %while.cond8, %while.cond8
  %4 = trunc nuw nsw i64 %indvars.iv55 to i32
  %add = add nsw i32 %4, %len.0
  %inc20 = add nsw i32 %add, 1
  %idx.neg = sub nsw i64 0, %idx.ext6
  %add.ptr22 = getelementptr inbounds i8, ptr %incdec.ptr, i64 %idx.neg
  %incdec.ptr23 = getelementptr inbounds i8, ptr %add.ptr22, i64 -1
  %cmp24 = icmp slt i32 %add, 80
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br i1 %cmp24, label %for.cond, label %for.cond33

for.cond:                                         ; preds = %while.end19, %for.inc
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc ], [ 0, %while.end19 ]
  %exitcond65.not = icmp eq i64 %indvars.iv61, %idx.ext6
  br i1 %exitcond65.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %incdec.ptr23, i64 %indvars.iv61
  %5 = load i8, ptr %add.ptr27, align 1, !tbaa !5, !invariant.load !13
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 %5, ptr %__c.addr.i, align 1, !tbaa !5
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !13
  %gep53 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %6 = load i64, ptr %gep53, align 8, !tbaa !15, !invariant.load !13
  %cmp.not.i = icmp eq i64 %6, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %5)
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %n, align 4, !tbaa !11
  %tobool30.not = icmp eq i32 %7, 0
  br i1 %tobool30.not, label %if.end44, label %if.then31

if.then31:                                        ; preds = %for.end
  %call1.i1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %if.end44

for.cond33:                                       ; preds = %while.end19, %for.inc40
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc40 ], [ 0, %while.end19 ]
  %exitcond.not = icmp eq i64 %indvars.iv58, %idx.ext6
  br i1 %exitcond.not, label %for.end42, label %for.body36

for.body36:                                       ; preds = %for.cond33
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %incdec.ptr23, i64 %indvars.iv58
  %8 = load i8, ptr %add.ptr38, align 1, !tbaa !5, !invariant.load !13
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i3)
  store i8 %8, ptr %__c.addr.i3, align 1, !tbaa !5
  %vbase.offset.i6 = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !13
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i6
  %9 = load i64, ptr %gep, align 8, !tbaa !15, !invariant.load !13
  %cmp.not.i9 = icmp eq i64 %9, 0
  br i1 %cmp.not.i9, label %if.end.i13, label %if.then.i10

if.then.i10:                                      ; preds = %for.body36
  %call1.i11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i3, i64 noundef 1)
  br label %for.inc40

if.end.i13:                                       ; preds = %for.body36
  %call2.i14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %8)
  br label %for.inc40

for.inc40:                                        ; preds = %if.end.i13, %if.then.i10
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i3)
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond33, !llvm.loop !27

for.end42:                                        ; preds = %for.cond33
  %vbase.offset.i18 = load i64, ptr %vbase.offset.ptr.i17, align 8, !invariant.load !13
  %add.ptr.i19 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i18
  %call.i20 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i19, i8 noundef signext 10)
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i20)
  %call.i.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i21)
  br label %if.end44

if.end44:                                         ; preds = %for.end, %if.then31, %for.end42
  %len.1 = phi i32 [ %4, %for.end42 ], [ %inc20, %if.then31 ], [ %inc20, %for.end ]
  %add.ptr46 = getelementptr inbounds nuw i8, ptr %incdec.ptr23, i64 %idx.ext6
  %incdec.ptr47 = getelementptr inbounds nuw i8, ptr %add.ptr46, i64 1
  br label %while.cond4, !llvm.loop !28

while.end48:                                      ; preds = %while.cond4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !29, !invariant.load !13
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !13
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !36, !invariant.load !13
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !13
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{}
!14 = distinct !{!14, !9, !10}
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !6, i64 64, !12, i64 192, !23, i64 200, !24, i64 208}
!17 = !{!"long", !6, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!26 = distinct !{!26, !9, !10}
!27 = distinct !{!27, !9, !10}
!28 = distinct !{!28, !9, !10}
!29 = !{!30, !6, i64 56}
!30 = !{!"_ZTSSt5ctypeIcE", !31, i64 0, !32, i64 16, !33, i64 24, !34, i64 32, !34, i64 40, !35, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!31 = !{!"_ZTSNSt6locale5facetE", !12, i64 8}
!32 = !{!"p1 _ZTS15__locale_struct", !21, i64 0}
!33 = !{!"bool", !6, i64 0}
!34 = !{!"p1 int", !21, i64 0}
!35 = !{!"p1 short", !21, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !7, i64 0}
