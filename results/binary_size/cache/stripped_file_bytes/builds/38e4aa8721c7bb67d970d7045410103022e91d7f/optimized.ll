; ModuleID = '/tmp/tmp9qsmz9y9.cpp'
source_filename = "/tmp/tmp9qsmz9y9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.a = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [25 x %struct.a], align 16
  %max = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 200, ptr %a) #3
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
  %arrayidx = getelementptr inbounds [25 x %struct.a], ptr %a, i64 0, i64 %idxprom
  %x = getelementptr inbounds nuw %struct.a, ptr %arrayidx, i32 0, i32 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #3
  store i32 0, ptr %max, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc21, %for.end
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end23

for.body4:                                        ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  store i32 0, ptr %k, align 4, !tbaa !5
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  store i32 %add, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc16, %for.body4
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body7, label %for.end18

for.body7:                                        ; preds = %for.cond5
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [25 x %struct.a], ptr %a, i64 0, i64 %idxprom8
  %x10 = getelementptr inbounds nuw %struct.a, ptr %arrayidx9, i32 0, i32 0
  %10 = load i32, ptr %x10, align 8, !tbaa !12
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [25 x %struct.a], ptr %a, i64 0, i64 %idxprom11
  %x13 = getelementptr inbounds nuw %struct.a, ptr %arrayidx12, i32 0, i32 0
  %12 = load i32, ptr %x13, align 8, !tbaa !12
  %cmp14 = icmp slt i32 %10, %12
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, ptr %k, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc16

for.inc16:                                        ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc17 = add nsw i32 %14, 1
  store i32 %inc17, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !14

for.end18:                                        ; preds = %for.cond5
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [25 x %struct.a], ptr %a, i64 0, i64 %idxprom19
  %y = getelementptr inbounds nuw %struct.a, ptr %arrayidx20, i32 0, i32 1
  store i32 %15, ptr %y, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  br label %for.inc21

for.inc21:                                        ; preds = %for.end18
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !16

for.end23:                                        ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #3
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %18, 1
  store i32 %sub, ptr %i, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc46, %for.end23
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %cmp25 = icmp sge i32 %19, 1
  br i1 %cmp25, label %for.body26, label %for.end47

for.body26:                                       ; preds = %for.cond24
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %sub27 = sub nsw i32 %20, 1
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [25 x %struct.a], ptr %a, i64 0, i64 %idxprom28
  %y30 = getelementptr inbounds nuw %struct.a, ptr %arrayidx29, i32 0, i32 1
  %21 = load i32, ptr %y30, align 4, !tbaa !15
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds [25 x %struct.a], ptr %a, i64 0, i64 %idxprom31
  %y33 = getelementptr inbounds nuw %struct.a, ptr %arrayidx32, i32 0, i32 1
  %23 = load i32, ptr %y33, align 4, !tbaa !15
  %add34 = add nsw i32 %23, 1
  %cmp35 = icmp slt i32 %21, %add34
  br i1 %cmp35, label %if.then36, label %if.end45

if.then36:                                        ; preds = %for.body26
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %24 to i64
  %arrayidx38 = getelementptr inbounds [25 x %struct.a], ptr %a, i64 0, i64 %idxprom37
  %y39 = getelementptr inbounds nuw %struct.a, ptr %arrayidx38, i32 0, i32 1
  %25 = load i32, ptr %y39, align 4, !tbaa !15
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %sub40 = sub nsw i32 %26, 1
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds [25 x %struct.a], ptr %a, i64 0, i64 %idxprom41
  %y43 = getelementptr inbounds nuw %struct.a, ptr %arrayidx42, i32 0, i32 1
  store i32 %25, ptr %y43, align 4, !tbaa !15
  %27 = load i32, ptr %w, align 4, !tbaa !5
  %inc44 = add nsw i32 %27, 1
  store i32 %inc44, ptr %w, align 4, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %for.body26
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %28, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !17

for.end47:                                        ; preds = %for.cond24
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %30 = load i32, ptr %w, align 4, !tbaa !5
  %sub48 = sub nsw i32 %29, %30
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %sub48)
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.end.p0(i64 200, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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
!12 = !{!13, !6, i64 0}
!13 = !{!"_ZTSZ4mainE1a", !6, i64 0, !6, i64 4}
!14 = distinct !{!14, !10, !11}
!15 = !{!13, !6, i64 4}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
