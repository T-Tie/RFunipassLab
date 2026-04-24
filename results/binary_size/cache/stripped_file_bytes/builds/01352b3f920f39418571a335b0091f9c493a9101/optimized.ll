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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %num) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %num, i8 0, i64 64, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %for.end37, %entry
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %num)
  %0 = load i32, ptr %num, align 16, !tbaa !5
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %while.end, label %for.cond

for.cond:                                         ; preds = %while.cond, %for.body
  %1 = phi i32 [ %.pre, %for.body ], [ %0, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %while.cond ]
  %cmp3.not = icmp eq i32 %1, 0
  br i1 %cmp3.not, label %for.cond7, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx5 = getelementptr inbounds nuw [16 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %arrayidx5, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.cond7:                                        ; preds = %for.cond, %for.inc35
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc35 ], [ 0, %for.cond ]
  %sum.1 = phi i32 [ %sum.2, %for.inc35 ], [ 0, %for.cond ]
  %arrayidx9 = getelementptr inbounds nuw [16 x i32], ptr %num, i64 0, i64 %indvars.iv18
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10.not = icmp eq i32 %2, 0
  br i1 %cmp10.not, label %for.end37, label %for.cond12

for.cond12:                                       ; preds = %for.cond7, %for.body16
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.body16 ], [ 0, %for.cond7 ]
  %sum.2 = phi i32 [ %sum.3, %for.body16 ], [ %sum.1, %for.cond7 ]
  %arrayidx14 = getelementptr inbounds nuw [16 x i32], ptr %num, i64 0, i64 %indvars.iv15
  %3 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15.not = icmp eq i32 %3, 0
  br i1 %cmp15.not, label %for.inc35, label %for.body16

for.body16:                                       ; preds = %for.cond12
  %mul = shl nsw i32 %3, 1
  %cmp21.not = icmp eq i32 %2, %mul
  %inc30 = zext i1 %cmp21.not to i32
  %sum.3 = add nsw i32 %sum.2, %inc30
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond12, !llvm.loop !12

for.inc35:                                        ; preds = %for.cond12
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond7, !llvm.loop !13

for.end37:                                        ; preds = %for.cond7
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.1)
  %vtable.i = load ptr, ptr %call38, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call38, i64 %vbase.offset.i
  %call.i12 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call38, i8 noundef signext %call.i12)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %num) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = distinct !{!16, !10, !11}
