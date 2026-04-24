; ModuleID = '/tmp/tmpx5n6iwvr.cpp'
source_filename = "/tmp/tmpx5n6iwvr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %e = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %a = alloca [500 x i8], align 16
  %b = alloca [500 x i8], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #4
  store i32 0, ptr %e, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  store i32 0, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 500, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 500, ptr %b) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x)
  %arraydecay = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay)
  %arraydecay2 = getelementptr inbounds [500 x i8], ptr %b, i64 0, i64 0
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay2)
  %arraydecay4 = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 0
  %call5 = call i64 @strlen(ptr noundef %arraydecay4) #5
  %conv = trunc i64 %call5 to i32
  store i32 %conv, ptr %n, align 4, !tbaa !5
  %arraydecay6 = getelementptr inbounds [500 x i8], ptr %b, i64 0, i64 0
  %call7 = call i64 @strlen(ptr noundef %arraydecay6) #5
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, ptr %k, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv9 = sext i8 %3 to i32
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %4 to i64
  %arrayidx11 = getelementptr inbounds [500 x i8], ptr %b, i64 0, i64 %idxprom10
  %5 = load i8, ptr %arrayidx11, align 1, !tbaa !9
  %conv12 = sext i8 %5 to i32
  %cmp13 = icmp eq i32 %conv9, %conv12
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %e, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %e, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc14 = add nsw i32 %7, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc61, %for.end
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %8, %9
  br i1 %cmp16, label %for.body17, label %for.end63

for.body17:                                       ; preds = %for.cond15
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom18
  %11 = load i8, ptr %arrayidx19, align 1, !tbaa !9
  %conv20 = sext i8 %11 to i32
  %cmp21 = icmp eq i32 %conv20, 65
  br i1 %cmp21, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body17
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %12 to i64
  %arrayidx23 = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom22
  %13 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %conv24 = sext i8 %13 to i32
  %cmp25 = icmp eq i32 %conv24, 84
  br i1 %cmp25, label %if.then36, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %14 to i64
  %arrayidx28 = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom27
  %15 = load i8, ptr %arrayidx28, align 1, !tbaa !9
  %conv29 = sext i8 %15 to i32
  %cmp30 = icmp eq i32 %conv29, 67
  br i1 %cmp30, label %if.then36, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false26
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %16 to i64
  %arrayidx33 = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom32
  %17 = load i8, ptr %arrayidx33, align 1, !tbaa !9
  %conv34 = sext i8 %17 to i32
  %cmp35 = icmp eq i32 %conv34, 71
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %lor.lhs.false31, %lor.lhs.false26, %lor.lhs.false, %for.body17
  %18 = load i32, ptr %m, align 4, !tbaa !5
  %inc37 = add nsw i32 %18, 1
  store i32 %inc37, ptr %m, align 4, !tbaa !5
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %lor.lhs.false31
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %19 to i64
  %arrayidx40 = getelementptr inbounds [500 x i8], ptr %b, i64 0, i64 %idxprom39
  %20 = load i8, ptr %arrayidx40, align 1, !tbaa !9
  %conv41 = sext i8 %20 to i32
  %cmp42 = icmp eq i32 %conv41, 65
  br i1 %cmp42, label %if.then58, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end38
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %21 to i64
  %arrayidx45 = getelementptr inbounds [500 x i8], ptr %b, i64 0, i64 %idxprom44
  %22 = load i8, ptr %arrayidx45, align 1, !tbaa !9
  %conv46 = sext i8 %22 to i32
  %cmp47 = icmp eq i32 %conv46, 84
  br i1 %cmp47, label %if.then58, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false43
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %23 to i64
  %arrayidx50 = getelementptr inbounds [500 x i8], ptr %b, i64 0, i64 %idxprom49
  %24 = load i8, ptr %arrayidx50, align 1, !tbaa !9
  %conv51 = sext i8 %24 to i32
  %cmp52 = icmp eq i32 %conv51, 67
  br i1 %cmp52, label %if.then58, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false48
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom54 = sext i32 %25 to i64
  %arrayidx55 = getelementptr inbounds [500 x i8], ptr %b, i64 0, i64 %idxprom54
  %26 = load i8, ptr %arrayidx55, align 1, !tbaa !9
  %conv56 = sext i8 %26 to i32
  %cmp57 = icmp eq i32 %conv56, 71
  br i1 %cmp57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %lor.lhs.false53, %lor.lhs.false48, %lor.lhs.false43, %if.end38
  %27 = load i32, ptr %m, align 4, !tbaa !5
  %inc59 = add nsw i32 %27, 1
  store i32 %inc59, ptr %m, align 4, !tbaa !5
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %lor.lhs.false53
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %inc62 = add nsw i32 %28, 1
  store i32 %inc62, ptr %i, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.end63:                                        ; preds = %for.cond15
  %29 = load i32, ptr %e, align 4, !tbaa !5
  %conv64 = sitofp i32 %29 to double
  %mul = fmul double %conv64, 1.000000e+00
  %30 = load i32, ptr %n, align 4, !tbaa !5
  %conv65 = sitofp i32 %30 to double
  %div = fdiv double %mul, %conv65
  store double %div, ptr %y, align 8, !tbaa !14
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %32 = load i32, ptr %k, align 4, !tbaa !5
  %cmp66 = icmp eq i32 %31, %32
  br i1 %cmp66, label %land.lhs.true, label %if.else77

land.lhs.true:                                    ; preds = %for.end63
  %33 = load i32, ptr %m, align 4, !tbaa !5
  %34 = load i32, ptr %n, align 4, !tbaa !5
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %add = add nsw i32 %34, %35
  %cmp67 = icmp eq i32 %33, %add
  br i1 %cmp67, label %if.then68, label %if.else77

if.then68:                                        ; preds = %land.lhs.true
  %36 = load double, ptr %y, align 8, !tbaa !14
  %37 = load double, ptr %x, align 8, !tbaa !14
  %cmp69 = fcmp oge double %36, %37
  br i1 %cmp69, label %if.then70, label %if.else

if.then70:                                        ; preds = %if.then68
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end76

if.else:                                          ; preds = %if.then68
  %38 = load double, ptr %y, align 8, !tbaa !14
  %39 = load double, ptr %x, align 8, !tbaa !14
  %cmp72 = fcmp olt double %38, %39
  br i1 %cmp72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.else
  %call74 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.else
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then70
  br label %if.end79

if.else77:                                        ; preds = %land.lhs.true, %for.end63
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end79

if.end79:                                         ; preds = %if.else77, %if.end76
  call void @llvm.lifetime.end.p0(i64 500, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 500, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
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
