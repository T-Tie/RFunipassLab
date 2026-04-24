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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %a) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = phi i32 [ %.pre, %entry ], [ %1, %for.inc11 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ]
  %x1.0 = phi i32 [ -1, %entry ], [ %x1.1, %for.inc11 ]
  %y1.0 = phi i32 [ undef, %entry ], [ %y1.1, %for.inc11 ]
  %x2.0 = phi i32 [ undef, %entry ], [ %x2.1, %for.inc11 ]
  %y2.0 = phi i32 [ undef, %entry ], [ %y2.1, %for.inc11 ]
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end13

for.cond1:                                        ; preds = %for.cond, %for.inc
  %1 = phi i32 [ %.pre19, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %x1.1 = phi i32 [ %x1.3, %for.inc ], [ %x1.0, %for.cond ]
  %y1.1 = phi i32 [ %y1.3, %for.inc ], [ %y1.0, %for.cond ]
  %x2.1 = phi i32 [ %x2.2, %for.inc ], [ %x2.0, %for.cond ]
  %y2.1 = phi i32 [ %y2.2, %for.inc ], [ %y2.0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %2
  br i1 %cmp2, label %for.body3, label %for.inc11

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %cmp8 = icmp eq i32 %x1.1, -1
  %spec.select = select i1 %cmp8, i32 %i.0, i32 %x1.1
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select17 = select i1 %cmp8, i32 %4, i32 %y1.1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body3
  %x1.3 = phi i32 [ %x1.1, %for.body3 ], [ %spec.select, %if.then ]
  %y1.3 = phi i32 [ %y1.1, %for.body3 ], [ %spec.select17, %if.then ]
  %x2.2 = phi i32 [ %x2.1, %for.body3 ], [ %i.0, %if.then ]
  %y2.2 = phi i32 [ %y2.1, %for.body3 ], [ %4, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre19 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !10

for.inc11:                                        ; preds = %for.cond1
  %inc12 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end13:                                        ; preds = %for.cond
  %5 = xor i32 %x1.0, -1
  %sub14 = add i32 %x2.0, %5
  %6 = xor i32 %y1.0, -1
  %sub16 = add i32 %y2.0, %6
  %mul = mul nsw i32 %sub16, %sub14
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind willreturn }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
