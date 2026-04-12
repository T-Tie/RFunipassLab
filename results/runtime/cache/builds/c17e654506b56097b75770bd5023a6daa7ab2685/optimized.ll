; ModuleID = '<stdin>'
source_filename = "/tmp/tmpd87e2_5s.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [1000 x i32], align 16
  %b = alloca [1000 x i32], align 16
  %c = alloca [1000 x i32], align 16
  %d = alloca [1000 x i32], align 16
  %e = alloca [1000 x i32], align 16
  %f = alloca [1000 x i32], align 16
  %sum = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %c) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %d) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %e) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %f) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %sum) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv33 = phi i32 [ %indvars.iv.next34, %for.inc ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [1000 x i32], ptr %c, i64 0, i64 %indvars.iv
  %arrayidx6 = getelementptr inbounds nuw [1000 x i32], ptr %d, i64 0, i64 %indvars.iv
  %arrayidx8 = getelementptr inbounds nuw [1000 x i32], ptr %e, i64 0, i64 %indvars.iv
  %arrayidx10 = getelementptr inbounds nuw [1000 x i32], ptr %f, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx6, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx10)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  %.pre = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %.pre36 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.cond
  %cmp15 = icmp eq i32 %.pre, 0
  %cmp19 = icmp eq i32 %.pre36, 0
  %or.cond = select i1 %cmp15, i1 %cmp19, i1 false
  br i1 %or.cond, label %land.lhs.true20, label %for.inc

land.lhs.true20:                                  ; preds = %land.lhs.true
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %1, 0
  br i1 %cmp23, label %land.lhs.true24, label %for.inc

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %2, 0
  br i1 %cmp27, label %land.lhs.true28, label %for.inc

land.lhs.true28:                                  ; preds = %land.lhs.true24
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %3, 0
  br i1 %cmp31, label %for.cond56.preheader, label %for.inc

for.cond56.preheader:                             ; preds = %land.lhs.true28
  %wide.trip.count = zext i32 %indvars.iv33 to i64
  br label %for.cond56

for.inc:                                          ; preds = %for.cond, %land.lhs.true28, %land.lhs.true24, %land.lhs.true20, %land.lhs.true
  %4 = phi i32 [ 0, %land.lhs.true28 ], [ 0, %land.lhs.true24 ], [ 0, %land.lhs.true20 ], [ %.pre36, %land.lhs.true ], [ %.pre36, %for.cond ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %6 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %7 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %reass.add = sub i32 %6, %.pre
  %reass.mul = mul i32 %reass.add, 60
  %reass.add25 = sub i32 %5, %0
  %reass.mul26 = mul i32 %reass.add25, 3600
  %.neg = sub i32 0, %4
  %reass.sub = add i32 %.neg, 43200
  %add51 = add i32 %reass.sub, %7
  %add52 = add i32 %add51, %reass.mul26
  %sub = add i32 %add52, %reass.mul
  %arrayidx54 = getelementptr inbounds nuw [1000 x i32], ptr %sum, i64 0, i64 %indvars.iv
  store i32 %sub, ptr %arrayidx54, align 4, !tbaa !5
  %indvars.iv.next34 = add nuw i32 %indvars.iv33, 1
  br label %for.cond, !llvm.loop !9

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc61
  %indvars.iv30 = phi i64 [ 0, %for.cond56.preheader ], [ %indvars.iv.next31, %for.inc61 ]
  %exitcond.not = icmp eq i64 %indvars.iv30, %wide.trip.count
  br i1 %exitcond.not, label %for.end63, label %for.inc61

for.inc61:                                        ; preds = %for.cond56
  %arrayidx59 = getelementptr inbounds nuw [1000 x i32], ptr %sum, i64 0, i64 %indvars.iv30
  %8 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %call60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond56, !llvm.loop !12

for.end63:                                        ; preds = %for.cond56
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %sum) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %f) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %e) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %d) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %a) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) #3

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
