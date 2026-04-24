; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7o3e_gp1.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %re = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %re) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %re, i8 0, i64 400, i1 false), !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  switch i32 %0, label %if.else8 [
    i32 0, label %if.then
    i32 1, label %if.then5
  ]

if.then:                                          ; preds = %entry
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %1 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !11
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %2 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !29
  %tobool.not.i1.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 67
  %3 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !35
  br label %if.end56

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %1)
  %vtable.i.i.i = load ptr, ptr %1, align 8, !tbaa !9
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %4 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %1, i8 noundef signext 10)
  br label %if.end56

if.then5:                                         ; preds = %entry
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  %vtable.i26 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i27 = getelementptr i8, ptr %vtable.i26, i64 -24
  %vbase.offset.i28 = load i64, ptr %vbase.offset.ptr.i27, align 8
  %add.ptr.i29 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i28
  %_M_ctype.i.i30 = getelementptr inbounds nuw i8, ptr %add.ptr.i29, i64 240
  %5 = load ptr, ptr %_M_ctype.i.i30, align 8, !tbaa !11
  %tobool.not.i.i.i31 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i31, label %if.then.i.i.i44, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32

if.then.i.i.i44:                                  ; preds = %if.then5
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32: ; preds = %if.then5
  %_M_widen_ok.i.i.i33 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %6 = load i8, ptr %_M_widen_ok.i.i.i33, align 8, !tbaa !29
  %tobool.not.i1.i.i34 = icmp eq i8 %6, 0
  br i1 %tobool.not.i1.i.i34, label %if.end.i.i.i40, label %if.then.i2.i.i35

if.then.i2.i.i35:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32
  %arrayidx.i.i.i36 = getelementptr inbounds nuw i8, ptr %5, i64 67
  %7 = load i8, ptr %arrayidx.i.i.i36, align 1, !tbaa !35
  br label %if.end56

if.end.i.i.i40:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %5)
  %vtable.i.i.i41 = load ptr, ptr %5, align 8, !tbaa !9
  %vfn.i.i.i42 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i41, i64 48
  %8 = load ptr, ptr %vfn.i.i.i42, align 8
  %call.i.i.i43 = call noundef signext i8 %8(ptr noundef nonnull align 8 dereferenceable(570) %5, i8 noundef signext 10)
  br label %if.end56

if.else8:                                         ; preds = %entry
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %re, i64 396
  store i32 2, ptr %arrayidx9, align 4, !tbaa !5
  %cmp1170 = icmp sgt i32 %0, 1
  br i1 %cmp1170, label %vector.ph.preheader, label %while.cond38.preheader

vector.ph.preheader:                              ; preds = %if.else8
  %invariant.gep = getelementptr i8, ptr %re, i64 -12
  br label %vector.ph

vector.ph:                                        ; preds = %vector.ph.preheader, %for.inc35
  %i.071 = phi i32 [ %inc36, %for.inc35 ], [ 1, %vector.ph.preheader ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = sub i64 99, %index
  %gep = getelementptr [100 x i32], ptr %invariant.gep, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %gep, align 16, !tbaa !5
  %9 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  store <4 x i32> %9, ptr %gep, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %10 = icmp eq i64 %index.next, 96
  br i1 %10, label %while.body, label %vector.body, !llvm.loop !36

while.body:                                       ; preds = %vector.body, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 3, %vector.body ]
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %re, i64 0, i64 %indvars.iv
  %11 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = shl nsw i32 %11, 1
  store i32 %mul, ptr %arrayidx15, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp13.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %cmp13.not, label %while.body20, label %while.body, !llvm.loop !41

while.body20:                                     ; preds = %while.body, %if.end
  %indvars.iv76 = phi i64 [ %indvars.iv.next77.pre-phi, %if.end ], [ 99, %while.body ]
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %re, i64 0, i64 %indvars.iv76
  %12 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp sgt i32 %12, 9
  br i1 %cmp23, label %if.then24, label %while.body20.if.end_crit_edge

while.body20.if.end_crit_edge:                    ; preds = %while.body20
  %.pre = add nsw i64 %indvars.iv76, -1
  br label %if.end

if.then24:                                        ; preds = %while.body20
  %div = udiv i32 %12, 10
  %13 = add nsw i64 %indvars.iv76, -1
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %re, i64 0, i64 %13
  %14 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %add = add nsw i32 %14, %div
  store i32 %add, ptr %arrayidx28, align 4, !tbaa !5
  %rem66 = urem i32 %12, 10
  store i32 %rem66, ptr %arrayidx22, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %while.body20.if.end_crit_edge, %if.then24
  %indvars.iv.next77.pre-phi = phi i64 [ %.pre, %while.body20.if.end_crit_edge ], [ %13, %if.then24 ]
  %cmp19.not = icmp eq i64 %indvars.iv.next77.pre-phi, 0
  br i1 %cmp19.not, label %for.inc35, label %while.body20, !llvm.loop !42

