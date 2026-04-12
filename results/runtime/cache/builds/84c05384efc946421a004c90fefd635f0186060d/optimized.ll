; ModuleID = '<stdin>'
source_filename = "/tmp/tmpd5udmrp0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %value = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = phi i32 [ %.pre, %entry ], [ %1, %for.inc8 ]
  %start_col.0 = phi i32 [ undef, %entry ], [ %start_col.1, %for.inc8 ]
  %start_row.0 = phi i32 [ 0, %entry ], [ %start_row.1, %for.inc8 ]
  %row.0 = phi i32 [ undef, %entry ], [ %row.1, %for.inc8 ]
  %col.0 = phi i32 [ undef, %entry ], [ %col.1, %for.inc8 ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc9, %for.inc8 ]
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end10, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %1 = phi i32 [ %.pre9, %for.inc ], [ %0, %for.cond ]
  %start_col.1 = phi i32 [ %start_col.2, %for.inc ], [ %start_col.0, %for.cond ]
  %start_row.1 = phi i32 [ %start_row.2, %for.inc ], [ %start_row.0, %for.cond ]
  %j.0 = phi i32 [ %inc, %for.inc ], [ 1, %for.cond ]
  %row.1 = phi i32 [ %row.2, %for.inc ], [ %row.0, %for.cond ]
  %col.1 = phi i32 [ %col.2, %for.inc ], [ %col.0, %for.cond ]
  %cmp2.not = icmp sgt i32 %j.0, %1
  br i1 %cmp2.not, label %for.inc8, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %value)
  %2 = load i32, ptr %value, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %cmp5 = icmp eq i32 %start_row.1, 0
  %spec.select = select i1 %cmp5, i32 %j.0, i32 %start_col.1
  %spec.select8 = select i1 %cmp5, i32 %i.0, i32 %start_row.1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body3
  %start_col.2 = phi i32 [ %start_col.1, %for.body3 ], [ %spec.select, %if.then ]
  %start_row.2 = phi i32 [ %start_row.1, %for.body3 ], [ %spec.select8, %if.then ]
  %row.2 = phi i32 [ %row.1, %for.body3 ], [ %i.0, %if.then ]
  %col.2 = phi i32 [ %col.1, %for.body3 ], [ %j.0, %if.then ]
  %inc = add nuw nsw i32 %j.0, 1
  %.pre9 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %inc9 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %3 = xor i32 %start_row.0, -1
  %sub11 = add i32 %row.0, %3
  %4 = xor i32 %start_col.0, -1
  %sub13 = add i32 %col.0, %4
  %mul = mul nsw i32 %sub13, %sub11
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
