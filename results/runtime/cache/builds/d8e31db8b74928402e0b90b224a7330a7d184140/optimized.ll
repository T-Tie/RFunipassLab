; ModuleID = '<stdin>'
source_filename = "/tmp/tmpd7qcwv6o.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %num = alloca [10000 x i32], align 16
  %c = alloca [10000 x [6 x i8]], align 16
  %input = alloca [600 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %len) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %num) #7
  call void @llvm.lifetime.start.p0(i64 noundef 60000, ptr noundef nonnull align 16 dereferenceable(60000) %c) #7
  call void @llvm.lifetime.start.p0(i64 noundef 600, ptr noundef nonnull align 16 captures(none) dereferenceable(600) %input) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %len)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(600) %input, i64 noundef 600)
  %0 = load i32, ptr %len, align 4, !tbaa !5
  %conv5 = sext i32 %0 to i64
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %indvars.iv68 = phi i32 [ %indvars.iv.next69, %for.inc18 ], [ 0, %entry ]
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.inc18 ], [ 0, %entry ]
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %input) #8
  %sub = sub i64 %call4, %conv5
  %cmp.not = icmp ult i64 %sub, %indvars.iv60
  br i1 %cmp.not, label %for.cond21.preheader, label %for.cond6

for.cond21.preheader:                             ; preds = %for.cond
  %wide.trip.count70 = zext i32 %indvars.iv68 to i64
  br label %for.cond21

for.cond6:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc18, label %for.inc

for.inc:                                          ; preds = %for.cond6
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv60
  %arrayidx = getelementptr inbounds nuw [600 x i8], ptr %input, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %arrayidx12 = getelementptr inbounds nuw [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv60, i64 %indvars.iv
  store i8 %2, ptr %arrayidx12, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !11

for.inc18:                                        ; preds = %for.cond6
  %arrayidx16 = getelementptr inbounds [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv60, i64 %conv5
  store i8 0, ptr %arrayidx16, align 1, !tbaa !9
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %indvars.iv.next69 = add nuw i32 %indvars.iv68, 1
  br label %for.cond, !llvm.loop !14

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc26
  %indvars.iv65 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next66, %for.inc26 ]
  %exitcond71.not = icmp eq i64 %indvars.iv65, %wide.trip.count70
  br i1 %exitcond71.not, label %for.cond29, label %for.inc26

for.inc26:                                        ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv65
  store i32 1, ptr %arrayidx25, align 4, !tbaa !5
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond21, !llvm.loop !15

for.cond29:                                       ; preds = %for.cond21, %for.inc54
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc54 ], [ 0, %for.cond21 ]
  %exitcond83.not = icmp eq i64 %indvars.iv72, %wide.trip.count70
  br i1 %exitcond83.not, label %for.cond57, label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.cond29
  %arrayidx36 = getelementptr inbounds nuw [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv72
  %arrayidx44 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv72
  br label %for.cond32

for.cond32:                                       ; preds = %for.cond32.preheader, %for.inc51
  %indvars.iv74 = phi i64 [ %indvars.iv72, %for.cond32.preheader ], [ %indvars.iv.next75, %for.inc51 ]
  %exitcond79.not = icmp eq i64 %indvars.iv74, %wide.trip.count70
  br i1 %exitcond79.not, label %for.inc54, label %for.body34

for.body34:                                       ; preds = %for.cond32
  %arrayidx39 = getelementptr inbounds nuw [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv74
  %call41 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx36, ptr noundef nonnull dereferenceable(1) %arrayidx39) #8
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %land.lhs.true, label %for.inc51

land.lhs.true:                                    ; preds = %for.body34
  %3 = load i32, ptr %arrayidx44, align 4, !tbaa !5, !invariant.load !10
  %cmp45 = icmp sgt i32 %3, 0
  br i1 %cmp45, label %if.then, label %for.inc51

if.then:                                          ; preds = %land.lhs.true
  %inc48 = add nuw nsw i32 %3, 1
  store i32 %inc48, ptr %arrayidx44, align 4, !tbaa !5
  %arrayidx50 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv74
  %4 = load i32, ptr %arrayidx50, align 4, !tbaa !5, !invariant.load !10
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %arrayidx50, align 4, !tbaa !5
  br label %for.inc51

for.inc51:                                        ; preds = %for.body34, %land.lhs.true, %if.then
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond32, !llvm.loop !16

for.inc54:                                        ; preds = %for.cond32
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond29, !llvm.loop !17

for.cond57:                                       ; preds = %for.cond29, %for.body59
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.body59 ], [ 0, %for.cond29 ]
  %max.0 = phi i32 [ %spec.select, %for.body59 ], [ 0, %for.cond29 ]
  %exitcond89.not = icmp eq i64 %indvars.iv84, %wide.trip.count70
  br i1 %exitcond89.not, label %for.end69, label %for.body59

