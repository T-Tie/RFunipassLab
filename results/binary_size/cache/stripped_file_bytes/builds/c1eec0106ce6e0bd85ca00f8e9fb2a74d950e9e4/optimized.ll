; ModuleID = '/tmp/tmpt07virzf.cpp'
source_filename = "/tmp/tmpt07virzf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %r = alloca i32, align 4
  %x = alloca i32, align 4
  %t = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  store ptr %4, ptr %saved_stack, align 8
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  store i64 %3, ptr %__vla_expr1, align 8
  store i32 0, ptr %t, align 4, !tbaa !5
  store i32 0, ptr %r, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %6 = load i32, ptr %r, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %c, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %c, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %10 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %11
  %12 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %13 = load i32, ptr %t, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %13, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body3
  %14 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom8 = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom8, %3
  %arrayidx9 = getelementptr inbounds i32, ptr %vla, i64 %15
  %16 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %arrayidx9, i64 %idxprom10
  %17 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load i32, ptr %r, align 4, !tbaa !5
  store i32 %18, ptr %r1, align 4, !tbaa !5
  %19 = load i32, ptr %c, align 4, !tbaa !5
  store i32 %19, ptr %c1, align 4, !tbaa !5
  store i32 1, ptr %t, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, ptr %c, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %c, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %21 = load i32, ptr %r, align 4, !tbaa !5
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, ptr %r, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end15:                                        ; preds = %for.cond
  store i32 0, ptr %t, align 4, !tbaa !5
  %22 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %22, 1
  store i32 %sub, ptr %r, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc39, %for.end15
  %23 = load i32, ptr %r, align 4, !tbaa !5
  %cmp17 = icmp sge i32 %23, 0
  br i1 %cmp17, label %for.body18, label %for.end41

for.body18:                                       ; preds = %for.cond16
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %sub19 = sub nsw i32 %24, 1
  store i32 %sub19, ptr %c, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc37, %for.body18
  %25 = load i32, ptr %c, align 4, !tbaa !5
  %cmp21 = icmp sge i32 %25, 0
  br i1 %cmp21, label %for.body22, label %for.end38

for.body22:                                       ; preds = %for.cond20
  %26 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom23 = sext i32 %26 to i64
  %27 = mul nsw i64 %idxprom23, %3
  %arrayidx24 = getelementptr inbounds i32, ptr %vla, i64 %27
  %28 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom25 = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %arrayidx24, i64 %idxprom25
  %call27 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx26)
  %29 = load i32, ptr %t, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %29, 0
  br i1 %cmp28, label %land.lhs.true29, label %if.end36

land.lhs.true29:                                  ; preds = %for.body22
  %30 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom30 = sext i32 %30 to i64
  %31 = mul nsw i64 %idxprom30, %3
  %arrayidx31 = getelementptr inbounds i32, ptr %vla, i64 %31
  %32 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom32 = sext i32 %32 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %arrayidx31, i64 %idxprom32
  %33 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true29
  %34 = load i32, ptr %r, align 4, !tbaa !5
  store i32 %34, ptr %r2, align 4, !tbaa !5
  %35 = load i32, ptr %c, align 4, !tbaa !5
  store i32 %35, ptr %c2, align 4, !tbaa !5
  store i32 1, ptr %t, align 4, !tbaa !5
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %land.lhs.true29, %for.body22
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %36 = load i32, ptr %c, align 4, !tbaa !5
  %dec = add nsw i32 %36, -1
  store i32 %dec, ptr %c, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !13

for.end38:                                        ; preds = %for.cond20
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %37 = load i32, ptr %r, align 4, !tbaa !5
  %dec40 = add nsw i32 %37, -1
  store i32 %dec40, ptr %r, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.end41:                                        ; preds = %for.cond16
  %38 = load i32, ptr %r2, align 4, !tbaa !5
  %39 = load i32, ptr %r1, align 4, !tbaa !5
  %sub42 = sub nsw i32 %38, %39
  %sub43 = sub nsw i32 %sub42, 1
  %40 = load i32, ptr %c2, align 4, !tbaa !5
  %41 = load i32, ptr %c1, align 4, !tbaa !5
  %sub44 = sub nsw i32 %40, %41
  %sub45 = sub nsw i32 %sub44, 1
  %mul = mul nsw i32 %sub43, %sub45
  store i32 %mul, ptr %x, align 4, !tbaa !5
  %42 = load i32, ptr %x, align 4, !tbaa !5
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %42)
  store i32 0, ptr %retval, align 4
  %43 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %43)
  call void @llvm.lifetime.end.p0(i64 4, ptr %c2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
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
