; ModuleID = '<stdin>'
source_filename = "/tmp/tmpymxs5av5.cpp"
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
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %.pr52 = phi i32 [ %sub, %for.body ], [ %.pr, %entry ]
  %i.0 = phi i32 [ %inc, %for.body ], [ 1, %entry ]
  %a.0 = phi i32 [ %i.0, %for.body ], [ 0, %entry ]
  %cmp = icmp sgt i32 %.pr52, 99
  br i1 %cmp, label %for.body, label %for.cond2

for.body:                                         ; preds = %for.cond
  %sub = add nsw i32 %.pr52, -100
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond, %for.body5
  %.pr53 = phi i32 [ %sub3, %for.body5 ], [ %.pr52, %for.cond ]
  %i.1 = phi i32 [ %inc8, %for.body5 ], [ 1, %for.cond ]
  %b.0 = phi i32 [ %i.1, %for.body5 ], [ 0, %for.cond ]
  %cmp4 = icmp sgt i32 %.pr53, 49
  br i1 %cmp4, label %for.body5, label %for.cond10

for.body5:                                        ; preds = %for.cond2
  %sub3 = add nsw i32 %.pr53, -50
  store i32 %sub3, ptr %n, align 4, !tbaa !5
  %inc8 = add nuw nsw i32 %i.1, 1
  br label %for.cond2, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond2, %for.body13
  %.pr54 = phi i32 [ %sub11, %for.body13 ], [ %.pr53, %for.cond2 ]
  %i.2 = phi i32 [ %inc16, %for.body13 ], [ 1, %for.cond2 ]
  %c.0 = phi i32 [ %i.2, %for.body13 ], [ 0, %for.cond2 ]
  %cmp12 = icmp sgt i32 %.pr54, 19
  br i1 %cmp12, label %for.body13, label %for.cond18

for.body13:                                       ; preds = %for.cond10
  %sub11 = add nsw i32 %.pr54, -20
  store i32 %sub11, ptr %n, align 4, !tbaa !5
  %inc16 = add nuw nsw i32 %i.2, 1
  br label %for.cond10, !llvm.loop !13

for.cond18:                                       ; preds = %for.cond10, %for.body21
  %.pr55 = phi i32 [ %sub19, %for.body21 ], [ %.pr54, %for.cond10 ]
  %i.3 = phi i32 [ %inc24, %for.body21 ], [ 1, %for.cond10 ]
  %d.0 = phi i32 [ %i.3, %for.body21 ], [ 0, %for.cond10 ]
  %cmp20 = icmp sgt i32 %.pr55, 9
  br i1 %cmp20, label %for.body21, label %for.cond26

for.body21:                                       ; preds = %for.cond18
  %sub19 = add nsw i32 %.pr55, -10
  store i32 %sub19, ptr %n, align 4, !tbaa !5
  %inc24 = add nuw nsw i32 %i.3, 1
  br label %for.cond18, !llvm.loop !14

for.cond26:                                       ; preds = %for.cond18, %for.body29
  %.pr56 = phi i32 [ %sub27, %for.body29 ], [ %.pr55, %for.cond18 ]
  %i.4 = phi i32 [ %inc32, %for.body29 ], [ 1, %for.cond18 ]
  %e.0 = phi i32 [ %i.4, %for.body29 ], [ 0, %for.cond18 ]
  %cmp28 = icmp sgt i32 %.pr56, 4
  br i1 %cmp28, label %for.body29, label %for.cond34thread-pre-split

for.body29:                                       ; preds = %for.cond26
  %sub27 = add nsw i32 %.pr56, -5
  store i32 %sub27, ptr %n, align 4, !tbaa !5
  %inc32 = add nuw nsw i32 %i.4, 1
  br label %for.cond26, !llvm.loop !15

for.cond34thread-pre-split:                       ; preds = %for.cond26
  %smin = call i32 @llvm.smin.i32(i32 %.pr56, i32 0)
  %0 = add nsw i32 %.pr56, 1
  %1 = sub i32 %0, %smin
  br label %for.cond34

