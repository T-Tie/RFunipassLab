; ModuleID = '/tmp/tmpwrbptorm.cpp'
source_filename = "/tmp/tmpwrbptorm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s\0A%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %la = alloca i32, align 4
  %lb = alloca i32, align 4
  %s = alloca double, align 8
  %r = alloca double, align 8
  %a = alloca [1000 x i8], align 16
  %b = alloca [1000 x i8], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #4
  store i32 1, ptr %h, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %la) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lb) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #4
  call void @llvm.lifetime.start.p0(i64 1000, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 1000, ptr %b) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %s)
  %arraydecay = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [1000 x i8], ptr %b, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay, ptr noundef %arraydecay1)
  %arraydecay3 = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 0
  %call4 = call i64 @strlen(ptr noundef %arraydecay3) #5
  %conv = trunc i64 %call4 to i32
  store i32 %conv, ptr %la, align 4, !tbaa !5
  %arraydecay5 = getelementptr inbounds [1000 x i8], ptr %b, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #5
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %lb, align 4, !tbaa !5
  %0 = load i32, ptr %la, align 4, !tbaa !5
  %1 = load i32, ptr %lb, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end80

if.else:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv9 = sext i8 %3 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %4 to i64
  %arrayidx12 = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 %idxprom11
  %5 = load i8, ptr %arrayidx12, align 1, !tbaa !9
  %conv13 = sext i8 %5 to i32
  %cmp14 = icmp ne i32 %conv13, 65
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %6 to i64
  %arrayidx16 = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 %idxprom15
  %7 = load i8, ptr %arrayidx16, align 1, !tbaa !9
  %conv17 = sext i8 %7 to i32
  %cmp18 = icmp ne i32 %conv17, 71
  br i1 %cmp18, label %land.lhs.true19, label %lor.lhs.false

land.lhs.true19:                                  ; preds = %land.lhs.true
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %8 to i64
  %arrayidx21 = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 %idxprom20
  %9 = load i8, ptr %arrayidx21, align 1, !tbaa !9
  %conv22 = sext i8 %9 to i32
  %cmp23 = icmp ne i32 %conv22, 67
  br i1 %cmp23, label %land.lhs.true24, label %lor.lhs.false

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %10 to i64
  %arrayidx26 = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 %idxprom25
  %11 = load i8, ptr %arrayidx26, align 1, !tbaa !9
  %conv27 = sext i8 %11 to i32
  %cmp28 = icmp ne i32 %conv27, 84
  br i1 %cmp28, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true24, %land.lhs.true19, %land.lhs.true, %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %12 to i64
  %arrayidx30 = getelementptr inbounds [1000 x i8], ptr %b, i64 0, i64 %idxprom29
  %13 = load i8, ptr %arrayidx30, align 1, !tbaa !9
  %conv31 = sext i8 %13 to i32
  %cmp32 = icmp ne i32 %conv31, 65
  br i1 %cmp32, label %land.lhs.true33, label %if.end

land.lhs.true33:                                  ; preds = %lor.lhs.false
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %14 to i64
  %arrayidx35 = getelementptr inbounds [1000 x i8], ptr %b, i64 0, i64 %idxprom34
  %15 = load i8, ptr %arrayidx35, align 1, !tbaa !9
  %conv36 = sext i8 %15 to i32
  %cmp37 = icmp ne i32 %conv36, 71
  br i1 %cmp37, label %land.lhs.true38, label %if.end

land.lhs.true38:                                  ; preds = %land.lhs.true33
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %16 to i64
  %arrayidx40 = getelementptr inbounds [1000 x i8], ptr %b, i64 0, i64 %idxprom39
  %17 = load i8, ptr %arrayidx40, align 1, !tbaa !9
  %conv41 = sext i8 %17 to i32
  %cmp42 = icmp ne i32 %conv41, 67
  br i1 %cmp42, label %land.lhs.true43, label %if.end

land.lhs.true43:                                  ; preds = %land.lhs.true38
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %18 to i64
  %arrayidx45 = getelementptr inbounds [1000 x i8], ptr %b, i64 0, i64 %idxprom44
  %19 = load i8, ptr %arrayidx45, align 1, !tbaa !9
  %conv46 = sext i8 %19 to i32
  %cmp47 = icmp ne i32 %conv46, 84
  br i1 %cmp47, label %if.then48, label %if.end

if.then48:                                        ; preds = %land.lhs.true43, %land.lhs.true24
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %h, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %land.lhs.true43, %land.lhs.true38, %land.lhs.true33, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then48, %for.cond
  %21 = load i32, ptr %h, align 4, !tbaa !5
  %cmp50 = icmp eq i32 %21, 1
  br i1 %cmp50, label %if.then51, label %if.end79

if.then51:                                        ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc68, %if.then51
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %22 to i64
  %arrayidx54 = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 %idxprom53
  %23 = load i8, ptr %arrayidx54, align 1, !tbaa !9
  %conv55 = sext i8 %23 to i32
  %cmp56 = icmp ne i32 %conv55, 0
  br i1 %cmp56, label %for.body57, label %for.end70

for.body57:                                       ; preds = %for.cond52
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %24 to i64
  %arrayidx59 = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 %idxprom58
  %25 = load i8, ptr %arrayidx59, align 1, !tbaa !9
  %conv60 = sext i8 %25 to i32
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %26 to i64
  %arrayidx62 = getelementptr inbounds [1000 x i8], ptr %b, i64 0, i64 %idxprom61
  %27 = load i8, ptr %arrayidx62, align 1, !tbaa !9
  %conv63 = sext i8 %27 to i32
  %cmp64 = icmp eq i32 %conv60, %conv63
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %for.body57
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %inc66 = add nsw i32 %28, 1
  store i32 %inc66, ptr %j, align 4, !tbaa !5
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %for.body57
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %inc69 = add nsw i32 %29, 1
  store i32 %inc69, ptr %i, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !13

for.end70:                                        ; preds = %for.cond52
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %conv71 = sitofp i32 %30 to double
  %31 = load i32, ptr %la, align 4, !tbaa !5
  %conv72 = sitofp i32 %31 to double
  %div = fdiv double %conv71, %conv72
  store double %div, ptr %r, align 8, !tbaa !14
  %32 = load double, ptr %r, align 8, !tbaa !14
  %33 = load double, ptr %s, align 8, !tbaa !14
  %cmp73 = fcmp oge double %32, %33
  br i1 %cmp73, label %if.then74, label %if.else76

if.then74:                                        ; preds = %for.end70
  %call75 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end78

if.else76:                                        ; preds = %for.end70
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end78

if.end78:                                         ; preds = %if.else76, %if.then74
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %for.end
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then
  call void @llvm.lifetime.end.p0(i64 1000, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 1000, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lb) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %la) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #4
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
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !7, i64 0}
