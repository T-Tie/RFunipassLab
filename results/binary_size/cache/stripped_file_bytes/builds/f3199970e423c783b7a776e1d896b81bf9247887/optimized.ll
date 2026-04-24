; ModuleID = '<stdin>'
source_filename = "/tmp/tmp27rfxg7c.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %.pr52 = phi i32 [ %sub, %while.body ], [ %.pr, %entry ]
  %a.0 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %cmp = icmp sgt i32 %.pr52, 99
  br i1 %cmp, label %while.body, label %while.cond1

while.body:                                       ; preds = %while.cond
  %sub = add nsw i32 %.pr52, -100
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %inc = add nuw nsw i32 %a.0, 1
  br label %while.cond, !llvm.loop !9

while.cond1:                                      ; preds = %while.cond, %while.body3
  %.pr53 = phi i32 [ %sub4, %while.body3 ], [ %.pr52, %while.cond ]
  %b.0 = phi i32 [ %inc5, %while.body3 ], [ 0, %while.cond ]
  %cmp2 = icmp sgt i32 %.pr53, 49
  br i1 %cmp2, label %while.body3, label %while.cond7

while.body3:                                      ; preds = %while.cond1
  %sub4 = add nsw i32 %.pr53, -50
  store i32 %sub4, ptr %n, align 4, !tbaa !5
  %inc5 = add nuw nsw i32 %b.0, 1
  br label %while.cond1, !llvm.loop !12

while.cond7:                                      ; preds = %while.cond1, %while.body9
  %.pr54 = phi i32 [ %sub10, %while.body9 ], [ %.pr53, %while.cond1 ]
  %c.0 = phi i32 [ %inc11, %while.body9 ], [ 0, %while.cond1 ]
  %cmp8 = icmp sgt i32 %.pr54, 19
  br i1 %cmp8, label %while.body9, label %while.cond13

while.body9:                                      ; preds = %while.cond7
  %sub10 = add nsw i32 %.pr54, -20
  store i32 %sub10, ptr %n, align 4, !tbaa !5
  %inc11 = add nuw nsw i32 %c.0, 1
  br label %while.cond7, !llvm.loop !13

while.cond13:                                     ; preds = %while.cond7, %while.body15
  %.pr55 = phi i32 [ %sub16, %while.body15 ], [ %.pr54, %while.cond7 ]
  %d.0 = phi i32 [ %inc17, %while.body15 ], [ 0, %while.cond7 ]
  %cmp14 = icmp sgt i32 %.pr55, 9
  br i1 %cmp14, label %while.body15, label %while.cond19

while.body15:                                     ; preds = %while.cond13
  %sub16 = add nsw i32 %.pr55, -10
  store i32 %sub16, ptr %n, align 4, !tbaa !5
  %inc17 = add nuw nsw i32 %d.0, 1
  br label %while.cond13, !llvm.loop !14

while.cond19:                                     ; preds = %while.cond13, %while.body21
  %.pr56 = phi i32 [ %sub22, %while.body21 ], [ %.pr55, %while.cond13 ]
  %e.0 = phi i32 [ %inc23, %while.body21 ], [ 0, %while.cond13 ]
  %cmp20 = icmp sgt i32 %.pr56, 4
  br i1 %cmp20, label %while.body21, label %while.cond25thread-pre-split

while.body21:                                     ; preds = %while.cond19
  %sub22 = add nsw i32 %.pr56, -5
  store i32 %sub22, ptr %n, align 4, !tbaa !5
  %inc23 = add nuw nsw i32 %e.0, 1
  br label %while.cond19, !llvm.loop !15

while.cond25thread-pre-split:                     ; preds = %while.cond19
  %smin = call i32 @llvm.smin.i32(i32 %.pr56, i32 0)
  %0 = sub i32 %.pr56, %smin
  br label %while.cond25

while.cond25:                                     ; preds = %while.cond25thread-pre-split, %while.body27
  %1 = phi i32 [ %.pr56, %while.cond25thread-pre-split ], [ %sub28, %while.body27 ]
  %f.0 = phi i32 [ 0, %while.cond25thread-pre-split ], [ %inc29, %while.body27 ]
  %exitcond.not = icmp eq i32 %f.0, %0
  br i1 %exitcond.not, label %while.end30, label %while.body27

while.body27:                                     ; preds = %while.cond25
  %sub28 = add nsw i32 %1, -1
  store i32 %sub28, ptr %n, align 4, !tbaa !5
  %inc29 = add nuw i32 %f.0, 1
  br label %while.cond25, !llvm.loop !16

while.end30:                                      ; preds = %while.cond25
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %a.0)
  %vtable.i = load ptr, ptr %call31, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call31, i64 %vbase.offset.i
  %call.i17 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call31, i8 noundef signext %call.i17)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i, i32 noundef %b.0)
  %vtable.i18 = load ptr, ptr %call33, align 8, !tbaa !17
  %vbase.offset.ptr.i19 = getelementptr i8, ptr %vtable.i18, i64 -24
  %vbase.offset.i20 = load i64, ptr %vbase.offset.ptr.i19, align 8
  %add.ptr.i21 = getelementptr inbounds i8, ptr %call33, i64 %vbase.offset.i20
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i21, i8 noundef signext 10)
  %call1.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call33, i8 noundef signext %call.i)
  %call.i.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i22)
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i23, i32 noundef %c.0)
  %vtable.i24 = load ptr, ptr %call35, align 8, !tbaa !17
  %vbase.offset.ptr.i25 = getelementptr i8, ptr %vtable.i24, i64 -24
  %vbase.offset.i26 = load i64, ptr %vbase.offset.ptr.i25, align 8
  %add.ptr.i27 = getelementptr inbounds i8, ptr %call35, i64 %vbase.offset.i26
  %call.i28 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i27, i8 noundef signext 10)
  %call1.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call35, i8 noundef signext %call.i28)
  %call.i.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i29)
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i30, i32 noundef %d.0)
  %vtable.i31 = load ptr, ptr %call37, align 8, !tbaa !17
  %vbase.offset.ptr.i32 = getelementptr i8, ptr %vtable.i31, i64 -24
  %vbase.offset.i33 = load i64, ptr %vbase.offset.ptr.i32, align 8
  %add.ptr.i34 = getelementptr inbounds i8, ptr %call37, i64 %vbase.offset.i33
  %call.i35 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i34, i8 noundef signext 10)
  %call1.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call37, i8 noundef signext %call.i35)
  %call.i.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i36)
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i37, i32 noundef %e.0)
  %vtable.i38 = load ptr, ptr %call39, align 8, !tbaa !17
  %vbase.offset.ptr.i39 = getelementptr i8, ptr %vtable.i38, i64 -24
  %vbase.offset.i40 = load i64, ptr %vbase.offset.ptr.i39, align 8
  %add.ptr.i41 = getelementptr inbounds i8, ptr %call39, i64 %vbase.offset.i40
  %call.i42 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i41, i8 noundef signext 10)
  %call1.i43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call39, i8 noundef signext %call.i42)
  %call.i.i44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i43)
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i44, i32 noundef %0)
  %vtable.i45 = load ptr, ptr %call41, align 8, !tbaa !17
  %vbase.offset.ptr.i46 = getelementptr i8, ptr %vtable.i45, i64 -24
  %vbase.offset.i47 = load i64, ptr %vbase.offset.ptr.i46, align 8
  %add.ptr.i48 = getelementptr inbounds i8, ptr %call41, i64 %vbase.offset.i47
  %call.i49 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i48, i8 noundef signext 10)
  %call1.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call41, i8 noundef signext %call.i49)
  %call.i.i51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i50)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
