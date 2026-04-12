; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo6_l8_0v.cpp"
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
  %board = alloca [500 x [500 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 1000000, ptr noundef nonnull align 16 %board) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = phi i32 [ %2, %for.inc8 ], [ %.pre, %entry ]
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc8 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv24, %1
  br i1 %cmp, label %for.cond2.preheader, label %for.cond11.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %add.ptr.idx = mul nuw nsw i64 %indvars.iv24, 2000
  %add.ptr = getelementptr inbounds nuw i8, ptr %board, i64 %add.ptr.idx
  br label %for.cond2

for.cond11.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond11

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %2 = phi i32 [ %0, %for.cond2.preheader ], [ %.pre32, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond2
  %add.ptr6 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre32 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond, !llvm.loop !12

for.cond11:                                       ; preds = %for.cond11.preheader, %for.inc26
  %r1.0 = phi i32 [ %r1.1, %for.inc26 ], [ undef, %for.cond11.preheader ]
  %c1.0 = phi i32 [ %c1.1, %for.inc26 ], [ undef, %for.cond11.preheader ]
  %i.1 = phi i32 [ %i.2, %for.inc26 ], [ 0, %for.cond11.preheader ]
  %cmp12 = icmp slt i32 %i.1, %0
  br i1 %cmp12, label %for.cond14.preheader, label %for.end28

for.cond14.preheader:                             ; preds = %for.cond11
  %mul17 = mul nsw i32 %i.1, 500
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds i32, ptr %board, i64 %idx.ext18
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc23
  %indvars.iv28 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next29, %for.inc23 ]
  %exitcond.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond.not, label %for.inc26.loopexit, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %add.ptr21 = getelementptr inbounds nuw i32, ptr %add.ptr19, i64 %indvars.iv28
  %4 = load i32, ptr %add.ptr21, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %4, 0
  br i1 %cmp22, label %for.inc26.split.loop.exit34, label %for.inc23

for.inc23:                                        ; preds = %for.body16
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond14, !llvm.loop !13

for.inc26.split.loop.exit34:                      ; preds = %for.body16
  %5 = trunc nuw nsw i64 %indvars.iv28 to i32
  br label %for.inc26

for.inc26.loopexit:                               ; preds = %for.cond14
  %6 = add nsw i32 %i.1, 1
  br label %for.inc26

for.inc26:                                        ; preds = %for.inc26.loopexit, %for.inc26.split.loop.exit34
  %r1.1 = phi i32 [ %i.1, %for.inc26.split.loop.exit34 ], [ %r1.0, %for.inc26.loopexit ]
  %c1.1 = phi i32 [ %5, %for.inc26.split.loop.exit34 ], [ %c1.0, %for.inc26.loopexit ]
  %i.2 = phi i32 [ 10000, %for.inc26.split.loop.exit34 ], [ %6, %for.inc26.loopexit ]
  br label %for.cond11, !llvm.loop !14

for.end28:                                        ; preds = %for.cond11
  %sub = add nsw i32 %0, -1
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc46, %for.end28
  %r2.0 = phi i32 [ undef, %for.end28 ], [ %r2.1, %for.inc46 ]
  %c2.0 = phi i32 [ undef, %for.end28 ], [ %c2.1, %for.inc46 ]
  %i.3 = phi i32 [ %sub, %for.end28 ], [ %dec47, %for.inc46 ]
  %cmp30 = icmp sgt i32 %i.3, -1
  br i1 %cmp30, label %for.cond33.preheader, label %for.end48

for.cond33.preheader:                             ; preds = %for.cond29
  %mul36 = mul nuw nsw i32 %i.3, 500
  %idx.ext37 = zext nneg i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds nuw i32, ptr %board, i64 %idx.ext37
  br label %for.cond33

for.cond33:                                       ; preds = %for.cond33.preheader, %for.inc44
  %j.2 = phi i32 [ %dec, %for.inc44 ], [ %sub, %for.cond33.preheader ]
  %cmp34 = icmp sgt i32 %j.2, -1
  br i1 %cmp34, label %for.body35, label %for.inc46

for.body35:                                       ; preds = %for.cond33
  %idx.ext39 = zext nneg i32 %j.2 to i64
  %add.ptr40 = getelementptr inbounds nuw i32, ptr %add.ptr38, i64 %idx.ext39
  %7 = load i32, ptr %add.ptr40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %7, 0
  br i1 %cmp41, label %for.inc46, label %for.inc44

for.inc44:                                        ; preds = %for.body35
  %dec = add nsw i32 %j.2, -1
  br label %for.cond33, !llvm.loop !15

for.inc46:                                        ; preds = %for.cond33, %for.body35
  %r2.1 = phi i32 [ %r2.0, %for.cond33 ], [ %i.3, %for.body35 ]
  %c2.1 = phi i32 [ %c2.0, %for.cond33 ], [ %j.2, %for.body35 ]
  %i.4 = phi i32 [ %i.3, %for.cond33 ], [ -1, %for.body35 ]
  %dec47 = add nsw i32 %i.4, -1
  br label %for.cond29, !llvm.loop !16

for.end48:                                        ; preds = %for.cond29
  %8 = xor i32 %r1.0, -1
  %sub50 = add i32 %r2.0, %8
  %9 = xor i32 %c1.0, -1
  %sub52 = add i32 %c2.0, %9
  %mul53 = mul nsw i32 %sub52, %sub50
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %mul53)
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call54, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 1000000, ptr noundef nonnull %board) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
