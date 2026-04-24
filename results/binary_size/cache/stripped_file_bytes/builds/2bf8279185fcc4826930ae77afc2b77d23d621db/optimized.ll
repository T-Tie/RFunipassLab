; ModuleID = '/tmp/tmpm_s4q5t2.cpp'
source_filename = "/tmp/tmpm_s4q5t2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %c) #4
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 40000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x1, ptr noundef %y1)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x2, ptr noundef %y2)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc25, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %8, %9
  br i1 %cmp12, label %for.body13, label %for.end27

for.body13:                                       ; preds = %for.cond11
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc22, %for.body13
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %10, %11
  br i1 %cmp15, label %for.body16, label %for.end24

for.body16:                                       ; preds = %for.cond14
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %idxprom17
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %call21 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx20)
  br label %for.inc22

for.inc22:                                        ; preds = %for.body16
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc23 = add nsw i32 %14, 1
  store i32 %inc23, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !13

for.end24:                                        ; preds = %for.cond14
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %15, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !14

for.end27:                                        ; preds = %for.cond11
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc67, %for.end27
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %16, %17
  br i1 %cmp29, label %for.body30, label %for.end69

for.body30:                                       ; preds = %for.cond28
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc63, %for.body30
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %18, %19
  br i1 %cmp32, label %for.body33, label %for.end65

for.body33:                                       ; preds = %for.cond31
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc49, %for.body33
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %21 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %20, %21
  br i1 %cmp35, label %for.body36, label %for.end51

for.body36:                                       ; preds = %for.cond34
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom37
  %23 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom39 = sext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %arrayidx38, i64 0, i64 %idxprom39
  %24 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom41 = sext i32 %25 to i64
  %arrayidx42 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %idxprom41
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom43 = sext i32 %26 to i64
  %arrayidx44 = getelementptr inbounds [100 x i32], ptr %arrayidx42, i64 0, i64 %idxprom43
  %27 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %mul = mul nsw i32 %24, %27
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %28 to i64
  %arrayidx46 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom45
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom47 = sext i32 %29 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  %30 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %add = add nsw i32 %30, %mul
  store i32 %add, ptr %arrayidx48, align 4, !tbaa !5
  br label %for.inc49

for.inc49:                                        ; preds = %for.body36
  %31 = load i32, ptr %k, align 4, !tbaa !5
  %inc50 = add nsw i32 %31, 1
  store i32 %inc50, ptr %k, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !15

for.end51:                                        ; preds = %for.cond34
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %33 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = sub nsw i32 %33, 1
  %cmp52 = icmp eq i32 %32, %sub
  br i1 %cmp52, label %if.then, label %if.else

if.then:                                          ; preds = %for.end51
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %34 to i64
  %arrayidx54 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom53
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom55 = sext i32 %35 to i64
  %arrayidx56 = getelementptr inbounds [100 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  %36 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %36)
  br label %if.end

if.else:                                          ; preds = %for.end51
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %37 to i64
  %arrayidx59 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom58
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom60 = sext i32 %38 to i64
  %arrayidx61 = getelementptr inbounds [100 x i32], ptr %arrayidx59, i64 0, i64 %idxprom60
  %39 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %39)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc63

for.inc63:                                        ; preds = %if.end
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %inc64 = add nsw i32 %40, 1
  store i32 %inc64, ptr %j, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !16

for.end65:                                        ; preds = %for.cond31
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %for.inc67

for.inc67:                                        ; preds = %for.end65
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %inc68 = add nsw i32 %41, 1
  store i32 %inc68, ptr %i, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !17

for.end69:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 40000, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 40000, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #4
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
!17 = distinct !{!17, !10, !11}
