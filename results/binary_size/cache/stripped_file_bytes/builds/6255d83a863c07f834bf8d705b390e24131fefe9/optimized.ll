; ModuleID = '/tmp/tmp4z3g1pdi.cpp'
source_filename = "/tmp/tmp4z3g1pdi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [8 x i8] c"%lf%s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %len = alloca i32, align 4
  %flag = alloca i32, align 4
  %dna1 = alloca [501 x i8], align 16
  %dna2 = alloca [501 x i8], align 16
  %rate = alloca double, align 8
  %ra = alloca double, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %len1) #3
  store i32 0, ptr %len1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %len2) #3
  store i32 0, ptr %len2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #3
  store i32 0, ptr %len, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #3
  store i32 0, ptr %flag, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 501, ptr %dna1) #3
  call void @llvm.lifetime.start.p0(i64 501, ptr %dna2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rate) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ra) #3
  %arraydecay = getelementptr inbounds [501 x i8], ptr %dna1, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [501 x i8], ptr %dna2, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %rate, ptr noundef %arraydecay, ptr noundef %arraydecay1)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [501 x i8], ptr %dna1, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [501 x i8], ptr %dna1, i64 0, i64 %idxprom2
  %3 = load i8, ptr %arrayidx3, align 1, !tbaa !9
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 65
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [501 x i8], ptr %dna1, i64 0, i64 %idxprom4
  %5 = load i8, ptr %arrayidx5, align 1, !tbaa !9
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 84
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [501 x i8], ptr %dna1, i64 0, i64 %idxprom9
  %7 = load i8, ptr %arrayidx10, align 1, !tbaa !9
  %conv11 = sext i8 %7 to i32
  %cmp12 = icmp eq i32 %conv11, 71
  br i1 %cmp12, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false8
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [501 x i8], ptr %dna1, i64 0, i64 %idxprom14
  %9 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %conv16 = sext i8 %9 to i32
  %cmp17 = icmp eq i32 %conv16, 67
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false13, %lor.lhs.false8, %lor.lhs.false, %for.body
  %10 = load i32, ptr %len1, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %len1, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false13
  store i32 1, ptr %flag, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc18 = add nsw i32 %11, 1
  store i32 %inc18, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.else, %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc47, %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [501 x i8], ptr %dna2, i64 0, i64 %idxprom20
  %13 = load i8, ptr %arrayidx21, align 1, !tbaa !9
  %tobool22 = icmp ne i8 %13, 0
  br i1 %tobool22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond19
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [501 x i8], ptr %dna2, i64 0, i64 %idxprom24
  %15 = load i8, ptr %arrayidx25, align 1, !tbaa !9
  %conv26 = sext i8 %15 to i32
  %cmp27 = icmp eq i32 %conv26, 65
  br i1 %cmp27, label %if.then43, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %for.body23
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %16 to i64
  %arrayidx30 = getelementptr inbounds [501 x i8], ptr %dna2, i64 0, i64 %idxprom29
  %17 = load i8, ptr %arrayidx30, align 1, !tbaa !9
  %conv31 = sext i8 %17 to i32
  %cmp32 = icmp eq i32 %conv31, 84
  br i1 %cmp32, label %if.then43, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false28
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %18 to i64
  %arrayidx35 = getelementptr inbounds [501 x i8], ptr %dna2, i64 0, i64 %idxprom34
  %19 = load i8, ptr %arrayidx35, align 1, !tbaa !9
  %conv36 = sext i8 %19 to i32
  %cmp37 = icmp eq i32 %conv36, 71
  br i1 %cmp37, label %if.then43, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false33
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %20 to i64
  %arrayidx40 = getelementptr inbounds [501 x i8], ptr %dna2, i64 0, i64 %idxprom39
  %21 = load i8, ptr %arrayidx40, align 1, !tbaa !9
  %conv41 = sext i8 %21 to i32
  %cmp42 = icmp eq i32 %conv41, 67
  br i1 %cmp42, label %if.then43, label %if.else45

if.then43:                                        ; preds = %lor.lhs.false38, %lor.lhs.false33, %lor.lhs.false28, %for.body23
  %22 = load i32, ptr %len2, align 4, !tbaa !5
  %inc44 = add nsw i32 %22, 1
  store i32 %inc44, ptr %len2, align 4, !tbaa !5
  br label %if.end46

if.else45:                                        ; preds = %lor.lhs.false38
  store i32 1, ptr %flag, align 4, !tbaa !5
  br label %for.end49

if.end46:                                         ; preds = %if.then43
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc48 = add nsw i32 %23, 1
  store i32 %inc48, ptr %i, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !13

for.end49:                                        ; preds = %if.else45, %for.cond19
  %24 = load i32, ptr %len1, align 4, !tbaa !5
  %25 = load i32, ptr %len2, align 4, !tbaa !5
  %cmp50 = icmp ne i32 %24, %25
  br i1 %cmp50, label %if.then53, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %for.end49
  %26 = load i32, ptr %flag, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %26, 1
  br i1 %cmp52, label %if.then53, label %if.else55

if.then53:                                        ; preds = %lor.lhs.false51, %for.end49
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end80

if.else55:                                        ; preds = %lor.lhs.false51
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc69, %if.else55
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %28 = load i32, ptr %len1, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %27, %28
  br i1 %cmp57, label %for.body58, label %for.end71

for.body58:                                       ; preds = %for.cond56
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %29 to i64
  %arrayidx60 = getelementptr inbounds [501 x i8], ptr %dna1, i64 0, i64 %idxprom59
  %30 = load i8, ptr %arrayidx60, align 1, !tbaa !9
  %conv61 = sext i8 %30 to i32
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %31 to i64
  %arrayidx63 = getelementptr inbounds [501 x i8], ptr %dna2, i64 0, i64 %idxprom62
  %32 = load i8, ptr %arrayidx63, align 1, !tbaa !9
  %conv64 = sext i8 %32 to i32
  %cmp65 = icmp eq i32 %conv61, %conv64
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %for.body58
  %33 = load i32, ptr %len, align 4, !tbaa !5
  %inc67 = add nsw i32 %33, 1
  store i32 %inc67, ptr %len, align 4, !tbaa !5
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %for.body58
  br label %for.inc69

for.inc69:                                        ; preds = %if.end68
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %inc70 = add nsw i32 %34, 1
  store i32 %inc70, ptr %i, align 4, !tbaa !5
  br label %for.cond56, !llvm.loop !14

for.end71:                                        ; preds = %for.cond56
  %35 = load i32, ptr %len, align 4, !tbaa !5
  %conv72 = sitofp i32 %35 to double
  %36 = load i32, ptr %len1, align 4, !tbaa !5
  %conv73 = sitofp i32 %36 to double
  %div = fdiv double %conv72, %conv73
  store double %div, ptr %ra, align 8, !tbaa !15
  %37 = load double, ptr %ra, align 8, !tbaa !15
  %38 = load double, ptr %rate, align 8, !tbaa !15
  %cmp74 = fcmp ogt double %37, %38
  br i1 %cmp74, label %if.then75, label %if.else77

if.then75:                                        ; preds = %for.end71
  %call76 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end79

if.else77:                                        ; preds = %for.end71
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end79

if.end79:                                         ; preds = %if.else77, %if.then75
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then53
  call void @llvm.lifetime.end.p0(i64 8, ptr %ra) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rate) #3
  call void @llvm.lifetime.end.p0(i64 501, ptr %dna2) #3
  call void @llvm.lifetime.end.p0(i64 501, ptr %dna1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %len2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %len1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !7, i64 0}
