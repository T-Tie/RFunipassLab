; ModuleID = '/tmp/tmp395pxiyk.cpp'
source_filename = "/tmp/tmp395pxiyk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %shuzu = alloca [100 x [6 x i32]], align 16
  %zongshu = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 2400, ptr %shuzu) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %zongshu) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [6 x i32], ptr %arrayidx, i64 0, i64 0
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %1 to i64
  %arrayidx3 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [6 x i32], ptr %arrayidx3, i64 0, i64 1
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %2 to i64
  %arrayidx6 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [6 x i32], ptr %arrayidx6, i64 0, i64 2
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %3 to i64
  %arrayidx9 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [6 x i32], ptr %arrayidx9, i64 0, i64 3
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %4 to i64
  %arrayidx12 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [6 x i32], ptr %arrayidx12, i64 0, i64 4
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [6 x i32], ptr %arrayidx15, i64 0, i64 5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx1, ptr noundef %arrayidx4, ptr noundef %arrayidx7, ptr noundef %arrayidx10, ptr noundef %arrayidx13, ptr noundef %arrayidx16)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %6 to i64
  %arrayidx18 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [6 x i32], ptr %arrayidx18, i64 0, i64 0
  %7 = load i32, ptr %arrayidx19, align 8, !tbaa !5
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %8 to i64
  %arrayidx21 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [6 x i32], ptr %arrayidx21, i64 0, i64 1
  %9 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %9, 0
  br i1 %cmp23, label %land.lhs.true24, label %land.end

