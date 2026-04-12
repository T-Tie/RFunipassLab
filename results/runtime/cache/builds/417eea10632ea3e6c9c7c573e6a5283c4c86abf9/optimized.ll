; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnro4yszv.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [105 x [105 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 44100, ptr noundef nonnull align 16 %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx94 = getelementptr inbounds nuw i8, ptr %a, i64 424
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %1 = phi i32 [ %dec141, %while.end ], [ %0, %entry ]
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end142

while.body:                                       ; preds = %while.cond
  store i32 %0, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %while.body
  %2 = phi i32 [ %7, %for.inc8 ], [ %0, %while.body ]
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.inc8 ], [ 0, %while.body ]
  %3 = sext i32 %2 to i64
  %cmp1 = icmp slt i64 %indvars.iv51, %3
  br i1 %cmp1, label %for.cond2, label %while.cond11.preheader

while.cond11.preheader:                           ; preds = %for.cond
  %4 = add i32 %2, -1
  %5 = zext i32 %4 to i64
  %6 = zext i32 %2 to i64
  br label %while.cond11

for.cond2:                                        ; preds = %for.cond, %for.inc
  %7 = phi i32 [ %.pre, %for.inc ], [ %2, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %8 = sext i32 %7 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %8
  br i1 %cmp3, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv51, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond, !llvm.loop !12

while.cond11:                                     ; preds = %while.cond11.preheader, %for.end138
  %indvars.iv108 = phi i64 [ %6, %while.cond11.preheader ], [ %indvars.iv.next109, %for.end138 ]
  %indvars.iv105 = phi i64 [ %5, %while.cond11.preheader ], [ %indvars.iv.next106, %for.end138 ]
  %sum.0 = phi i32 [ 0, %while.cond11.preheader ], [ %add, %for.end138 ]
  %9 = trunc nuw i64 %indvars.iv108 to i32
  %cmp12 = icmp sgt i32 %9, 1
  br i1 %cmp12, label %for.cond14, label %while.end

for.cond14:                                       ; preds = %while.cond11, %for.inc49
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.inc49 ], [ 0, %while.cond11 ]
  %exitcond66.not = icmp eq i64 %indvars.iv62, %indvars.iv108
  br i1 %exitcond66.not, label %for.cond52, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv62
  %10 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.body22, %for.body16
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.body22 ], [ 0, %for.body16 ]
  %min.0 = phi i32 [ %spec.select, %for.body22 ], [ %10, %for.body16 ]
  %exitcond.not = icmp eq i64 %indvars.iv54, %indvars.iv108
  br i1 %exitcond.not, label %for.cond35.preheader, label %for.body22

for.cond35.preheader:                             ; preds = %for.cond20
  br label %for.cond35

for.body22:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv62, i64 %indvars.iv54
  %11 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %min.0, i32 %11)
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond20, !llvm.loop !13

for.cond35:                                       ; preds = %for.cond35.preheader, %for.inc46
  %indvars.iv57 = phi i64 [ 0, %for.cond35.preheader ], [ %indvars.iv.next58, %for.inc46 ]
  %exitcond61.not = icmp eq i64 %indvars.iv57, %indvars.iv108
  br i1 %exitcond61.not, label %for.inc49, label %for.inc46

for.inc46:                                        ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv62, i64 %indvars.iv57
  %12 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %min.0
  store i32 %sub, ptr %arrayidx41, align 4, !tbaa !5
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond35, !llvm.loop !14

for.inc49:                                        ; preds = %for.cond35
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond14, !llvm.loop !15

for.cond52:                                       ; preds = %for.cond14, %for.inc90
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc90 ], [ 0, %for.cond14 ]
  %exitcond81.not = icmp eq i64 %indvars.iv77, %indvars.iv108
  br i1 %exitcond81.not, label %for.end92, label %for.body54

for.body54:                                       ; preds = %for.cond52
  %arrayidx57 = getelementptr inbounds nuw [105 x i32], ptr %a, i64 0, i64 %indvars.iv77
  %13 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.body60, %for.body54
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.body60 ], [ 0, %for.body54 ]
  %min.2 = phi i32 [ %spec.select49, %for.body60 ], [ %13, %for.body54 ]
  %exitcond71.not = icmp eq i64 %indvars.iv67, %indvars.iv108
  br i1 %exitcond71.not, label %for.cond75.preheader, label %for.body60

