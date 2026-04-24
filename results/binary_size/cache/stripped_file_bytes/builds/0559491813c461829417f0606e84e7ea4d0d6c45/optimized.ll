; ModuleID = '/tmp/tmpc0syj0nr.cpp'
source_filename = "/tmp/tmpc0syj0nr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %l1 = alloca float, align 4
  %l2 = alloca float, align 4
  %n = alloca float, align 4
  %count = alloca float, align 4
  %result = alloca float, align 4
  %x = alloca [505 x i8], align 16
  %y = alloca [505 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #5
  store float 0.000000e+00, ptr %count, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #5
  call void @llvm.lifetime.start.p0(i64 505, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 505, ptr %y) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %call1 = call i32 @getchar()
  %arraydecay = getelementptr inbounds [505 x i8], ptr %x, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay)
  %arraydecay3 = getelementptr inbounds [505 x i8], ptr %y, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay3)
  %arraydecay5 = getelementptr inbounds [505 x i8], ptr %x, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #6
  %conv = uitofp i64 %call6 to float
  store float %conv, ptr %l1, align 4, !tbaa !5
  %arraydecay7 = getelementptr inbounds [505 x i8], ptr %y, i64 0, i64 0
  %call8 = call i64 @strlen(ptr noundef %arraydecay7) #6
  %conv9 = uitofp i64 %call8 to float
  store float %conv9, ptr %l2, align 4, !tbaa !5
  %0 = load float, ptr %l1, align 4, !tbaa !5
  %1 = load float, ptr %l2, align 4, !tbaa !5
  %cmp = fcmp une float %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !9
  %conv11 = sitofp i32 %2 to float
  %3 = load float, ptr %l1, align 4, !tbaa !5
  %cmp12 = fcmp olt float %conv11, %3
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [505 x i8], ptr %x, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %conv13 = sext i8 %5 to i32
  %cmp14 = icmp eq i32 %conv13, 65
  br i1 %cmp14, label %if.then29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom15 = sext i32 %6 to i64
  %arrayidx16 = getelementptr inbounds [505 x i8], ptr %x, i64 0, i64 %idxprom15
  %7 = load i8, ptr %arrayidx16, align 1, !tbaa !11
  %conv17 = sext i8 %7 to i32
  %cmp18 = icmp eq i32 %conv17, 84
  br i1 %cmp18, label %if.then29, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %8 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom20 = sext i32 %8 to i64
  %arrayidx21 = getelementptr inbounds [505 x i8], ptr %x, i64 0, i64 %idxprom20
  %9 = load i8, ptr %arrayidx21, align 1, !tbaa !11
  %conv22 = sext i8 %9 to i32
  %cmp23 = icmp eq i32 %conv22, 67
  br i1 %cmp23, label %if.then29, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false19
  %10 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom25 = sext i32 %10 to i64
  %arrayidx26 = getelementptr inbounds [505 x i8], ptr %x, i64 0, i64 %idxprom25
  %11 = load i8, ptr %arrayidx26, align 1, !tbaa !11
  %conv27 = sext i8 %11 to i32
  %cmp28 = icmp eq i32 %conv27, 71
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %lor.lhs.false24, %lor.lhs.false19, %lor.lhs.false, %for.body
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false24
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.then29
  %12 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc57, %for.end
  %13 = load i32, ptr %i, align 4, !tbaa !9
  %conv32 = sitofp i32 %13 to float
  %14 = load float, ptr %l2, align 4, !tbaa !5
  %cmp33 = fcmp olt float %conv32, %14
  br i1 %cmp33, label %for.body34, label %for.end59

