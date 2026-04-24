; ModuleID = '/tmp/tmp32bltf1x.cpp'
source_filename = "/tmp/tmp32bltf1x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s1 = alloca [256 x i8], align 16
  %s2 = alloca [256 x i8], align 16
  %s3 = alloca [256 x i8], align 16
  %t = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca i32, align 4
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %l3 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr %s1) #5
  call void @llvm.memset.p0.i64(ptr align 16 %s1, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr %s2) #5
  call void @llvm.memset.p0.i64(ptr align 16 %s2, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr %s3) #5
  call void @llvm.memset.p0.i64(ptr align 16 %s3, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr %t) #5
  call void @llvm.memset.p0.i64(ptr align 16 %t, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l3) #5
  %arraydecay = getelementptr inbounds [256 x i8], ptr %s1, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %s2, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay1)
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %s3, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay3)
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %s1, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #6
  %conv = trunc i64 %call6 to i32
  store i32 %conv, ptr %l1, align 4, !tbaa !5
  %arraydecay7 = getelementptr inbounds [256 x i8], ptr %s2, i64 0, i64 0
  %call8 = call i64 @strlen(ptr noundef %arraydecay7) #6
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %l2, align 4, !tbaa !5
  %arraydecay10 = getelementptr inbounds [256 x i8], ptr %s3, i64 0, i64 0
  %call11 = call i64 @strlen(ptr noundef %arraydecay10) #6
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, ptr %l3, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end43, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %l1, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %l2, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %2, %3
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %4, %5
  %6 = load i32, ptr %l1, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %add, %6
  br i1 %cmp16, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body15
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %add17 = add nsw i32 %7, %8
  %idxprom = sext i32 %add17 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %s1, i64 0, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv18 = sext i8 %9 to i32
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], ptr %s2, i64 0, i64 %idxprom19
  %11 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %conv21 = sext i8 %11 to i32
  %cmp22 = icmp ne i32 %conv18, %conv21
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body15
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !10

for.end:                                          ; preds = %if.then, %for.cond13
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %14 = load i32, ptr %l2, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %13, %14
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.end
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc33, %if.then24
  %15 = load i32, ptr %s, align 4, !tbaa !5
  %16 = load i32, ptr %l3, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %15, %16
  br i1 %cmp26, label %for.body27, label %for.end35

for.body27:                                       ; preds = %for.cond25
  %17 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], ptr %s3, i64 0, i64 %idxprom28
  %18 = load i8, ptr %arrayidx29, align 1, !tbaa !9
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds [256 x i8], ptr %t, i64 0, i64 %idxprom30
  store i8 %18, ptr %arrayidx31, align 1, !tbaa !9
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %inc32 = add nsw i32 %20, 1
  store i32 %inc32, ptr %k, align 4, !tbaa !5
  br label %for.inc33

for.inc33:                                        ; preds = %for.body27
  %21 = load i32, ptr %s, align 4, !tbaa !5
  %inc34 = add nsw i32 %21, 1
  store i32 %inc34, ptr %s, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !13

for.end35:                                        ; preds = %for.cond25
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %23 = load i32, ptr %l2, align 4, !tbaa !5
  %add36 = add nsw i32 %22, %23
  store i32 %add36, ptr %i, align 4, !tbaa !5
  br label %for.end44

if.else:                                          ; preds = %for.end
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %24 to i64
  %arrayidx38 = getelementptr inbounds [256 x i8], ptr %s1, i64 0, i64 %idxprom37
  %25 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %26 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom39 = sext i32 %26 to i64
  %arrayidx40 = getelementptr inbounds [256 x i8], ptr %t, i64 0, i64 %idxprom39
  store i8 %25, ptr %arrayidx40, align 1, !tbaa !9
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %inc41 = add nsw i32 %27, 1
  store i32 %inc41, ptr %i, align 4, !tbaa !5
  %28 = load i32, ptr %k, align 4, !tbaa !5
  %inc42 = add nsw i32 %28, 1
  store i32 %inc42, ptr %k, align 4, !tbaa !5
  br label %if.end43

if.end43:                                         ; preds = %if.else
  br label %for.cond, !llvm.loop !14

for.end44:                                        ; preds = %for.end35, %for.cond
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc53, %for.end44
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %30 = load i32, ptr %l1, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %29, %30
  br i1 %cmp46, label %for.body47, label %for.end55

for.body47:                                       ; preds = %for.cond45
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [256 x i8], ptr %s1, i64 0, i64 %idxprom48
  %32 = load i8, ptr %arrayidx49, align 1, !tbaa !9
  %33 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom50 = sext i32 %33 to i64
  %arrayidx51 = getelementptr inbounds [256 x i8], ptr %t, i64 0, i64 %idxprom50
  store i8 %32, ptr %arrayidx51, align 1, !tbaa !9
  %34 = load i32, ptr %k, align 4, !tbaa !5
  %inc52 = add nsw i32 %34, 1
  store i32 %inc52, ptr %k, align 4, !tbaa !5
  br label %for.inc53

for.inc53:                                        ; preds = %for.body47
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %inc54 = add nsw i32 %35, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !15

for.end55:                                        ; preds = %for.cond45
  %36 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom56 = sext i32 %36 to i64
  %arrayidx57 = getelementptr inbounds [256 x i8], ptr %t, i64 0, i64 %idxprom56
  store i8 0, ptr %arrayidx57, align 1, !tbaa !9
  %arraydecay58 = getelementptr inbounds [256 x i8], ptr %t, i64 0, i64 0
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay58)
  call void @llvm.lifetime.end.p0(i64 4, ptr %l3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr %t) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr %s3) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr %s2) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr %s1) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
