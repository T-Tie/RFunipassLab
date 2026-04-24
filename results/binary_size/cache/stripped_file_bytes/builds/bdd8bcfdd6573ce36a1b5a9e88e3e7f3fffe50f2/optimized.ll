; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxm7ek9vx.cpp"
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
  %a = alloca [20000 x i32], align 16
  %flag = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %flag) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80000) %flag, i8 0, i64 80000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp12)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !9

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load i32, ptr %a, align 16, !tbaa !5
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.pre)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp515 = icmp sgt i32 %3, 1
  br i1 %cmp515, label %for.cond7.preheader, label %for.end31

for.cond7.preheader:                              ; preds = %for.end.loopexit, %for.inc29
  %4 = phi i32 [ %21, %for.inc29 ], [ %3, %for.end.loopexit ]
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc29 ], [ 1, %for.end.loopexit ]
  %arrayidx11 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv21
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %arrayidx16 = getelementptr inbounds nuw [20000 x i32], ptr %flag, i64 0, i64 %indvars.iv21
  %min.iters.check = icmp samesign ult i64 %indvars.iv21, 4
  br i1 %min.iters.check, label %for.body9.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond7.preheader
  %n.vec = and i64 %indvars.iv21, 9223372036854775804
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %16, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %16 ]
  %6 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %6, align 16, !tbaa !5
  %7 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %8 = extractelement <4 x i1> %7, i64 0
  %9 = extractelement <4 x i1> %7, i64 1
  %10 = or i1 %8, %9
  %11 = extractelement <4 x i1> %7, i64 2
  %12 = or i1 %10, %11
  %13 = extractelement <4 x i1> %7, i64 3
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %vector.body
  store i32 1, ptr %arrayidx16, align 4, !tbaa !5
  br label %16

16:                                               ; preds = %vector.body, %15
  %index.next = add nuw i64 %index, 4
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %16
  %cmp.n = icmp eq i64 %indvars.iv21, %n.vec
  br i1 %cmp.n, label %for.end19, label %for.body9.preheader

for.body9.preheader:                              ; preds = %for.cond7.preheader, %middle.block
  %indvars.iv18.ph = phi i64 [ 0, %for.cond7.preheader ], [ %n.vec, %middle.block ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9.preheader, %for.inc17
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc17 ], [ %indvars.iv18.ph, %for.body9.preheader ]
  %arrayidx13 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %18 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %5, %18
  br i1 %cmp14, label %if.then, label %for.inc17

if.then:                                          ; preds = %for.body9
  store i32 1, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.inc17

for.inc17:                                        ; preds = %for.body9, %if.then
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next19, %indvars.iv21
  br i1 %exitcond.not, label %for.end19, label %for.body9, !llvm.loop !15

for.end19:                                        ; preds = %for.inc17, %middle.block
  %19 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %19, 0
  br i1 %cmp22, label %if.then23, label %for.inc29

if.then23:                                        ; preds = %for.end19
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %20 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %20)
  %.pre24 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc29

for.inc29:                                        ; preds = %for.end19, %if.then23
  %21 = phi i32 [ %4, %for.end19 ], [ %.pre24, %if.then23 ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %22 = sext i32 %21 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next22, %22
  br i1 %cmp5, label %for.cond7.preheader, label %for.end31, !llvm.loop !16

for.end31:                                        ; preds = %for.inc29, %for.end.loopexit
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %flag) #5
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