land.lhs.true24:                                  ; preds = %land.lhs.true
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %10 to i64
  %arrayidx26 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [6 x i32], ptr %arrayidx26, i64 0, i64 2
  %11 = load i32, ptr %arrayidx27, align 8, !tbaa !5
  %cmp28 = icmp eq i32 %11, 0
  br i1 %cmp28, label %land.lhs.true29, label %land.end

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %12 to i64
  %arrayidx31 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [6 x i32], ptr %arrayidx31, i64 0, i64 3
  %13 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %13, 0
  br i1 %cmp33, label %land.lhs.true34, label %land.end

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %14 to i64
  %arrayidx36 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [6 x i32], ptr %arrayidx36, i64 0, i64 4
  %15 = load i32, ptr %arrayidx37, align 8, !tbaa !5
  %cmp38 = icmp eq i32 %15, 0
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true34
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %16 to i64
  %arrayidx40 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [6 x i32], ptr %arrayidx40, i64 0, i64 5
  %17 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true34, %land.lhs.true29, %land.lhs.true24, %land.lhs.true, %while.cond
  %18 = phi i1 [ false, %land.lhs.true34 ], [ false, %land.lhs.true29 ], [ false, %land.lhs.true24 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp42, %land.rhs ]
  %lnot = xor i1 %18, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %19 to i64
  %arrayidx44 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [6 x i32], ptr %arrayidx44, i64 0, i64 3
  %20 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %add = add nsw i32 %20, 12
  store i32 %add, ptr %arrayidx45, align 4, !tbaa !5
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %21 to i64
  %arrayidx47 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [6 x i32], ptr %arrayidx47, i64 0, i64 2
  %22 = load i32, ptr %arrayidx48, align 8, !tbaa !5
  %sub = sub nsw i32 60, %22
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %23 to i64
  %arrayidx50 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [6 x i32], ptr %arrayidx50, i64 0, i64 5
  %24 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %add52 = add nsw i32 %sub, %24
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %25 to i64
  %arrayidx54 = getelementptr inbounds [100 x i32], ptr %zongshu, i64 0, i64 %idxprom53
  store i32 %add52, ptr %arrayidx54, align 4, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %26 to i64
  %arrayidx56 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom55
  %arrayidx57 = getelementptr inbounds [6 x i32], ptr %arrayidx56, i64 0, i64 2
  store i32 0, ptr %arrayidx57, align 8, !tbaa !5
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %27 to i64
  %arrayidx59 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [6 x i32], ptr %arrayidx59, i64 0, i64 5
  store i32 0, ptr %arrayidx60, align 4, !tbaa !5
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %28 to i64
  %arrayidx62 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [6 x i32], ptr %arrayidx62, i64 0, i64 1
  %29 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %arrayidx63, align 4, !tbaa !5
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %30 to i64
  %arrayidx65 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [6 x i32], ptr %arrayidx65, i64 0, i64 4
  %31 = load i32, ptr %arrayidx66, align 8, !tbaa !5
  %mul = mul nsw i32 60, %31
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom67 = sext i32 %32 to i64
  %arrayidx68 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [6 x i32], ptr %arrayidx68, i64 0, i64 1
  %33 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %sub70 = sub nsw i32 60, %33
  %mul71 = mul nsw i32 %sub70, 60
  %add72 = add nsw i32 %mul, %mul71
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom73 = sext i32 %34 to i64
  %arrayidx74 = getelementptr inbounds [100 x i32], ptr %zongshu, i64 0, i64 %idxprom73
  %35 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %add75 = add nsw i32 %35, %add72
  store i32 %add75, ptr %arrayidx74, align 4, !tbaa !5
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %36 to i64
  %arrayidx77 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [6 x i32], ptr %arrayidx77, i64 0, i64 0
  %37 = load i32, ptr %arrayidx78, align 8, !tbaa !5
  %inc79 = add nsw i32 %37, 1
  store i32 %inc79, ptr %arrayidx78, align 8, !tbaa !5
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom80 = sext i32 %38 to i64
  %arrayidx81 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom80
  %arrayidx82 = getelementptr inbounds [6 x i32], ptr %arrayidx81, i64 0, i64 3
  %39 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %40 to i64
  %arrayidx84 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [6 x i32], ptr %arrayidx84, i64 0, i64 0
  %41 = load i32, ptr %arrayidx85, align 8, !tbaa !5
  %sub86 = sub nsw i32 %39, %41
  %mul87 = mul nsw i32 %sub86, 3600
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom88 = sext i32 %42 to i64
  %arrayidx89 = getelementptr inbounds [100 x i32], ptr %zongshu, i64 0, i64 %idxprom88
  %43 = load i32, ptr %arrayidx89, align 4, !tbaa !5
  %add90 = add nsw i32 %43, %mul87
  store i32 %add90, ptr %arrayidx89, align 4, !tbaa !5
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom91 = sext i32 %44 to i64
  %arrayidx92 = getelementptr inbounds [100 x i32], ptr %zongshu, i64 0, i64 %idxprom91
  %45 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %call93 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %45)
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %inc94 = add nsw i32 %46, 1
  store i32 %inc94, ptr %i, align 4, !tbaa !5
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom95 = sext i32 %47 to i64
  %arrayidx96 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds [6 x i32], ptr %arrayidx96, i64 0, i64 0
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom98 = sext i32 %48 to i64
  %arrayidx99 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom98
  %arrayidx100 = getelementptr inbounds [6 x i32], ptr %arrayidx99, i64 0, i64 1
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom101 = sext i32 %49 to i64
  %arrayidx102 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom101
  %arrayidx103 = getelementptr inbounds [6 x i32], ptr %arrayidx102, i64 0, i64 2
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom104 = sext i32 %50 to i64
  %arrayidx105 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom104
  %arrayidx106 = getelementptr inbounds [6 x i32], ptr %arrayidx105, i64 0, i64 3
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom107 = sext i32 %51 to i64
  %arrayidx108 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom107
  %arrayidx109 = getelementptr inbounds [6 x i32], ptr %arrayidx108, i64 0, i64 4
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom110 = sext i32 %52 to i64
  %arrayidx111 = getelementptr inbounds [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %idxprom110
  %arrayidx112 = getelementptr inbounds [6 x i32], ptr %arrayidx111, i64 0, i64 5
  %call113 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx97, ptr noundef %arrayidx100, ptr noundef %arrayidx103, ptr noundef %arrayidx106, ptr noundef %arrayidx109, ptr noundef %arrayidx112)
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %zongshu) #3
  call void @llvm.lifetime.end.p0(i64 2400, ptr %shuzu) #3
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
attributes #3 = { nounwind }

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
