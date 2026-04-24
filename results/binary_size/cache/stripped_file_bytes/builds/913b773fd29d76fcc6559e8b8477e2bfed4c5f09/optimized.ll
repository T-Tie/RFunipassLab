; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcuog9mw8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %num = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 64, ptr noundef nonnull align 16 %num) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(64) %num, i8 noundef 0, i64 noundef 64, i1 noundef false) #7
  br label %while.body

while.body:                                       ; preds = %entry, %for.end37
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %num)
  %0 = load i32, ptr %num, align 16, !tbaa !5
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %while.end, label %for.cond

for.cond:                                         ; preds = %while.body, %for.body
  %1 = phi i32 [ %.pre, %for.body ], [ %0, %while.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %while.body ]
  %cmp3.not = icmp eq i32 %1, 0
  br i1 %cmp3.not, label %for.cond7, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx5 = getelementptr inbounds nuw [16 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond

for.cond7:                                        ; preds = %for.cond, %for.end34
  %2 = phi i32 [ %.pre26, %for.end34 ], [ %0, %for.cond ]
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.end34 ], [ 0, %for.cond ]
  %sum.0 = phi i32 [ %sum.1, %for.end34 ], [ 0, %for.cond ]
  %cmp10.not = icmp eq i32 %2, 0
  br i1 %cmp10.not, label %for.end37, label %for.cond12

for.cond12:                                       ; preds = %for.cond7, %for.body16
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.body16 ], [ 0, %for.cond7 ]
  %sum.1 = phi i32 [ %spec.select, %for.body16 ], [ %sum.0, %for.cond7 ]
  %arrayidx14 = getelementptr inbounds nuw [16 x i32], ptr %num, i64 0, i64 %indvars.iv20
  %3 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !9
  %cmp15.not = icmp eq i32 %3, 0
  br i1 %cmp15.not, label %for.end34, label %for.body16

for.body16:                                       ; preds = %for.cond12
  %mul = shl nsw i32 %3, 1
  %cmp21 = icmp eq i32 %2, %mul
  %inc30 = zext i1 %cmp21 to i32
  %spec.select = add nsw i32 %sum.1, %inc30
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond12

for.end34:                                        ; preds = %for.cond12
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %arrayidx9.phi.trans.insert = getelementptr inbounds nuw [16 x i32], ptr %num, i64 0, i64 %indvars.iv.next24
  %.pre26 = load i32, ptr %arrayidx9.phi.trans.insert, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond7

for.end37:                                        ; preds = %for.cond7
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call38, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.body, !llvm.loop !10

while.end:                                        ; preds = %while.body
  call void @llvm.lifetime.end.p0(i64 noundef 64, ptr noundef nonnull %num) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
