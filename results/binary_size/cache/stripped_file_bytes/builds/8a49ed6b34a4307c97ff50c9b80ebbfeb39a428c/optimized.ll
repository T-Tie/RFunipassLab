; ModuleID = '/tmp/tmpvkl9d2tz.cpp'
source_filename = "/tmp/tmpvkl9d2tz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [100 x [6 x i32]], align 16
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %sum = alloca i32, align 4
  %time = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 2400, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #3
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %time) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc35, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %t, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, 6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom
  %3 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [6 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %t, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %t, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [6 x i32], ptr %arrayidx7, i64 0, i64 0
  %6 = load i32, ptr %arrayidx8, align 8, !tbaa !5
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [6 x i32], ptr %arrayidx11, i64 0, i64 1
  %8 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %8, 0
  br i1 %cmp13, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [6 x i32], ptr %arrayidx16, i64 0, i64 2
  %10 = load i32, ptr %arrayidx17, align 8, !tbaa !5
  %cmp18 = icmp eq i32 %10, 0
  br i1 %cmp18, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %11 to i64
  %arrayidx21 = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [6 x i32], ptr %arrayidx21, i64 0, i64 3
  %12 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %12, 0
  br i1 %cmp23, label %land.lhs.true24, label %if.end

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %13 to i64
  %arrayidx26 = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [6 x i32], ptr %arrayidx26, i64 0, i64 4
  %14 = load i32, ptr %arrayidx27, align 8, !tbaa !5
  %cmp28 = icmp eq i32 %14, 0
  br i1 %cmp28, label %land.lhs.true29, label %if.end

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %15 to i64
  %arrayidx31 = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [6 x i32], ptr %arrayidx31, i64 0, i64 5
  %16 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %16, 0
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true29
  br label %for.end37

if.end:                                           ; preds = %land.lhs.true29, %land.lhs.true24, %land.lhs.true19, %land.lhs.true14, %land.lhs.true, %for.end
  %17 = load i32, ptr %sum, align 4, !tbaa !5
  %inc34 = add nsw i32 %17, 1
  store i32 %inc34, ptr %sum, align 4, !tbaa !5
  br label %for.inc35

for.inc35:                                        ; preds = %if.end
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc36 = add nsw i32 %18, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end37:                                        ; preds = %if.then, %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc68, %for.end37
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %20 = load i32, ptr %sum, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %19, %20
  br i1 %cmp39, label %for.body40, label %for.end70

for.body40:                                       ; preds = %for.cond38
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %21 to i64
  %arrayidx42 = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [6 x i32], ptr %arrayidx42, i64 0, i64 3
  %22 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %add = add nsw i32 %22, 12
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %23 to i64
  %arrayidx45 = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [6 x i32], ptr %arrayidx45, i64 0, i64 0
  %24 = load i32, ptr %arrayidx46, align 8, !tbaa !5
  %sub = sub nsw i32 %add, %24
  %sub47 = sub nsw i32 %sub, 1
  %mul = mul nsw i32 %sub47, 3600
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %25 to i64
  %arrayidx49 = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [6 x i32], ptr %arrayidx49, i64 0, i64 4
  %26 = load i32, ptr %arrayidx50, align 8, !tbaa !5
  %mul51 = mul nsw i32 %26, 60
  %add52 = add nsw i32 %mul, %mul51
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %27 to i64
  %arrayidx54 = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [6 x i32], ptr %arrayidx54, i64 0, i64 5
  %28 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %add56 = add nsw i32 %add52, %28
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %29 to i64
  %arrayidx58 = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [6 x i32], ptr %arrayidx58, i64 0, i64 1
  %30 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %mul60 = mul nsw i32 %30, 60
  %sub61 = sub nsw i32 3600, %mul60
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %31 to i64
  %arrayidx63 = getelementptr inbounds [100 x [6 x i32]], ptr %a, i64 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [6 x i32], ptr %arrayidx63, i64 0, i64 2
  %32 = load i32, ptr %arrayidx64, align 8, !tbaa !5
  %sub65 = sub nsw i32 %sub61, %32
  %add66 = add nsw i32 %add56, %sub65
  store i32 %add66, ptr %time, align 4, !tbaa !5
  %33 = load i32, ptr %time, align 4, !tbaa !5
  %call67 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %33)
  br label %for.inc68

for.inc68:                                        ; preds = %for.body40
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %inc69 = add nsw i32 %34, 1
  store i32 %inc69, ptr %i, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !13

for.end70:                                        ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %time) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 2400, ptr %a) #3
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
