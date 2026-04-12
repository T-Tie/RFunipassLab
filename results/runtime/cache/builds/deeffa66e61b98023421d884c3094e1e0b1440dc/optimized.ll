; ModuleID = '<stdin>'
source_filename = "/tmp/tmpu09qo3hl.cpp"
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
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc138, %entry
  %r.0 = phi i32 [ 1, %entry ], [ %inc139, %for.inc138 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %r.0, %0
  br i1 %cmp.not, label %for.end140, label %for.body

for.body:                                         ; preds = %for.cond
  %add = add nuw i32 %0, 1
  %1 = zext i32 %add to i64
  %2 = call ptr @llvm.stacksave.p0()
  %3 = mul nuw i64 %1, %1
  %vla = alloca i32, i64 %3, align 16
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.body
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc11 ], [ 1, %for.body ]
  %exitcond75 = icmp eq i64 %indvars.iv71, %1
  br i1 %exitcond75, label %for.cond14.preheader, label %for.cond5.preheader

for.cond14.preheader:                             ; preds = %for.cond2
  %4 = add i32 %0, 2
  %wide.trip.count114 = zext i32 %4 to i64
  br label %for.cond14

for.cond5.preheader:                              ; preds = %for.cond2
  %5 = mul nuw nsw i64 %indvars.iv71, %1
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %5
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond5.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond = icmp eq i64 %indvars.iv, %1
  br i1 %exitcond, label %for.inc11, label %for.inc

for.inc:                                          ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond5
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond2, !llvm.loop !12

for.cond14.loopexit:                              ; preds = %for.cond109
  %add97 = add nsw i32 %17, %number.0
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  br label %for.cond14, !llvm.loop !13

for.cond14:                                       ; preds = %for.cond14.preheader, %for.cond14.loopexit
  %indvars.iv108 = phi i64 [ 3, %for.cond14.preheader ], [ %indvars.iv.next109, %for.cond14.loopexit ]
  %indvars.iv76 = phi i64 [ 1, %for.cond14.preheader ], [ %indvars.iv.next77, %for.cond14.loopexit ]
  %number.0 = phi i32 [ 0, %for.cond14.preheader ], [ %add97, %for.cond14.loopexit ]
  %exitcond115.not = icmp eq i64 %indvars.iv108, %wide.trip.count114
  br i1 %exitcond115.not, label %for.inc138, label %for.cond17

for.cond17:                                       ; preds = %for.cond14, %for.inc50
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.inc50 ], [ %indvars.iv76, %for.cond14 ]
  %exitcond92 = icmp eq i64 %indvars.iv88, %1
  br i1 %exitcond92, label %for.cond53.preheader, label %for.body19

for.cond53.preheader:                             ; preds = %for.cond17
  %6 = mul nuw nsw i64 %indvars.iv76, %1
  %arrayidx57 = getelementptr inbounds nuw i32, ptr %vla, i64 %6
  br label %for.cond53

for.body19:                                       ; preds = %for.cond17
  %7 = mul nuw nsw i64 %indvars.iv88, %1
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %vla, i64 %7
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %arrayidx21, i64 %indvars.iv76
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !14
  br label %for.cond24

for.cond24:                                       ; preds = %for.body26, %for.body19
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.body26 ], [ %indvars.iv76, %for.body19 ]
  %min.0 = phi i32 [ %spec.select, %for.body26 ], [ %8, %for.body19 ]
  %exitcond82 = icmp eq i64 %indvars.iv78, %1
  br i1 %exitcond82, label %for.cond39.preheader, label %for.body26

for.cond39.preheader:                             ; preds = %for.cond24
  br label %for.cond39

for.body26:                                       ; preds = %for.cond24
  %arrayidx30 = getelementptr inbounds nuw i32, ptr %arrayidx21, i64 %indvars.iv78
  %9 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !14
  %spec.select = call i32 @llvm.smin.i32(i32 %9, i32 %min.0)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond24, !llvm.loop !15

for.cond39:                                       ; preds = %for.cond39.preheader, %for.inc47
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.inc47 ], [ %indvars.iv76, %for.cond39.preheader ]
  %exitcond87 = icmp eq i64 %indvars.iv83, %1
  br i1 %exitcond87, label %for.inc50, label %for.inc47

for.inc47:                                        ; preds = %for.cond39
  %arrayidx45 = getelementptr inbounds nuw i32, ptr %arrayidx21, i64 %indvars.iv83
  %10 = load i32, ptr %arrayidx45, align 4, !tbaa !5, !invariant.load !14
  %sub46 = sub nsw i32 %10, %min.0
  store i32 %sub46, ptr %arrayidx45, align 4, !tbaa !5
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond39, !llvm.loop !16

for.inc50:                                        ; preds = %for.cond39
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond17, !llvm.loop !17

for.cond53:                                       ; preds = %for.cond53.preheader, %for.inc88
  %indvars.iv103 = phi i64 [ %indvars.iv76, %for.cond53.preheader ], [ %indvars.iv.next104, %for.inc88 ]
  %exitcond107 = icmp eq i64 %indvars.iv103, %1
  br i1 %exitcond107, label %for.end90, label %for.body55

for.body55:                                       ; preds = %for.cond53
  %arrayidx59 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %indvars.iv103
  %11 = load i32, ptr %arrayidx59, align 4, !tbaa !5, !invariant.load !14
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv103
  br label %for.cond60

