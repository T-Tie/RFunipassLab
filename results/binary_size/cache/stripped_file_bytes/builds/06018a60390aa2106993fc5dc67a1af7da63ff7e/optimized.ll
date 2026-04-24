; ModuleID = '<stdin>'
source_filename = "/tmp/tmpysqwb1xv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp20)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc11
  %1 = phi i32 [ %6, %for.inc11 ], [ %0, %entry ]
  %i.025 = phi i32 [ %inc12, %for.inc11 ], [ 0, %entry ]
  %y2.024 = phi i32 [ %y2.1.lcssa, %for.inc11 ], [ undef, %entry ]
  %x2.023 = phi i32 [ %x2.1.lcssa, %for.inc11 ], [ undef, %entry ]
  %y1.022 = phi i32 [ %y1.1.lcssa, %for.inc11 ], [ undef, %entry ]
  %x1.021 = phi i32 [ %x1.1.lcssa, %for.inc11 ], [ -1, %entry ]
  %cmp211 = icmp sgt i32 %1, 0
  br i1 %cmp211, label %for.body3, label %for.inc11

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1.preheader ]
  %y2.116 = phi i32 [ %y2.2, %for.inc ], [ %y2.024, %for.cond1.preheader ]
  %x2.115 = phi i32 [ %x2.2, %for.inc ], [ %x2.023, %for.cond1.preheader ]
  %y1.114 = phi i32 [ %y1.3, %for.inc ], [ %y1.022, %for.cond1.preheader ]
  %x1.113 = phi i32 [ %x1.3, %for.inc ], [ %x1.021, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %2, 0
  br i1 %cmp7, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %cmp8 = icmp eq i32 %x1.113, -1
  %spec.select = select i1 %cmp8, i32 %i.025, i32 %x1.113
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select10 = select i1 %cmp8, i32 %3, i32 %y1.114
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %x1.3 = phi i32 [ %spec.select, %if.then ], [ %x1.113, %for.body3 ]
  %y1.3 = phi i32 [ %spec.select10, %if.then ], [ %y1.114, %for.body3 ]
  %x2.2 = phi i32 [ %i.025, %if.then ], [ %x2.115, %for.body3 ]
  %y2.2 = phi i32 [ %3, %if.then ], [ %y2.116, %for.body3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp2, label %for.body3, label %for.inc11, !llvm.loop !9

for.inc11:                                        ; preds = %for.inc, %for.cond1.preheader
  %6 = phi i32 [ %1, %for.cond1.preheader ], [ %4, %for.inc ]
  %x1.1.lcssa = phi i32 [ %x1.021, %for.cond1.preheader ], [ %x1.3, %for.inc ]
  %y1.1.lcssa = phi i32 [ %y1.022, %for.cond1.preheader ], [ %y1.3, %for.inc ]
  %x2.1.lcssa = phi i32 [ %x2.023, %for.cond1.preheader ], [ %x2.2, %for.inc ]
  %y2.1.lcssa = phi i32 [ %y2.024, %for.cond1.preheader ], [ %y2.2, %for.inc ]
  %inc12 = add nuw nsw i32 %i.025, 1
  %cmp = icmp slt i32 %inc12, %6
  br i1 %cmp, label %for.cond1.preheader, label %for.end13.loopexit, !llvm.loop !12

for.end13.loopexit:                               ; preds = %for.inc11
  %7 = xor i32 %x1.1.lcssa, -1
  %8 = add i32 %x2.1.lcssa, %7
  %9 = xor i32 %y1.1.lcssa, -1
  %10 = add i32 %y2.1.lcssa, %9
  %11 = mul nsw i32 %10, %8
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %11)
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
