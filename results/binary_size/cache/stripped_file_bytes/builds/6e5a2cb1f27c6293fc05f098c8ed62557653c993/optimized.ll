; ModuleID = '/tmp/tmpkgv7bwg3.cpp'
source_filename = "/tmp/tmpkgv7bwg3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.sz = private unnamed_addr constant [6 x i32] [i32 100, i32 50, i32 20, i32 10, i32 5, i32 1], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %sz = alloca [6 x i32], align 16
  %a = alloca [10000 x i32], align 16
  %i = alloca i32, align 4
  %p = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr %sz) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %sz, ptr align 16 @__const.main.sz, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #5
  call void @llvm.memset.p0.i64(ptr align 16 %a, i8 0, i64 40000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  br label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %div = sdiv i32 %1, %3
  store i32 %div, ptr %m, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = load i32, ptr %m, align 4, !tbaa !5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 %idxprom1
  %7 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %mul = mul nsw i32 %5, %7
  %sub = sub nsw i32 %4, %mul
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %8 = load i32, ptr %m, align 4, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [10000 x i32], ptr %a, i64 0, i64 %idxprom3
  store i32 %8, ptr %arrayidx4, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #5
  store i32 0, ptr %p, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc12, %for.end
  %11 = load i32, ptr %p, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %11, 6
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #5
  br label %for.end14

for.body8:                                        ; preds = %for.cond5
  %12 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [10000 x i32], ptr %a, i64 0, i64 %idxprom9
  %13 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %13)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %14 = load i32, ptr %p, align 4, !tbaa !5
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, ptr %p, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.end14:                                        ; preds = %for.cond.cleanup7
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr %sz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__isoc23_scanf(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
