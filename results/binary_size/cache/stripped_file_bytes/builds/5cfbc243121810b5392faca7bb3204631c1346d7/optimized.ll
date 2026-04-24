; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9ku5irjp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@str = private unnamed_addr constant [5 x i8] c"same\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %zong = alloca [1000 x i32], align 16
  %youxiao = alloca [1000 x i32], align 16
  %c = alloca [1000 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %zong) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %youxiao) #4
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %c) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %0, 0
  br i1 %cmp15, label %for.body, label %for.end40

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %zong, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [1000 x i32], ptr %youxiao, i64 0, i64 %indvars.iv
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  %.pre = load i32, ptr %youxiao, align 16, !tbaa !5
  %.pre29 = load i32, ptr %zong, align 16, !tbaa !5
  %3 = sitofp i32 %.pre to double
  %4 = sitofp i32 %.pre29 to double
  %5 = fdiv double %3, %4
  %cmp817 = icmp sgt i32 %1, 1
  br i1 %cmp817, label %for.body9.preheader, label %for.end40

for.body9.preheader:                              ; preds = %for.end
  %wide.trip.count = zext nneg i32 %1 to i64
  %6 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp eq i32 %1, 2
  br i1 %min.iters.check, label %for.body9.preheader35, label %vector.ph

vector.ph:                                        ; preds = %for.body9.preheader
  %n.vec = and i64 %6, -2
  %7 = or i64 %6, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %8 = getelementptr inbounds nuw [1000 x i32], ptr %youxiao, i64 0, i64 %offset.idx
  %wide.load = load <2 x i32>, ptr %8, align 4, !tbaa !5
  %9 = sitofp <2 x i32> %wide.load to <2 x double>
  %10 = getelementptr inbounds nuw [1000 x i32], ptr %zong, i64 0, i64 %offset.idx
  %wide.load34 = load <2 x i32>, ptr %10, align 4, !tbaa !5
  %11 = sitofp <2 x i32> %wide.load34 to <2 x double>
  %12 = fdiv <2 x double> %9, %11
  %13 = fsub <2 x double> %12, %broadcast.splat
  %14 = getelementptr inbounds nuw [1000 x double], ptr %c, i64 0, i64 %offset.idx
  store <2 x double> %13, ptr %14, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 2
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %for.body25.preheader, label %for.body9.preheader35

for.body9.preheader35:                            ; preds = %for.body9.preheader, %middle.block
  %indvars.iv23.ph = phi i64 [ 1, %for.body9.preheader ], [ %7, %middle.block ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9.preheader35, %for.body9
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body9 ], [ %indvars.iv23.ph, %for.body9.preheader35 ]
  %arrayidx11 = getelementptr inbounds nuw [1000 x i32], ptr %youxiao, i64 0, i64 %indvars.iv23
  %16 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %conv12 = sitofp i32 %16 to double
  %arrayidx15 = getelementptr inbounds nuw [1000 x i32], ptr %zong, i64 0, i64 %indvars.iv23
  %17 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %conv16 = sitofp i32 %17 to double
  %div17 = fdiv double %conv12, %conv16
  %sub = fsub double %div17, %5
  %arrayidx19 = getelementptr inbounds nuw [1000 x double], ptr %c, i64 0, i64 %indvars.iv23
  store double %sub, ptr %arrayidx19, align 8, !tbaa !12
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count
  br i1 %exitcond.not, label %for.body25.preheader, label %for.body9, !llvm.loop !17

for.body25.preheader:                             ; preds = %for.body9, %middle.block
  br label %for.body25

for.body25:                                       ; preds = %for.body25.preheader, %for.body25
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.body25 ], [ 1, %for.body25.preheader ]
  %arrayidx27 = getelementptr inbounds nuw [1000 x double], ptr %c, i64 0, i64 %indvars.iv26
  %18 = load double, ptr %arrayidx27, align 8, !tbaa !12
  %cmp28 = fcmp ogt double %18, 5.000000e-02
  %cmp32 = fcmp olt double %18, -5.000000e-02
  %str.1.str = select i1 %cmp32, ptr @str.1, ptr @str
  %str.2.sink = select i1 %cmp28, ptr @str.2, ptr %str.1.str
  %puts14 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %20 = sext i32 %19 to i64
  %cmp24 = icmp slt i64 %indvars.iv.next27, %20
  br i1 %cmp24, label %for.body25, label %for.end40, !llvm.loop !18

for.end40:                                        ; preds = %for.body25, %entry, %for.end
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %youxiao) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %zong) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11, !15}
!18 = distinct !{!18, !10, !11}
