; ModuleID = '/tmp/tmpyqin1hln.cpp'
source_filename = "/tmp/tmpyqin1hln.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %y = alloca [200 x i32], align 16
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 800, ptr %y) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
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
  %arrayidx = getelementptr inbounds [200 x i32], ptr %y, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %m1, ptr noundef %m2)
  %3 = load i32, ptr %m1, align 4, !tbaa !5
  %4 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %3, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  %5 = load i32, ptr %m1, align 4, !tbaa !5
  store i32 %5, ptr %t, align 4, !tbaa !5
  %6 = load i32, ptr %m2, align 4, !tbaa !5
  store i32 %6, ptr %m1, align 4, !tbaa !5
  %7 = load i32, ptr %t, align 4, !tbaa !5
  store i32 %7, ptr %m2, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [200 x i32], ptr %y, i64 0, i64 %idxprom3
  %9 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %rem = srem i32 %9, 4
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [200 x i32], ptr %y, i64 0, i64 %idxprom6
  %11 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %rem8 = srem i32 %11, 100
  %cmp9 = icmp ne i32 %rem8, 0
  br i1 %cmp9, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [200 x i32], ptr %y, i64 0, i64 %idxprom10
  %13 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %rem12 = srem i32 %13, 100
  %cmp13 = icmp eq i32 %rem12, 0
  br i1 %cmp13, label %land.lhs.true14, label %if.else47

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [200 x i32], ptr %y, i64 0, i64 %idxprom15
  %15 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %rem17 = srem i32 %15, 400
  %cmp18 = icmp eq i32 %rem17, 0
  br i1 %cmp18, label %if.then19, label %if.else47

if.then19:                                        ; preds = %land.lhs.true14, %land.lhs.true
  %16 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %16, 1
  br i1 %cmp20, label %land.lhs.true21, label %lor.lhs.false23

land.lhs.true21:                                  ; preds = %if.then19
  %17 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %17, 4
  br i1 %cmp22, label %if.then43, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %land.lhs.true21, %if.then19
  %18 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %18, 1
  br i1 %cmp24, label %land.lhs.true25, label %lor.lhs.false27

land.lhs.true25:                                  ; preds = %lor.lhs.false23
  %19 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %19, 7
  br i1 %cmp26, label %if.then43, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %land.lhs.true25, %lor.lhs.false23
  %20 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %20, 2
  br i1 %cmp28, label %land.lhs.true29, label %lor.lhs.false31

land.lhs.true29:                                  ; preds = %lor.lhs.false27
  %21 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %21, 8
  br i1 %cmp30, label %if.then43, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %land.lhs.true29, %lor.lhs.false27
  %22 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %22, 3
  br i1 %cmp32, label %land.lhs.true33, label %lor.lhs.false35

land.lhs.true33:                                  ; preds = %lor.lhs.false31
  %23 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %23, 11
  br i1 %cmp34, label %if.then43, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %land.lhs.true33, %lor.lhs.false31
  %24 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %24, 4
  br i1 %cmp36, label %land.lhs.true37, label %lor.lhs.false39

land.lhs.true37:                                  ; preds = %lor.lhs.false35
  %25 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %25, 7
  br i1 %cmp38, label %if.then43, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %land.lhs.true37, %lor.lhs.false35
  %26 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %26, 9
  br i1 %cmp40, label %land.lhs.true41, label %if.else

land.lhs.true41:                                  ; preds = %lor.lhs.false39
  %27 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %27, 12
  br i1 %cmp42, label %if.then43, label %if.else

if.then43:                                        ; preds = %land.lhs.true41, %land.lhs.true37, %land.lhs.true33, %land.lhs.true29, %land.lhs.true25, %land.lhs.true21
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end46

if.else:                                          ; preds = %land.lhs.true41, %lor.lhs.false39
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then43
  br label %if.end76

if.else47:                                        ; preds = %land.lhs.true14, %lor.lhs.false
  %28 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp48 = icmp eq i32 %28, 1
  br i1 %cmp48, label %land.lhs.true49, label %lor.lhs.false51

land.lhs.true49:                                  ; preds = %if.else47
  %29 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp50 = icmp eq i32 %29, 10
  br i1 %cmp50, label %if.then71, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %land.lhs.true49, %if.else47
  %30 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %30, 2
  br i1 %cmp52, label %land.lhs.true53, label %lor.lhs.false55

land.lhs.true53:                                  ; preds = %lor.lhs.false51
  %31 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %31, 3
  br i1 %cmp54, label %if.then71, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %land.lhs.true53, %lor.lhs.false51
  %32 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp56 = icmp eq i32 %32, 2
  br i1 %cmp56, label %land.lhs.true57, label %lor.lhs.false59

land.lhs.true57:                                  ; preds = %lor.lhs.false55
  %33 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp58 = icmp eq i32 %33, 11
  br i1 %cmp58, label %if.then71, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %land.lhs.true57, %lor.lhs.false55
  %34 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %34, 3
  br i1 %cmp60, label %land.lhs.true61, label %lor.lhs.false63

land.lhs.true61:                                  ; preds = %lor.lhs.false59
  %35 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp62 = icmp eq i32 %35, 11
  br i1 %cmp62, label %if.then71, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %land.lhs.true61, %lor.lhs.false59
  %36 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %36, 4
  br i1 %cmp64, label %land.lhs.true65, label %lor.lhs.false67

land.lhs.true65:                                  ; preds = %lor.lhs.false63
  %37 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp66 = icmp eq i32 %37, 7
  br i1 %cmp66, label %if.then71, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %land.lhs.true65, %lor.lhs.false63
  %38 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp68 = icmp eq i32 %38, 9
  br i1 %cmp68, label %land.lhs.true69, label %if.else73

land.lhs.true69:                                  ; preds = %lor.lhs.false67
  %39 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp70 = icmp eq i32 %39, 12
  br i1 %cmp70, label %if.then71, label %if.else73

if.then71:                                        ; preds = %land.lhs.true69, %land.lhs.true65, %land.lhs.true61, %land.lhs.true57, %land.lhs.true53, %land.lhs.true49
  %call72 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end75

if.else73:                                        ; preds = %land.lhs.true69, %lor.lhs.false67
  %call74 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end75

if.end75:                                         ; preds = %if.else73, %if.then71
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end46
  br label %for.inc

for.inc:                                          ; preds = %if.end76
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m1) #3
  call void @llvm.lifetime.end.p0(i64 800, ptr %y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
