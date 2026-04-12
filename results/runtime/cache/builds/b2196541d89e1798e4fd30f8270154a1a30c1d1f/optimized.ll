; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3kv2pypy.cpp"
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

; Function Attrs: mustprogress norecurse noreturn uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %l = alloca i32, align 4
  %a = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %l) #6
  call void @llvm.lifetime.start.p0(i64 noundef 60, ptr noundef nonnull align 16 %a) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc31, %for.cond
  %indvars.iv10 = phi i32 [ %indvars.iv.next11, %for.inc31 ], [ -1, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc31 ], [ 1, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 17
  br i1 %exitcond.not, label %for.inc34, label %for.body

for.body:                                         ; preds = %for.cond1
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %l)
  %0 = load i32, ptr %l, align 4, !tbaa !5
  %cmp2.not = icmp eq i32 %0, 0
  br i1 %cmp2.not, label %for.cond4.preheader, label %for.inc31

for.cond4.preheader:                              ; preds = %for.body
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv10, i32 0)
  %wide.trip.count16 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %indvars.iv10 to i64
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc25
  %indvars.iv5 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next6, %for.inc25 ]
  %t.0 = phi i32 [ 0, %for.cond4.preheader ], [ %t.1, %for.inc25 ]
  %exitcond17 = icmp eq i64 %indvars.iv5, %wide.trip.count16
  br i1 %exitcond17, label %for.end27, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv5
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body11
  %indvars.iv7 = phi i64 [ %indvars.iv5, %for.cond8.preheader ], [ %indvars.iv.next8, %for.body11 ]
  %t.1 = phi i32 [ %t.0, %for.cond8.preheader ], [ %t.2, %for.body11 ]
  %exitcond13.not = icmp eq i64 %indvars.iv7, %wide.trip.count
  br i1 %exitcond13.not, label %for.inc25, label %for.body11

for.body11:                                       ; preds = %for.cond8
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %1 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %arrayidx15 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv.next8
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  %cmp16 = icmp eq i32 %1, %mul
  %mul21 = shl nsw i32 %1, 1
  %cmp22 = icmp eq i32 %2, %mul21
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp22
  %inc = zext i1 %or.cond to i32
  %t.2 = add nsw i32 %t.1, %inc
  br label %for.cond8, !llvm.loop !9

for.inc25:                                        ; preds = %for.cond8
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond4, !llvm.loop !12

for.end27:                                        ; preds = %for.cond4
  %call28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %t.0)
  %call29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call28, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc34

for.inc31:                                        ; preds = %for.body
  %3 = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %3
  store i32 %0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next11 = add nsw i32 %indvars.iv10, 1
  br label %for.cond1, !llvm.loop !13

for.inc34:                                        ; preds = %for.cond1, %for.end27
  br label %for.cond, !llvm.loop !14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }

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
