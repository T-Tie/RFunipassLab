; ModuleID = '/tmp/tmpbgdu8sqy.cpp'
source_filename = "/tmp/tmpbgdu8sqy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [256 x i8], align 16
  %sub = alloca [256 x i8], align 16
  %rep = alloca [256 x i8], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %e = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr %str) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %sub) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %rep) #4
  %arraydecay = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %sub, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [256 x i8], ptr %rep, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2)
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 0
  %call4 = call i64 @strlen(ptr noundef %arraydecay3) #5
  %conv = trunc i64 %call4 to i32
  store i32 %conv, ptr %n, align 4, !tbaa !5
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %sub, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #5
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %m, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %e, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %m, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %2, %3
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %4, %5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv11 = sext i8 %6 to i32
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [256 x i8], ptr %sub, i64 0, i64 %idxprom12
  %8 = load i8, ptr %arrayidx13, align 1, !tbaa !9
  %conv14 = sext i8 %8 to i32
  %cmp15 = icmp eq i32 %conv11, %conv14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  %9 = load i32, ptr %e, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %e, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc16 = add nsw i32 %10, 1
  store i32 %inc16, ptr %j, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !10

for.end:                                          ; preds = %for.cond8
  %11 = load i32, ptr %e, align 4, !tbaa !5
  %12 = load i32, ptr %m, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %11, %12
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.end
  br label %for.end22

if.end19:                                         ; preds = %for.end
  br label %for.inc20

for.inc20:                                        ; preds = %if.end19
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc21 = add nsw i32 %13, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end22:                                        ; preds = %if.then18, %for.cond
  %14 = load i32, ptr %e, align 4, !tbaa !5
  %15 = load i32, ptr %m, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %14, %15
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.end22
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc32, %if.then24
  %16 = load i32, ptr %k, align 4, !tbaa !5
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %16, %17
  br i1 %cmp26, label %for.body27, label %for.end34

for.body27:                                       ; preds = %for.cond25
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 %idxprom28
  %19 = load i8, ptr %arrayidx29, align 1, !tbaa !9
  %conv30 = sext i8 %19 to i32
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv30)
  br label %for.inc32

for.inc32:                                        ; preds = %for.body27
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %inc33 = add nsw i32 %20, 1
  store i32 %inc33, ptr %k, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !14

for.end34:                                        ; preds = %for.cond25
  %arraydecay35 = getelementptr inbounds [256 x i8], ptr %rep, i64 0, i64 0
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay35)
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %22 = load i32, ptr %m, align 4, !tbaa !5
  %add37 = add nsw i32 %21, %22
  store i32 %add37, ptr %k, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc45, %for.end34
  %23 = load i32, ptr %k, align 4, !tbaa !5
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %23, %24
  br i1 %cmp39, label %for.body40, label %for.end47

for.body40:                                       ; preds = %for.cond38
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom41 = sext i32 %25 to i64
  %arrayidx42 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 %idxprom41
  %26 = load i8, ptr %arrayidx42, align 1, !tbaa !9
  %conv43 = sext i8 %26 to i32
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv43)
  br label %for.inc45

for.inc45:                                        ; preds = %for.body40
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %inc46 = add nsw i32 %27, 1
  store i32 %inc46, ptr %k, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !15

for.end47:                                        ; preds = %for.cond38
  br label %if.end50

if.else:                                          ; preds = %for.end22
  %arraydecay48 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 0
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay48)
  br label %if.end50

if.end50:                                         ; preds = %if.else, %for.end47
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %rep) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %sub) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %str) #4
  ret i32 0
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
