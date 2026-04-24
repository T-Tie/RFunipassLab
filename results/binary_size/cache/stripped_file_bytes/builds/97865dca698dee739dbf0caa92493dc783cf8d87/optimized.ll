; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzqwygc5z.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20001 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 80004, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not12 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp.not12)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %2
  br i1 %cmp.not.not, label %for.body, label %for.end.loopexit, !llvm.loop !9

for.end.loopexit:                                 ; preds = %for.body
  %arrayidx2.phi.trans.insert = getelementptr inbounds nuw i8, ptr %a, i64 4
  %.pre = load i32, ptr %arrayidx2.phi.trans.insert, align 4, !tbaa !5
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.pre)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5.not16 = icmp slt i32 %3, 2
  br i1 %cmp5.not16, label %for.end27, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.end.loopexit, %for.inc25
  %indvar = phi i64 [ %indvar.next, %for.inc25 ], [ 0, %for.end.loopexit ]
  %4 = phi i32 [ %18, %for.inc25 ], [ %3, %for.end.loopexit ]
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc25 ], [ 2, %for.end.loopexit ]
  %5 = add i64 %indvar, 1
  %arrayidx11 = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv22
  %6 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %for.body9.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond7.preheader
  %n.vec = and i64 %5, -4
  %7 = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %11, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %8 = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %8, align 4, !tbaa !5
  %9 = icmp ne <4 x i32> %broadcast.splat, %wide.load
  %10 = zext <4 x i1> %9 to <4 x i32>
  %11 = add <4 x i32> %vec.phi, %10
  %index.next = add nuw i64 %index, 4
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %13 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11)
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %for.end17, label %for.body9.preheader

for.body9.preheader:                              ; preds = %for.cond7.preheader, %middle.block
  %indvars.iv19.ph = phi i64 [ 1, %for.cond7.preheader ], [ %7, %middle.block ]
  %b.015.ph = phi i32 [ 0, %for.cond7.preheader ], [ %13, %middle.block ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9.preheader, %for.body9
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.body9 ], [ %indvars.iv19.ph, %for.body9.preheader ]
  %b.015 = phi i32 [ %spec.select, %for.body9 ], [ %b.015.ph, %for.body9.preheader ]
  %arrayidx13 = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv19
  %14 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14.not = icmp ne i32 %6, %14
  %add = zext i1 %cmp14.not to i32
  %spec.select = add nuw nsw i32 %b.015, %add
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next20, %indvars.iv22
  br i1 %exitcond.not, label %for.end17, label %for.body9, !llvm.loop !15

for.end17:                                        ; preds = %for.body9, %middle.block
  %spec.select.lcssa = phi i32 [ %13, %middle.block ], [ %spec.select, %for.body9 ]
  %15 = add nsw i64 %indvars.iv22, -1
  %16 = zext nneg i32 %spec.select.lcssa to i64
  %cmp18 = icmp eq i64 %15, %16
  br i1 %cmp18, label %if.then19, label %for.inc25

if.then19:                                        ; preds = %for.end17
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %17 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %call23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %17)
  %.pre26 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end17, %if.then19
  %18 = phi i32 [ %4, %for.end17 ], [ %.pre26, %if.then19 ]
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %19 = sext i32 %18 to i64
  %cmp5.not.not = icmp slt i64 %indvars.iv22, %19
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp5.not.not, label %for.cond7.preheader, label %for.end27, !llvm.loop !16

for.end27:                                        ; preds = %for.inc25, %for.end.loopexit
  call void @llvm.lifetime.end.p0(i64 80004, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11}
