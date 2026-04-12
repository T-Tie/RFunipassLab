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
  call void @llvm.lifetime.start.p0(i64 noundef 1000000, ptr noundef align 16 %board) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %j.0, %1
  br i1 %cmp3, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond2
  %mul = mul nsw i32 %i.0, 500
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, ptr %board, i64 %idx.ext
  %idx.ext5 = sext i32 %j.0 to i64
  %add.ptr6 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext5
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr6)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %inc9 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %.lcssa = phi i32 [ %0, %for.cond ]
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc26, %for.end10
  %c1.0 = phi i32 [ undef, %for.end10 ], [ %c1.1, %for.inc26 ]
  %r1.0 = phi i32 [ undef, %for.end10 ], [ %r1.1, %for.inc26 ]
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc27, %for.inc26 ]
  %cmp12 = icmp slt i32 %i.1, %.lcssa
  br i1 %cmp12, label %for.body13, label %for.end28

for.body13:                                       ; preds = %for.cond11
  %mul17 = mul nsw i32 %i.1, 500
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds i32, ptr %board, i64 %idx.ext18
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %for.body13
  %j.1 = phi i32 [ 0, %for.body13 ], [ %inc24, %for.inc23 ]
  %cmp15 = icmp slt i32 %j.1, %.lcssa
  br i1 %cmp15, label %for.body16, label %for.inc26

for.body16:                                       ; preds = %for.cond14
  %idx.ext20 = sext i32 %j.1 to i64
  %add.ptr21 = getelementptr inbounds i32, ptr %add.ptr19, i64 %idx.ext20
  %2 = load i32, ptr %add.ptr21, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %2, 0
  br i1 %cmp22, label %for.inc26, label %for.inc23

for.inc23:                                        ; preds = %for.body16
  %inc24 = add nsw i32 %j.1, 1
  br label %for.cond14, !llvm.loop !13

for.inc26:                                        ; preds = %for.cond14, %for.body16
  %c1.1 = phi i32 [ %c1.0, %for.cond14 ], [ %j.1, %for.body16 ]
  %r1.1 = phi i32 [ %r1.0, %for.cond14 ], [ %i.1, %for.body16 ]
  %i.2 = phi i32 [ %i.1, %for.cond14 ], [ 9999, %for.body16 ]
  %inc27 = add nsw i32 %i.2, 1
  br label %for.cond11, !llvm.loop !14

for.end28:                                        ; preds = %for.cond11
  %c1.0.lcssa = phi i32 [ %c1.0, %for.cond11 ]
  %r1.0.lcssa = phi i32 [ %r1.0, %for.cond11 ]
  %sub = sub nsw i32 %.lcssa, 1
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc46, %for.end28
  %r2.0 = phi i32 [ undef, %for.end28 ], [ %r2.1, %for.inc46 ]
  %i.3 = phi i32 [ %sub, %for.end28 ], [ %dec47, %for.inc46 ]
  %c2.0 = phi i32 [ undef, %for.end28 ], [ %c2.1, %for.inc46 ]
  %cmp30 = icmp sge i32 %i.3, 0
  br i1 %cmp30, label %for.body31, label %for.end48

for.body31:                                       ; preds = %for.cond29
  %mul36 = mul nsw i32 %i.3, 500
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds i32, ptr %board, i64 %idx.ext37
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc44, %for.body31
  %j.2 = phi i32 [ %sub, %for.body31 ], [ %dec, %for.inc44 ]
  %cmp34 = icmp sge i32 %j.2, 0
  br i1 %cmp34, label %for.body35, label %for.inc46

for.body35:                                       ; preds = %for.cond33
  %idx.ext39 = sext i32 %j.2 to i64
  %add.ptr40 = getelementptr inbounds i32, ptr %add.ptr38, i64 %idx.ext39
  %3 = load i32, ptr %add.ptr40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %3, 0
  br i1 %cmp41, label %for.inc46, label %for.inc44

for.inc44:                                        ; preds = %for.body35
  %dec = add nsw i32 %j.2, -1
  br label %for.cond33, !llvm.loop !15

for.inc46:                                        ; preds = %for.cond33, %for.body35
  %r2.1 = phi i32 [ %r2.0, %for.cond33 ], [ %i.3, %for.body35 ]
  %i.4 = phi i32 [ %i.3, %for.cond33 ], [ -1, %for.body35 ]
  %c2.1 = phi i32 [ %c2.0, %for.cond33 ], [ %j.2, %for.body35 ]
  %dec47 = add nsw i32 %i.4, -1
  br label %for.cond29, !llvm.loop !16

for.end48:                                        ; preds = %for.cond29
  %r2.0.lcssa = phi i32 [ %r2.0, %for.cond29 ]
  %c2.0.lcssa = phi i32 [ %c2.0, %for.cond29 ]
  %r1.0.lcssa.neg = sub i32 0, %r1.0.lcssa
  %sub49 = add i32 %r1.0.lcssa.neg, -1
  %sub50 = add i32 %sub49, %r2.0.lcssa
  %c1.0.lcssa.neg = sub i32 0, %c1.0.lcssa
  %sub51 = add i32 %c1.0.lcssa.neg, -1
  %sub52 = add i32 %sub51, %c2.0.lcssa
  %mul53 = mul nsw i32 %sub52, %sub50
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %mul53)
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call54, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 1000000, ptr noundef %board) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
