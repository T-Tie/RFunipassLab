; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwr4qiply.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@__const.main.sum = private unnamed_addr constant <{ [10 x i32], [30 x i32] }> <{ [10 x i32] [i32 8, i32 4, i32 6, i32 3, i32 8, i32 4, i32 7, i32 4, i32 1, i32 2], [30 x i32] zeroinitializer }>, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sum = alloca [40 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 160, ptr noundef nonnull align 16 %sum) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(160) %sum, ptr noundef nonnull readonly align 16 dereferenceable(160) @__const.main.sum, i64 noundef 160, i1 noundef false) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.cond.preheader, label %for.cond3.preheader

for.cond.preheader:                               ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %1 = add nuw nsw i32 %smax, 1
  br label %for.cond

for.cond3.preheader:                              ; preds = %entry
  %2 = add nsw i32 %0, -30
  br label %for.cond3

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 1, %for.cond.preheader ]
  %s.0 = phi i32 [ %mul, %for.inc ], [ 1, %for.cond.preheader ]
  %exitcond10 = icmp eq i32 %i.0, %1
  br i1 %exitcond10, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %mul = shl i32 %s.0, 1
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  br label %if.end

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc33
  %i.1 = phi i32 [ %inc34, %for.inc33 ], [ 1, %for.cond3.preheader ]
  %exitcond6 = icmp eq i32 %i.1, %2
  br i1 %exitcond6, label %while.cond, label %for.cond6

for.cond6:                                        ; preds = %for.cond3, %for.inc12
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc12 ], [ 0, %for.cond3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 39
  br i1 %exitcond.not, label %for.cond15, label %for.inc12

for.inc12:                                        ; preds = %for.cond6
  %arrayidx = getelementptr inbounds nuw [40 x i32], ptr %sum, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul9 = shl nsw i32 %3, 1
  store i32 %mul9, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond6, %for.inc30
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc30 ], [ 0, %for.cond6 ]
  %exitcond5.not = icmp eq i64 %indvars.iv2, 40
  br i1 %exitcond5.not, label %for.inc33, label %for.inc30

for.inc30:                                        ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw [40 x i32], ptr %sum, i64 0, i64 %indvars.iv2
  %4 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %div = sdiv i32 %4, 10
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %arrayidx21 = getelementptr inbounds nuw [40 x i32], ptr %sum, i64 0, i64 %indvars.iv.next3
  %5 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %add22 = add nsw i32 %div, %5
  store i32 %add22, ptr %arrayidx21, align 4, !tbaa !5
  %rem = srem i32 %4, 10
  store i32 %rem, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.inc33:                                        ; preds = %for.cond15
  %inc34 = add nuw nsw i32 %i.1, 1
  br label %for.cond3, !llvm.loop !14

while.cond:                                       ; preds = %for.cond3, %while.cond
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %while.cond ], [ 39, %for.cond3 ]
  %arrayidx37 = getelementptr inbounds [40 x i32], ptr %sum, i64 0, i64 %indvars.iv7
  %6 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %6, 0
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -1
  br i1 %cmp38, label %while.cond, label %for.cond39.preheader, !llvm.loop !15

for.cond39.preheader:                             ; preds = %while.cond
  %7 = trunc nsw i64 %indvars.iv7 to i32
  br label %for.cond39

for.cond39:                                       ; preds = %for.cond39.preheader, %for.inc45
  %j.2 = phi i32 [ %dec46, %for.inc45 ], [ %7, %for.cond39.preheader ]
  %cmp40 = icmp sgt i32 %j.2, -1
  br i1 %cmp40, label %for.inc45, label %if.end

for.inc45:                                        ; preds = %for.cond39
  %idxprom42 = zext nneg i32 %j.2 to i64
  %arrayidx43 = getelementptr inbounds nuw [40 x i32], ptr %sum, i64 0, i64 %idxprom42
  %8 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %dec46 = add nsw i32 %j.2, -1
  br label %for.cond39, !llvm.loop !16

if.end:                                           ; preds = %for.cond39, %for.end
  call void @llvm.lifetime.end.p0(i64 noundef 160, ptr noundef nonnull %sum) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