for.cond75.preheader:                             ; preds = %for.cond58
  br label %for.cond75

for.body60:                                       ; preds = %for.cond58
  %arrayidx64 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv67, i64 %indvars.iv77
  %14 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %spec.select49 = call i32 @llvm.smin.i32(i32 %min.2, i32 %14)
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond58, !llvm.loop !16

for.cond75:                                       ; preds = %for.cond75.preheader, %for.inc87
  %indvars.iv72 = phi i64 [ 0, %for.cond75.preheader ], [ %indvars.iv.next73, %for.inc87 ]
  %exitcond76.not = icmp eq i64 %indvars.iv72, %indvars.iv108
  br i1 %exitcond76.not, label %for.inc90, label %for.inc87

for.inc87:                                        ; preds = %for.cond75
  %arrayidx81 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv72, i64 %indvars.iv77
  %15 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %sub82 = sub nsw i32 %15, %min.2
  store i32 %sub82, ptr %arrayidx81, align 4, !tbaa !5
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond75, !llvm.loop !17

for.inc90:                                        ; preds = %for.cond75
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond52, !llvm.loop !18

for.end92:                                        ; preds = %for.cond52
  %16 = load i32, ptr %arrayidx94, align 8, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc114, %for.end92
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.inc114 ], [ 0, %for.end92 ]
  %exitcond94.not = icmp eq i64 %indvars.iv90, %indvars.iv108
  br i1 %exitcond94.not, label %for.cond117, label %for.cond98

for.cond98:                                       ; preds = %for.cond95, %for.inc111
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.inc111 ], [ 1, %for.cond95 ]
  %exitcond89.not = icmp eq i64 %indvars.iv82, %indvars.iv105
  br i1 %exitcond89.not, label %for.inc114, label %for.inc111

for.inc111:                                       ; preds = %for.cond98
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %arrayidx106 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv90, i64 %indvars.iv.next83
  %17 = load i32, ptr %arrayidx106, align 4, !tbaa !5, !invariant.load !19
  %arrayidx110 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv90, i64 %indvars.iv82
  store i32 %17, ptr %arrayidx110, align 4, !tbaa !5
  br label %for.cond98, !llvm.loop !20

for.inc114:                                       ; preds = %for.cond98
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond95, !llvm.loop !21

for.cond117:                                      ; preds = %for.cond95, %for.inc136
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.inc136 ], [ 0, %for.cond95 ]
  %exitcond104.not = icmp eq i64 %indvars.iv100, %indvars.iv108
  br i1 %exitcond104.not, label %for.end138, label %for.cond120

for.cond120:                                      ; preds = %for.cond117, %for.inc133
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.inc133 ], [ 1, %for.cond117 ]
  %exitcond99.not = icmp eq i64 %indvars.iv95, %indvars.iv105
  br i1 %exitcond99.not, label %for.inc136, label %for.inc133

for.inc133:                                       ; preds = %for.cond120
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %arrayidx128 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv.next96, i64 %indvars.iv100
  %18 = load i32, ptr %arrayidx128, align 4, !tbaa !5, !invariant.load !19
  %arrayidx132 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv95, i64 %indvars.iv100
  store i32 %18, ptr %arrayidx132, align 4, !tbaa !5
  br label %for.cond120, !llvm.loop !22

for.inc136:                                       ; preds = %for.cond120
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond117, !llvm.loop !23

for.end138:                                       ; preds = %for.cond117
  %add = add nsw i32 %16, %sum.0
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, -1
  %indvars111 = trunc i64 %indvars.iv.next109 to i32
  store i32 %indvars111, ptr %n, align 4, !tbaa !5
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, -1
  br label %while.cond11, !llvm.loop !24

while.end:                                        ; preds = %while.cond11
  %call139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call139, align 8, !tbaa !25
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !19
  %add.ptr.i = getelementptr inbounds i8, ptr %call139, i64 %vbase.offset.i
  %call.i34 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call139, i8 noundef signext %call.i34)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %dec141 = add nsw i32 %1, -1
  br label %while.cond, !llvm.loop !27

while.end142:                                     ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 44100, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
  %vtable = load ptr, ptr %this, align 8, !tbaa !25
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !19
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
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!19 = !{}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !8, i64 0}
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
