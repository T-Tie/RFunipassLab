; ModuleID = '<stdin>'
source_filename = "/tmp/tmpg57lhqlz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str = private unnamed_addr constant [5 x i8] c"same\00", align 1
@str.3 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@str.4 = private unnamed_addr constant [7 x i8] c"better\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [100 x [2 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %num) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.end, label %for.end9

for.end:                                          ; preds = %for.cond
  %arrayidx5 = getelementptr inbounds nuw [100 x [2 x i32]], ptr %num, i64 0, i64 %indvars.iv, i64 0
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %arrayidx5.1 = getelementptr inbounds nuw [100 x [2 x i32]], ptr %num, i64 0, i64 %indvars.iv, i64 1
  %call6.1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5.1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  %idxprom.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %num, i64 8
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %num, i64 4
  %1 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %conv = sitofp i32 %1 to float
  %mul = fmul float %conv, 1.000000e+02
  %2 = load i32, ptr %num, align 16, !tbaa !5
  %conv14 = sitofp i32 %2 to float
  %div = fdiv float %mul, %conv14
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %num, i64 12
  %3 = load i32, ptr %arrayidx20, align 4
  %conv21 = sitofp i32 %3 to float
  %mul22 = fmul float %conv21, 1.000000e+02
  %4 = load i32, ptr %idxprom.lcssa.sroa.gep, align 8
  %conv26 = sitofp i32 %4 to float
  %div27 = fdiv float %mul22, %conv26
  %sub = fsub float %div27, %div
  %cmp28 = fcmp ogt float %sub, 5.000000e+00
  %sub30 = fsub float %div, %div27
  %cmp31 = fcmp ogt float %sub30, 5.000000e+00
  %str.3.str = select i1 %cmp31, ptr @str.3, ptr @str
  %str.3.sink = select i1 %cmp28, ptr @str.4, ptr %str.3.str
  br label %for.cond15

for.cond15:                                       ; preds = %for.body17, %for.end9
  %5 = phi i32 [ %.pre, %for.body17 ], [ %0, %for.end9 ]
  %cmp16 = icmp sgt i32 %5, 1
  br i1 %cmp16, label %for.body17, label %for.end39

for.body17:                                       ; preds = %for.cond15
  %puts8 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.3.sink) #4
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond15

for.end39:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %num) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

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
