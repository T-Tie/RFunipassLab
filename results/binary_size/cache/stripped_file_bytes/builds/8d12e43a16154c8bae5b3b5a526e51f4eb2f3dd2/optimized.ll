; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbm6g64ne.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  %js = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %sz) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %js) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %j.0 = phi i32 [ %j.1, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %1
  br i1 %cmp.not.not, label %for.body, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = sext i32 %j.0 to i64
  %smax = call i32 @llvm.smax.i32(i32 %j.0, i32 0)
  %3 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %3 to i64
  br label %for.cond10

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %5 = and i32 %4, -2147483647
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom7
  store i32 %4, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond10:                                       ; preds = %for.cond10.preheader, %for.end26
  %indvars.iv37 = phi i64 [ 1, %for.cond10.preheader ], [ %indvars.iv.next38, %for.end26 ]
  %max.0 = phi i32 [ 0, %for.cond10.preheader ], [ %spec.select32, %for.end26 ]
  %exitcond = icmp eq i64 %indvars.iv37, %wide.trip.count
  br i1 %exitcond, label %for.cond46.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %6 = sub nsw i64 %2, %indvars.iv37
  br label %for.cond13

for.cond46.preheader:                             ; preds = %for.cond10
  %sub47 = add nsw i32 %j.0, -1
  %smax46 = call i32 @llvm.smax.i32(i32 %sub47, i32 0)
  %wide.trip.count47 = zext nneg i32 %smax46 to i64
  br label %for.cond46

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body16
  %indvars.iv34 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next35, %for.body16 ]
  %max.1 = phi i32 [ %max.0, %for.cond13.preheader ], [ %spec.select, %for.body16 ]
  %cmp15.not = icmp sgt i64 %indvars.iv34, %6
  %idxprom30 = sext i32 %max.1 to i64
  %arrayidx31 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom30
  %7 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  br i1 %cmp15.not, label %for.end26, label %for.body16

for.body16:                                       ; preds = %for.cond13
  %arrayidx18 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %indvars.iv34
  %8 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %8, %7
  %9 = trunc nuw nsw i64 %indvars.iv34 to i32
  %spec.select = select i1 %cmp21, i32 %9, i32 %max.1
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond13, !llvm.loop !12

for.end26:                                        ; preds = %for.cond13
  %arrayidx31.le = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom30
  %arrayidx29 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %6
  %10 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %10, ptr %arrayidx31.le, align 4, !tbaa !5
  %11 = trunc nsw i64 %6 to i32
  %cmp38 = icmp eq i32 %max.1, %11
  %12 = trunc i64 %6 to i32
  %13 = add i32 %12, -1
  %spec.select32 = select i1 %cmp38, i32 %13, i32 %max.1
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond10, !llvm.loop !13

for.cond46:                                       ; preds = %for.cond46.preheader, %for.body49
  %indvars.iv43 = phi i64 [ 0, %for.cond46.preheader ], [ %indvars.iv.next44, %for.body49 ]
  %exitcond48.not = icmp eq i64 %indvars.iv43, %wide.trip.count47
  br i1 %exitcond48.not, label %for.end55, label %for.body49

for.body49:                                       ; preds = %for.cond46
  %arrayidx51 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %indvars.iv43
  %14 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14)
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond46, !llvm.loop !14

for.end55:                                        ; preds = %for.cond46
  %cmp57 = icmp sgt i32 %j.0, 0
  br i1 %cmp57, label %if.then58, label %if.end62

if.then58:                                        ; preds = %for.end55
  %idxprom59 = zext nneg i32 %sub47 to i64
  %arrayidx60 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %idxprom59
  %15 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %15)
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %for.end55
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %js) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %sz) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
