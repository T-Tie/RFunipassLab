; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1yflhol4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %for.body ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc6, %for.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %mul = mul nsw i32 %0, %0
  %cmp.not = icmp samesign ugt i32 %i.0, %mul
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %1, 255
  %inc = zext i1 %cmp2 to i32
  %spec.select = add nuw nsw i32 %j.0, %inc
  %cmp3 = icmp eq i32 %1, 0
  %inc6 = add nuw nsw i32 %i.0, 1
  br i1 %cmp3, label %for.end, label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.body, %for.cond
  %j.1 = phi i32 [ %spec.select, %for.body ], [ %j.0, %for.cond ]
  %2 = xor i32 %j.1, -1
  br label %for.cond7

for.cond7:                                        ; preds = %for.body11, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %k.2, %for.body11 ]
  %h.0 = phi i32 [ 1, %for.end ], [ %h.1, %for.body11 ]
  %i.1 = phi i32 [ 1, %for.end ], [ %inc22, %for.body11 ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %mul8 = mul nsw i32 %3, %3
  %sub9 = add i32 %mul8, %2
  %cmp10.not = icmp sgt i32 %i.1, %sub9
  br i1 %cmp10.not, label %for.end23, label %for.body11

for.body11:                                       ; preds = %for.cond7
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %4 = load i32, ptr %a, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %4, 255
  %inc15 = zext i1 %cmp13 to i32
  %spec.select10 = add nsw i32 %k.0, %inc15
  %cmp17 = icmp eq i32 %4, 0
  %k.2 = select i1 %cmp17, i32 0, i32 %spec.select10
  %inc19 = zext i1 %cmp17 to i32
  %h.1 = add nuw nsw i32 %h.0, %inc19
  %inc22 = add nuw nsw i32 %i.1, 1
  br label %for.cond7, !llvm.loop !12

for.end23:                                        ; preds = %for.cond7
  %rem = srem i32 %j.1, %3
  %rem25 = srem i32 %k.0, %3
  %5 = add i32 %rem, %rem25
  %sub26 = sub i32 %3, %5
  %sub27 = add nsw i32 %sub26, -2
  %mul32 = shl nsw i32 %sub26, 1
  %sub33 = sub nsw i32 %h.0, %mul32
  %mul34 = mul nsw i32 %sub33, %sub27
  %div = sdiv i32 %mul34, 2
  %call35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
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
