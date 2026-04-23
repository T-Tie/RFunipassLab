; ModuleID = '/tmp/tmplrqaud1a.cpp'
source_filename = "/tmp/tmplrqaud1a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %z = alloca i32, align 4
  %t = alloca i32, align 4
  %g = alloca i32, align 4
  %q = alloca [256 x i8], align 16
  %p = alloca [256 x i8], align 16
  %w = alloca [256 x i8], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  store i32 0, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  store i32 1, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #4
  store i32 0, ptr %z, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #4
  store i32 1, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %g) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %q) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %w) #4
  %arraydecay = getelementptr inbounds [256 x i8], ptr %q, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %p, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay1)
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %w, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay3)
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %q, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #5
  %conv = trunc i64 %call6 to i32
  store i32 %conv, ptr %k, align 4, !tbaa !5
  %arraydecay7 = getelementptr inbounds [256 x i8], ptr %p, i64 0, i64 0
  %call8 = call i64 @strlen(ptr noundef %arraydecay7) #5
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %l, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [256 x i8], ptr %p, i64 0, i64 0
  %2 = load i8, ptr %arrayidx, align 16, !tbaa !9
  %conv10 = sext i8 %2 to i32
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], ptr %q, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx11, align 1, !tbaa !9
  %conv12 = sext i8 %4 to i32
  %cmp13 = icmp eq i32 %conv10, %conv12
  br i1 %cmp13, label %if.then, label %if.end28

if.then:                                          ; preds = %for.body
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.then
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %l, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %5, %6
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  store i32 1, ptr %g, align 4, !tbaa !5
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom17 = sext i32 %7 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], ptr %p, i64 0, i64 %idxprom17
  %8 = load i8, ptr %arrayidx18, align 1, !tbaa !9
  %conv19 = sext i8 %8 to i32
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %9, %10
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds [256 x i8], ptr %q, i64 0, i64 %idxprom20
  %11 = load i8, ptr %arrayidx21, align 1, !tbaa !9
  %conv22 = sext i8 %11 to i32
  %cmp23 = icmp ne i32 %conv19, %conv22
  br i1 %cmp23, label %if.then24, label %if.end

if.then24:                                        ; preds = %for.body16
  store i32 0, ptr %g, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then24, %for.body16
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !10

for.end:                                          ; preds = %for.cond14
  %13 = load i32, ptr %g, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %13, 1
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.end
  store i32 1, ptr %z, align 4, !tbaa !5
  %14 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %14, ptr %m, align 4, !tbaa !5
  br label %for.end31

if.end27:                                         ; preds = %for.end
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %for.body
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc30 = add nsw i32 %15, 1
  store i32 %inc30, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end31:                                        ; preds = %if.then26, %for.cond
  %16 = load i32, ptr %z, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then32, label %if.else

if.then32:                                        ; preds = %for.end31
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc40, %if.then32
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %18 = load i32, ptr %m, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %17, %18
  br i1 %cmp34, label %for.body35, label %for.end42

for.body35:                                       ; preds = %for.cond33
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom36 = sext i32 %19 to i64
  %arrayidx37 = getelementptr inbounds [256 x i8], ptr %q, i64 0, i64 %idxprom36
  %20 = load i8, ptr %arrayidx37, align 1, !tbaa !9
  %conv38 = sext i8 %20 to i32
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv38)
  br label %for.inc40

for.inc40:                                        ; preds = %for.body35
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %inc41 = add nsw i32 %21, 1
  store i32 %inc41, ptr %j, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !14

for.end42:                                        ; preds = %for.cond33
  %arraydecay43 = getelementptr inbounds [256 x i8], ptr %w, i64 0, i64 0
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay43)
  %22 = load i32, ptr %m, align 4, !tbaa !5
  %23 = load i32, ptr %l, align 4, !tbaa !5
  %add45 = add nsw i32 %22, %23
  store i32 %add45, ptr %j, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc53, %for.end42
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %24, %25
  br i1 %cmp47, label %for.body48, label %for.end55

for.body48:                                       ; preds = %for.cond46
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom49 = sext i32 %26 to i64
  %arrayidx50 = getelementptr inbounds [256 x i8], ptr %q, i64 0, i64 %idxprom49
  %27 = load i8, ptr %arrayidx50, align 1, !tbaa !9
  %conv51 = sext i8 %27 to i32
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv51)
  br label %for.inc53

for.inc53:                                        ; preds = %for.body48
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %inc54 = add nsw i32 %28, 1
  store i32 %inc54, ptr %j, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !15

for.end55:                                        ; preds = %for.cond46
  br label %if.end58

if.else:                                          ; preds = %for.end31
  %arraydecay56 = getelementptr inbounds [256 x i8], ptr %q, i64 0, i64 0
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay56)
  br label %if.end58

if.end58:                                         ; preds = %if.else, %for.end55
  call void @llvm.lifetime.end.p0(i64 256, ptr %w) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %g) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
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
!15 = distinct !{!15, !11, !12}
