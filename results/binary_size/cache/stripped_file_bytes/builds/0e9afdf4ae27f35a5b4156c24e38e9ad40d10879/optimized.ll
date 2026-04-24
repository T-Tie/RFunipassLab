; ModuleID = '<stdin>'
source_filename = "/tmp/tmpg57lhqlz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str = private unnamed_addr constant [5 x i8] c"same\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [100 x [2 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %num) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %0, 0
  br i1 %cmp14, label %for.cond1.preheader, label %for.end39

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.cond1.preheader ], [ 0, %entry ]
  %arrayidx5 = getelementptr inbounds nuw [100 x [2 x i32]], ptr %num, i64 0, i64 %indvars.iv19, i64 0
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %arrayidx5.c = getelementptr inbounds nuw [100 x [2 x i32]], ptr %num, i64 0, i64 %indvars.iv19, i64 1
  %call6.c = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5.c)
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next20, %2
  br i1 %cmp, label %for.cond1.preheader, label %for.end9, !llvm.loop !9

for.end9:                                         ; preds = %for.cond1.preheader
  %arrayidx11.phi.trans.insert = getelementptr inbounds nuw i8, ptr %num, i64 4
  %.pre = load i32, ptr %arrayidx11.phi.trans.insert, align 4, !tbaa !5
  %.pre25 = load i32, ptr %num, align 16, !tbaa !5
  %3 = sitofp i32 %.pre to float
  %4 = fmul float %3, 1.000000e+02
  %5 = sitofp i32 %.pre25 to float
  %6 = fdiv float %4, %5
  %7 = icmp sgt i32 %1, 1
  br i1 %7, label %for.body17, label %for.end39

for.body17:                                       ; preds = %for.end9, %for.body17
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.body17 ], [ 1, %for.end9 ]
  %arrayidx19 = getelementptr inbounds nuw [100 x [2 x i32]], ptr %num, i64 0, i64 %indvars.iv22
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %arrayidx19, i64 4
  %8 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %conv21 = sitofp i32 %8 to float
  %mul22 = fmul float %conv21, 1.000000e+02
  %9 = load i32, ptr %arrayidx19, align 8, !tbaa !5
  %conv26 = sitofp i32 %9 to float
  %div27 = fdiv float %mul22, %conv26
  %sub = fsub float %div27, %6
  %cmp28 = fcmp ogt float %sub, 5.000000e+00
  %sub30 = fsub float %6, %div27
  %cmp31 = fcmp ogt float %sub30, 5.000000e+00
  %str.1.str = select i1 %cmp31, ptr @str.1, ptr @str
  %str.2.sink = select i1 %cmp28, ptr @str.2, ptr %str.1.str
  %puts12 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp16 = icmp slt i64 %indvars.iv.next23, %11
  br i1 %cmp16, label %for.body17, label %for.end39, !llvm.loop !12

for.end39:                                        ; preds = %for.body17, %entry, %for.end9
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %num) #4
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
!12 = distinct !{!12, !10, !11}
