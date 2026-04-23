; ModuleID = '/tmp/tmppxx7gaum.cpp'
source_filename = "/tmp/tmppxx7gaum.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@s = dso_local global [1000 x [1000 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %area = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %area) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %k, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr @s, i64 0, i64 %idxprom
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc34, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body12, label %for.end36

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.body12
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [1000 x i32]], ptr @s, i64 0, i64 %idxprom16
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body15
  %15 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %15, ptr %a, align 4, !tbaa !5
  %16 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %16, ptr %b, align 4, !tbaa !5
  br label %for.end23

if.end:                                           ; preds = %for.body15
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, ptr %k, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end23:                                        ; preds = %if.then, %for.cond13
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %18, %19
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %for.end23
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds [1000 x [1000 x i32]], ptr @s, i64 0, i64 %idxprom26
  %21 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %21, 1
  %idxprom28 = sext i32 %sub to i64
  %arrayidx29 = getelementptr inbounds [1000 x i32], ptr %arrayidx27, i64 0, i64 %idxprom28
  %22 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %22, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then25
  br label %for.end36

if.end32:                                         ; preds = %if.then25
  br label %if.end33

if.else:                                          ; preds = %for.end23
  br label %for.end36

if.end33:                                         ; preds = %if.end32
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc35 = add nsw i32 %23, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end36:                                        ; preds = %if.else, %if.then31, %for.cond10
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %sub37 = sub nsw i32 %24, 1
  store i32 %sub37, ptr %i, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc64, %for.end36
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %cmp39 = icmp sge i32 %25, 0
  br i1 %cmp39, label %for.body40, label %for.end66

for.body40:                                       ; preds = %for.cond38
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %sub41 = sub nsw i32 %26, 1
  store i32 %sub41, ptr %k, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc52, %for.body40
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %cmp43 = icmp sge i32 %27, 0
  br i1 %cmp43, label %for.body44, label %for.end53

for.body44:                                       ; preds = %for.cond42
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %28 to i64
  %arrayidx46 = getelementptr inbounds [1000 x [1000 x i32]], ptr @s, i64 0, i64 %idxprom45
  %29 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom47 = sext i32 %29 to i64
  %arrayidx48 = getelementptr inbounds [1000 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  %30 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %30, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %for.body44
  %31 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %31, ptr %c, align 4, !tbaa !5
  %32 = load i32, ptr %k, align 4, !tbaa !5
  store i32 %32, ptr %d, align 4, !tbaa !5
  br label %for.end53

if.end51:                                         ; preds = %for.body44
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %33 = load i32, ptr %k, align 4, !tbaa !5
  %dec = add nsw i32 %33, -1
  store i32 %dec, ptr %k, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !15

for.end53:                                        ; preds = %if.then50, %for.cond42
  %34 = load i32, ptr %k, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %34, -1
  br i1 %cmp54, label %if.then55, label %if.else62

if.then55:                                        ; preds = %for.end53
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %35 to i64
  %arrayidx57 = getelementptr inbounds [1000 x [1000 x i32]], ptr @s, i64 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [1000 x i32], ptr %arrayidx57, i64 0, i64 0
  %36 = load i32, ptr %arrayidx58, align 16, !tbaa !5
  %cmp59 = icmp eq i32 %36, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.then55
  br label %for.end66

if.end61:                                         ; preds = %if.then55
  br label %if.end63

if.else62:                                        ; preds = %for.end53
  br label %for.end66

if.end63:                                         ; preds = %if.end61
  br label %for.inc64

for.inc64:                                        ; preds = %if.end63
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %dec65 = add nsw i32 %37, -1
  store i32 %dec65, ptr %i, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !16

for.end66:                                        ; preds = %if.else62, %if.then60, %for.cond38
  %38 = load i32, ptr %d, align 4, !tbaa !5
  %39 = load i32, ptr %b, align 4, !tbaa !5
  %sub67 = sub nsw i32 %38, %39
  %sub68 = sub nsw i32 %sub67, 1
  %40 = load i32, ptr %c, align 4, !tbaa !5
  %41 = load i32, ptr %a, align 4, !tbaa !5
  %sub69 = sub nsw i32 %40, %41
  %sub70 = sub nsw i32 %sub69, 1
  %mul = mul nsw i32 %sub68, %sub70
  store i32 %mul, ptr %area, align 4, !tbaa !5
  %42 = load i32, ptr %area, align 4, !tbaa !5
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %42)
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %area) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
