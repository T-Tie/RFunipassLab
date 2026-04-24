; ModuleID = '/tmp/tmps1zcc3wi.cpp'
source_filename = "/tmp/tmps1zcc3wi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"yes\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"no\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d = alloca double, align 8
  %s = alloca [100 x i8], align 16
  %u = alloca [100 x i8], align 16
  %f = alloca i32, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %d)
  call void @llvm.lifetime.start.p0(i64 100, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 100, ptr %u) #3
  %arraydecay = getelementptr inbounds [100 x i8], ptr %s, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [100 x i8], ptr %u, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay, ptr noundef %arraydecay1)
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  store i32 0, ptr %f, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  store i32 0, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #3
  store i32 0, ptr %r, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x i8], ptr %s, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %t, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %t, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc3 = add nsw i32 %3, 1
  store i32 %inc3, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [100 x i8], ptr %u, i64 0, i64 %idxprom5
  %5 = load i8, ptr %arrayidx6, align 1, !tbaa !9
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond4
  %6 = load i32, ptr %r, align 4, !tbaa !5
  %inc10 = add nsw i32 %6, 1
  store i32 %inc10, ptr %r, align 4, !tbaa !5
  br label %for.inc11

for.inc11:                                        ; preds = %for.body9
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %7, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !13

for.end13:                                        ; preds = %for.cond4
  %8 = load i32, ptr %r, align 4, !tbaa !5
  %9 = load i32, ptr %t, align 4, !tbaa !5
  %cmp14 = icmp ne i32 %8, %9
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %for.end13
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %for.end13
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc76, %if.else
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds [100 x i8], ptr %s, i64 0, i64 %idxprom17
  %11 = load i8, ptr %arrayidx18, align 1, !tbaa !9
  %conv19 = sext i8 %11 to i32
  %cmp20 = icmp ne i32 %conv19, 0
  br i1 %cmp20, label %for.body21, label %for.end78

for.body21:                                       ; preds = %for.cond16
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %12 to i64
  %arrayidx23 = getelementptr inbounds [100 x i8], ptr %s, i64 0, i64 %idxprom22
  %13 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %conv24 = sext i8 %13 to i32
  %cmp25 = icmp ne i32 %conv24, 65
  br i1 %cmp25, label %land.lhs.true, label %if.else42

land.lhs.true:                                    ; preds = %for.body21
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %14 to i64
  %arrayidx27 = getelementptr inbounds [100 x i8], ptr %s, i64 0, i64 %idxprom26
  %15 = load i8, ptr %arrayidx27, align 1, !tbaa !9
  %conv28 = sext i8 %15 to i32
  %cmp29 = icmp ne i32 %conv28, 84
  br i1 %cmp29, label %land.lhs.true30, label %if.else42

land.lhs.true30:                                  ; preds = %land.lhs.true
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %16 to i64
  %arrayidx32 = getelementptr inbounds [100 x i8], ptr %s, i64 0, i64 %idxprom31
  %17 = load i8, ptr %arrayidx32, align 1, !tbaa !9
  %conv33 = sext i8 %17 to i32
  %cmp34 = icmp ne i32 %conv33, 67
  br i1 %cmp34, label %land.lhs.true35, label %if.else42

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %18 to i64
  %arrayidx37 = getelementptr inbounds [100 x i8], ptr %s, i64 0, i64 %idxprom36
  %19 = load i8, ptr %arrayidx37, align 1, !tbaa !9
  %conv38 = sext i8 %19 to i32
  %cmp39 = icmp ne i32 %conv38, 71
  br i1 %cmp39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %land.lhs.true35
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else42:                                        ; preds = %land.lhs.true35, %land.lhs.true30, %land.lhs.true, %for.body21
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %20 to i64
  %arrayidx44 = getelementptr inbounds [100 x i8], ptr %u, i64 0, i64 %idxprom43
  %21 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %conv45 = sext i8 %21 to i32
  %cmp46 = icmp ne i32 %conv45, 65
  br i1 %cmp46, label %land.lhs.true47, label %if.else64

land.lhs.true47:                                  ; preds = %if.else42
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %22 to i64
  %arrayidx49 = getelementptr inbounds [100 x i8], ptr %u, i64 0, i64 %idxprom48
  %23 = load i8, ptr %arrayidx49, align 1, !tbaa !9
  %conv50 = sext i8 %23 to i32
  %cmp51 = icmp ne i32 %conv50, 84
  br i1 %cmp51, label %land.lhs.true52, label %if.else64

land.lhs.true52:                                  ; preds = %land.lhs.true47
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %24 to i64
  %arrayidx54 = getelementptr inbounds [100 x i8], ptr %u, i64 0, i64 %idxprom53
  %25 = load i8, ptr %arrayidx54, align 1, !tbaa !9
  %conv55 = sext i8 %25 to i32
  %cmp56 = icmp ne i32 %conv55, 67
  br i1 %cmp56, label %land.lhs.true57, label %if.else64

land.lhs.true57:                                  ; preds = %land.lhs.true52
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %26 to i64
  %arrayidx59 = getelementptr inbounds [100 x i8], ptr %u, i64 0, i64 %idxprom58
  %27 = load i8, ptr %arrayidx59, align 1, !tbaa !9
  %conv60 = sext i8 %27 to i32
  %cmp61 = icmp ne i32 %conv60, 71
  br i1 %cmp61, label %if.then62, label %if.else64

if.then62:                                        ; preds = %land.lhs.true57
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else64:                                        ; preds = %land.lhs.true57, %land.lhs.true52, %land.lhs.true47, %if.else42
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %28 to i64
  %arrayidx66 = getelementptr inbounds [100 x i8], ptr %s, i64 0, i64 %idxprom65
  %29 = load i8, ptr %arrayidx66, align 1, !tbaa !9
  %conv67 = sext i8 %29 to i32
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %30 to i64
  %arrayidx69 = getelementptr inbounds [100 x i8], ptr %u, i64 0, i64 %idxprom68
  %31 = load i8, ptr %arrayidx69, align 1, !tbaa !9
  %conv70 = sext i8 %31 to i32
  %cmp71 = icmp eq i32 %conv67, %conv70
  br i1 %cmp71, label %if.then72, label %if.end

if.then72:                                        ; preds = %if.else64
  %32 = load i32, ptr %f, align 4, !tbaa !5
  %inc73 = add nsw i32 %32, 1
  store i32 %inc73, ptr %f, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then72, %if.else64
  br label %if.end74

if.end74:                                         ; preds = %if.end
  br label %if.end75

if.end75:                                         ; preds = %if.end74
  br label %for.inc76

for.inc76:                                        ; preds = %if.end75
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %inc77 = add nsw i32 %33, 1
  store i32 %inc77, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.end78:                                        ; preds = %for.cond16
  %34 = load i32, ptr %f, align 4, !tbaa !5
  %conv79 = sitofp i32 %34 to double
  %mul = fmul double %conv79, 1.000000e+00
  %35 = load i32, ptr %t, align 4, !tbaa !5
  %conv80 = sitofp i32 %35 to double
  %div = fdiv double %mul, %conv80
  %36 = load double, ptr %d, align 8, !tbaa !15
  %cmp81 = fcmp oge double %div, %36
  br i1 %cmp81, label %if.then82, label %if.else84

if.then82:                                        ; preds = %for.end78
  %call83 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else84:                                        ; preds = %for.end78
  %call85 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else84, %if.then82, %if.then62, %if.then40, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 100, ptr %u) #3
  call void @llvm.lifetime.end.p0(i64 100, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #3
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
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
