; ModuleID = '/tmp/tmpb6ol11lh.cpp'
source_filename = "/tmp/tmpb6ol11lh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %L = alloca i32, align 4
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %s = alloca [1000 x i8], align 16
  %a = alloca [300 x i8], align 16
  %b = alloca [300 x i8], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %L) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l2) #5
  call void @llvm.lifetime.start.p0(i64 1000, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 300, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 300, ptr %b) #5
  %arraydecay = getelementptr inbounds [1000 x i8], ptr %s, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay1)
  %arraydecay3 = getelementptr inbounds [300 x i8], ptr %b, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay3)
  %call5 = call i32 @getchar()
  %arraydecay6 = getelementptr inbounds [1000 x i8], ptr %s, i64 0, i64 0
  %call7 = call i64 @strlen(ptr noundef %arraydecay6) #6
  %conv = trunc i64 %call7 to i32
  store i32 %conv, ptr %L, align 4, !tbaa !5
  %arraydecay8 = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 0
  %call9 = call i64 @strlen(ptr noundef %arraydecay8) #6
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr %l1, align 4, !tbaa !5
  %arraydecay11 = getelementptr inbounds [300 x i8], ptr %b, i64 0, i64 0
  %call12 = call i64 @strlen(ptr noundef %arraydecay11) #6
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, ptr %l2, align 4, !tbaa !5
  store i32 0, ptr %n, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc35, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %L, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 0
  %2 = load i8, ptr %arrayidx, align 16, !tbaa !9
  %conv14 = sext i8 %2 to i32
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx15 = getelementptr inbounds [1000 x i8], ptr %s, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %conv16 = sext i8 %4 to i32
  %cmp17 = icmp eq i32 %conv14, %conv16
  br i1 %cmp17, label %if.then, label %if.end31

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %n, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %if.then
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %7 = load i32, ptr %l1, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %6, %7
  br i1 %cmp19, label %for.body20, label %for.end

for.body20:                                       ; preds = %for.cond18
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %add = add nsw i32 %8, %9
  %idxprom21 = sext i32 %add to i64
  %arrayidx22 = getelementptr inbounds [1000 x i8], ptr %s, i64 0, i64 %idxprom21
  %10 = load i8, ptr %arrayidx22, align 1, !tbaa !9
  %conv23 = sext i8 %10 to i32
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom24 = sext i32 %11 to i64
  %arrayidx25 = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 %idxprom24
  %12 = load i8, ptr %arrayidx25, align 1, !tbaa !9
  %conv26 = sext i8 %12 to i32
  %cmp27 = icmp eq i32 %conv23, %conv26
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %for.body20
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %inc29 = add nsw i32 %13, 1
  store i32 %inc29, ptr %n, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body20
  store i32 0, ptr %n, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %if.then28
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %inc30 = add nsw i32 %14, 1
  store i32 %inc30, ptr %k, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !10

for.end:                                          ; preds = %if.else, %for.cond18
  br label %if.end31

if.end31:                                         ; preds = %for.end, %for.body
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %16 = load i32, ptr %l1, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %15, %16
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  br label %for.end37

if.end34:                                         ; preds = %if.end31
  br label %for.inc35

for.inc35:                                        ; preds = %if.end34
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc36 = add nsw i32 %17, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end37:                                        ; preds = %if.then33, %for.cond
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc46, %for.end37
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %18, %19
  br i1 %cmp39, label %for.body40, label %for.end48

for.body40:                                       ; preds = %for.cond38
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom41 = sext i32 %20 to i64
  %arrayidx42 = getelementptr inbounds [1000 x i8], ptr %s, i64 0, i64 %idxprom41
  %21 = load i8, ptr %arrayidx42, align 1, !tbaa !9
  %conv43 = sext i8 %21 to i32
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv43)
  %call45 = call i32 @getchar()
  br label %for.inc46

for.inc46:                                        ; preds = %for.body40
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %inc47 = add nsw i32 %22, 1
  store i32 %inc47, ptr %k, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !14

for.end48:                                        ; preds = %for.cond38
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc58, %for.end48
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %24 = load i32, ptr %L, align 4, !tbaa !5
  %cmp50 = icmp ne i32 %23, %24
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond49
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %26 = load i32, ptr %l2, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond49
  %27 = phi i1 [ false, %for.cond49 ], [ %cmp51, %land.rhs ]
  br i1 %27, label %for.body52, label %for.end60

for.body52:                                       ; preds = %land.end
  %28 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom53 = sext i32 %28 to i64
  %arrayidx54 = getelementptr inbounds [300 x i8], ptr %b, i64 0, i64 %idxprom53
  %29 = load i8, ptr %arrayidx54, align 1, !tbaa !9
  %conv55 = sext i8 %29 to i32
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv55)
  %call57 = call i32 @getchar()
  br label %for.inc58

for.inc58:                                        ; preds = %for.body52
  %30 = load i32, ptr %k, align 4, !tbaa !5
  %inc59 = add nsw i32 %30, 1
  store i32 %inc59, ptr %k, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !15

for.end60:                                        ; preds = %land.end
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %32 = load i32, ptr %l1, align 4, !tbaa !5
  %add61 = add nsw i32 %31, %32
  store i32 %add61, ptr %k, align 4, !tbaa !5
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc73, %for.end60
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %34 = load i32, ptr %L, align 4, !tbaa !5
  %cmp63 = icmp ne i32 %33, %34
  br i1 %cmp63, label %land.rhs64, label %land.end66

land.rhs64:                                       ; preds = %for.cond62
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %36 = load i32, ptr %L, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %35, %36
  br label %land.end66

land.end66:                                       ; preds = %land.rhs64, %for.cond62
  %37 = phi i1 [ false, %for.cond62 ], [ %cmp65, %land.rhs64 ]
  br i1 %37, label %for.body67, label %for.end75

for.body67:                                       ; preds = %land.end66
  %38 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom68 = sext i32 %38 to i64
  %arrayidx69 = getelementptr inbounds [1000 x i8], ptr %s, i64 0, i64 %idxprom68
  %39 = load i8, ptr %arrayidx69, align 1, !tbaa !9
  %conv70 = sext i8 %39 to i32
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv70)
  %call72 = call i32 @getchar()
  br label %for.inc73

for.inc73:                                        ; preds = %for.body67
  %40 = load i32, ptr %k, align 4, !tbaa !5
  %inc74 = add nsw i32 %40, 1
  store i32 %inc74, ptr %k, align 4, !tbaa !5
  br label %for.cond62, !llvm.loop !16

for.end75:                                        ; preds = %land.end66
  call void @llvm.lifetime.end.p0(i64 300, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 300, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 1000, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %L) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #3 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !17
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = distinct !{!16, !11, !12}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
