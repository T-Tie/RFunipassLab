; ModuleID = '/tmp/tmppo7ggh5u.cpp'
source_filename = "/tmp/tmppo7ggh5u.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [256 x i8], align 16
  %s1 = alloca [256 x i8], align 16
  %t = alloca [256 x i8], align 16
  %j = alloca i32, align 4
  %ls1 = alloca i32, align 4
  %lt = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %s1) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %t) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ls1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lt) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 0, ptr %k, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [256 x i8], ptr %s, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %s1, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [256 x i8], ptr %t, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2)
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %s1, i64 0, i64 0
  %call4 = call i64 @strlen(ptr noundef %arraydecay3) #5
  %conv = trunc i64 %call4 to i32
  store i32 %conv, ptr %ls1, align 4, !tbaa !5
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %t, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #5
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %lt, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %s, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %2 to i64
  %arrayidx9 = getelementptr inbounds [256 x i8], ptr %s, i64 0, i64 %idxprom8
  %3 = load i8, ptr %arrayidx9, align 1, !tbaa !9
  %conv10 = sext i8 %3 to i32
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom11 = sext i32 %4 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], ptr %s1, i64 0, i64 %idxprom11
  %5 = load i8, ptr %arrayidx12, align 1, !tbaa !9
  %conv13 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv10, %conv13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %8 = load i32, ptr %ls1, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 1
  %cmp14 = icmp eq i32 %7, %sub
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %if.end16

if.else:                                          ; preds = %for.body
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc17 = add nsw i32 %9, 1
  store i32 %inc17, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then15, %for.cond
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %conv18 = sext i32 %10 to i64
  %arraydecay19 = getelementptr inbounds [256 x i8], ptr %s, i64 0, i64 0
  %call20 = call i64 @strlen(ptr noundef %arraydecay19) #5
  %cmp21 = icmp uge i64 %conv18, %call20
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %for.end
  %arraydecay23 = getelementptr inbounds [256 x i8], ptr %s, i64 0, i64 0
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay23)
  br label %if.end54

if.else25:                                        ; preds = %for.end
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc34, %if.else25
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %ls1, align 4, !tbaa !5
  %sub27 = sub nsw i32 %12, %13
  %add = add nsw i32 %sub27, 2
  %cmp28 = icmp slt i32 %11, %add
  br i1 %cmp28, label %for.body29, label %for.end36

for.body29:                                       ; preds = %for.cond26
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom30 = sext i32 %14 to i64
  %arrayidx31 = getelementptr inbounds [256 x i8], ptr %s, i64 0, i64 %idxprom30
  %15 = load i8, ptr %arrayidx31, align 1, !tbaa !9
  %conv32 = sext i8 %15 to i32
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv32)
  br label %for.inc34

for.inc34:                                        ; preds = %for.body29
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc35 = add nsw i32 %16, 1
  store i32 %inc35, ptr %j, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !13

for.end36:                                        ; preds = %for.cond26
  %arraydecay37 = getelementptr inbounds [256 x i8], ptr %t, i64 0, i64 0
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arraydecay37)
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %add39 = add nsw i32 %17, 2
  store i32 %add39, ptr %j, align 4, !tbaa !5
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc50, %for.end36
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %conv41 = sext i32 %18 to i64
  %arraydecay42 = getelementptr inbounds [256 x i8], ptr %s, i64 0, i64 0
  %call43 = call i64 @strlen(ptr noundef %arraydecay42) #5
  %cmp44 = icmp ult i64 %conv41, %call43
  br i1 %cmp44, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond40
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %19 to i64
  %arrayidx47 = getelementptr inbounds [256 x i8], ptr %s, i64 0, i64 %idxprom46
  %20 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %conv48 = sext i8 %20 to i32
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv48)
  br label %for.inc50

for.inc50:                                        ; preds = %for.body45
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %inc51 = add nsw i32 %21, 1
  store i32 %inc51, ptr %j, align 4, !tbaa !5
  br label %for.cond40, !llvm.loop !14

for.end52:                                        ; preds = %for.cond40
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end54

if.end54:                                         ; preds = %for.end52, %if.then22
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ls1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %s1) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %s) #4
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
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
