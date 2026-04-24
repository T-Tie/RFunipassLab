; ModuleID = '/tmp/tmpw637i79r.cpp'
source_filename = "/tmp/tmpw637i79r.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  %c = alloca [100 x i32], align 16
  %d = alloca [100 x i32], align 16
  %e = alloca [100 x i32], align 16
  %f = alloca [100 x i32], align 16
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %d) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #3
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom1
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], ptr %c, i64 0, i64 %idxprom3
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom5
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %e, i64 0, i64 %idxprom7
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %f, i64 0, i64 %idxprom9
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4, ptr noundef %arrayidx6, ptr noundef %arrayidx8, ptr noundef %arrayidx10)
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom11
  %8 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %8, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom14
  %10 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %add = add nsw i32 %10, 12
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom16
  store i32 %add, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then, %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc63, %for.end
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom19
  %14 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp ne i32 %14, 0
  br i1 %cmp21, label %for.body22, label %for.end65

for.body22:                                       ; preds = %for.cond18
  br label %while.cond

while.cond:                                       ; preds = %if.end61, %for.body22
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom23
  %16 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %17 to i64
  %arrayidx26 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom25
  %18 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp ne i32 %16, %18
  br i1 %cmp27, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom28
  %20 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %e, i64 0, i64 %idxprom30
  %22 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp ne i32 %20, %22
  br i1 %cmp32, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %23 to i64
  %arrayidx34 = getelementptr inbounds [100 x i32], ptr %c, i64 0, i64 %idxprom33
  %24 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %25 to i64
  %arrayidx36 = getelementptr inbounds [100 x i32], ptr %f, i64 0, i64 %idxprom35
  %26 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %cmp37 = icmp ne i32 %24, %26
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %27 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp37, %lor.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [100 x i32], ptr %c, i64 0, i64 %idxprom38
  %29 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %29, 60
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %while.body
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %c, i64 0, i64 %idxprom42
  store i32 0, ptr %arrayidx43, align 4, !tbaa !5
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom44
  %32 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %inc46 = add nsw i32 %32, 1
  store i32 %inc46, ptr %arrayidx45, align 4, !tbaa !5
  br label %if.end51

if.else:                                          ; preds = %while.body
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %c, i64 0, i64 %idxprom47
  %34 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %inc49 = add nsw i32 %34, 1
  store i32 %inc49, ptr %arrayidx48, align 4, !tbaa !5
  %35 = load i32, ptr %sum, align 4, !tbaa !5
  %inc50 = add nsw i32 %35, 1
  store i32 %inc50, ptr %sum, align 4, !tbaa !5
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then41
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom52 = sext i32 %36 to i64
  %arrayidx53 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom52
  %37 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %37, 60
  br i1 %cmp54, label %if.then55, label %if.end61

if.then55:                                        ; preds = %if.end51
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %38 to i64
  %arrayidx57 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom56
  store i32 0, ptr %arrayidx57, align 4, !tbaa !5
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %39 to i64
  %arrayidx59 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom58
  %40 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %inc60 = add nsw i32 %40, 1
  store i32 %inc60, ptr %arrayidx59, align 4, !tbaa !5
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %if.end51
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %lor.end
  %41 = load i32, ptr %sum, align 4, !tbaa !5
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %41)
  store i32 0, ptr %sum, align 4, !tbaa !5
  br label %for.inc63

for.inc63:                                        ; preds = %while.end
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %inc64 = add nsw i32 %42, 1
  store i32 %inc64, ptr %i, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !13

for.end65:                                        ; preds = %for.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %a) #3
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
