; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0omj__db.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [1000 x [7 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i32, align 4
  %q = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 28000, ptr noundef align 16 %sz) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %s) #3
  store i32 0, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %q) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc35, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, 6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1000 x [7 x i32]], ptr %sz, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %1 to i64
  %arrayidx5 = getelementptr inbounds [7 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %idxprom6 = sext i32 %0 to i64
  %arrayidx7 = getelementptr inbounds [1000 x [7 x i32]], ptr %sz, i64 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [7 x i32], ptr %arrayidx7, i64 0, i64 1
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %2, 0
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %arrayidx12 = getelementptr inbounds [7 x i32], ptr %arrayidx7, i64 0, i64 2
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %3, 0
  br i1 %cmp13, label %land.lhs.true14, label %if.else

land.lhs.true14:                                  ; preds = %land.lhs.true
  %arrayidx17 = getelementptr inbounds [7 x i32], ptr %arrayidx7, i64 0, i64 3
  %4 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %4, 0
  br i1 %cmp18, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %arrayidx22 = getelementptr inbounds [7 x i32], ptr %arrayidx7, i64 0, i64 4
  %5 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %5, 0
  br i1 %cmp23, label %land.lhs.true24, label %if.else

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %arrayidx27 = getelementptr inbounds [7 x i32], ptr %arrayidx7, i64 0, i64 5
  %6 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %6, 0
  br i1 %cmp28, label %land.lhs.true29, label %if.else

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %7 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %7, 0
  br i1 %cmp33, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true29
  br label %for.end37

if.else:                                          ; preds = %land.lhs.true29, %land.lhs.true24, %land.lhs.true19, %land.lhs.true14, %land.lhs.true, %for.end
  %8 = load i32, ptr %s, align 4, !tbaa !5
  %inc34 = add nsw i32 %8, 1
  store i32 %inc34, ptr %s, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc35

for.inc35:                                        ; preds = %if.end
  %inc36 = add nsw i32 %0, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end37:                                        ; preds = %if.then, %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc73, %for.end37
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %10 = load i32, ptr %s, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %9, %10
  br i1 %cmp39, label %for.body40, label %for.end75

for.body40:                                       ; preds = %for.cond38
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc69, %for.body40
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %11, 6
  br i1 %cmp42, label %for.body43, label %for.end71

for.body43:                                       ; preds = %for.cond41
  %idxprom44 = sext i32 %9 to i64
  %arrayidx45 = getelementptr inbounds [1000 x [7 x i32]], ptr %sz, i64 0, i64 %idxprom44
  %12 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %mul = mul nsw i32 %12, 3600
  %arrayidx49 = getelementptr inbounds [7 x i32], ptr %arrayidx45, i64 0, i64 1
  %13 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %mul50 = mul nsw i32 %13, 60
  %add = add nsw i32 %mul, %mul50
  %arrayidx53 = getelementptr inbounds [7 x i32], ptr %arrayidx45, i64 0, i64 2
  %14 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %add54 = add nsw i32 %add, %14
  %arrayidx57 = getelementptr inbounds [7 x i32], ptr %arrayidx45, i64 0, i64 3
  %15 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %add58 = add nsw i32 %15, 12
  %mul59 = mul nsw i32 %add58, 3600
  %arrayidx62 = getelementptr inbounds [7 x i32], ptr %arrayidx45, i64 0, i64 4
  %16 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %mul63 = mul nsw i32 %16, 60
  %add64 = add nsw i32 %mul59, %mul63
  %arrayidx67 = getelementptr inbounds [7 x i32], ptr %arrayidx45, i64 0, i64 5
  %17 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %add68 = add nsw i32 %add64, %17
  %sub = sub nsw i32 %add68, %add54
  store i32 %sub, ptr %q, align 4, !tbaa !5
  br label %for.inc69

for.inc69:                                        ; preds = %for.body43
  %inc70 = add nsw i32 %11, 1
  store i32 %inc70, ptr %j, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !13

for.end71:                                        ; preds = %for.cond41
  %18 = load i32, ptr %q, align 4, !tbaa !5
  %call72 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %18)
  store i32 0, ptr %q, align 4, !tbaa !5
  br label %for.inc73

for.inc73:                                        ; preds = %for.end71
  %inc74 = add nsw i32 %9, 1
  store i32 %inc74, ptr %i, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !14

for.end75:                                        ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %q) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %s) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 28000, ptr noundef %sz) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
