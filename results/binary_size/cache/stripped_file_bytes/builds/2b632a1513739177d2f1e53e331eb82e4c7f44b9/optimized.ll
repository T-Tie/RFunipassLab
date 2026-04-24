; ModuleID = '/tmp/tmpo0jhhppi.cpp'
source_filename = "/tmp/tmpo0jhhppi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"No\0A\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %c = alloca i8, align 1
  %a = alloca [300 x i8], align 16
  %b = alloca [300 x i8], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 300, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 300, ptr %b) #4
  %call = call i32 @getchar()
  %conv = trunc i32 %call to i8
  store i8 %conv, ptr %c, align 1, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  store i32 0, ptr %l, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %0 = load i8, ptr %c, align 1, !tbaa !5
  %conv1 = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv1, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8, ptr %c, align 1, !tbaa !5
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sge i32 %conv2, 65
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %2 = load i8, ptr %c, align 1, !tbaa !5
  %conv4 = sext i8 %2 to i32
  %cmp5 = icmp sle i32 %conv4, 90
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8, ptr %c, align 1, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 %idxprom
  store i8 %3, ptr %arrayidx, align 1, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  %6 = load i32, ptr %l, align 4, !tbaa !8
  %inc6 = add nsw i32 %6, 1
  store i32 %inc6, ptr %l, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %7 = load i8, ptr %c, align 1, !tbaa !5
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp sge i32 %conv7, 97
  br i1 %cmp8, label %land.lhs.true9, label %if.end17

land.lhs.true9:                                   ; preds = %if.end
  %8 = load i8, ptr %c, align 1, !tbaa !5
  %conv10 = sext i8 %8 to i32
  %cmp11 = icmp sle i32 %conv10, 122
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %land.lhs.true9
  %9 = load i8, ptr %c, align 1, !tbaa !5
  %10 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [300 x i8], ptr %b, i64 0, i64 %idxprom13
  store i8 %9, ptr %arrayidx14, align 1, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !8
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, ptr %j, align 4, !tbaa !8
  %12 = load i32, ptr %l, align 4, !tbaa !8
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, ptr %l, align 4, !tbaa !8
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %land.lhs.true9, %if.end
  %call18 = call i32 @getchar()
  %conv19 = trunc i32 %call18 to i8
  store i8 %conv19, ptr %c, align 1, !tbaa !5
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %13 = load i32, ptr %i, align 4, !tbaa !8
  store i32 %13, ptr %m, align 4, !tbaa !8
  %14 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %14, ptr %n, align 4, !tbaa !8
  store i32 65, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %while.end
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %cmp20 = icmp sle i32 %15, 90
  br i1 %cmp20, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !8
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %16 = load i32, ptr %j, align 4, !tbaa !8
  %17 = load i32, ptr %m, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %16, %17
  br i1 %cmp22, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond21
  %18 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 %idxprom24
  %19 = load i8, ptr %arrayidx25, align 1, !tbaa !5
  %conv26 = sext i8 %19 to i32
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %cmp27 = icmp eq i32 %conv26, %20
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %for.body23
  %21 = load i32, ptr %k, align 4, !tbaa !8
  %inc29 = add nsw i32 %21, 1
  store i32 %inc29, ptr %k, align 4, !tbaa !8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %for.body23
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %22 = load i32, ptr %j, align 4, !tbaa !8
  %inc31 = add nsw i32 %22, 1
  store i32 %inc31, ptr %j, align 4, !tbaa !8
  br label %for.cond21, !llvm.loop !13

for.end:                                          ; preds = %for.cond21
  %23 = load i32, ptr %k, align 4, !tbaa !8
  %cmp32 = icmp ne i32 %23, 0
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %25 = load i32, ptr %k, align 4, !tbaa !8
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %24, i32 noundef %25)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.end
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %26 = load i32, ptr %i, align 4, !tbaa !8
  %inc37 = add nsw i32 %26, 1
  store i32 %inc37, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end38:                                        ; preds = %for.cond
  store i32 97, ptr %i, align 4, !tbaa !8
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc59, %for.end38
  %27 = load i32, ptr %i, align 4, !tbaa !8
  %cmp40 = icmp sle i32 %27, 122
  br i1 %cmp40, label %for.body41, label %for.end61

for.body41:                                       ; preds = %for.cond39
  store i32 0, ptr %j, align 4, !tbaa !8
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc52, %for.body41
  %28 = load i32, ptr %j, align 4, !tbaa !8
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %cmp43 = icmp slt i32 %28, %29
  br i1 %cmp43, label %for.body44, label %for.end54

for.body44:                                       ; preds = %for.cond42
  %30 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds [300 x i8], ptr %b, i64 0, i64 %idxprom45
  %31 = load i8, ptr %arrayidx46, align 1, !tbaa !5
  %conv47 = sext i8 %31 to i32
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %cmp48 = icmp eq i32 %conv47, %32
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.body44
  %33 = load i32, ptr %k, align 4, !tbaa !8
  %inc50 = add nsw i32 %33, 1
  store i32 %inc50, ptr %k, align 4, !tbaa !8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %for.body44
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %34 = load i32, ptr %j, align 4, !tbaa !8
  %inc53 = add nsw i32 %34, 1
  store i32 %inc53, ptr %j, align 4, !tbaa !8
  br label %for.cond42, !llvm.loop !15

for.end54:                                        ; preds = %for.cond42
  %35 = load i32, ptr %k, align 4, !tbaa !8
  %cmp55 = icmp ne i32 %35, 0
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %for.end54
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %37 = load i32, ptr %k, align 4, !tbaa !8
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %36, i32 noundef %37)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %for.end54
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %38 = load i32, ptr %i, align 4, !tbaa !8
  %inc60 = add nsw i32 %38, 1
  store i32 %inc60, ptr %i, align 4, !tbaa !8
  br label %for.cond39, !llvm.loop !16

for.end61:                                        ; preds = %for.cond39
  %39 = load i32, ptr %l, align 4, !tbaa !8
  %cmp62 = icmp eq i32 %39, 0
  br i1 %cmp62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %for.end61
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %for.end61
  call void @llvm.lifetime.end.p0(i64 300, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 300, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #2 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !17
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
