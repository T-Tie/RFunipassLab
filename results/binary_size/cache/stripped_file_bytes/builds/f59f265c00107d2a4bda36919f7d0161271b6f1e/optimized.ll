; ModuleID = '/tmp/tmp9b8kk7p3.cpp'
source_filename = "/tmp/tmp9b8kk7p3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [30 x %struct.anon], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 240, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  store i32 1, ptr %k, align 4, !tbaa !5
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
  %arrayidx = getelementptr inbounds [30 x %struct.anon], ptr %a, i64 0, i64 %idxprom
  %h = getelementptr inbounds nuw %struct.anon, ptr %arrayidx, i32 0, i32 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %h)
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [30 x %struct.anon], ptr %a, i64 0, i64 %idxprom2
  %r = getelementptr inbounds nuw %struct.anon, ptr %arrayidx3, i32 0, i32 1
  store i32 1, ptr %r, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 1
  store i32 %sub, ptr %i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc35, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %6, 0
  br i1 %cmp5, label %for.body6, label %for.end36

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %7, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc32, %for.body6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body9, label %for.end34

for.body9:                                        ; preds = %for.cond7
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [30 x %struct.anon], ptr %a, i64 0, i64 %idxprom10
  %h12 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx11, i32 0, i32 0
  %11 = load i32, ptr %h12, align 8, !tbaa !14
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [30 x %struct.anon], ptr %a, i64 0, i64 %idxprom13
  %h15 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx14, i32 0, i32 0
  %13 = load i32, ptr %h15, align 8, !tbaa !14
  %cmp16 = icmp sge i32 %11, %13
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body9
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [30 x %struct.anon], ptr %a, i64 0, i64 %idxprom17
  %r19 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx18, i32 0, i32 1
  %15 = load i32, ptr %r19, align 4, !tbaa !9
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [30 x %struct.anon], ptr %a, i64 0, i64 %idxprom20
  %r22 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx21, i32 0, i32 1
  %17 = load i32, ptr %r22, align 4, !tbaa !9
  %add23 = add nsw i32 %17, 1
  %cmp24 = icmp sle i32 %15, %add23
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [30 x %struct.anon], ptr %a, i64 0, i64 %idxprom25
  %r27 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx26, i32 0, i32 1
  %19 = load i32, ptr %r27, align 4, !tbaa !9
  %add28 = add nsw i32 %19, 1
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [30 x %struct.anon], ptr %a, i64 0, i64 %idxprom29
  %r31 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx30, i32 0, i32 1
  store i32 %add28, ptr %r31, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body9
  br label %for.inc32

for.inc32:                                        ; preds = %if.end
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %inc33 = add nsw i32 %21, 1
  store i32 %inc33, ptr %j, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !15

for.end34:                                        ; preds = %for.cond7
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !16

for.end36:                                        ; preds = %for.cond4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc49, %for.end36
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %23, %24
  br i1 %cmp38, label %for.body39, label %for.end51

for.body39:                                       ; preds = %for.cond37
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %26 to i64
  %arrayidx41 = getelementptr inbounds [30 x %struct.anon], ptr %a, i64 0, i64 %idxprom40
  %r42 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx41, i32 0, i32 1
  %27 = load i32, ptr %r42, align 4, !tbaa !9
  %cmp43 = icmp sle i32 %25, %27
  br i1 %cmp43, label %if.then44, label %if.end48

if.then44:                                        ; preds = %for.body39
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %28 to i64
  %arrayidx46 = getelementptr inbounds [30 x %struct.anon], ptr %a, i64 0, i64 %idxprom45
  %r47 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx46, i32 0, i32 1
  %29 = load i32, ptr %r47, align 4, !tbaa !9
  store i32 %29, ptr %k, align 4, !tbaa !5
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %for.body39
  br label %for.inc49

for.inc49:                                        ; preds = %if.end48
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %inc50 = add nsw i32 %30, 1
  store i32 %inc50, ptr %i, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !17

for.end51:                                        ; preds = %for.cond37
  %31 = load i32, ptr %k, align 4, !tbaa !5
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %31)
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 240, ptr %a) #3
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
!9 = !{!10, !6, i64 4}
!10 = !{!"_ZTSZ4mainE3$_0", !6, i64 0, !6, i64 4}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!10, !6, i64 0}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
