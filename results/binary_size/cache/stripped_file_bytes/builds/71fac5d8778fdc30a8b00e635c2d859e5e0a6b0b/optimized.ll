; ModuleID = '/tmp/tmpjq4l32fp.cpp'
source_filename = "/tmp/tmpjq4l32fp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %k = alloca i32, align 4
  %flag = alloca [550 x i32], align 16
  %t = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %s = alloca [550 x i8], align 16
  %s1 = alloca [550 x [6 x i8]], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2200, ptr %flag) #5
  call void @llvm.memset.p0.i64(ptr align 16 %flag, i8 0, i64 2200, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 1, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #5
  call void @llvm.lifetime.start.p0(i64 550, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 3300, ptr %s1) #5
  call void @llvm.memset.p0.i64(ptr align 16 %s1, i8 0, i64 3300, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %arraydecay = getelementptr inbounds [550 x i8], ptr %s, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay)
  %arraydecay2 = getelementptr inbounds [550 x i8], ptr %s, i64 0, i64 0
  %call3 = call i64 @strlen(ptr noundef %arraydecay2) #6
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %t, align 4, !tbaa !5
  %0 = load i32, ptr %t, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, ptr %x, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %arraydecay4 = getelementptr inbounds [550 x i8], ptr %s, i64 0, i64 0
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay4, i64 %idx.ext
  %3 = load i8, ptr %add.ptr, align 1, !tbaa !9
  %arraydecay5 = getelementptr inbounds [550 x [6 x i8]], ptr %s1, i64 0, i64 0
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext6 = sext i32 %4 to i64
  %add.ptr7 = getelementptr inbounds [6 x i8], ptr %arraydecay5, i64 %idx.ext6
  %arraydecay8 = getelementptr inbounds [6 x i8], ptr %add.ptr7, i64 0, i64 0
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %idx.ext9 = sext i32 %5 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %arraydecay8, i64 %idx.ext9
  store i8 %3, ptr %add.ptr10, align 1, !tbaa !9
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %inc11 = add nsw i32 %7, 1
  store i32 %inc11, ptr %k, align 4, !tbaa !5
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %10 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %10, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, ptr %j, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %x, align 4, !tbaa !5
  %cmp13 = icmp sle i32 %12, %13
  br i1 %cmp13, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %do.end
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %15 = load i32, ptr %x, align 4, !tbaa !5
  %sub14 = sub nsw i32 %15, 1
  %cmp15 = icmp sle i32 %14, %sub14
  br i1 %cmp15, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %add16 = add nsw i32 %16, 1
  store i32 %add16, ptr %j, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %18 = load i32, ptr %x, align 4, !tbaa !5
  %cmp18 = icmp sle i32 %17, %18
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %arraydecay20 = getelementptr inbounds [550 x [6 x i8]], ptr %s1, i64 0, i64 0
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext21 = sext i32 %19 to i64
  %add.ptr22 = getelementptr inbounds [6 x i8], ptr %arraydecay20, i64 %idx.ext21
  %arraydecay23 = getelementptr inbounds [6 x i8], ptr %add.ptr22, i64 0, i64 0
  %arraydecay24 = getelementptr inbounds [550 x [6 x i8]], ptr %s1, i64 0, i64 0
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext25 = sext i32 %20 to i64
  %add.ptr26 = getelementptr inbounds [6 x i8], ptr %arraydecay24, i64 %idx.ext25
  %arraydecay27 = getelementptr inbounds [6 x i8], ptr %add.ptr26, i64 0, i64 0
  %call28 = call i32 @strcmp(ptr noundef %arraydecay23, ptr noundef %arraydecay27) #6
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %for.body19
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [550 x i32], ptr %flag, i64 0, i64 %idxprom
  %22 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %inc31 = add nsw i32 %22, 1
  store i32 %inc31, ptr %arrayidx, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %for.body19
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %inc33 = add nsw i32 %23, 1
  store i32 %inc33, ptr %j, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !13

for.end:                                          ; preds = %for.cond17
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %inc35 = add nsw i32 %24, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end36:                                        ; preds = %for.cond
  %arraydecay37 = getelementptr inbounds [550 x i32], ptr %flag, i64 0, i64 0
  %add.ptr38 = getelementptr inbounds i32, ptr %arraydecay37, i64 1
  %25 = load i32, ptr %add.ptr38, align 4, !tbaa !5
  store i32 %25, ptr %max, align 4, !tbaa !5
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc51, %for.end36
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %27 = load i32, ptr %x, align 4, !tbaa !5
  %cmp40 = icmp sle i32 %26, %27
  br i1 %cmp40, label %for.body41, label %for.end53

for.body41:                                       ; preds = %for.cond39
  %arraydecay42 = getelementptr inbounds [550 x i32], ptr %flag, i64 0, i64 0
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext43 = sext i32 %28 to i64
  %add.ptr44 = getelementptr inbounds i32, ptr %arraydecay42, i64 %idx.ext43
  %29 = load i32, ptr %add.ptr44, align 4, !tbaa !5
  %30 = load i32, ptr %max, align 4, !tbaa !5
  %cmp45 = icmp sgt i32 %29, %30
  br i1 %cmp45, label %if.then46, label %if.end50

if.then46:                                        ; preds = %for.body41
  %arraydecay47 = getelementptr inbounds [550 x i32], ptr %flag, i64 0, i64 0
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext48 = sext i32 %31 to i64
  %add.ptr49 = getelementptr inbounds i32, ptr %arraydecay47, i64 %idx.ext48
  %32 = load i32, ptr %add.ptr49, align 4, !tbaa !5
  store i32 %32, ptr %max, align 4, !tbaa !5
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %for.body41
  br label %for.inc51

for.inc51:                                        ; preds = %if.end50
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %inc52 = add nsw i32 %33, 1
  store i32 %inc52, ptr %i, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !15

for.end53:                                        ; preds = %for.cond39
  %34 = load i32, ptr %max, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %34, 0
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.end53
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end75

if.else:                                          ; preds = %for.end53
  %35 = load i32, ptr %max, align 4, !tbaa !5
  %add57 = add nsw i32 %35, 1
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %add57)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc72, %if.else
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %37 = load i32, ptr %x, align 4, !tbaa !5
  %cmp60 = icmp sle i32 %36, %37
  br i1 %cmp60, label %for.body61, label %for.end74

