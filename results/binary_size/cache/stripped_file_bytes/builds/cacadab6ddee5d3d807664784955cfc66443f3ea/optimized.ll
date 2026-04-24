; ModuleID = '/tmp/tmpzb6qmz1y.cpp'
source_filename = "/tmp/tmpzb6qmz1y.cpp"
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
  %str = alloca [257 x i8], align 16
  %sub = alloca [257 x i8], align 16
  %re = alloca [257 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %n3 = alloca i32, align 4
  %h = alloca i32, align 4
  %ll = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 257, ptr %str) #4
  call void @llvm.lifetime.start.p0(i64 257, ptr %sub) #4
  call void @llvm.lifetime.start.p0(i64 257, ptr %re) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #4
  store i32 0, ptr %h, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [257 x i8], ptr %sub, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [257 x i8], ptr %re, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2)
  %arraydecay3 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 0
  %call4 = call i64 @strlen(ptr noundef %arraydecay3) #5
  %conv = trunc i64 %call4 to i32
  store i32 %conv, ptr %n1, align 4, !tbaa !5
  %arraydecay5 = getelementptr inbounds [257 x i8], ptr %sub, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #5
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %n2, align 4, !tbaa !5
  %arraydecay8 = getelementptr inbounds [257 x i8], ptr %re, i64 0, i64 0
  %call9 = call i64 @strlen(ptr noundef %arraydecay8) #5
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr %n3, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc61, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n1, align 4, !tbaa !5
  %2 = load i32, ptr %n2, align 4, !tbaa !5
  %sub11 = sub nsw i32 %1, %2
  %cmp = icmp sle i32 %0, %sub11
  br i1 %cmp, label %for.body, label %for.end63

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv12 = sext i8 %4 to i32
  %arrayidx13 = getelementptr inbounds [257 x i8], ptr %sub, i64 0, i64 0
  %5 = load i8, ptr %arrayidx13, align 16, !tbaa !9
  %conv14 = sext i8 %5 to i32
  %cmp15 = icmp eq i32 %conv12, %conv14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %ll) #4
  store i32 0, ptr %ll, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %if.then
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %n2, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %6, %7
  br i1 %cmp17, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond16
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %8, %9
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %idxprom19
  %10 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %conv21 = sext i8 %10 to i32
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %11 to i64
  %arrayidx23 = getelementptr inbounds [257 x i8], ptr %sub, i64 0, i64 %idxprom22
  %12 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %conv24 = sext i8 %12 to i32
  %cmp25 = icmp ne i32 %conv21, %conv24
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %for.body18
  store i32 1, ptr %ll, align 4, !tbaa !5
  br label %for.end

if.else:                                          ; preds = %for.body18
  br label %for.inc

for.inc:                                          ; preds = %if.else
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !10

for.end:                                          ; preds = %if.then26, %for.cond16
  %14 = load i32, ptr %ll, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %14, 0
  br i1 %cmp27, label %if.then28, label %if.else60

if.then28:                                        ; preds = %for.end
  store i32 1, ptr %h, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc36, %if.then28
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %15, %16
  br i1 %cmp30, label %for.body31, label %for.end38

for.body31:                                       ; preds = %for.cond29
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom32 = sext i32 %17 to i64
  %arrayidx33 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %idxprom32
  %18 = load i8, ptr %arrayidx33, align 1, !tbaa !9
  %conv34 = sext i8 %18 to i32
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv34)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body31
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %inc37 = add nsw i32 %19, 1
  store i32 %inc37, ptr %k, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !13

for.end38:                                        ; preds = %for.cond29
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc46, %for.end38
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %21 = load i32, ptr %n3, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %20, %21
  br i1 %cmp40, label %for.body41, label %for.end48

for.body41:                                       ; preds = %for.cond39
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom42 = sext i32 %22 to i64
  %arrayidx43 = getelementptr inbounds [257 x i8], ptr %re, i64 0, i64 %idxprom42
  %23 = load i8, ptr %arrayidx43, align 1, !tbaa !9
  %conv44 = sext i8 %23 to i32
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv44)
  br label %for.inc46

for.inc46:                                        ; preds = %for.body41
  %24 = load i32, ptr %k, align 4, !tbaa !5
  %inc47 = add nsw i32 %24, 1
  store i32 %inc47, ptr %k, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !14

for.end48:                                        ; preds = %for.cond39
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %26 = load i32, ptr %n2, align 4, !tbaa !5
  %add49 = add nsw i32 %25, %26
  store i32 %add49, ptr %k, align 4, !tbaa !5
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc57, %for.end48
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %28 = load i32, ptr %n1, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %27, %28
  br i1 %cmp51, label %for.body52, label %for.end59

for.body52:                                       ; preds = %for.cond50
  %29 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom53 = sext i32 %29 to i64
  %arrayidx54 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %idxprom53
  %30 = load i8, ptr %arrayidx54, align 1, !tbaa !9
  %conv55 = sext i8 %30 to i32
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv55)
  br label %for.inc57

for.inc57:                                        ; preds = %for.body52
  %31 = load i32, ptr %k, align 4, !tbaa !5
  %inc58 = add nsw i32 %31, 1
  store i32 %inc58, ptr %k, align 4, !tbaa !5
  br label %for.cond50, !llvm.loop !15

for.end59:                                        ; preds = %for.cond50
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else60:                                        ; preds = %for.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else60, %for.end59
  call void @llvm.lifetime.end.p0(i64 4, ptr %ll) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end63
    i32 4, label %for.inc61
  ]

if.end:                                           ; preds = %for.body
  br label %for.inc61

for.inc61:                                        ; preds = %if.end, %cleanup
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %inc62 = add nsw i32 %32, 1
  store i32 %inc62, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end63:                                        ; preds = %cleanup, %for.cond
  %33 = load i32, ptr %h, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %33, 0
  br i1 %cmp64, label %if.then65, label %if.end68

if.then65:                                        ; preds = %for.end63
  %arraydecay66 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 0
  %call67 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay66)
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %for.end63
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 257, ptr %re) #4
  call void @llvm.lifetime.end.p0(i64 257, ptr %sub) #4
  call void @llvm.lifetime.end.p0(i64 257, ptr %str) #4
  %34 = load i32, ptr %retval, align 4
  ret i32 %34

unreachable:                                      ; preds = %cleanup
  unreachable
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
!16 = distinct !{!16, !11, !12}
