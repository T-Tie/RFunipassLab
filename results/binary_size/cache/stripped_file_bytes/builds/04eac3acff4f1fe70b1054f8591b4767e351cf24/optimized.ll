; ModuleID = '<stdin>'
source_filename = "/tmp/tmpm_uffawr.cpp"
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
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %k, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  %cmp19 = icmp sgt i32 %3, 0
  br i1 %cmp19, label %for.body, label %for.end46

for.cond5.preheader:                              ; preds = %for.body
  %cmp623 = icmp sgt i32 %5, 0
  br i1 %cmp623, label %for.cond8.preheader.preheader, label %for.end46

for.cond8.preheader.preheader:                    ; preds = %for.cond5.preheader
  %wide.trip.count37 = zext nneg i32 %5 to i64
  br label %for.cond8.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %arrayidx4 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv
  store i32 1, ptr %arrayidx4, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %for.cond5.preheader, !llvm.loop !9

for.cond8.preheader:                              ; preds = %for.cond8.preheader.preheader, %for.inc31
  %indvars.iv34 = phi i64 [ 0, %for.cond8.preheader.preheader ], [ %indvars.iv.next35, %for.inc31 ]
  %cmp921.not = icmp eq i64 %indvars.iv34, 0
  br i1 %cmp921.not, label %for.inc31, label %for.body10.lr.ph

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %arrayidx14 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv34
  %7 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %arrayidx17 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv34
  br label %for.body10

for.body36.preheader:                             ; preds = %for.inc31
  %wide.trip.count = zext nneg i32 %5 to i64
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %for.body36.preheader49, label %vector.ph

vector.ph:                                        ; preds = %for.body36.preheader
  %n.vec = and i64 %wide.trip.count37, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %9, %vector.body ]
  %8 = getelementptr inbounds nuw i32, ptr %vla1, i64 %index
  %wide.load = load <4 x i32>, ptr %8, align 16, !tbaa !5
  %9 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %11 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %9)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count37
  br i1 %cmp.n, label %for.end46, label %for.body36.preheader49

for.body36.preheader49:                           ; preds = %for.body36.preheader, %middle.block
  %indvars.iv39.ph = phi i64 [ 0, %for.body36.preheader ], [ %n.vec, %middle.block ]
  %max.027.ph = phi i32 [ 1, %for.body36.preheader ], [ %11, %middle.block ]
  br label %for.body36

for.body10:                                       ; preds = %for.body10.lr.ph, %for.inc28
  %indvars.iv31 = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next32, %for.inc28 ]
  %arrayidx12 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv31
  %12 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp15.not = icmp slt i32 %12, %7
  br i1 %cmp15.not, label %for.inc28, label %if.then

if.then:                                          ; preds = %for.body10
  %13 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv31
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20.not = icmp sgt i32 %13, %14
  br i1 %cmp20.not, label %for.inc28, label %if.then21

if.then21:                                        ; preds = %if.then
  %add = add nsw i32 %14, 1
  store i32 %add, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.body10, %if.then21, %if.then
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next32, %indvars.iv34
  br i1 %exitcond.not, label %for.inc31, label %for.body10, !llvm.loop !15

for.inc31:                                        ; preds = %for.inc28, %for.cond8.preheader
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %for.body36.preheader, label %for.cond8.preheader, !llvm.loop !16

for.body36:                                       ; preds = %for.body36.preheader49, %for.body36
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body36 ], [ %indvars.iv39.ph, %for.body36.preheader49 ]
  %max.027 = phi i32 [ %spec.select, %for.body36 ], [ %max.027.ph, %for.body36.preheader49 ]
  %arrayidx38 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv39
  %15 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %15, i32 %max.027)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count
  br i1 %exitcond42.not, label %for.end46, label %for.body36, !llvm.loop !17

for.end46:                                        ; preds = %for.body36, %middle.block, %entry, %for.cond5.preheader
  %max.0.lcssa = phi i32 [ 1, %for.cond5.preheader ], [ 1, %entry ], [ %11, %middle.block ], [ %spec.select, %for.body36 ]
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0.lcssa)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !13}