for.cond34:                                       ; preds = %for.cond34thread-pre-split, %for.body37
  %2 = phi i32 [ %.pr56, %for.cond34thread-pre-split ], [ %sub35, %for.body37 ]
  %i.5 = phi i32 [ 1, %for.cond34thread-pre-split ], [ %inc40, %for.body37 ]
  %exitcond.not = icmp eq i32 %i.5, %1
  br i1 %exitcond.not, label %for.end41, label %for.body37

for.body37:                                       ; preds = %for.cond34
  %sub35 = add nsw i32 %2, -1
  store i32 %sub35, ptr %n, align 4, !tbaa !5
  %inc40 = add nuw i32 %i.5, 1
  br label %for.cond34, !llvm.loop !16

for.end41:                                        ; preds = %for.cond34
  %3 = sub i32 %.pr56, %smin
  %call42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %a.0)
  %vtable.i = load ptr, ptr %call42, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call42, i64 %vbase.offset.i
  %call.i17 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call42, i8 noundef signext %call.i17)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %b.0)
  %vtable.i18 = load ptr, ptr %call44, align 8, !tbaa !17
  %vbase.offset.ptr.i19 = getelementptr i8, ptr %vtable.i18, i64 -24
  %vbase.offset.i20 = load i64, ptr %vbase.offset.ptr.i19, align 8
  %add.ptr.i21 = getelementptr inbounds i8, ptr %call44, i64 %vbase.offset.i20
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i21, i8 noundef signext 10)
  %call1.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call44, i8 noundef signext %call.i)
  %call.i.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i22)
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %c.0)
  %vtable.i24 = load ptr, ptr %call46, align 8, !tbaa !17
  %vbase.offset.ptr.i25 = getelementptr i8, ptr %vtable.i24, i64 -24
  %vbase.offset.i26 = load i64, ptr %vbase.offset.ptr.i25, align 8
  %add.ptr.i27 = getelementptr inbounds i8, ptr %call46, i64 %vbase.offset.i26
  %call.i28 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i27, i8 noundef signext 10)
  %call1.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call46, i8 noundef signext %call.i28)
  %call.i.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i29)
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %d.0)
  %vtable.i31 = load ptr, ptr %call48, align 8, !tbaa !17
  %vbase.offset.ptr.i32 = getelementptr i8, ptr %vtable.i31, i64 -24
  %vbase.offset.i33 = load i64, ptr %vbase.offset.ptr.i32, align 8
  %add.ptr.i34 = getelementptr inbounds i8, ptr %call48, i64 %vbase.offset.i33
  %call.i35 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i34, i8 noundef signext 10)
  %call1.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call48, i8 noundef signext %call.i35)
  %call.i.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i36)
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %e.0)
  %vtable.i38 = load ptr, ptr %call50, align 8, !tbaa !17
  %vbase.offset.ptr.i39 = getelementptr i8, ptr %vtable.i38, i64 -24
  %vbase.offset.i40 = load i64, ptr %vbase.offset.ptr.i39, align 8
  %add.ptr.i41 = getelementptr inbounds i8, ptr %call50, i64 %vbase.offset.i40
  %call.i42 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i41, i8 noundef signext 10)
  %call1.i43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call50, i8 noundef signext %call.i42)
  %call.i.i44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i43)
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %vtable.i45 = load ptr, ptr %call52, align 8, !tbaa !17
  %vbase.offset.ptr.i46 = getelementptr i8, ptr %vtable.i45, i64 -24
  %vbase.offset.i47 = load i64, ptr %vbase.offset.ptr.i46, align 8
  %add.ptr.i48 = getelementptr inbounds i8, ptr %call52, i64 %vbase.offset.i47
  %call.i49 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i48, i8 noundef signext 10)
  %call1.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call52, i8 noundef signext %call.i49)
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
