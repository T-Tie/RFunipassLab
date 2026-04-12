; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwlwcxmz4.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [101 x [101 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx90 = getelementptr inbounds nuw i8, ptr %a, i64 408
  br label %for.cond

for.cond:                                         ; preds = %for.inc139, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc140, %for.inc139 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.cond1, label %for.end141

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %6, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv68, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, -1
  %4 = zext i32 %3 to i64
  %5 = zext i32 %1 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %6 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %7
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv68, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc135
  %indvars.iv125 = phi i64 [ %5, %for.cond13.preheader ], [ %indvars.iv.next126, %for.inc135 ]
  %indvars.iv122 = phi i64 [ %4, %for.cond13.preheader ], [ %indvars.iv.next123, %for.inc135 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add, %for.inc135 ]
  %8 = trunc nuw i64 %indvars.iv125 to i32
  %cmp14 = icmp sgt i32 %8, 1
  br i1 %cmp14, label %for.cond16, label %for.inc139

for.cond16:                                       ; preds = %for.cond13, %for.inc48
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %for.inc48 ], [ 0, %for.cond13 ]
  %exitcond83.not = icmp eq i64 %indvars.iv79, %indvars.iv125
  br i1 %exitcond83.not, label %for.cond51, label %for.cond19

for.cond19:                                       ; preds = %for.cond16, %for.body21
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body21 ], [ 0, %for.cond16 ]
  %min.0 = phi i32 [ %spec.select, %for.body21 ], [ 100000, %for.cond16 ]
  %exitcond.not = icmp eq i64 %indvars.iv71, %indvars.iv125
  br i1 %exitcond.not, label %for.cond34.preheader, label %for.body21

for.cond34.preheader:                             ; preds = %for.cond19
  br label %for.cond34

for.body21:                                       ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv79, i64 %indvars.iv71
  %9 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %9, i32 %min.0)
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond19, !llvm.loop !13

for.cond34:                                       ; preds = %for.cond34.preheader, %for.inc45
  %indvars.iv74 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next75, %for.inc45 ]
  %exitcond78.not = icmp eq i64 %indvars.iv74, %indvars.iv125
  br i1 %exitcond78.not, label %for.inc48, label %for.inc45

for.inc45:                                        ; preds = %for.cond34
  %arrayidx40 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv79, i64 %indvars.iv74
  %10 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %sub = sub nsw i32 %10, %min.0
  store i32 %sub, ptr %arrayidx40, align 4, !tbaa !5
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond34, !llvm.loop !14

for.inc48:                                        ; preds = %for.cond34
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond16, !llvm.loop !15

for.cond51:                                       ; preds = %for.cond16, %for.inc86
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.inc86 ], [ 0, %for.cond16 ]
  %exitcond98.not = icmp eq i64 %indvars.iv94, %indvars.iv125
  br i1 %exitcond98.not, label %for.end88, label %for.cond54

for.cond54:                                       ; preds = %for.cond51, %for.body56
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.body56 ], [ 0, %for.cond51 ]
  %min.2 = phi i32 [ %spec.select66, %for.body56 ], [ 100000, %for.cond51 ]
  %exitcond88.not = icmp eq i64 %indvars.iv84, %indvars.iv125
  br i1 %exitcond88.not, label %for.cond71.preheader, label %for.body56

for.cond71.preheader:                             ; preds = %for.cond54
  br label %for.cond71

for.body56:                                       ; preds = %for.cond54
  %arrayidx60 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv84, i64 %indvars.iv94
  %11 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %spec.select66 = call i32 @llvm.smin.i32(i32 %11, i32 %min.2)
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond54, !llvm.loop !16

for.cond71:                                       ; preds = %for.cond71.preheader, %for.inc83
  %indvars.iv89 = phi i64 [ 0, %for.cond71.preheader ], [ %indvars.iv.next90, %for.inc83 ]
  %exitcond93.not = icmp eq i64 %indvars.iv89, %indvars.iv125
  br i1 %exitcond93.not, label %for.inc86, label %for.inc83

for.inc83:                                        ; preds = %for.cond71
  %arrayidx77 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv89, i64 %indvars.iv94
  %12 = load i32, ptr %arrayidx77, align 4, !tbaa !5
  %sub78 = sub nsw i32 %12, %min.2
  store i32 %sub78, ptr %arrayidx77, align 4, !tbaa !5
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond71, !llvm.loop !17

for.inc86:                                        ; preds = %for.cond71
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond51, !llvm.loop !18

for.end88:                                        ; preds = %for.cond51
  %13 = load i32, ptr %arrayidx90, align 8, !tbaa !5
  br label %for.cond91

