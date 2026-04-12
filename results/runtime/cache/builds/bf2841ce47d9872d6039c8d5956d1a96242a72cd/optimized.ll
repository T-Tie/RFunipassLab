; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_0i0bqcz.cpp"
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

@s = dso_local global [110 x i8] zeroinitializer, align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7operatev() local_unnamed_addr #0 {
entry:
  %__c.addr.i3 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @s) #7
  %conv = trunc i64 %call to i32
  %0 = and i64 %call, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc11 ], [ %0, %entry ]
  %pre.0 = phi i32 [ %pre.1, %for.inc11 ], [ %conv, %entry ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars = trunc i64 %indvars.iv.next to i32
  %1 = trunc nuw i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond
  %vtable.i4 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i5 = getelementptr i8, ptr %vtable.i4, i64 -24
  %smax = call i32 @llvm.smax.i32(i32 %pre.0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond14

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr inbounds nuw [110 x i8], ptr @s, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %cmp2 = icmp eq i8 %2, 32
  br i1 %cmp2, label %for.cond3.preheader, label %for.inc11

for.cond3.preheader:                              ; preds = %for.body
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc
  %indvars.iv27 = phi i64 [ %indvars.iv, %for.cond3.preheader ], [ %indvars.iv.next28, %for.inc ]
  %3 = trunc nuw i64 %indvars.iv27 to i32
  %cmp4 = icmp sgt i32 %pre.0, %3
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %arrayidx8 = getelementptr inbounds nuw [110 x i8], ptr @s, i64 0, i64 %indvars.iv27
  %4 = load i8, ptr %arrayidx8, align 1, !tbaa !5, !invariant.load !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %4, ptr %__c.addr.i, align 1, !tbaa !5
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %5 = load i64, ptr %gep, align 8, !tbaa !9, !invariant.load !8
  %cmp.not.i = icmp eq i64 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %for.inc

if.end.i:                                         ; preds = %for.body6
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %4)
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond3, !llvm.loop !21

for.end:                                          ; preds = %for.cond3
  %call1.i1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body, %for.end
  %pre.1 = phi i32 [ %indvars, %for.end ], [ %pre.0, %for.body ]
  br label %for.cond, !llvm.loop !24

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc21
  %indvars.iv31 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next32, %for.inc21 ]
  %exitcond.not = icmp eq i64 %indvars.iv31, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body17

for.body17:                                       ; preds = %for.cond14
  %arrayidx19 = getelementptr inbounds nuw [110 x i8], ptr @s, i64 0, i64 %indvars.iv31
  %6 = load i8, ptr %arrayidx19, align 1, !tbaa !5, !invariant.load !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i3)
  store i8 %6, ptr %__c.addr.i3, align 1, !tbaa !5
  %vbase.offset.i6 = load i64, ptr %vbase.offset.ptr.i5, align 8, !invariant.load !8
  %gep26 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i6
  %7 = load i64, ptr %gep26, align 8, !tbaa !9, !invariant.load !8
  %cmp.not.i9 = icmp eq i64 %7, 0
  br i1 %cmp.not.i9, label %if.end.i13, label %if.then.i10

if.then.i10:                                      ; preds = %for.body17
  %call1.i11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i3, i64 noundef 1)
  br label %for.inc21

if.end.i13:                                       ; preds = %for.body17
  %call2.i14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %6)
  br label %for.inc21

for.inc21:                                        ; preds = %if.end.i13, %if.then.i10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i3)
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond14, !llvm.loop !25

for.end23:                                        ; preds = %for.cond14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(110) @s, i64 noundef 110)
  tail call void @_Z7operatev()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__n) local_unnamed_addr #0 align 2 {
entry:
  %vtable = load ptr, ptr %this, align 8, !tbaa !26, !invariant.load !8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  %call = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call2 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__n, i8 noundef signext %call)
  ret ptr %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #0 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !28, !invariant.load !8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #0 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !36, !invariant.load !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !26, !invariant.load !8
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !8
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nosync nounwind willreturn memory(read) }
attributes #8 = { noreturn }

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
!8 = !{}
!9 = !{!10, !11, i64 16}
!10 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !12, i64 24, !13, i64 28, !13, i64 32, !14, i64 40, !16, i64 48, !6, i64 64, !17, i64 192, !18, i64 200, !19, i64 208}
!11 = !{!"long", !6, i64 0}
!12 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!13 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!14 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !11, i64 8}
!17 = !{!"int", !6, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !22, !23}
!25 = distinct !{!25, !22, !23}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !7, i64 0}
!28 = !{!29, !33, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 0, !30, i64 216, !6, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!30 = !{!"p1 _ZTSSo", !15, i64 0}
!31 = !{!"bool", !6, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!36 = !{!37, !6, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!40 = !{!"p1 int", !15, i64 0}
!41 = !{!"p1 short", !15, i64 0}
