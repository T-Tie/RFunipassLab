; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxvngq8in.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
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
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %b) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %c) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %d) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %e) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %f) #3
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [1000 x i32], ptr %c, i64 0, i64 %indvars.iv
  %arrayidx6 = getelementptr inbounds nuw [1000 x i32], ptr %d, i64 0, i64 %indvars.iv
  %arrayidx8 = getelementptr inbounds nuw [1000 x i32], ptr %e, i64 0, i64 %indvars.iv
  %arrayidx10 = getelementptr inbounds nuw [1000 x i32], ptr %f, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx6, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx10)
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %1, 0
  br i1 %cmp15, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %2, 0
  br i1 %cmp19, label %land.lhs.true20, label %if.end

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %3, 0
  br i1 %cmp23, label %land.lhs.true24, label %if.end

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %4 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %4, 0
  br i1 %cmp27, label %land.lhs.true28, label %if.end

land.lhs.true28:                                  ; preds = %land.lhs.true24
  %5 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %5, 0
  br i1 %cmp31, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %land.lhs.true28
  %wide.trip.count = and i64 %indvars.iv, 4294967295
  br label %for.cond

if.end:                                           ; preds = %land.lhs.true28, %land.lhs.true24, %land.lhs.true20, %land.lhs.true16, %land.lhs.true, %while.body
  br label %while.body, !llvm.loop !9

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv26 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next27, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx35 = getelementptr inbounds nuw [1000 x i32], ptr %d, i64 0, i64 %indvars.iv26
  %6 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %add = add nsw i32 %6, 12
  %arrayidx37 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv26
  %7 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %sub38 = sub i32 %add, %7
  %mul = mul nsw i32 %sub38, 3600
  %arrayidx40 = getelementptr inbounds nuw [1000 x i32], ptr %e, i64 0, i64 %indvars.iv26
  %8 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %arrayidx42 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv26
  %9 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %sub43 = sub nsw i32 %8, %9
  %mul44 = mul nsw i32 %sub43, 60
  %arrayidx47 = getelementptr inbounds nuw [1000 x i32], ptr %f, i64 0, i64 %indvars.iv26
  %10 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %arrayidx49 = getelementptr inbounds nuw [1000 x i32], ptr %c, i64 0, i64 %indvars.iv26
  %11 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %sub50 = add i32 %10, %mul
  %add45 = add i32 %sub50, %mul44
  %add51 = sub i32 %add45, %11
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add51)
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %f) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %e) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %d) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
