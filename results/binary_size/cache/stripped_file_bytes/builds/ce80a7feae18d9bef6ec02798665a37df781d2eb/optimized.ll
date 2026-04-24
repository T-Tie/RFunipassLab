; ModuleID = '/tmp/tmp8iwt7ikv.cpp'
source_filename = "/tmp/tmp8iwt7ikv.cpp"
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
  %c = alloca [60 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %tem = alloca i32, align 4
  %str = alloca [301 x i8], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 240, ptr %c) #5
  call void @llvm.memset.p0.i64(ptr align 16 %c, i8 0, i64 240, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 1, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tem) #5
  call void @llvm.lifetime.start.p0(i64 301, ptr %str) #5
  %arraydecay = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1) #6
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %len, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %len, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp sge i32 %conv3, 65
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 %idxprom5
  %5 = load i8, ptr %arrayidx6, align 1, !tbaa !9
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp sle i32 %conv7, 90
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 %idxprom9
  %7 = load i8, ptr %arrayidx10, align 1, !tbaa !9
  %conv11 = sext i8 %7 to i32
  %cmp12 = icmp sge i32 %conv11, 97
  br i1 %cmp12, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 %idxprom14
  %9 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %conv16 = sext i8 %9 to i32
  %cmp17 = icmp sle i32 %conv16, 122
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true13, %land.lhs.true
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 %idxprom18
  %11 = load i8, ptr %arrayidx19, align 1, !tbaa !9
  %conv20 = sext i8 %11 to i32
  %sub = sub nsw i32 %conv20, 65
  store i32 %sub, ptr %tem, align 4, !tbaa !5
  %12 = load i32, ptr %tem, align 4, !tbaa !5
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [60 x i32], ptr %c, i64 0, i64 %idxprom21
  %13 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %arrayidx22, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true13, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %14, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc35, %for.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %15, 60
  br i1 %cmp25, label %for.body26, label %for.end37

for.body26:                                       ; preds = %for.cond24
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %16 to i64
  %arrayidx28 = getelementptr inbounds [60 x i32], ptr %c, i64 0, i64 %idxprom27
  %17 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %cmp29 = icmp ne i32 %17, 0
  br i1 %cmp29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %for.body26
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 65, %18
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %19 to i64
  %arrayidx32 = getelementptr inbounds [60 x i32], ptr %c, i64 0, i64 %idxprom31
  %20 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add, i32 noundef %20)
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %for.body26
  br label %for.inc35

for.inc35:                                        ; preds = %if.end34
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc36 = add nsw i32 %21, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !13

for.end37:                                        ; preds = %for.cond24
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then38, label %if.end40

if.then38:                                        ; preds = %for.end37
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %for.end37
  call void @llvm.lifetime.end.p0(i64 301, ptr %str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tem) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 240, ptr %c) #5
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