for.body34:                                       ; preds = %for.cond31
  %15 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom35 = sext i32 %15 to i64
  %arrayidx36 = getelementptr inbounds [505 x i8], ptr %y, i64 0, i64 %idxprom35
  %16 = load i8, ptr %arrayidx36, align 1, !tbaa !11
  %conv37 = sext i8 %16 to i32
  %cmp38 = icmp eq i32 %conv37, 65
  br i1 %cmp38, label %if.then54, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %for.body34
  %17 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom40 = sext i32 %17 to i64
  %arrayidx41 = getelementptr inbounds [505 x i8], ptr %y, i64 0, i64 %idxprom40
  %18 = load i8, ptr %arrayidx41, align 1, !tbaa !11
  %conv42 = sext i8 %18 to i32
  %cmp43 = icmp eq i32 %conv42, 84
  br i1 %cmp43, label %if.then54, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false39
  %19 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom45 = sext i32 %19 to i64
  %arrayidx46 = getelementptr inbounds [505 x i8], ptr %y, i64 0, i64 %idxprom45
  %20 = load i8, ptr %arrayidx46, align 1, !tbaa !11
  %conv47 = sext i8 %20 to i32
  %cmp48 = icmp eq i32 %conv47, 67
  br i1 %cmp48, label %if.then54, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false44
  %21 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom50 = sext i32 %21 to i64
  %arrayidx51 = getelementptr inbounds [505 x i8], ptr %y, i64 0, i64 %idxprom50
  %22 = load i8, ptr %arrayidx51, align 1, !tbaa !11
  %conv52 = sext i8 %22 to i32
  %cmp53 = icmp eq i32 %conv52, 71
  br i1 %cmp53, label %if.then54, label %if.else55

if.then54:                                        ; preds = %lor.lhs.false49, %lor.lhs.false44, %lor.lhs.false39, %for.body34
  br label %for.inc57

if.else55:                                        ; preds = %lor.lhs.false49
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.inc57:                                        ; preds = %if.then54
  %23 = load i32, ptr %i, align 4, !tbaa !9
  %inc58 = add nsw i32 %23, 1
  store i32 %inc58, ptr %i, align 4, !tbaa !9
  br label %for.cond31, !llvm.loop !15

for.end59:                                        ; preds = %for.cond31
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc74, %for.end59
  %24 = load i32, ptr %i, align 4, !tbaa !9
  %conv61 = sitofp i32 %24 to float
  %25 = load float, ptr %l1, align 4, !tbaa !5
  %cmp62 = fcmp olt float %conv61, %25
  br i1 %cmp62, label %for.body63, label %for.end76

for.body63:                                       ; preds = %for.cond60
  %26 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom64 = sext i32 %26 to i64
  %arrayidx65 = getelementptr inbounds [505 x i8], ptr %x, i64 0, i64 %idxprom64
  %27 = load i8, ptr %arrayidx65, align 1, !tbaa !11
  %conv66 = sext i8 %27 to i32
  %28 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom67 = sext i32 %28 to i64
  %arrayidx68 = getelementptr inbounds [505 x i8], ptr %y, i64 0, i64 %idxprom67
  %29 = load i8, ptr %arrayidx68, align 1, !tbaa !11
  %conv69 = sext i8 %29 to i32
  %cmp70 = icmp eq i32 %conv66, %conv69
  br i1 %cmp70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %for.body63
  %30 = load float, ptr %count, align 4, !tbaa !5
  %inc72 = fadd float %30, 1.000000e+00
  store float %inc72, ptr %count, align 4, !tbaa !5
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %for.body63
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73
  %31 = load i32, ptr %i, align 4, !tbaa !9
  %inc75 = add nsw i32 %31, 1
  store i32 %inc75, ptr %i, align 4, !tbaa !9
  br label %for.cond60, !llvm.loop !16

for.end76:                                        ; preds = %for.cond60
  %32 = load float, ptr %count, align 4, !tbaa !5
  %33 = load float, ptr %l1, align 4, !tbaa !5
  %div = fdiv float %32, %33
  store float %div, ptr %result, align 4, !tbaa !5
  %34 = load float, ptr %result, align 4, !tbaa !5
  %35 = load float, ptr %n, align 4, !tbaa !5
  %cmp77 = fcmp ogt float %34, %35
  br i1 %cmp77, label %if.then78, label %if.else80

if.then78:                                        ; preds = %for.end76
  %call79 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end82

if.else80:                                        ; preds = %for.end76
  %call81 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end82

if.end82:                                         ; preds = %if.else80, %if.then78
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.else55, %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 505, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 505, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
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
!6 = !{!"float", !7, i64 0}
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
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