for.cond60:                                       ; preds = %for.body62, %for.body55
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.body62 ], [ %indvars.iv76, %for.body55 ]
  %min.2 = phi i32 [ %spec.select67, %for.body62 ], [ %11, %for.body55 ]
  %exitcond97 = icmp eq i64 %indvars.iv93, %1
  br i1 %exitcond97, label %for.cond77.preheader, label %for.body62

for.cond77.preheader:                             ; preds = %for.cond60
  br label %for.cond77

for.body62:                                       ; preds = %for.cond60
  %12 = mul nuw nsw i64 %indvars.iv93, %1
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %12
  %13 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !14
  %spec.select67 = call i32 @llvm.smin.i32(i32 %13, i32 %min.2)
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond60, !llvm.loop !18

for.cond77:                                       ; preds = %for.cond77.preheader, %for.inc85
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.inc85 ], [ %indvars.iv76, %for.cond77.preheader ]
  %exitcond102 = icmp eq i64 %indvars.iv98, %1
  br i1 %exitcond102, label %for.inc88, label %for.inc85

for.inc85:                                        ; preds = %for.cond77
  %14 = mul nuw nsw i64 %indvars.iv98, %1
  %gep69 = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %14
  %15 = load i32, ptr %gep69, align 4, !tbaa !5, !invariant.load !14
  %sub84 = sub nsw i32 %15, %min.2
  store i32 %sub84, ptr %gep69, align 4, !tbaa !5
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond77, !llvm.loop !19

for.inc88:                                        ; preds = %for.cond77
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond53, !llvm.loop !20

for.end90:                                        ; preds = %for.cond53
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %16 = mul nuw nsw i64 %indvars.iv.next77, %1
  %arrayidx93 = getelementptr inbounds nuw i32, ptr %vla, i64 %16
  %arrayidx96 = getelementptr inbounds nuw i32, ptr %arrayidx93, i64 %indvars.iv.next77
  %17 = load i32, ptr %arrayidx96, align 4, !tbaa !5, !invariant.load !14
  %arrayidx101 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %indvars.iv76
  %18 = load i32, ptr %arrayidx101, align 4, !tbaa !5, !invariant.load !14
  store i32 %18, ptr %arrayidx96, align 4, !tbaa !5
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc130, %for.end90
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %for.inc130 ], [ %indvars.iv108, %for.end90 ]
  %19 = trunc nuw i64 %indvars.iv110 to i32
  %cmp110.not = icmp slt i32 %0, %19
  br i1 %cmp110.not, label %for.cond14.loopexit, label %for.inc130

for.inc130:                                       ; preds = %for.cond109
  %arrayidx115 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %indvars.iv110
  %20 = load i32, ptr %arrayidx115, align 4, !tbaa !5, !invariant.load !14
  %arrayidx120 = getelementptr inbounds nuw i32, ptr %arrayidx93, i64 %indvars.iv110
  store i32 %20, ptr %arrayidx120, align 4, !tbaa !5
  %21 = mul nuw nsw i64 %indvars.iv110, %1
  %arrayidx122 = getelementptr inbounds nuw i32, ptr %vla, i64 %21
  %arrayidx124 = getelementptr inbounds nuw i32, ptr %arrayidx122, i64 %indvars.iv76
  %22 = load i32, ptr %arrayidx124, align 4, !tbaa !5, !invariant.load !14
  %arrayidx129 = getelementptr inbounds nuw i32, ptr %arrayidx122, i64 %indvars.iv.next77
  store i32 %22, ptr %arrayidx129, align 4, !tbaa !5
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %for.cond109, !llvm.loop !21

for.inc138:                                       ; preds = %for.cond14
  %call136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %number.0)
  %vtable.i = load ptr, ptr %call136, align 8, !tbaa !22, !invariant.load !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !14
  %add.ptr.i = getelementptr inbounds i8, ptr %call136, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call136, i8 noundef signext %call.i1)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.stackrestore.p0(ptr %2)
  %inc139 = add nuw nsw i32 %r.0, 1
  br label %for.cond, !llvm.loop !24

for.end140:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !25, !invariant.load !14
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !43, !invariant.load !14
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !49, !invariant.load !14
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !22, !invariant.load !14
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !14
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = distinct !{!24, !10, !11}
!25 = !{!26, !40, i64 240}
!26 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0, !37, i64 216, !7, i64 224, !38, i64 225, !39, i64 232, !40, i64 240, !41, i64 248, !42, i64 256}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !33, i64 48, !7, i64 64, !6, i64 192, !34, i64 200, !35, i64 208}
!28 = !{!"long", !7, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !32, i64 0}
!32 = !{!"any pointer", !7, i64 0}
!33 = !{!"_ZTSNSt8ios_base6_WordsE", !32, i64 0, !28, i64 8}
!34 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !32, i64 0}
!35 = !{!"_ZTSSt6locale", !36, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !32, i64 0}
!37 = !{!"p1 _ZTSSo", !32, i64 0}
!38 = !{!"bool", !7, i64 0}
!39 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 0}
!40 = !{!"p1 _ZTSSt5ctypeIcE", !32, i64 0}
!41 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!42 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!43 = !{!44, !7, i64 56}
!44 = !{!"_ZTSSt5ctypeIcE", !45, i64 0, !46, i64 16, !38, i64 24, !47, i64 32, !47, i64 40, !48, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!45 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!46 = !{!"p1 _ZTS15__locale_struct", !32, i64 0}
!47 = !{!"p1 int", !32, i64 0}
!48 = !{!"p1 short", !32, i64 0}
!49 = !{!7, !7, i64 0}