for.body61:                                       ; preds = %for.cond59
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %38 to i64
  %arrayidx63 = getelementptr inbounds [550 x i32], ptr %flag, i64 0, i64 %idxprom62
  %39 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %40 = load i32, ptr %max, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %39, %40
  br i1 %cmp64, label %if.then65, label %if.end71

if.then65:                                        ; preds = %for.body61
  %arraydecay66 = getelementptr inbounds [550 x [6 x i8]], ptr %s1, i64 0, i64 0
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext67 = sext i32 %41 to i64
  %add.ptr68 = getelementptr inbounds [6 x i8], ptr %arraydecay66, i64 %idx.ext67
  %arraydecay69 = getelementptr inbounds [6 x i8], ptr %add.ptr68, i64 0, i64 0
  %call70 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %arraydecay69)
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %for.body61
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %inc73 = add nsw i32 %42, 1
  store i32 %inc73, ptr %i, align 4, !tbaa !5
  br label %for.cond59, !llvm.loop !16

for.end74:                                        ; preds = %for.cond59
  br label %if.end75

if.end75:                                         ; preds = %for.end74, %if.then55
  call void @llvm.lifetime.end.p0(i64 3300, ptr %s1) #5
  call void @llvm.lifetime.end.p0(i64 550, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #5
  call void @llvm.lifetime.end.p0(i64 2200, ptr %flag) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

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
!16 = distinct !{!16, !11, !12}
