; ModuleID = '/tmp/tmp_hydg7f4.cpp'
source_filename = "/tmp/tmp_hydg7f4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  %lenth1 = alloca i32, align 4
  %lenth2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %c) #4
  %arraydecay = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay1)
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %c, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay3)
  call void @llvm.lifetime.start.p0(i64 4, ptr %lenth1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lenth2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #4
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #5
  %conv = trunc i64 %call6 to i32
  store i32 %conv, ptr %lenth1, align 4, !tbaa !5
  %arraydecay7 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 0
  %call8 = call i64 @strlen(ptr noundef %arraydecay7) #5
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %lenth2, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %lenth1, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %2, ptr %t, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %if.end, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %lenth2, align 4, !tbaa !5
  %sub11 = sub nsw i32 %4, 1
  %cmp12 = icmp sle i32 %3, %sub11
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond10
  %5 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv14 = sext i8 %6 to i32
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %7 to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 %idxprom15
  %8 = load i8, ptr %arrayidx16, align 1, !tbaa !9
  %conv17 = sext i8 %8 to i32
  %cmp18 = icmp eq i32 %conv14, %conv17
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %for.body13
  %9 = load i32, ptr %t, align 4, !tbaa !5
  %add = add nsw i32 %9, 1
  store i32 %add, ptr %t, align 4, !tbaa !5
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %add19 = add nsw i32 %10, 1
  store i32 %add19, ptr %j, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body13
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %for.cond10, !llvm.loop !10

for.end:                                          ; preds = %if.else, %for.cond10
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %12 = load i32, ptr %lenth2, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %11, %12
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.end
  br label %for.end23

if.end22:                                         ; preds = %for.end
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end23:                                        ; preds = %if.then21, %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc31, %for.end23
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %15 = load i32, ptr %lenth2, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %14, %15
  br i1 %cmp25, label %for.body26, label %for.end34

for.body26:                                       ; preds = %for.cond24
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %16 to i64
  %arrayidx28 = getelementptr inbounds [256 x i8], ptr %c, i64 0, i64 %idxprom27
  %17 = load i8, ptr %arrayidx28, align 1, !tbaa !9
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom29
  store i8 %17, ptr %arrayidx30, align 1, !tbaa !9
  br label %for.inc31

for.inc31:                                        ; preds = %for.body26
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %inc32 = add nsw i32 %19, 1
  store i32 %inc32, ptr %j, align 4, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %20, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !14

for.end34:                                        ; preds = %for.cond24
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc42, %for.end34
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %22 = load i32, ptr %lenth1, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %21, %22
  br i1 %cmp36, label %for.body37, label %for.end44

for.body37:                                       ; preds = %for.cond35
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %23 to i64
  %arrayidx39 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom38
  %24 = load i8, ptr %arrayidx39, align 1, !tbaa !9
  %conv40 = sext i8 %24 to i32
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv40)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body37
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc43 = add nsw i32 %25, 1
  store i32 %inc43, ptr %i, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !15

for.end44:                                        ; preds = %for.cond35
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lenth2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lenth1) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %a) #4
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