for.cond91:                                       ; preds = %for.cond95, %for.end88
  %indvars.iv104 = phi i64 [ 1, %for.end88 ], [ %indvars.iv.next105, %for.cond95 ]
  %exitcond111.not = icmp eq i64 %indvars.iv104, %indvars.iv122
  br i1 %exitcond111.not, label %for.cond113, label %for.cond95.preheader

for.cond95.preheader:                             ; preds = %for.cond91
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  br label %for.cond95

for.cond95:                                       ; preds = %for.cond95.preheader, %for.inc107
  %indvars.iv99 = phi i64 [ 0, %for.cond95.preheader ], [ %indvars.iv.next100, %for.inc107 ]
  %exitcond103.not = icmp eq i64 %indvars.iv99, %indvars.iv125
  br i1 %exitcond103.not, label %for.cond91, label %for.inc107, !llvm.loop !19

for.inc107:                                       ; preds = %for.cond95
  %arrayidx102 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv.next105, i64 %indvars.iv99
  %14 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %arrayidx106 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv104, i64 %indvars.iv99
  store i32 %14, ptr %arrayidx106, align 4, !tbaa !5
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  br label %for.cond95, !llvm.loop !20

for.cond113:                                      ; preds = %for.cond116, %for.cond91
  %indvars.iv117 = phi i64 [ 1, %for.cond91 ], [ %indvars.iv.next118, %for.cond116 ]
  %exitcond121.not = icmp eq i64 %indvars.iv117, %indvars.iv125
  br i1 %exitcond121.not, label %for.inc135, label %for.cond116.preheader

for.cond116.preheader:                            ; preds = %for.cond113
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %for.cond116

for.cond116:                                      ; preds = %for.cond116.preheader, %for.inc129
  %indvars.iv112 = phi i64 [ 0, %for.cond116.preheader ], [ %indvars.iv.next113, %for.inc129 ]
  %exitcond116.not = icmp eq i64 %indvars.iv112, %indvars.iv122
  br i1 %exitcond116.not, label %for.cond113, label %for.inc129, !llvm.loop !21

for.inc129:                                       ; preds = %for.cond116
  %arrayidx124 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv112, i64 %indvars.iv.next118
  %15 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %arrayidx128 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv112, i64 %indvars.iv117
  store i32 %15, ptr %arrayidx128, align 4, !tbaa !5
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond116, !llvm.loop !22

for.inc135:                                       ; preds = %for.cond113
  %add = add nsw i32 %13, %sum.0
  %indvars.iv.next126 = add nsw i64 %indvars.iv125, -1
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, -1
  br label %for.cond13, !llvm.loop !23

for.inc139:                                       ; preds = %for.cond13
  %call137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call137, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !26
  %add.ptr.i = getelementptr inbounds i8, ptr %call137, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call137, i8 noundef signext %call.i1)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc140 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !27

for.end141:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !28
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !46
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !52
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !24
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !26
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = !{}
!27 = distinct !{!27, !10, !11}
!28 = !{!29, !43, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !30, i64 0, !40, i64 216, !7, i64 224, !41, i64 225, !42, i64 232, !43, i64 240, !44, i64 248, !45, i64 256}
!30 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !32, i64 24, !33, i64 28, !33, i64 32, !34, i64 40, !36, i64 48, !7, i64 64, !6, i64 192, !37, i64 200, !38, i64 208}
!31 = !{!"long", !7, i64 0}
!32 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!33 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!34 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !35, i64 0}
!35 = !{!"any pointer", !7, i64 0}
!36 = !{!"_ZTSNSt8ios_base6_WordsE", !35, i64 0, !31, i64 8}
!37 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !35, i64 0}
!38 = !{!"_ZTSSt6locale", !39, i64 0}
!39 = !{!"p1 _ZTSNSt6locale5_ImplE", !35, i64 0}
!40 = !{!"p1 _ZTSSo", !35, i64 0}
!41 = !{!"bool", !7, i64 0}
!42 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !35, i64 0}
!43 = !{!"p1 _ZTSSt5ctypeIcE", !35, i64 0}
!44 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !35, i64 0}
!45 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !35, i64 0}
!46 = !{!47, !7, i64 56}
!47 = !{!"_ZTSSt5ctypeIcE", !48, i64 0, !49, i64 16, !41, i64 24, !50, i64 32, !50, i64 40, !51, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!48 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!49 = !{!"p1 _ZTS15__locale_struct", !35, i64 0}
!50 = !{!"p1 int", !35, i64 0}
!51 = !{!"p1 short", !35, i64 0}
!52 = !{!7, !7, i64 0}