for.inc35:                                        ; preds = %if.end
  %inc36 = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc36, %0
  br i1 %exitcond.not, label %while.cond38.preheader, label %vector.ph, !llvm.loop !43

while.cond38.preheader:                           ; preds = %for.inc35, %if.else8
  br label %while.cond38

while.cond38:                                     ; preds = %while.cond38.preheader, %while.cond38
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %while.cond38 ], [ 0, %while.cond38.preheader ]
  %arrayidx40 = getelementptr inbounds nuw [100 x i32], ptr %re, i64 0, i64 %indvars.iv80
  %15 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %15, 0
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br i1 %cmp41, label %while.cond38, label %for.cond45.preheader, !llvm.loop !44

for.cond45.preheader:                             ; preds = %while.cond38
  %cmp4672 = icmp samesign ult i64 %indvars.iv80, 100
  br i1 %cmp4672, label %for.body47, label %for.end53

for.body47:                                       ; preds = %for.cond45.preheader, %for.body47
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body47 ], [ %indvars.iv80, %for.cond45.preheader ]
  %arrayidx49 = getelementptr inbounds nuw [100 x i32], ptr %re, i64 0, i64 %indvars.iv83
  %16 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %16)
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, 100
  br i1 %exitcond86.not, label %for.end53, label %for.body47, !llvm.loop !45

for.end53:                                        ; preds = %for.body47, %for.cond45.preheader
  %vtable.i46 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i47 = getelementptr i8, ptr %vtable.i46, i64 -24
  %vbase.offset.i48 = load i64, ptr %vbase.offset.ptr.i47, align 8
  %add.ptr.i49 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i48
  %_M_ctype.i.i50 = getelementptr inbounds nuw i8, ptr %add.ptr.i49, i64 240
  %17 = load ptr, ptr %_M_ctype.i.i50, align 8, !tbaa !11
  %tobool.not.i.i.i51 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i51, label %if.then.i.i.i64, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52

if.then.i.i.i64:                                  ; preds = %for.end53
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52: ; preds = %for.end53
  %_M_widen_ok.i.i.i53 = getelementptr inbounds nuw i8, ptr %17, i64 56
  %18 = load i8, ptr %_M_widen_ok.i.i.i53, align 8, !tbaa !29
  %tobool.not.i1.i.i54 = icmp eq i8 %18, 0
  br i1 %tobool.not.i1.i.i54, label %if.end.i.i.i60, label %if.then.i2.i.i55

if.then.i2.i.i55:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52
  %arrayidx.i.i.i56 = getelementptr inbounds nuw i8, ptr %17, i64 67
  %19 = load i8, ptr %arrayidx.i.i.i56, align 1, !tbaa !35
  br label %if.end56

if.end.i.i.i60:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %17)
  %vtable.i.i.i61 = load ptr, ptr %17, align 8, !tbaa !9
  %vfn.i.i.i62 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i61, i64 48
  %20 = load ptr, ptr %vfn.i.i.i62, align 8
  %call.i.i.i63 = call noundef signext i8 %20(ptr noundef nonnull align 8 dereferenceable(570) %17, i8 noundef signext 10)
  br label %if.end56

if.end56:                                         ; preds = %if.end.i.i.i60, %if.then.i2.i.i55, %if.end.i.i.i40, %if.then.i2.i.i35, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i37.sink = phi i8 [ %3, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %7, %if.then.i2.i.i35 ], [ %call.i.i.i43, %if.end.i.i.i40 ], [ %19, %if.then.i2.i.i55 ], [ %call.i.i.i63, %if.end.i.i.i60 ]
  %call1.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i37.sink)
  %call.i.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i38)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %re) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

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
!11 = !{!12, !26, i64 240}
!12 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !13, i64 0, !23, i64 216, !7, i64 224, !24, i64 225, !25, i64 232, !26, i64 240, !27, i64 248, !28, i64 256}
!13 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !19, i64 48, !7, i64 64, !6, i64 192, !20, i64 200, !21, i64 208}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !14, i64 8}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!21 = !{!"_ZTSSt6locale", !22, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!23 = !{!"p1 _ZTSSo", !18, i64 0}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!26 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!27 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!28 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!29 = !{!30, !7, i64 56}
!30 = !{!"_ZTSSt5ctypeIcE", !31, i64 0, !32, i64 16, !24, i64 24, !33, i64 32, !33, i64 40, !34, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!31 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!32 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!33 = !{!"p1 int", !18, i64 0}
!34 = !{!"p1 short", !18, i64 0}
!35 = !{!7, !7, i64 0}
!36 = distinct !{!36, !37, !38, !39, !40}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !37, !38, !39}
!42 = distinct !{!42, !37, !38}
!43 = distinct !{!43, !37, !38}
!44 = distinct !{!44, !37, !38}
!45 = distinct !{!45, !37, !38}
