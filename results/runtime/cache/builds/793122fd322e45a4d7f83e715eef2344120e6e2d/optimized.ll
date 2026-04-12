; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7ursaob2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZZ4mainE6jcount = internal unnamed_addr global [20 x i32] zeroinitializer, align 16
@_ZZ4mainE5group = internal unnamed_addr global [20 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %part = alloca [20 x [16 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 1280, ptr nonnull %part) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc21 ], [ 0, %entry ]
  %exitcond34.not = icmp eq i64 %indvars.iv31, 20
  br i1 %exitcond34.not, label %for.end23, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw [20 x i32], ptr @_ZZ4mainE6jcount, i64 0, i64 %indvars.iv31
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [20 x [16 x i32]], ptr %part, i64 0, i64 %indvars.iv31, i64 %indvars.iv
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %0 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %arrayidx7, align 4, !tbaa !5
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %1, 1
  br i1 %cmp12, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.body3, %for.cond1
  %idxprom16 = and i64 %indvars.iv, 4294967295
  %arrayidx17 = getelementptr inbounds nuw [20 x [16 x i32]], ptr %part, i64 0, i64 %indvars.iv31, i64 %idxprom16
  %2 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %2, -1
  br i1 %cmp18, label %for.end23, label %for.inc21

for.inc21:                                        ; preds = %for.end
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond, !llvm.loop !12

for.end23:                                        ; preds = %for.end, %for.cond
  %wide.trip.count47 = and i64 %indvars.iv31, 4294967295
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc67, %for.end23
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc67 ], [ 0, %for.end23 ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, %wide.trip.count47
  br i1 %exitcond48.not, label %for.cond70, label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.cond24
  %arrayidx29 = getelementptr inbounds nuw [20 x i32], ptr @_ZZ4mainE6jcount, i64 0, i64 %indvars.iv44
  %3 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %sub = add nsw i32 %3, -1
  %arrayidx58 = getelementptr inbounds nuw [20 x i32], ptr @_ZZ4mainE5group, i64 0, i64 %indvars.iv44
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count42 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %sub to i64
  br label %for.cond27

for.cond27:                                       ; preds = %for.cond27.preheader, %for.inc64
  %indvars.iv39 = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next40, %for.inc64 ]
  %exitcond43.not = icmp eq i64 %indvars.iv39, %wide.trip.count42
  br i1 %exitcond43.not, label %for.inc67, label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.cond27
  %arrayidx41 = getelementptr inbounds nuw [20 x [16 x i32]], ptr %part, i64 0, i64 %indvars.iv44, i64 %indvars.iv39
  br label %for.cond32

for.cond32:                                       ; preds = %for.cond32.preheader, %for.inc61
  %indvars.iv35 = phi i64 [ 0, %for.cond32.preheader ], [ %indvars.iv.next36, %for.inc61 ]
  %exitcond38.not = icmp eq i64 %indvars.iv35, %wide.trip.count
  br i1 %exitcond38.not, label %for.inc64, label %for.body37

for.body37:                                       ; preds = %for.cond32
  %4 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %arrayidx45 = getelementptr inbounds nuw [20 x [16 x i32]], ptr %part, i64 0, i64 %indvars.iv44, i64 %indvars.iv35
  %5 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %div = sdiv i32 %4, %5
  %cmp46 = icmp eq i32 %div, 2
  br i1 %cmp46, label %land.lhs.true, label %for.inc61

land.lhs.true:                                    ; preds = %for.body37
  %rem = srem i32 %4, %5
  %cmp55 = icmp eq i32 %rem, 0
  br i1 %cmp55, label %if.then56, label %for.inc61

if.then56:                                        ; preds = %land.lhs.true
  %6 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %inc59 = add nsw i32 %6, 1
  store i32 %inc59, ptr %arrayidx58, align 4, !tbaa !5
  br label %for.inc61

for.inc61:                                        ; preds = %for.body37, %land.lhs.true, %if.then56
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond32, !llvm.loop !13

for.inc64:                                        ; preds = %for.cond32
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond27, !llvm.loop !14

for.inc67:                                        ; preds = %for.cond27
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond24, !llvm.loop !15

for.cond70:                                       ; preds = %for.cond24, %for.inc77
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc77 ], [ 0, %for.cond24 ]
  %exitcond53.not = icmp eq i64 %indvars.iv49, %wide.trip.count47
  br i1 %exitcond53.not, label %for.end79, label %for.inc77

for.inc77:                                        ; preds = %for.cond70
  %arrayidx74 = getelementptr inbounds nuw [20 x i32], ptr @_ZZ4mainE5group, i64 0, i64 %indvars.iv49
  %7 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %call76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call75, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond70, !llvm.loop !16

for.end79:                                        ; preds = %for.cond70
  call void @llvm.lifetime.end.p0(i64 1280, ptr nonnull %part) #6
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
