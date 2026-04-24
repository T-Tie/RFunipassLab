; ModuleID = '/tmp/tmp67s67lgw.cpp'
source_filename = "/tmp/tmp67s67lgw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 40804, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 40804, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 40804, ptr %c) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x1, ptr noundef %y1)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
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
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc25, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp12 = icmp sle i32 %8, %9
  br i1 %cmp12, label %for.body13, label %for.end27

for.body13:                                       ; preds = %for.cond11
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc22, %for.body13
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp15 = icmp sle i32 %10, %11
  br i1 %cmp15, label %for.body16, label %for.end24

for.body16:                                       ; preds = %for.cond14
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [101 x [101 x i32]], ptr %b, i64 0, i64 %idxprom17
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [101 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
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
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc63, %for.end27
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp29 = icmp sle i32 %16, %17
  br i1 %cmp29, label %for.body30, label %for.end65

for.body30:                                       ; preds = %for.cond28
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc60, %for.body30
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp32 = icmp sle i32 %18, %19
  br i1 %cmp32, label %for.body33, label %for.end62

for.body33:                                       ; preds = %for.cond31
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %20 to i64
  %arrayidx35 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %idxprom34
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom36 = sext i32 %21 to i64
  %arrayidx37 = getelementptr inbounds [101 x i32], ptr %arrayidx35, i64 0, i64 %idxprom36
  store i32 0, ptr %arrayidx37, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc57, %for.body33
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %23 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp39 = icmp sle i32 %22, %23
  br i1 %cmp39, label %for.body40, label %for.end59

for.body40:                                       ; preds = %for.cond38
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %24 to i64
  %arrayidx42 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %idxprom41
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [101 x i32], ptr %arrayidx42, i64 0, i64 %idxprom43
  %26 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %27 to i64
  %arrayidx46 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom45
  %28 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom47 = sext i32 %28 to i64
  %arrayidx48 = getelementptr inbounds [101 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  %29 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %30 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom49 = sext i32 %30 to i64
  %arrayidx50 = getelementptr inbounds [101 x [101 x i32]], ptr %b, i64 0, i64 %idxprom49
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom51 = sext i32 %31 to i64
  %arrayidx52 = getelementptr inbounds [101 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %32 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %mul = mul nsw i32 %29, %32
  %add = add nsw i32 %26, %mul
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %33 to i64
  %arrayidx54 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %idxprom53
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom55 = sext i32 %34 to i64
  %arrayidx56 = getelementptr inbounds [101 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  store i32 %add, ptr %arrayidx56, align 4, !tbaa !5
  br label %for.inc57

for.inc57:                                        ; preds = %for.body40
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %inc58 = add nsw i32 %35, 1
  store i32 %inc58, ptr %k, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !15

for.end59:                                        ; preds = %for.cond38
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %inc61 = add nsw i32 %36, 1
  store i32 %inc61, ptr %j, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !16

for.end62:                                        ; preds = %for.cond31
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %inc64 = add nsw i32 %37, 1
  store i32 %inc64, ptr %i, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !17

for.end65:                                        ; preds = %for.cond28
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc85, %for.end65
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %39 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp67 = icmp sle i32 %38, %39
  br i1 %cmp67, label %for.body68, label %for.end87

for.body68:                                       ; preds = %for.cond66
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body68
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %41 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = sub nsw i32 %41, 1
  %cmp70 = icmp sle i32 %40, %sub
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %42 to i64
  %arrayidx73 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %idxprom72
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom74 = sext i32 %43 to i64
  %arrayidx75 = getelementptr inbounds [101 x i32], ptr %arrayidx73, i64 0, i64 %idxprom74
  %44 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %call76 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %44)
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %inc78 = add nsw i32 %45, 1
  store i32 %inc78, ptr %j, align 4, !tbaa !5
  br label %for.cond69, !llvm.loop !18

for.end79:                                        ; preds = %for.cond69
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom80 = sext i32 %46 to i64
  %arrayidx81 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %idxprom80
  %47 = load i32, ptr %y2, align 4, !tbaa !5
  %idxprom82 = sext i32 %47 to i64
  %arrayidx83 = getelementptr inbounds [101 x i32], ptr %arrayidx81, i64 0, i64 %idxprom82
  %48 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %call84 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %48)
  br label %for.inc85

for.inc85:                                        ; preds = %for.end79
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %inc86 = add nsw i32 %49, 1
  store i32 %inc86, ptr %i, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !19

for.end87:                                        ; preds = %for.cond66
  call void @llvm.lifetime.end.p0(i64 40804, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 40804, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 40804, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #3
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
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
