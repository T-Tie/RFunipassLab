; ModuleID = '/tmp/tmp0kq0xul4.cpp'
source_filename = "/tmp/tmp0kq0xul4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global [26 x i32] zeroinitializer, align 16
@b = dso_local global [10000 x i32] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@m = dso_local global i32 0, align 4
@p = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z3daoii(i32 noundef %c, i32 noundef %k) #0 {
entry:
  %c.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4, !tbaa !5
  store i32 %k, ptr %k.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #4
  store i32 0, ptr %flag, align 4, !tbaa !5
  %0 = load i32, ptr %k.addr, align 4, !tbaa !5
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [26 x i32], ptr @a, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %5 = load i32, ptr %c.addr, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %flag, align 4, !tbaa !5
  %6 = load i32, ptr @p, align 4, !tbaa !5
  %add2 = add nsw i32 %6, 1
  store i32 %add2, ptr @p, align 4, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [26 x i32], ptr @a, i64 0, i64 %idxprom3
  %8 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !5
  call void @_Z3daoii(i32 noundef %8, i32 noundef %9)
  %10 = load i32, ptr @p, align 4, !tbaa !5
  %sub = sub nsw i32 %10, 1
  store i32 %sub, ptr @p, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %flag, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %for.end
  %13 = load i32, ptr @p, align 4, !tbaa !5
  %14 = load i32, ptr @m, align 4, !tbaa !5
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds [10000 x i32], ptr @b, i64 0, i64 %idxprom7
  store i32 %13, ptr %arrayidx8, align 4, !tbaa !5
  %15 = load i32, ptr @m, align 4, !tbaa !5
  %add9 = add nsw i32 %15, 1
  store i32 %add9, ptr @m, align 4, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef @n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [26 x i32], ptr @a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [26 x i32], ptr @a, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  call void @_Z3daoii(i32 noundef %7, i32 noundef %8)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.end9:                                         ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc28, %for.end9
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr @m, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %cmp11 = icmp slt i32 %10, %sub
  br i1 %cmp11, label %for.body12, label %for.end30

for.body12:                                       ; preds = %for.cond10
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [10000 x i32], ptr @b, i64 0, i64 %idxprom13
  %13 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %14, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [10000 x i32], ptr @b, i64 0, i64 %idxprom15
  %15 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17 = icmp sgt i32 %13, %15
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [10000 x i32], ptr @b, i64 0, i64 %idxprom18
  %17 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %17, ptr %q, align 4, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %add20 = add nsw i32 %18, 1
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [10000 x i32], ptr @b, i64 0, i64 %idxprom21
  %19 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [10000 x i32], ptr @b, i64 0, i64 %idxprom23
  store i32 %19, ptr %arrayidx24, align 4, !tbaa !5
  %21 = load i32, ptr %q, align 4, !tbaa !5
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %add25 = add nsw i32 %22, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [10000 x i32], ptr @b, i64 0, i64 %idxprom26
  store i32 %21, ptr %arrayidx27, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body12
  br label %for.inc28

for.inc28:                                        ; preds = %if.end
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc29 = add nsw i32 %23, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end30:                                        ; preds = %for.cond10
  %24 = load i32, ptr @m, align 4, !tbaa !5
  %sub31 = sub nsw i32 %24, 1
  %idxprom32 = sext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds [10000 x i32], ptr @b, i64 0, i64 %idxprom32
  %25 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
