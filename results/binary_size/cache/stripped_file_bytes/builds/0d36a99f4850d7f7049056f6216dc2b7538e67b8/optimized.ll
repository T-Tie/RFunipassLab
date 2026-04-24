; ModuleID = '/tmp/tmpl6kg6zrb.cpp'
source_filename = "/tmp/tmpl6kg6zrb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [300 x i8], align 16
  %b = alloca [50 x i8], align 16
  %r = alloca [50 x i8], align 16
  %a = alloca [50 x i8], align 16
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %n3 = alloca i32, align 4
  %n = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 300, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 50, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 50, ptr %r) #4
  call void @llvm.lifetime.start.p0(i64 50, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #4
  %arraydecay = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [50 x i8], ptr %b, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [50 x i8], ptr %r, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2)
  %arraydecay3 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 0
  %call4 = call i64 @strlen(ptr noundef %arraydecay3) #5
  %conv = trunc i64 %call4 to i32
  store i32 %conv, ptr %n1, align 4, !tbaa !5
  %arraydecay5 = getelementptr inbounds [50 x i8], ptr %b, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #5
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %n2, align 4, !tbaa !5
  %arraydecay8 = getelementptr inbounds [50 x i8], ptr %r, i64 0, i64 0
  %call9 = call i64 @strlen(ptr noundef %arraydecay8) #5
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr %n3, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n1, align 4, !tbaa !5
  %2 = load i32, ptr %n2, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %2
  %add = add nsw i32 %sub, 1
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %3 = load i32, ptr %k, align 4, !tbaa !5
  %4 = load i32, ptr %n2, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %3, %4
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %add14 = add nsw i32 %5, %6
  %idxprom = sext i32 %add14 to i64
  %arrayidx = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [50 x i8], ptr %a, i64 0, i64 %idxprom15
  store i8 %7, ptr %arrayidx16, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !10

for.end:                                          ; preds = %for.cond11
  %10 = load i32, ptr %n2, align 4, !tbaa !5
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds [50 x i8], ptr %a, i64 0, i64 %idxprom17
  store i8 0, ptr %arrayidx18, align 1, !tbaa !9
  %arraydecay19 = getelementptr inbounds [50 x i8], ptr %a, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [50 x i8], ptr %b, i64 0, i64 0
  %call21 = call i32 @strcmp(ptr noundef %arraydecay19, ptr noundef %arraydecay20) #5
  store i32 %call21, ptr %result, align 4, !tbaa !5
  %11 = load i32, ptr %result, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %11, 0
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %12, ptr %n, align 4, !tbaa !5
  br label %for.end25

if.else:                                          ; preds = %for.end
  br label %for.inc23

for.inc23:                                        ; preds = %if.else
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %13, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end25:                                        ; preds = %if.then, %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc40, %for.end25
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %15 = load i32, ptr %n1, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %14, %15
  br i1 %cmp27, label %for.body28, label %for.end42

for.body28:                                       ; preds = %for.cond26
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %16, %17
  br i1 %cmp29, label %if.then30, label %if.else35

if.then30:                                        ; preds = %for.body28
  %arraydecay31 = getelementptr inbounds [50 x i8], ptr %r, i64 0, i64 0
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay31)
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %n2, align 4, !tbaa !5
  %add33 = add nsw i32 %18, %19
  %sub34 = sub nsw i32 %add33, 1
  store i32 %sub34, ptr %i, align 4, !tbaa !5
  br label %if.end

if.else35:                                        ; preds = %for.body28
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %20 to i64
  %arrayidx37 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %idxprom36
  %21 = load i8, ptr %arrayidx37, align 1, !tbaa !9
  %conv38 = sext i8 %21 to i32
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv38)
  br label %if.end

if.end:                                           ; preds = %if.else35, %if.then30
  br label %for.inc40

for.inc40:                                        ; preds = %if.end
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc41 = add nsw i32 %22, 1
  store i32 %inc41, ptr %i, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !14

for.end42:                                        ; preds = %for.cond26
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 50, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 50, ptr %r) #4
  call void @llvm.lifetime.end.p0(i64 50, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 300, ptr %s) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

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
