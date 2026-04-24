; ModuleID = '/tmp/tmpl3sedmew.cpp'
source_filename = "/tmp/tmpl3sedmew.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [501 x i8], align 16
  %b = alloca [501 x i8], align 16
  %c = alloca double, align 8
  %m = alloca double, align 8
  %n = alloca double, align 8
  %p = alloca double, align 8
  %q = alloca double, align 8
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 501, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 501, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #4
  store double 0.000000e+00, ptr %n, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #4
  store i32 0, ptr %t, align 4, !tbaa !9
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %c)
  %arraydecay = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay)
  %arraydecay2 = getelementptr inbounds [501 x i8], ptr %b, i64 0, i64 0
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay2)
  %arraydecay4 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 0
  %call5 = call i64 @strlen(ptr noundef %arraydecay4) #5
  %conv = uitofp i64 %call5 to double
  store double %conv, ptr %q, align 8, !tbaa !5
  %arraydecay6 = getelementptr inbounds [501 x i8], ptr %b, i64 0, i64 0
  %call7 = call i64 @strlen(ptr noundef %arraydecay6) #5
  %conv8 = uitofp i64 %call7 to double
  store double %conv8, ptr %p, align 8, !tbaa !5
  %0 = load double, ptr %q, align 8, !tbaa !5
  %1 = load double, ptr %p, align 8, !tbaa !5
  %cmp = fcmp une double %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %t, align 4, !tbaa !9
  %add = add nsw i32 %2, 1
  store i32 %add, ptr %t, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !tbaa !9
  %conv9 = sitofp i32 %3 to double
  %4 = load double, ptr %q, align 8, !tbaa !5
  %cmp10 = fcmp olt double %conv9, %4
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %conv11 = sext i8 %6 to i32
  %cmp12 = icmp ne i32 %conv11, 84
  br i1 %cmp12, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom13
  %8 = load i8, ptr %arrayidx14, align 1, !tbaa !11
  %conv15 = sext i8 %8 to i32
  %cmp16 = icmp ne i32 %conv15, 67
  br i1 %cmp16, label %land.lhs.true17, label %if.end29

land.lhs.true17:                                  ; preds = %land.lhs.true
  %9 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom18 = sext i32 %9 to i64
  %arrayidx19 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom18
  %10 = load i8, ptr %arrayidx19, align 1, !tbaa !11
  %conv20 = sext i8 %10 to i32
  %cmp21 = icmp ne i32 %conv20, 71
  br i1 %cmp21, label %land.lhs.true22, label %if.end29

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %11 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom23 = sext i32 %11 to i64
  %arrayidx24 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom23
  %12 = load i8, ptr %arrayidx24, align 1, !tbaa !11
  %conv25 = sext i8 %12 to i32
  %cmp26 = icmp ne i32 %conv25, 65
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %land.lhs.true22
  %13 = load i32, ptr %t, align 4, !tbaa !9
  %add28 = add nsw i32 %13, 1
  store i32 %add28, ptr %t, align 4, !tbaa !9
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true22, %land.lhs.true17, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %14 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc56, %for.end
  %15 = load i32, ptr %i, align 4, !tbaa !9
  %conv31 = sitofp i32 %15 to double
  %16 = load double, ptr %p, align 8, !tbaa !5
  %cmp32 = fcmp olt double %conv31, %16
  br i1 %cmp32, label %for.body33, label %for.end58

for.body33:                                       ; preds = %for.cond30
  %17 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom34 = sext i32 %17 to i64
  %arrayidx35 = getelementptr inbounds [501 x i8], ptr %b, i64 0, i64 %idxprom34
  %18 = load i8, ptr %arrayidx35, align 1, !tbaa !11
  %conv36 = sext i8 %18 to i32
  %cmp37 = icmp ne i32 %conv36, 84
  br i1 %cmp37, label %land.lhs.true38, label %if.end55

land.lhs.true38:                                  ; preds = %for.body33
  %19 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom39 = sext i32 %19 to i64
  %arrayidx40 = getelementptr inbounds [501 x i8], ptr %b, i64 0, i64 %idxprom39
  %20 = load i8, ptr %arrayidx40, align 1, !tbaa !11
  %conv41 = sext i8 %20 to i32
  %cmp42 = icmp ne i32 %conv41, 67
  br i1 %cmp42, label %land.lhs.true43, label %if.end55

