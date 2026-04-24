; ModuleID = '<stdin>'
source_filename = "/tmp/tmp75jfmpv6.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end158, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end163

for.body:                                         ; preds = %for.cond
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %a, i8 noundef 0, i64 noundef 40000, i1 noundef false)
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %1 = phi i32 [ %3, %for.inc12 ], [ %0, %for.body ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc12 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv35, %2
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %cmp16 = icmp sgt i32 %1, 1
  br i1 %cmp16, label %for.cond15, label %for.end158

for.cond4.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv35
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc
  %3 = phi i32 [ %1, %for.cond4.preheader ], [ %.pre, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond4
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond1, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader
  %wide.trip.count52 = zext nneg i32 %1 to i64
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond15, %for.inc56
  %indvars.iv49 = phi i64 [ 0, %for.cond15 ], [ %indvars.iv.next50, %for.inc56 ]
  %exitcond53.not = icmp eq i64 %indvars.iv49, %wide.trip.count52
  br i1 %exitcond53.not, label %for.cond59, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.cond18
  %add.ptr28 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv49
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond22.preheader, %for.body25
  %indvars.iv38 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next39, %for.body25 ]
  %min.0 = phi i32 [ 100000, %for.cond22.preheader ], [ %spec.select, %for.body25 ]
  %exitcond.not = icmp eq i64 %indvars.iv38, %wide.trip.count52
  br i1 %exitcond.not, label %for.cond42.preheader, label %for.body25

for.cond42.preheader:                             ; preds = %for.cond22
  br label %for.cond42

for.body25:                                       ; preds = %for.cond22
  %add.ptr31 = getelementptr inbounds nuw i32, ptr %add.ptr28, i64 %indvars.iv38
  %5 = load i32, ptr %add.ptr31, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %5, i32 %min.0)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond22, !llvm.loop !14

for.cond42:                                       ; preds = %for.cond42.preheader, %for.inc53
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc53 ], [ 0, %for.cond42.preheader ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, %wide.trip.count52
  br i1 %exitcond48.not, label %for.inc56, label %for.inc53

for.inc53:                                        ; preds = %for.cond42
  %add.ptr51 = getelementptr inbounds nuw i32, ptr %add.ptr28, i64 %indvars.iv44
  %6 = load i32, ptr %add.ptr51, align 4, !tbaa !5, !invariant.load !13
  %sub52 = sub nsw i32 %6, %min.0
  store i32 %sub52, ptr %add.ptr51, align 4, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond42, !llvm.loop !15

for.inc56:                                        ; preds = %for.cond42
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond18, !llvm.loop !16

for.cond59:                                       ; preds = %for.cond18, %for.end98
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.end98 ], [ 0, %for.cond18 ]
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv90
  br label %for.cond63

for.cond63:                                       ; preds = %for.cond59, %for.body66
  %indvars.iv78 = phi i64 [ 0, %for.cond59 ], [ %indvars.iv.next79, %for.body66 ]
  %min.2 = phi i32 [ 100000, %for.cond59 ], [ %spec.select28, %for.body66 ]
  %exitcond83.not = icmp eq i64 %indvars.iv78, %wide.trip.count52
  br i1 %exitcond83.not, label %for.cond85.preheader, label %for.body66

for.cond85.preheader:                             ; preds = %for.cond63
  br label %for.cond85

for.body66:                                       ; preds = %for.cond63
  %gep = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv78
  %7 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !13
  %spec.select28 = call i32 @llvm.smin.i32(i32 %7, i32 %min.2)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond63, !llvm.loop !17

for.cond85:                                       ; preds = %for.cond85.preheader, %for.inc96
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.inc96 ], [ 0, %for.cond85.preheader ]
  %exitcond89.not = icmp eq i64 %indvars.iv84, %wide.trip.count52
  br i1 %exitcond89.not, label %for.end98, label %for.inc96

for.inc96:                                        ; preds = %for.cond85
  %gep30 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv84
  %8 = load i32, ptr %gep30, align 4, !tbaa !5, !invariant.load !13
  %sub95 = sub nsw i32 %8, %min.2
  store i32 %sub95, ptr %gep30, align 4, !tbaa !5
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond85, !llvm.loop !18

for.end98:                                        ; preds = %for.cond85
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond59

for.end158:                                       ; preds = %for.cond15.preheader
  %call159 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %call160 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call159, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond

for.end163:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
