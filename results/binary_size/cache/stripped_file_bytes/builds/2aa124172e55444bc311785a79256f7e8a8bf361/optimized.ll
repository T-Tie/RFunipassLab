; ModuleID = '/tmp/tmpovyyzfq6.cpp'
source_filename = "/tmp/tmpovyyzfq6.cpp"
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
  %s = alloca [257 x i8], align 16
  %r = alloca [257 x i8], align 16
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %len3 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %c = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 257, ptr %str) #4
  call void @llvm.lifetime.start.p0(i64 257, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 257, ptr %r) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #4
  store i32 0, ptr %flag, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [257 x i8], ptr %s, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [257 x i8], ptr %r, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2)
  %arraydecay3 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 0
  %call4 = call i64 @strlen(ptr noundef %arraydecay3) #5
  %conv = trunc i64 %call4 to i32
  store i32 %conv, ptr %len1, align 4, !tbaa !5
  %arraydecay5 = getelementptr inbounds [257 x i8], ptr %s, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #5
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %len2, align 4, !tbaa !5
  %arraydecay8 = getelementptr inbounds [257 x i8], ptr %r, i64 0, i64 0
  %call9 = call i64 @strlen(ptr noundef %arraydecay8) #5
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr %len3, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv11 = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv11, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %2 to i64
  %arrayidx13 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %idxprom12
  %3 = load i8, ptr %arrayidx13, align 1, !tbaa !9
  %conv14 = sext i8 %3 to i32
  %arrayidx15 = getelementptr inbounds [257 x i8], ptr %s, i64 0, i64 0
  %4 = load i8, ptr %arrayidx15, align 16, !tbaa !9
  %conv16 = sext i8 %4 to i32
  %cmp17 = icmp eq i32 %conv14, %conv16
  br i1 %cmp17, label %if.then, label %if.end30

if.then:                                          ; preds = %while.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %5, ptr %c, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %len2, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %6, %7
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %8, %9
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %idxprom19
  %10 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %conv21 = sext i8 %10 to i32
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %11 to i64
  %arrayidx23 = getelementptr inbounds [257 x i8], ptr %s, i64 0, i64 %idxprom22
  %12 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %conv24 = sext i8 %12 to i32
  %cmp25 = icmp ne i32 %conv21, %conv24
  br i1 %cmp25, label %if.then26, label %if.end

if.then26:                                        ; preds = %for.body
  store i32 0, ptr %flag, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then26, %for.cond
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %15 = load i32, ptr %len2, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %14, %15
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.end
  store i32 1, ptr %flag, align 4, !tbaa !5
  br label %while.end

if.end29:                                         ; preds = %for.end
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %while.body
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc31 = add nsw i32 %16, 1
  store i32 %inc31, ptr %j, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %if.then28, %while.cond
  %17 = load i32, ptr %flag, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then32, label %if.else

if.then32:                                        ; preds = %while.end
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc40, %if.then32
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %19 = load i32, ptr %c, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %18, %19
  br i1 %cmp34, label %for.body35, label %for.end42

for.body35:                                       ; preds = %for.cond33
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom36 = sext i32 %20 to i64
  %arrayidx37 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %idxprom36
  %21 = load i8, ptr %arrayidx37, align 1, !tbaa !9
  %conv38 = sext i8 %21 to i32
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv38)
  br label %for.inc40

for.inc40:                                        ; preds = %for.body35
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %inc41 = add nsw i32 %22, 1
  store i32 %inc41, ptr %k, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !14

for.end42:                                        ; preds = %for.cond33
  %arraydecay43 = getelementptr inbounds [257 x i8], ptr %r, i64 0, i64 0
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay43)
  %23 = load i32, ptr %c, align 4, !tbaa !5
  %24 = load i32, ptr %len2, align 4, !tbaa !5
  %add45 = add nsw i32 %23, %24
  store i32 %add45, ptr %k, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc53, %for.end42
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %26 = load i32, ptr %len1, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %25, %26
  br i1 %cmp47, label %for.body48, label %for.end55

for.body48:                                       ; preds = %for.cond46
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom49 = sext i32 %27 to i64
  %arrayidx50 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %idxprom49
  %28 = load i8, ptr %arrayidx50, align 1, !tbaa !9
  %conv51 = sext i8 %28 to i32
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv51)
  br label %for.inc53

for.inc53:                                        ; preds = %for.body48
  %29 = load i32, ptr %k, align 4, !tbaa !5
  %inc54 = add nsw i32 %29, 1
  store i32 %inc54, ptr %k, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !15

for.end55:                                        ; preds = %for.cond46
  br label %if.end58

if.else:                                          ; preds = %while.end
  %arraydecay56 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 0
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay56)
  br label %if.end58

if.end58:                                         ; preds = %if.else, %for.end55
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len1) #4
  call void @llvm.lifetime.end.p0(i64 257, ptr %r) #4
  call void @llvm.lifetime.end.p0(i64 257, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 257, ptr %str) #4
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
