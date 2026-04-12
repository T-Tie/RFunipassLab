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
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc18 ], [ 0, %entry ]
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %input) #8
  %sub = sub i64 %call4, %conv5
  %cmp.not = icmp ult i64 %sub, %indvars.iv31
  br i1 %cmp.not, label %for.cond21.preheader, label %for.cond6

for.cond21.preheader:                             ; preds = %for.cond
  %wide.trip.count41 = and i64 %indvars.iv31, 4294967295
  br label %for.cond21

for.cond6:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc18, label %for.inc

for.inc:                                          ; preds = %for.cond6
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv31
  %arrayidx = getelementptr inbounds nuw [600 x i8], ptr %input, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %arrayidx12 = getelementptr inbounds nuw [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv31, i64 %indvars.iv
  store i8 %2, ptr %arrayidx12, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !11

for.inc18:                                        ; preds = %for.cond6
  %arrayidx16 = getelementptr inbounds [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv31, i64 %conv5
  store i8 0, ptr %arrayidx16, align 1, !tbaa !9
  %indvars.iv.next32 = add nuw i64 %indvars.iv31, 1
  br label %for.cond, !llvm.loop !14

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc26
  %indvars.iv36 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next37, %for.inc26 ]
  %exitcond42.not = icmp eq i64 %indvars.iv36, %wide.trip.count41
  br i1 %exitcond42.not, label %for.cond29, label %for.inc26

for.inc26:                                        ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv36
  store i32 1, ptr %arrayidx25, align 4, !tbaa !5
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond21, !llvm.loop !15

for.cond29:                                       ; preds = %for.cond21, %for.inc54
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc54 ], [ 0, %for.cond21 ]
  %exitcond54.not = icmp eq i64 %indvars.iv43, %wide.trip.count41
  br i1 %exitcond54.not, label %for.cond57, label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.cond29
  %arrayidx36 = getelementptr inbounds nuw [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv43
  %arrayidx44 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv43
  br label %for.cond32

for.cond32:                                       ; preds = %for.cond32.preheader, %for.inc51
  %indvars.iv45 = phi i64 [ %indvars.iv43, %for.cond32.preheader ], [ %indvars.iv.next46, %for.inc51 ]
  %exitcond50.not = icmp eq i64 %indvars.iv45, %wide.trip.count41
  br i1 %exitcond50.not, label %for.inc54, label %for.body34

for.body34:                                       ; preds = %for.cond32
  %arrayidx39 = getelementptr inbounds nuw [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv45
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
  %arrayidx50 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv45
  %4 = load i32, ptr %arrayidx50, align 4, !tbaa !5, !invariant.load !10
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %arrayidx50, align 4, !tbaa !5
  br label %for.inc51

for.inc51:                                        ; preds = %for.body34, %land.lhs.true, %if.then
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond32, !llvm.loop !16

for.inc54:                                        ; preds = %for.cond32
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond29, !llvm.loop !17

for.cond57:                                       ; preds = %for.cond29, %for.body59
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.body59 ], [ 0, %for.cond29 ]
  %max.0 = phi i32 [ %spec.select, %for.body59 ], [ 0, %for.cond29 ]
  %exitcond60.not = icmp eq i64 %indvars.iv55, %wide.trip.count41
  br i1 %exitcond60.not, label %for.end69, label %for.body59

for.body59:                                       ; preds = %for.cond57
  %arrayidx61 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv55
  %5 = load i32, ptr %arrayidx61, align 4, !tbaa !5, !invariant.load !10
  %spec.select = call i32 @llvm.smax.i32(i32 %5, i32 %max.0)
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond57, !llvm.loop !18

for.end69:                                        ; preds = %for.cond57
  %cmp70 = icmp eq i32 %max.0, 1
  br i1 %cmp70, label %if.then71, label %if.else

if.then71:                                        ; preds = %for.end69
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout)
  br label %if.end92

if.else:                                          ; preds = %for.end69
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %max.0)
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(264) %call74)
  %vtable.i14 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i15 = getelementptr i8, ptr %vtable.i14, i64 -24
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc89, %if.else
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc89 ], [ 0, %if.else ]
  %exitcond66.not = icmp eq i64 %indvars.iv61, %wide.trip.count41
  br i1 %exitcond66.not, label %if.end92, label %for.body78

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw [10000 x i32], ptr %num, i64 0, i64 %indvars.iv61
  %6 = load i32, ptr %arrayidx80, align 4, !tbaa !5, !invariant.load !10
  %cmp81 = icmp eq i32 %6, %max.0
  br i1 %cmp81, label %if.then82, label %for.inc89

if.then82:                                        ; preds = %for.body78
  %arrayidx84 = getelementptr inbounds nuw [10000 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv61
  %call.i.i2 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx84) #9
  %call1.i3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx84, i64 noundef %call.i.i2)
  %vbase.offset.i16 = load i64, ptr %vbase.offset.ptr.i15, align 8, !invariant.load !10
  %add.ptr.i17 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i16
  %call.i18 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i17, i8 noundef signext 10)
  %call1.i19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i18)
  %call.i.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i19)
  br label %for.inc89

for.inc89:                                        ; preds = %for.body78, %if.then82
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond76, !llvm.loop !19

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

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #6 {
if.then71_after_outline.exitStub:
  %vtable.i = load ptr, ptr %0, align 8, !tbaa !20, !invariant.load !10
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !10
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 %vbase.offset.i
  %call.i5 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call.i5)
  %call.i.i7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i6)
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!19 = distinct !{!19, !12, !13}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
