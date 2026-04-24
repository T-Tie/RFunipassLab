; ModuleID = '<stdin>'
source_filename = "/tmp/tmpiu21qn6z.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@n = dso_local global i32 0, align 4
@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: write) uwtable
define dso_local void @_Z4hangi(i32 noundef %m) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 1
  call void @llvm.assume(i1 noundef %cmp) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: write) uwtable
define dso_local void @_Z3liei(i32 noundef %m) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 1
  call void @llvm.assume(i1 noundef %cmp) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z3delPA100_i(ptr nofree noundef captures(none) %a) local_unnamed_addr #2 {
entry:
  %invariant.gep = getelementptr inbounds nuw i8, ptr %a, i64 400
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = phi i32 [ %2, %for.inc10 ], [ %.pre, %entry ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc10 ], [ 1, %entry ]
  %sub = add nsw i32 %0, -1
  %1 = sext i32 %sub to i64
  %cmp = icmp slt i64 %indvars.iv7, %1
  br i1 %cmp, label %for.cond1, label %for.cond13

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre17, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv7, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv7, i64 %indvars.iv
  store i32 %4, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre17 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !10

for.inc10:                                        ; preds = %for.cond1
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond, !llvm.loop !13

for.cond13:                                       ; preds = %for.cond17, %for.cond
  %5 = phi i32 [ %0, %for.cond ], [ %6, %for.cond17 ]
  %indvars.iv13 = phi i64 [ 1, %for.cond ], [ %indvars.iv.next14, %for.cond17 ]
  %cmp15 = icmp sgt i32 %5, 2
  br i1 %cmp15, label %for.cond17.preheader, label %for.end34

for.cond17.preheader:                             ; preds = %for.cond13
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc29
  %6 = phi i32 [ %5, %for.cond17.preheader ], [ %.pre16, %for.inc29 ]
  %indvars.iv10 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next11, %for.inc29 ]
  %7 = sext i32 %6 to i64
  %cmp18 = icmp slt i64 %indvars.iv10, %7
  br i1 %cmp18, label %for.inc29, label %for.cond13

for.inc29:                                        ; preds = %for.cond17
  %arrayidx24 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv10, i64 %indvars.iv.next14
  %8 = load i32, ptr %arrayidx24, align 4, !tbaa !5, !invariant.load !9
  %arrayidx28 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv10, i64 %indvars.iv13
  store i32 %8, ptr %arrayidx28, align 4, !tbaa !5
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %.pre16 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !14

for.end34:                                        ; preds = %for.cond13
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond2, label %for.end34

for.cond2:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %2, %for.end ], [ %0, %for.cond ]
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.end ], [ 0, %for.cond ]
  %cmp3 = icmp sgt i32 %1, 0
  br i1 %cmp3, label %for.cond6, label %while.cond

for.cond6:                                        ; preds = %for.cond2, %for.inc
  %2 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond2 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond2 ]
  %3 = sext i32 %2 to i64
  %cmp7 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp7, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond6
  %arrayidx11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv9, i64 %indvars.iv
  %call12 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !15

for.end:                                          ; preds = %for.cond6
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond2

while.cond:                                       ; preds = %for.cond2
  br label %while.end

for.cond17.preheader:                             ; No predecessors!
  unreachable

while.end:                                        ; preds = %while.cond
  %call30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %call31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call30, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond

for.end34:                                        ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { memory(write) }

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
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
