; ModuleID = '<stdin>'
source_filename = "/tmp/tmprof00dc0.cpp"
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
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 80004, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80004) %a, i8 0, i64 80004, i1 false)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %0, 0
  br i1 %cmp13, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.inc25, %entry
  call void @llvm.lifetime.end.p0(i64 80004, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body:                                         ; preds = %entry, %for.inc25
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc25 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv16
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %cmp2 = icmp eq i64 %indvars.iv16, 0
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br i1 %cmp2, label %for.inc25.sink.split, label %for.body9.preheader

for.body9.preheader:                              ; preds = %for.body
  %min.iters.check = icmp samesign ult i64 %indvars.iv16, 4
  br i1 %min.iters.check, label %for.body9.preheader19, label %vector.ph

vector.ph:                                        ; preds = %for.body9.preheader
  %n.vec = and i64 %indvars.iv16, 9223372036854775804
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %5, %vector.body ]
  %2 = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %2, align 16, !tbaa !5
  %3 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %4 = zext <4 x i1> %3 to <4 x i32>
  %5 = add <4 x i32> %vec.phi, %4
  %index.next = add nuw i64 %index, 4
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %7 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %5)
  %cmp.n = icmp eq i64 %indvars.iv16, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup8, label %for.body9.preheader19

for.body9.preheader19:                            ; preds = %for.body9.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body9.preheader ], [ %n.vec, %middle.block ]
  %t.011.ph = phi i32 [ 0, %for.body9.preheader ], [ %7, %middle.block ]
  br label %for.body9

for.cond.cleanup8:                                ; preds = %for.body9, %middle.block
  %spec.select.lcssa = phi i32 [ %7, %middle.block ], [ %spec.select, %for.body9 ]
  %cmp17 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %cmp17, label %if.then18, label %for.inc25

for.body9:                                        ; preds = %for.body9.preheader19, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ %indvars.iv.ph, %for.body9.preheader19 ]
  %t.011 = phi i32 [ %spec.select, %for.body9 ], [ %t.011.ph, %for.body9.preheader19 ]
  %arrayidx13 = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv
  %8 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %1, %8
  %inc = zext i1 %cmp14 to i32
  %spec.select = add nuw nsw i32 %t.011, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv16
  br i1 %exitcond.not, label %for.cond.cleanup8, label %for.body9, !llvm.loop !14

if.then18:                                        ; preds = %for.cond.cleanup8
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc25.sink.split

for.inc25.sink.split:                             ; preds = %for.body, %if.then18
  %.sink = phi i32 [ %9, %if.then18 ], [ %1, %for.body ]
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.sink)
  br label %for.inc25

for.inc25:                                        ; preds = %for.inc25.sink.split, %for.cond.cleanup8
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp = icmp slt i64 %indvars.iv.next17, %11
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
