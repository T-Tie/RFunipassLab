; ModuleID = '/tmp/tmpols9p1kl.cpp'
source_filename = "/tmp/tmpols9p1kl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %s = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %m, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  store ptr %4, ptr %saved_stack, align 8
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  store i64 %3, ptr %__vla_expr1, align 8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %m, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %11
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %15 = load i32, ptr %m, align 4, !tbaa !5
  %16 = zext i32 %15 to i64
  %vla10 = alloca i32, i64 %16, align 16
  store i64 %16, ptr %__vla_expr2, align 8
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %18 = zext i32 %17 to i64
  %vla11 = alloca i32, i64 %18, align 16
  store i64 %18, ptr %__vla_expr3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #4
  store i32 0, ptr %s, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc39, %for.end9
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %20 = load i32, ptr %m, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %19, %20
  br i1 %cmp13, label %for.body14, label %for.end41

for.body14:                                       ; preds = %for.cond12
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %21 to i64
  %22 = mul nsw i64 %idxprom15, %3
  %arrayidx16 = getelementptr inbounds i32, ptr %vla, i64 %22
  %arrayidx17 = getelementptr inbounds i32, ptr %arrayidx16, i64 0
  %23 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %vla10, i64 %idxprom18
  store i32 %23, ptr %arrayidx19, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc36, %for.body14
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %25, %26
  br i1 %cmp21, label %for.body22, label %for.end38

for.body22:                                       ; preds = %for.cond20
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %27 to i64
  %28 = mul nsw i64 %idxprom23, %3
  %arrayidx24 = getelementptr inbounds i32, ptr %vla, i64 %28
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %arrayidx24, i64 %idxprom25
  %30 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %31 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %vla10, i64 %idxprom27
  %32 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %30, %32
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.body22
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %33 to i64
  %34 = mul nsw i64 %idxprom30, %3
  %arrayidx31 = getelementptr inbounds i32, ptr %vla, i64 %34
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom32 = sext i32 %35 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %arrayidx31, i64 %idxprom32
  %36 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %37 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %vla10, i64 %idxprom34
  store i32 %36, ptr %arrayidx35, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body22
  br label %for.inc36

for.inc36:                                        ; preds = %if.end
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %inc37 = add nsw i32 %38, 1
  store i32 %inc37, ptr %j, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !13

for.end38:                                        ; preds = %for.cond20
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %inc40 = add nsw i32 %39, 1
  store i32 %inc40, ptr %i, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !14

for.end41:                                        ; preds = %for.cond12
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc71, %for.end41
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %41 = load i32, ptr %n, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %40, %41
  br i1 %cmp43, label %for.body44, label %for.end73

for.body44:                                       ; preds = %for.cond42
  %42 = mul nsw i64 0, %3
  %arrayidx45 = getelementptr inbounds i32, ptr %vla, i64 %42
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %43 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %arrayidx45, i64 %idxprom46
  %44 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom48 = sext i32 %45 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %vla11, i64 %idxprom48
  store i32 %44, ptr %arrayidx49, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc68, %for.body44
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %47 = load i32, ptr %m, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %46, %47
  br i1 %cmp51, label %for.body52, label %for.end70

for.body52:                                       ; preds = %for.cond50
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %48 to i64
  %49 = mul nsw i64 %idxprom53, %3
  %arrayidx54 = getelementptr inbounds i32, ptr %vla, i64 %49
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom55 = sext i32 %50 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %arrayidx54, i64 %idxprom55
  %51 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom57 = sext i32 %52 to i64
  %arrayidx58 = getelementptr inbounds i32, ptr %vla11, i64 %idxprom57
  %53 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %51, %53
  br i1 %cmp59, label %if.then60, label %if.end67

if.then60:                                        ; preds = %for.body52
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %54 to i64
  %55 = mul nsw i64 %idxprom61, %3
  %arrayidx62 = getelementptr inbounds i32, ptr %vla, i64 %55
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom63 = sext i32 %56 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %arrayidx62, i64 %idxprom63
  %57 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom65 = sext i32 %58 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %vla11, i64 %idxprom65
  store i32 %57, ptr %arrayidx66, align 4, !tbaa !5
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %for.body52
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %inc69 = add nsw i32 %59, 1
  store i32 %inc69, ptr %i, align 4, !tbaa !5
  br label %for.cond50, !llvm.loop !15

for.end70:                                        ; preds = %for.cond50
  br label %for.inc71

for.inc71:                                        ; preds = %for.end70
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %inc72 = add nsw i32 %60, 1
  store i32 %inc72, ptr %j, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !16

for.end73:                                        ; preds = %for.cond42
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc100, %for.end73
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %62 = load i32, ptr %m, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %61, %62
  br i1 %cmp75, label %for.body76, label %for.end102

for.body76:                                       ; preds = %for.cond74
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc97, %for.body76
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %64 = load i32, ptr %n, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %63, %64
  br i1 %cmp78, label %for.body79, label %for.end99

for.body79:                                       ; preds = %for.cond77
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom80 = sext i32 %65 to i64
  %66 = mul nsw i64 %idxprom80, %3
  %arrayidx81 = getelementptr inbounds i32, ptr %vla, i64 %66
  %67 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom82 = sext i32 %67 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %arrayidx81, i64 %idxprom82
  %68 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %69 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom84 = sext i32 %69 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %vla10, i64 %idxprom84
  %70 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %cmp86 = icmp eq i32 %68, %70
  br i1 %cmp86, label %land.lhs.true, label %if.end96

land.lhs.true:                                    ; preds = %for.body79
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom87 = sext i32 %71 to i64
  %72 = mul nsw i64 %idxprom87, %3
  %arrayidx88 = getelementptr inbounds i32, ptr %vla, i64 %72
  %73 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom89 = sext i32 %73 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %arrayidx88, i64 %idxprom89
  %74 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %75 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom91 = sext i32 %75 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %vla11, i64 %idxprom91
  %76 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %cmp93 = icmp eq i32 %74, %76
  br i1 %cmp93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %land.lhs.true
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %78 = load i32, ptr %j, align 4, !tbaa !5
  %call95 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %77, i32 noundef %78)
  %79 = load i32, ptr %s, align 4, !tbaa !5
  %add = add nsw i32 %79, 1
  store i32 %add, ptr %s, align 4, !tbaa !5
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %land.lhs.true, %for.body79
  br label %for.inc97

for.inc97:                                        ; preds = %if.end96
  %80 = load i32, ptr %j, align 4, !tbaa !5
  %inc98 = add nsw i32 %80, 1
  store i32 %inc98, ptr %j, align 4, !tbaa !5
  br label %for.cond77, !llvm.loop !17

for.end99:                                        ; preds = %for.cond77
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %inc101 = add nsw i32 %81, 1
  store i32 %inc101, ptr %i, align 4, !tbaa !5
  br label %for.cond74, !llvm.loop !18

for.end102:                                       ; preds = %for.cond74
  %82 = load i32, ptr %s, align 4, !tbaa !5
  %cmp103 = icmp eq i32 %82, 0
  br i1 %cmp103, label %if.then104, label %if.end106

if.then104:                                       ; preds = %for.end102
  %call105 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %for.end102
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #4
  %83 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %83)
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  %84 = load i32, ptr %retval, align 4
  ret i32 %84
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