land.lhs.true43:                                  ; preds = %land.lhs.true38
  %21 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom44 = sext i32 %21 to i64
  %arrayidx45 = getelementptr inbounds [501 x i8], ptr %b, i64 0, i64 %idxprom44
  %22 = load i8, ptr %arrayidx45, align 1, !tbaa !11
  %conv46 = sext i8 %22 to i32
  %cmp47 = icmp ne i32 %conv46, 71
  br i1 %cmp47, label %land.lhs.true48, label %if.end55

land.lhs.true48:                                  ; preds = %land.lhs.true43
  %23 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom49 = sext i32 %23 to i64
  %arrayidx50 = getelementptr inbounds [501 x i8], ptr %b, i64 0, i64 %idxprom49
  %24 = load i8, ptr %arrayidx50, align 1, !tbaa !11
  %conv51 = sext i8 %24 to i32
  %cmp52 = icmp ne i32 %conv51, 65
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %land.lhs.true48
  %25 = load i32, ptr %t, align 4, !tbaa !9
  %add54 = add nsw i32 %25, 1
  store i32 %add54, ptr %t, align 4, !tbaa !9
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %land.lhs.true48, %land.lhs.true43, %land.lhs.true38, %for.body33
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %26 = load i32, ptr %i, align 4, !tbaa !9
  %inc57 = add nsw i32 %26, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !9
  br label %for.cond30, !llvm.loop !15

for.end58:                                        ; preds = %for.cond30
  %27 = load i32, ptr %t, align 4, !tbaa !9
  %cmp59 = icmp ne i32 %27, 0
  br i1 %cmp59, label %if.then60, label %if.else

if.then60:                                        ; preds = %for.end58
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end85

if.else:                                          ; preds = %for.end58
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc76, %if.else
  %28 = load i32, ptr %i, align 4, !tbaa !9
  %conv63 = sitofp i32 %28 to double
  %29 = load double, ptr %p, align 8, !tbaa !5
  %cmp64 = fcmp olt double %conv63, %29
  br i1 %cmp64, label %for.body65, label %for.end78

for.body65:                                       ; preds = %for.cond62
  %30 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom66 = sext i32 %30 to i64
  %arrayidx67 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom66
  %31 = load i8, ptr %arrayidx67, align 1, !tbaa !11
  %conv68 = sext i8 %31 to i32
  %32 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom69 = sext i32 %32 to i64
  %arrayidx70 = getelementptr inbounds [501 x i8], ptr %b, i64 0, i64 %idxprom69
  %33 = load i8, ptr %arrayidx70, align 1, !tbaa !11
  %conv71 = sext i8 %33 to i32
  %cmp72 = icmp eq i32 %conv68, %conv71
  br i1 %cmp72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %for.body65
  %34 = load double, ptr %n, align 8, !tbaa !5
  %add74 = fadd double %34, 1.000000e+00
  store double %add74, ptr %n, align 8, !tbaa !5
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %for.body65
  br label %for.inc76

for.inc76:                                        ; preds = %if.end75
  %35 = load i32, ptr %i, align 4, !tbaa !9
  %inc77 = add nsw i32 %35, 1
  store i32 %inc77, ptr %i, align 4, !tbaa !9
  br label %for.cond62, !llvm.loop !16

for.end78:                                        ; preds = %for.cond62
  %36 = load double, ptr %n, align 8, !tbaa !5
  %37 = load double, ptr %p, align 8, !tbaa !5
  %div = fdiv double %36, %37
  store double %div, ptr %m, align 8, !tbaa !5
  %38 = load double, ptr %m, align 8, !tbaa !5
  %39 = load double, ptr %c, align 8, !tbaa !5
  %cmp79 = fcmp ogt double %38, %39
  br i1 %cmp79, label %if.then80, label %if.else82

if.then80:                                        ; preds = %for.end78
  %call81 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end84

if.else82:                                        ; preds = %for.end78
  %call83 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end84

if.end84:                                         ; preds = %if.else82, %if.then80
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then60
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 501, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 501, ptr %a) #4
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
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
