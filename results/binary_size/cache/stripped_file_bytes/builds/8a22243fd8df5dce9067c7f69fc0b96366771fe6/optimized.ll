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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4zeroi(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = sext i32 %i to i64
  %2 = sext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup10, %entry
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.cond.cleanup10 ], [ %1, %entry ]
  %cmp.i.not = icmp sgt i64 %indvars.iv58, %2
  br i1 %cmp.i.not, label %for.cond29, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %add.ptr13 = getelementptr inbounds [200 x i32], ptr @a, i64 %indvars.iv58
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond1.preheader, %for.body11
  %indvars.iv = phi i64 [ %1, %for.cond1.preheader ], [ %indvars.iv.next, %for.body11 ]
  %cmp.i.i.not = icmp sgt i64 %indvars.iv, %2
  br i1 %cmp.i.i.not, label %for.cond.cleanup10, label %for.body11

for.cond.cleanup10:                               ; preds = %for.cond8
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1
  br label %for.cond, !llvm.loop !9

for.body11:                                       ; preds = %for.cond8
  %add.ptr16 = getelementptr inbounds i32, ptr %add.ptr13, i64 %indvars.iv
  %3 = load i32, ptr %add.ptr16, align 4, !tbaa !5, !invariant.load !12
  %sub = add nsw i32 %3, -1000
  store i32 %sub, ptr %add.ptr16, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond8, !llvm.loop !13

for.cond29:                                       ; preds = %for.cond, %for.cond.cleanup50
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.cond.cleanup50 ], [ %1, %for.cond ]
  %cmp.i.i19.not = icmp sgt i64 %indvars.iv67, %2
  br i1 %cmp.i.i19.not, label %for.end68, label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond29
  %invariant.gep = getelementptr i32, ptr @a, i64 %indvars.iv67
  br label %for.cond34

for.cond34:                                       ; preds = %for.cond34.preheader, %for.body37
  %indvars.iv61 = phi i64 [ %1, %for.cond34.preheader ], [ %indvars.iv.next62, %for.body37 ]
  %mi.3 = phi i32 [ 1000, %for.cond34.preheader ], [ %.sroa.speculated, %for.body37 ]
  %cmp.i.i20.not = icmp sgt i64 %indvars.iv61, %2
  br i1 %cmp.i.i20.not, label %for.cond48.preheader, label %for.body37

for.cond48.preheader:                             ; preds = %for.cond34
  br label %for.cond48

for.body37:                                       ; preds = %for.cond34
  %gep = getelementptr [200 x i32], ptr %invariant.gep, i64 %indvars.iv61
  %4 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !12
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %mi.3, i32 %4)
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, 1
  br label %for.cond34

for.cond48:                                       ; preds = %for.cond48.preheader, %for.body51
  %indvars.iv64 = phi i64 [ %1, %for.cond48.preheader ], [ %indvars.iv.next65, %for.body51 ]
  %cmp.i.i24.not = icmp sgt i64 %indvars.iv64, %2
  br i1 %cmp.i.i24.not, label %for.cond.cleanup50, label %for.body51

for.cond.cleanup50:                               ; preds = %for.cond48
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, 1
  br label %for.cond29

for.body51:                                       ; preds = %for.cond48
  %gep55 = getelementptr [200 x i32], ptr %invariant.gep, i64 %indvars.iv64
  %5 = load i32, ptr %gep55, align 4, !tbaa !5, !invariant.load !12
  %sub57 = sub nsw i32 %5, %mi.3
  store i32 %sub57, ptr %gep55, align 4, !tbaa !5
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1
  br label %for.cond48, !llvm.loop !14

for.end68:                                        ; preds = %for.cond29
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
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.cond.cleanup57 ], [ 1, %entry ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.i.i.not = icmp sgt i64 %indvars.iv101, %1
  br i1 %cmp.i.i.not, label %for.end141, label %for.body

for.body:                                         ; preds = %for.cond
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sum, i64 4), align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond.cleanup7, %for.body
  %2 = phi i32 [ %5, %for.cond.cleanup7 ], [ %0, %for.body ]
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.cond.cleanup7 ], [ 1, %for.body ]
  %3 = sext i32 %2 to i64
  %cmp.i.i21.not = icmp sgt i64 %indvars.iv78, %3
  br i1 %cmp.i.i21.not, label %for.cond15.preheader, label %for.cond5.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %4 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %for.cond15

for.cond5.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [200 x i32], ptr @a, i64 %indvars.iv78
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body8
  %5 = phi i32 [ %2, %for.cond5.preheader ], [ %.pre, %for.body8 ]
  %indvars.iv = phi i64 [ 1, %for.cond5.preheader ], [ %indvars.iv.next, %for.body8 ]
  %6 = sext i32 %5 to i64
  %cmp.i.i22.not = icmp sgt i64 %indvars.iv, %6
  br i1 %cmp.i.i22.not, label %for.cond.cleanup7, label %for.body8

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond1

for.body8:                                        ; preds = %for.cond5
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body18
  %indvars.iv81 = phi i64 [ 1, %for.cond15.preheader ], [ %indvars.iv.next82, %for.body18 ]
  %exitcond = icmp eq i64 %indvars.iv81, %wide.trip.count
  br i1 %exitcond, label %for.cond31, label %for.body18

for.body18:                                       ; preds = %for.cond15
  %add.ptr20 = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 800), i64 %indvars.iv81
  %7 = load i32, ptr %add.ptr20, align 4, !tbaa !5, !invariant.load !12
  store i32 %7, ptr @temp, align 4, !tbaa !5
  %add.ptr22 = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 1600), i64 %indvars.iv81
  %8 = load i32, ptr %add.ptr22, align 4, !tbaa !5, !invariant.load !12
  store i32 %8, ptr %add.ptr20, align 4, !tbaa !5
  store i32 %7, ptr %add.ptr22, align 4, !tbaa !5
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond15

