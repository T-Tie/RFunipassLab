; ModuleID = '/tmp/tmpj35o2k4s.cpp'
source_filename = "/tmp/tmpj35o2k4s.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %sum = alloca i32, align 4
  %yes = alloca i32, align 4
  %m = alloca [301 x i8], align 16
  %a = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yes) #4
  call void @llvm.lifetime.start.p0(i64 301, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %a) #4
  %arraydecay = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1) #5
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %l, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %l, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %l, align 4, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %sub4 = sub nsw i32 %3, %4
  %sub5 = sub nsw i32 %sub4, 1
  %cmp6 = icmp slt i32 %2, %sub5
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv8 = sext i8 %6 to i32
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %7, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom9
  %8 = load i8, ptr %arrayidx10, align 1, !tbaa !9
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp sgt i32 %conv8, %conv11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom13
  %10 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  store i8 %10, ptr %a, align 1, !tbaa !9
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %add15 = add nsw i32 %11, 1
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom16
  %12 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom18
  store i8 %12, ptr %arrayidx19, align 1, !tbaa !9
  %14 = load i8, ptr %a, align 1, !tbaa !9
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %add20 = add nsw i32 %15, 1
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom21
  store i8 %14, ptr %arrayidx22, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !10

for.end:                                          ; preds = %for.cond3
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %17, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end25:                                        ; preds = %for.cond
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %yes, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc63, %for.end25
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %l, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %18, %19
  br i1 %cmp27, label %for.body28, label %for.end65

for.body28:                                       ; preds = %for.cond26
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom29
  %21 = load i8, ptr %arrayidx30, align 1, !tbaa !9
  %conv31 = sext i8 %21 to i32
  %cmp32 = icmp sge i32 %conv31, 65
  br i1 %cmp32, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body28
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom33
  %23 = load i8, ptr %arrayidx34, align 1, !tbaa !9
  %conv35 = sext i8 %23 to i32
  %cmp36 = icmp sle i32 %conv35, 90
  br i1 %cmp36, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body28
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %24 to i64
  %arrayidx38 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom37
  %25 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv39 = sext i8 %25 to i32
  %cmp40 = icmp sge i32 %conv39, 97
  br i1 %cmp40, label %land.lhs.true41, label %if.end62

land.lhs.true41:                                  ; preds = %lor.lhs.false
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %26 to i64
  %arrayidx43 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom42
  %27 = load i8, ptr %arrayidx43, align 1, !tbaa !9
  %conv44 = sext i8 %27 to i32
  %cmp45 = icmp sle i32 %conv44, 122
  br i1 %cmp45, label %if.then46, label %if.end62

if.then46:                                        ; preds = %land.lhs.true41, %land.lhs.true
  %28 = load i32, ptr %sum, align 4, !tbaa !5
  %inc47 = add nsw i32 %28, 1
  store i32 %inc47, ptr %sum, align 4, !tbaa !5
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %29 to i64
  %arrayidx49 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom48
  %30 = load i8, ptr %arrayidx49, align 1, !tbaa !9
  %conv50 = sext i8 %30 to i32
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %add51 = add nsw i32 %31, 1
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom52
  %32 = load i8, ptr %arrayidx53, align 1, !tbaa !9
  %conv54 = sext i8 %32 to i32
  %cmp55 = icmp ne i32 %conv50, %conv54
  br i1 %cmp55, label %if.then56, label %if.end61

if.then56:                                        ; preds = %if.then46
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %33 to i64
  %arrayidx58 = getelementptr inbounds [301 x i8], ptr %m, i64 0, i64 %idxprom57
  %34 = load i8, ptr %arrayidx58, align 1, !tbaa !9
  %conv59 = sext i8 %34 to i32
  %35 = load i32, ptr %sum, align 4, !tbaa !5
  %call60 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv59, i32 noundef %35)
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 1, ptr %yes, align 4, !tbaa !5
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.then46
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %land.lhs.true41, %lor.lhs.false
  br label %for.inc63

for.inc63:                                        ; preds = %if.end62
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc64 = add nsw i32 %36, 1
  store i32 %inc64, ptr %i, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !14

for.end65:                                        ; preds = %for.cond26
  %37 = load i32, ptr %yes, align 4, !tbaa !5
  %cmp66 = icmp eq i32 %37, 0
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.end65
  %call68 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %for.end65
  call void @llvm.lifetime.end.p0(i64 1, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 301, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %yes) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
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
