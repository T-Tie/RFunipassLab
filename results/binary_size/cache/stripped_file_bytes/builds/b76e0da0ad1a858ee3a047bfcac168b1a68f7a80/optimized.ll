; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6ot_rbrk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %q = alloca [6 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %q) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  %0 = call i32 @llvm.smax.i32(i32 %.pr, i32 99)
  %1 = udiv i32 %0, 100
  %2 = mul nuw nsw i32 %1, 100
  %3 = sub i32 %.pr, %2
  store i32 %1, ptr %q, align 16, !tbaa !5
  %4 = add i32 %.pr, 49
  %smin21 = call i32 @llvm.smin.i32(i32 %3, i32 49)
  %5 = add i32 %smin21, %2
  %6 = sub i32 %4, %5
  %7 = udiv i32 %6, 50
  %8 = mul nuw i32 %7, 50
  %9 = add i32 %8, %2
  %10 = sub i32 %.pr, %9
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i64 4
  store i32 %7, ptr %arrayidx7, align 4, !tbaa !5
  %11 = add i32 %.pr, 19
  %smin22 = call i32 @llvm.smin.i32(i32 %10, i32 19)
  %12 = add i32 %smin22, %8
  %13 = add i32 %12, %2
  %14 = sub i32 %11, %13
  %15 = udiv i32 %14, 20
  %16 = mul nuw i32 %15, 20
  %17 = add i32 %16, %8
  %18 = add i32 %17, %2
  %19 = sub i32 %.pr, %18
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i64 8
  store i32 %15, ptr %arrayidx18, align 8, !tbaa !5
  %20 = add i32 %.pr, 9
  %smin24 = call i32 @llvm.smin.i32(i32 %19, i32 9)
  %21 = add i32 %smin24, %16
  %22 = add i32 %21, %8
  %23 = add i32 %22, %2
  %24 = sub i32 %20, %23
  %25 = udiv i32 %24, 10
  %26 = mul nuw i32 %25, 10
  %27 = add i32 %26, %16
  %28 = add i32 %27, %8
  %29 = add i32 %28, %2
  %30 = sub i32 %.pr, %29
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %q, i64 12
  store i32 %25, ptr %arrayidx29, align 4, !tbaa !5
  %31 = add i32 %.pr, 4
  %smin27 = call i32 @llvm.smin.i32(i32 %30, i32 4)
  %32 = add i32 %smin27, %26
  %33 = add i32 %32, %16
  %34 = add i32 %33, %8
  %35 = add i32 %34, %2
  %36 = sub i32 %31, %35
  %37 = udiv i32 %36, 5
  %38 = mul nuw i32 %37, 5
  %39 = add i32 %38, %26
  %40 = add i32 %39, %16
  %41 = add i32 %40, %8
  %42 = add i32 %41, %2
  %43 = sub i32 %.pr, %42
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i64 16
  store i32 %37, ptr %arrayidx40, align 16, !tbaa !5
  store i32 %43, ptr %n, align 4, !tbaa !5
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i64 20
  store i32 %43, ptr %arrayidx46, align 4, !tbaa !5
  br label %for.cond47

for.cond47:                                       ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 6
  br i1 %exitcond.not, label %for.end53, label %for.body

for.body:                                         ; preds = %for.cond47
  %arrayidx49 = getelementptr inbounds nuw [6 x i32], ptr %q, i64 0, i64 %indvars.iv
  %44 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %44)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond47, !llvm.loop !9

for.end53:                                        ; preds = %for.cond47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %q) #5
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

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
