; ModuleID = '<stdin>'
source_filename = "/tmp/tmpts2hjnp6.cpp"
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
@a = dso_local global [200 x [200 x i32]] zeroinitializer, align 16
@temp = dso_local local_unnamed_addr global i32 0, align 4
@sum = dso_local local_unnamed_addr global [200 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: write) uwtable
define dso_local void @_Z4zeroi(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = sext i32 %i to i64
  %2 = sext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup10, %entry
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.cond.cleanup10 ], [ %1, %entry ]
  %cmp.i.not = icmp sgt i64 %indvars.iv50, %2
  br i1 %cmp.i.not, label %for.cond29, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %add.ptr13 = getelementptr inbounds [200 x i32], ptr @a, i64 %indvars.iv50
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond1.preheader, %for.body11
  %indvars.iv = phi i64 [ %1, %for.cond1.preheader ], [ %indvars.iv.next, %for.body11 ]
  %cmp.i.i.not = icmp sgt i64 %indvars.iv, %2
  br i1 %cmp.i.i.not, label %for.cond.cleanup10, label %for.body11

for.cond.cleanup10:                               ; preds = %for.cond8
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, 1
  br label %for.cond, !llvm.loop !9

for.body11:                                       ; preds = %for.cond8
  %add.ptr16 = getelementptr inbounds i32, ptr %add.ptr13, i64 %indvars.iv
  %3 = load i32, ptr %add.ptr16, align 4, !tbaa !5, !invariant.load !12
  %sub = add nsw i32 %3, -1000
  store i32 %sub, ptr %add.ptr16, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond8

for.cond29:                                       ; preds = %for.cond
  %cmp.i12.not = icmp sgt i32 %i, %0
  call void @llvm.assume(i1 %cmp.i12.not)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup57, %entry
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.cond.cleanup57 ], [ 1, %entry ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp.i = icmp sgt i32 %0, 0
  br i1 %cmp.i, label %for.body, label %for.end141

for.body:                                         ; preds = %for.cond
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sum, i64 4), align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond.cleanup7, %for.body
  %1 = phi i32 [ %2, %for.cond.cleanup7 ], [ %0, %for.body ]
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.cond.cleanup7 ], [ 1, %for.body ]
  %cmp.i18 = icmp sgt i32 %1, 0
  br i1 %cmp.i18, label %for.cond5.preheader, label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %for.cond1
  %arrayidx65 = getelementptr inbounds nuw [200 x i32], ptr @sum, i64 0, i64 %indvars.iv83
  br label %for.cond55

for.cond5.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [200 x i32], ptr @a, i64 %indvars.iv69
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body8
  %2 = phi i32 [ %1, %for.cond5.preheader ], [ %.pre, %for.body8 ]
  %indvars.iv = phi i64 [ 1, %for.cond5.preheader ], [ %indvars.iv.next, %for.body8 ]
  %3 = sext i32 %2 to i64
  %cmp.i.i.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp.i.i.not, label %for.cond.cleanup7, label %for.body8

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond1

for.body8:                                        ; preds = %for.cond5
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond5

for.cond55.loopexit:                              ; preds = %for.cond101
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %indvars.iv.next73 = add nuw i64 %indvars.iv72, 1
  br label %for.cond55

for.cond55:                                       ; preds = %for.cond55.loopexit, %for.cond55.preheader
  %4 = phi i32 [ %9, %for.cond55.loopexit ], [ %1, %for.cond55.preheader ]
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.cond55.loopexit ], [ 1, %for.cond55.preheader ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.cond55.loopexit ], [ 2, %for.cond55.preheader ]
  %cmp56 = icmp sgt i32 %4, 1
  br i1 %cmp56, label %for.body58, label %for.cond.cleanup57

for.cond.cleanup57:                               ; preds = %for.cond55
  %5 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !12
  %call137 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %call138 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call137, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond

for.body58:                                       ; preds = %for.cond55
  %6 = trunc nuw nsw i64 %indvars.iv77 to i32
  tail call void @_Z4zeroi(i32 noundef %6) #9
  %add.ptr60 = getelementptr inbounds nuw [200 x i32], ptr @a, i64 %indvars.iv77
  %add.ptr63 = getelementptr inbounds nuw i32, ptr %add.ptr60, i64 %indvars.iv77
  %7 = load i32, ptr %add.ptr63, align 4, !tbaa !5, !invariant.load !12
  %8 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !12
  %add = add nsw i32 %8, %7
  store i32 %add, ptr %arrayidx65, align 4, !tbaa !5
  %9 = load i32, ptr @n, align 4, !tbaa !5
  %add.ptr74 = getelementptr inbounds nuw i8, ptr %add.ptr60, i64 800
  %add.ptr80 = getelementptr inbounds nuw i8, ptr %add.ptr60, i64 1600
  br label %for.cond68

for.cond68:                                       ; preds = %for.body71, %for.body58
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body71 ], [ %indvars.iv72, %for.body58 ]
  %10 = trunc nuw i64 %indvars.iv74 to i32
  %cmp.i.i24.not = icmp slt i32 %9, %10
  br i1 %cmp.i.i24.not, label %for.cond101.preheader, label %for.body71

for.cond101.preheader:                            ; preds = %for.cond68
  %invariant.gep = getelementptr inbounds nuw i32, ptr @a, i64 %indvars.iv77
  %11 = sext i32 %9 to i64
  br label %for.cond101

for.body71:                                       ; preds = %for.cond68
  %add.ptr77 = getelementptr inbounds nuw i32, ptr %add.ptr74, i64 %indvars.iv74
  %12 = load i32, ptr %add.ptr77, align 4, !tbaa !5, !invariant.load !12
  store i32 %12, ptr @temp, align 4, !tbaa !5
  %add.ptr83 = getelementptr inbounds nuw i32, ptr %add.ptr80, i64 %indvars.iv74
  %13 = load i32, ptr %add.ptr83, align 4, !tbaa !5, !invariant.load !12
  store i32 %13, ptr %add.ptr77, align 4, !tbaa !5
  store i32 %12, ptr %add.ptr83, align 4, !tbaa !5
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond68

for.cond101:                                      ; preds = %for.cond101.preheader, %for.body104
  %indvars.iv79 = phi i64 [ %indvars.iv77, %for.cond101.preheader ], [ %indvars.iv.next80, %for.body104 ]
  %cmp.i.i26.not.not = icmp slt i64 %indvars.iv79, %11
  br i1 %cmp.i.i26.not.not, label %for.body104, label %for.cond55.loopexit

for.body104:                                      ; preds = %for.cond101
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %gep = getelementptr inbounds nuw [200 x i32], ptr %invariant.gep, i64 %indvars.iv.next80
  %add.ptr110 = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %14 = load i32, ptr %add.ptr110, align 4, !tbaa !5, !invariant.load !12
  store i32 %14, ptr @temp, align 4, !tbaa !5
  %add.ptr116 = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %15 = load i32, ptr %add.ptr116, align 4, !tbaa !5, !invariant.load !12
  store i32 %15, ptr %add.ptr110, align 4, !tbaa !5
  store i32 %14, ptr %add.ptr116, align 4, !tbaa !5
  br label %for.cond101

for.end141:                                       ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{}