for.cond31:                                       ; preds = %for.cond15, %for.body34
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.body34 ], [ 1, %for.cond15 ]
  %exitcond89 = icmp eq i64 %indvars.iv85, %wide.trip.count
  br i1 %exitcond89, label %for.cond55.preheader, label %for.body34

for.cond55.preheader:                             ; preds = %for.cond31
  %arrayidx65 = getelementptr inbounds nuw [200 x i32], ptr @sum, i64 0, i64 %indvars.iv101
  br label %for.cond55

for.body34:                                       ; preds = %for.cond31
  %add.ptr36 = getelementptr inbounds nuw [200 x i32], ptr @a, i64 %indvars.iv85
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %add.ptr36, i64 4
  %9 = load i32, ptr %add.ptr38, align 4, !tbaa !5, !invariant.load !12
  store i32 %9, ptr @temp, align 4, !tbaa !5
  %add.ptr42 = getelementptr inbounds nuw i8, ptr %add.ptr36, i64 8
  %10 = load i32, ptr %add.ptr42, align 4, !tbaa !5, !invariant.load !12
  store i32 %10, ptr %add.ptr38, align 4, !tbaa !5
  store i32 %9, ptr %add.ptr42, align 4, !tbaa !5
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond31

for.cond55.loopexit:                              ; preds = %for.cond101
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %indvars.iv.next91 = add nuw i64 %indvars.iv90, 1
  br label %for.cond55

for.cond55:                                       ; preds = %for.cond55.loopexit, %for.cond55.preheader
  %11 = phi i32 [ %16, %for.cond55.loopexit ], [ %2, %for.cond55.preheader ]
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.cond55.loopexit ], [ 1, %for.cond55.preheader ]
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.cond55.loopexit ], [ 2, %for.cond55.preheader ]
  %cmp56 = icmp sgt i32 %11, 1
  br i1 %cmp56, label %for.body58, label %for.cond.cleanup57

for.cond.cleanup57:                               ; preds = %for.cond55
  %12 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !12
  %call137 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  %call138 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call137, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond

for.body58:                                       ; preds = %for.cond55
  %13 = trunc nuw nsw i64 %indvars.iv95 to i32
  tail call void @_Z4zeroi(i32 noundef %13) #8
  %add.ptr60 = getelementptr inbounds nuw [200 x i32], ptr @a, i64 %indvars.iv95
  %add.ptr63 = getelementptr inbounds nuw i32, ptr %add.ptr60, i64 %indvars.iv95
  %14 = load i32, ptr %add.ptr63, align 4, !tbaa !5, !invariant.load !12
  %15 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !12
  %add = add nsw i32 %15, %14
  store i32 %add, ptr %arrayidx65, align 4, !tbaa !5
  %16 = load i32, ptr @n, align 4, !tbaa !5
  %add.ptr74 = getelementptr inbounds nuw i8, ptr %add.ptr60, i64 800
  %add.ptr80 = getelementptr inbounds nuw i8, ptr %add.ptr60, i64 1600
  br label %for.cond68

for.cond68:                                       ; preds = %for.body71, %for.body58
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.body71 ], [ %indvars.iv90, %for.body58 ]
  %17 = trunc nuw i64 %indvars.iv92 to i32
  %cmp.i.i28.not = icmp slt i32 %16, %17
  br i1 %cmp.i.i28.not, label %for.cond101.preheader, label %for.body71

for.cond101.preheader:                            ; preds = %for.cond68
  %invariant.gep = getelementptr inbounds nuw i32, ptr @a, i64 %indvars.iv95
  %18 = sext i32 %16 to i64
  br label %for.cond101

for.body71:                                       ; preds = %for.cond68
  %add.ptr77 = getelementptr inbounds nuw i32, ptr %add.ptr74, i64 %indvars.iv92
  %19 = load i32, ptr %add.ptr77, align 4, !tbaa !5, !invariant.load !12
  store i32 %19, ptr @temp, align 4, !tbaa !5
  %add.ptr83 = getelementptr inbounds nuw i32, ptr %add.ptr80, i64 %indvars.iv92
  %20 = load i32, ptr %add.ptr83, align 4, !tbaa !5, !invariant.load !12
  store i32 %20, ptr %add.ptr77, align 4, !tbaa !5
  store i32 %19, ptr %add.ptr83, align 4, !tbaa !5
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %for.cond68

for.cond101:                                      ; preds = %for.cond101.preheader, %for.body104
  %indvars.iv97 = phi i64 [ %indvars.iv95, %for.cond101.preheader ], [ %indvars.iv.next98, %for.body104 ]
  %cmp.i.i30.not.not = icmp slt i64 %indvars.iv97, %18
  br i1 %cmp.i.i30.not.not, label %for.body104, label %for.cond55.loopexit

for.body104:                                      ; preds = %for.cond101
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %gep = getelementptr inbounds nuw [200 x i32], ptr %invariant.gep, i64 %indvars.iv.next98
  %add.ptr110 = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %21 = load i32, ptr %add.ptr110, align 4, !tbaa !5, !invariant.load !12
  store i32 %21, ptr @temp, align 4, !tbaa !5
  %add.ptr116 = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %22 = load i32, ptr %add.ptr116, align 4, !tbaa !5, !invariant.load !12
  store i32 %22, ptr %add.ptr110, align 4, !tbaa !5
  store i32 %21, ptr %add.ptr116, align 4, !tbaa !5
  br label %for.cond101, !llvm.loop !16

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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
