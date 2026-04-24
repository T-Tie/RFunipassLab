; ModuleID = '/tmp/tmp313i9ndm.cpp'
source_filename = "/tmp/tmp313i9ndm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %h1 = alloca [100 x i32], align 16
  %h2 = alloca [100 x i32], align 16
  %m1 = alloca [100 x i32], align 16
  %m2 = alloca [100 x i32], align 16
  %s1 = alloca [100 x i32], align 16
  %s2 = alloca [100 x i32], align 16
  %n = alloca i32, align 4
  %add1 = alloca i32, align 4
  %add2 = alloca i32, align 4
  %cha = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 400, ptr %h1) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %h2) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %m1) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %m2) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %s1) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %s2) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %h1, i64 0, i64 %idxprom
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %m1, i64 0, i64 %idxprom1
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], ptr %s1, i64 0, i64 %idxprom3
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %h2, i64 0, i64 %idxprom5
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %m2, i64 0, i64 %idxprom7
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %s2, i64 0, i64 %idxprom9
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4, ptr noundef %arrayidx6, ptr noundef %arrayidx8, ptr noundef %arrayidx10)
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %6 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %h1, i64 0, i64 %idxprom11
  %7 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], ptr %h2, i64 0, i64 %idxprom13
  %9 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %add = add nsw i32 %7, %9
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [100 x i32], ptr %m1, i64 0, i64 %idxprom15
  %11 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %add17 = add nsw i32 %add, %11
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %m2, i64 0, i64 %idxprom18
  %13 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %add20 = add nsw i32 %add17, %13
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %s1, i64 0, i64 %idxprom21
  %15 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %add23 = add nsw i32 %add20, %15
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %s2, i64 0, i64 %idxprom24
  %17 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %add26 = add nsw i32 %add23, %17
  %cmp = icmp eq i32 %add26, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %add1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %add2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %cha) #3
  %19 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %19, ptr %n, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %20, %21
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [100 x i32], ptr %h2, i64 0, i64 %idxprom28
  %23 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %add30 = add nsw i32 %23, 12
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %24 to i64
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr %h2, i64 0, i64 %idxprom31
  store i32 %add30, ptr %arrayidx32, align 4, !tbaa !5
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds [100 x i32], ptr %h1, i64 0, i64 %idxprom33
  %26 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %mul = mul nsw i32 %26, 3600
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [100 x i32], ptr %m1, i64 0, i64 %idxprom35
  %28 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %mul37 = mul nsw i32 %28, 60
  %add38 = add nsw i32 %mul, %mul37
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %s1, i64 0, i64 %idxprom39
  %30 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %add41 = add nsw i32 %add38, %30
  store i32 %add41, ptr %add1, align 4, !tbaa !5
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %31 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %h2, i64 0, i64 %idxprom42
  %32 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %mul44 = mul nsw i32 %32, 3600
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %33 to i64
  %arrayidx46 = getelementptr inbounds [100 x i32], ptr %m2, i64 0, i64 %idxprom45
  %34 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %mul47 = mul nsw i32 %34, 60
  %add48 = add nsw i32 %mul44, %mul47
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %35 to i64
  %arrayidx50 = getelementptr inbounds [100 x i32], ptr %s2, i64 0, i64 %idxprom49
  %36 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %add51 = add nsw i32 %add48, %36
  store i32 %add51, ptr %add2, align 4, !tbaa !5
  %37 = load i32, ptr %add2, align 4, !tbaa !5
  %38 = load i32, ptr %add1, align 4, !tbaa !5
  %sub = sub nsw i32 %37, %38
  store i32 %sub, ptr %cha, align 4, !tbaa !5
  %39 = load i32, ptr %cha, align 4, !tbaa !5
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %39)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %inc53 = add nsw i32 %40, 1
  store i32 %inc53, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cha) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %add2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %add1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %s2) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %s1) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %m2) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %m1) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %h2) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %h1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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
