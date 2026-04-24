; ModuleID = '/tmp/tmp3_1lbbt6.cpp'
source_filename = "/tmp/tmp3_1lbbt6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [1000 x [1000 x i32]], align 16
  %j = alloca i32, align 4
  %m = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %k = alloca [100 x i32], align 16
  %p = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  %s = alloca i32, align 4
  %g = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4000000, ptr %a) #4
  call void @llvm.memset.p0.i64(ptr align 16 %a, i8 0, i64 4000000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #4
  store i32 0, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %g) #4
  store i32 0, ptr %g, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc28, %for.end9
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body12, label %for.end30

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc25, %for.body12
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end27

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom16
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body15
  %15 = load i32, ptr %s, align 4, !tbaa !5
  %add = add nsw i32 %15, 1
  store i32 %add, ptr %s, align 4, !tbaa !5
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %17 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %m, i64 0, i64 %idxprom21
  store i32 %16, ptr %arrayidx22, align 4, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom23
  store i32 %18, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.end27

if.end:                                           ; preds = %for.body15
  br label %for.inc25

for.inc25:                                        ; preds = %if.end
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %20, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end27:                                        ; preds = %if.then, %for.cond13
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %inc29 = add nsw i32 %21, 1
  store i32 %inc29, ptr %j, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end30:                                        ; preds = %for.cond10
  %22 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %22, 1
  store i32 %sub, ptr %j, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc52, %for.end30
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %23, 0
  br i1 %cmp32, label %for.body33, label %for.end54

for.body33:                                       ; preds = %for.cond31
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %sub34 = sub nsw i32 %24, 1
  store i32 %sub34, ptr %i, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc50, %for.body33
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %cmp36 = icmp sgt i32 %25, 0
  br i1 %cmp36, label %for.body37, label %for.end51

for.body37:                                       ; preds = %for.cond35
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom38 = sext i32 %26 to i64
  %arrayidx39 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom38
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %27 to i64
  %arrayidx41 = getelementptr inbounds [1000 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  %28 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %28, 0
  br i1 %cmp42, label %if.then43, label %if.end49

if.then43:                                        ; preds = %for.body37
  %29 = load i32, ptr %g, align 4, !tbaa !5
  %add44 = add nsw i32 %29, 1
  store i32 %add44, ptr %g, align 4, !tbaa !5
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %31 = load i32, ptr %g, align 4, !tbaa !5
  %idxprom45 = sext i32 %31 to i64
  %arrayidx46 = getelementptr inbounds [100 x i32], ptr %p, i64 0, i64 %idxprom45
  store i32 %30, ptr %arrayidx46, align 4, !tbaa !5
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %33 = load i32, ptr %g, align 4, !tbaa !5
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom47
  store i32 %32, ptr %arrayidx48, align 4, !tbaa !5
  br label %for.end51

if.end49:                                         ; preds = %for.body37
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %34, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !15

for.end51:                                        ; preds = %if.then43, %for.cond35
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %dec53 = add nsw i32 %35, -1
  store i32 %dec53, ptr %j, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !16

for.end54:                                        ; preds = %for.cond31
  %arrayidx55 = getelementptr inbounds [100 x i32], ptr %p, i64 0, i64 1
  %36 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %arrayidx56 = getelementptr inbounds [100 x i32], ptr %m, i64 0, i64 1
  %37 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %sub57 = sub nsw i32 %36, %37
  %sub58 = sub nsw i32 %sub57, 1
  %arrayidx59 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 1
  %38 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %arrayidx60 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 1
  %39 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %sub61 = sub nsw i32 %38, %39
  %sub62 = sub nsw i32 %sub61, 1
  %mul = mul nsw i32 %sub58, %sub62
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr %g) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4000000, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
