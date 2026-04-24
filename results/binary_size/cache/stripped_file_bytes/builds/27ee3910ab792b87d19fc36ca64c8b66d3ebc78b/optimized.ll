; ModuleID = '/tmp/tmptd_z33rl.cpp'
source_filename = "/tmp/tmptd_z33rl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %flag = alloca [300 x i32], align 16
  %last = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 1200, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 1200, ptr %flag) #4
  call void @llvm.memset.p0.i64(ptr align 16 %flag, i8 0, i64 1200, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #4
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
  %arrayidx = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc21, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 1
  %cmp3 = icmp slt i32 %4, %sub
  br i1 %cmp3, label %for.body4, label %for.end23

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc18, %for.body4
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body7, label %for.end20

for.body7:                                        ; preds = %for.cond5
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [300 x i32], ptr %flag, i64 0, i64 %idxprom8
  %10 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body7
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom11
  %12 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom13
  %14 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %12, %14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [300 x i32], ptr %flag, i64 0, i64 %idxprom16
  store i32 1, ptr %arrayidx17, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body7
  br label %for.inc18

for.inc18:                                        ; preds = %if.end
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc19 = add nsw i32 %16, 1
  store i32 %inc19, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.end20:                                        ; preds = %for.cond5
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.end23:                                        ; preds = %for.cond2
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %sub24 = sub nsw i32 %18, 1
  store i32 %sub24, ptr %i, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc33, %for.end23
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %cmp26 = icmp sge i32 %19, 0
  br i1 %cmp26, label %for.body27, label %for.end34

for.body27:                                       ; preds = %for.cond25
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [300 x i32], ptr %flag, i64 0, i64 %idxprom28
  %21 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %21, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.body27
  %22 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %22, ptr %last, align 4, !tbaa !5
  br label %for.end34

if.end32:                                         ; preds = %for.body27
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !14

for.end34:                                        ; preds = %if.then31, %for.cond25
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc46, %for.end34
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %25 = load i32, ptr %last, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %24, %25
  br i1 %cmp36, label %for.body37, label %for.end48

for.body37:                                       ; preds = %for.cond35
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %26 to i64
  %arrayidx39 = getelementptr inbounds [300 x i32], ptr %flag, i64 0, i64 %idxprom38
  %27 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %27, 0
  br i1 %cmp40, label %if.then41, label %if.end45

if.then41:                                        ; preds = %for.body37
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %28 to i64
  %arrayidx43 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom42
  %29 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %29)
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %for.body37
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %inc47 = add nsw i32 %30, 1
  store i32 %inc47, ptr %i, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !15

for.end48:                                        ; preds = %for.cond35
  %31 = load i32, ptr %last, align 4, !tbaa !5
  %idxprom49 = sext i32 %31 to i64
  %arrayidx50 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom49
  %32 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %32)
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #4
  call void @llvm.lifetime.end.p0(i64 1200, ptr %flag) #4
  call void @llvm.lifetime.end.p0(i64 1200, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