for.body59:                                       ; preds = %for.cond57
  %arrayidx61 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv84
  %5 = load i32, ptr %arrayidx61, align 4, !tbaa !5, !invariant.load !10
  %spec.select = call i32 @llvm.smax.i32(i32 %5, i32 %max.0)
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond57, !llvm.loop !18

for.end69:                                        ; preds = %for.cond57
  %cmp70 = icmp eq i32 %max.0, 1
  br i1 %cmp70, label %if.then71, label %if.else

if.then71:                                        ; preds = %for.end69
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19, !invariant.load !10
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !10
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i6 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i6)
  %call.i.i8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i7)
  br label %if.end92

if.else:                                          ; preds = %for.end69
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %max.0)
  %vtable.i9 = load ptr, ptr %call74, align 8, !tbaa !19, !invariant.load !10
  %vbase.offset.ptr.i10 = getelementptr i8, ptr %vtable.i9, i64 -24
  %vbase.offset.i11 = load i64, ptr %vbase.offset.ptr.i10, align 8, !invariant.load !10
  %add.ptr.i12 = getelementptr inbounds i8, ptr %call74, i64 %vbase.offset.i11
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i12, i8 noundef signext 10)
  %call1.i13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call74, i8 noundef signext %call.i)
  %call.i.i14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i13)
  %vtable.i15 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i16 = getelementptr i8, ptr %vtable.i15, i64 -24
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc89, %if.else
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.inc89 ], [ 0, %if.else ]
  %exitcond95.not = icmp eq i64 %indvars.iv90, %wide.trip.count70
  br i1 %exitcond95.not, label %if.end92, label %for.body78

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv90
  %6 = load i32, ptr %arrayidx80, align 4, !tbaa !5, !invariant.load !10
  %cmp81 = icmp eq i32 %6, %max.0
  br i1 %cmp81, label %if.then82, label %for.inc89

if.then82:                                        ; preds = %for.body78
  %arrayidx84 = getelementptr inbounds nuw [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv90
  %call.i.i3 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx84) #9
  %call1.i4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx84, i64 noundef %call.i.i3)
  %vbase.offset.i17 = load i64, ptr %vbase.offset.ptr.i16, align 8, !invariant.load !10
  %add.ptr.i18 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i17
  %call.i19 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i18, i8 noundef signext 10)
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i19)
  %call.i.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i20)
  br label %for.inc89

for.inc89:                                        ; preds = %for.body78, %if.then82
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond76, !llvm.loop !21

if.end92:                                         ; preds = %for.cond76, %if.then71
  call void @llvm.lifetime.end.p0(i64 noundef 600, ptr noundef nonnull %input) #9
  call void @llvm.lifetime.end.p0(i64 noundef 60000, ptr noundef nonnull %c) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %num) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %len) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !22, !invariant.load !10
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !19, !invariant.load !10
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !10
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !8, i64 0}
!21 = distinct !{!21, !12, !13}
!22 = !{!23, !7, i64 56}
!23 = !{!"_ZTSSt5ctypeIcE", !24, i64 0, !25, i64 16, !27, i64 24, !28, i64 32, !28, i64 40, !29, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!24 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!25 = !{!"p1 _ZTS15__locale_struct", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!"bool", !7, i64 0}
!28 = !{!"p1 int", !26, i64 0}
!29 = !{!"p1 short", !26, i64 0}
