; ModuleID = '/tmp/tmpdnoy7aas.cpp'
source_filename = "/tmp/tmpdnoy7aas.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %e = alloca i32, align 4
  %k = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #4
  store i32 0, ptr %a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  %3 = load i32, ptr %N, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  store i64 %4, ptr %__vla_expr1, align 8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %10 = load i32, ptr %N, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom6
  store i32 0, ptr %arrayidx7, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !12

for.end10:                                        ; preds = %for.cond3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc22, %for.end10
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %N, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %13, %14
  br i1 %cmp12, label %for.body13, label %for.end24

for.body13:                                       ; preds = %for.cond11
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %vla, i64 %idxprom14
  %16 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %rem = srem i32 %16, 2
  %cmp16 = icmp eq i32 %rem, 1
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %for.body13
  %17 = load i32, ptr %a, align 4, !tbaa !5
  %inc17 = add nsw i32 %17, 1
  store i32 %inc17, ptr %a, align 4, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %vla, i64 %idxprom18
  %19 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom20
  store i32 %19, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body13
  br label %for.inc22

if.end:                                           ; preds = %if.then
  br label %for.inc22

for.inc22:                                        ; preds = %if.end, %if.else
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %21, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !13

for.end24:                                        ; preds = %for.cond11
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc51, %for.end24
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %23 = load i32, ptr %N, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %22, %23
  br i1 %cmp26, label %for.body27, label %for.end53

for.body27:                                       ; preds = %for.cond25
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc48, %for.body27
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %25 = load i32, ptr %N, align 4, !tbaa !5
  %26 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %25, %26
  %cmp29 = icmp slt i32 %24, %sub
  br i1 %cmp29, label %for.body30, label %for.end50

for.body30:                                       ; preds = %for.cond28
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom31
  %28 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %29, 1
  %idxprom33 = sext i32 %add to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom33
  %30 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %28, %30
  br i1 %cmp35, label %if.then36, label %if.end47

if.then36:                                        ; preds = %for.body30
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %add37 = add nsw i32 %31, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom38
  %32 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  store i32 %32, ptr %e, align 4, !tbaa !5
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %33 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom40
  %34 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %add42 = add nsw i32 %35, 1
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom43
  store i32 %34, ptr %arrayidx44, align 4, !tbaa !5
  %36 = load i32, ptr %e, align 4, !tbaa !5
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom45
  store i32 %36, ptr %arrayidx46, align 4, !tbaa !5
  br label %if.end47

if.end47:                                         ; preds = %if.then36, %for.body30
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %inc49 = add nsw i32 %38, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !14

for.end50:                                        ; preds = %for.cond28
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %39 = load i32, ptr %k, align 4, !tbaa !5
  %inc52 = add nsw i32 %39, 1
  store i32 %inc52, ptr %k, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !15

for.end53:                                        ; preds = %for.cond25
  %40 = load i32, ptr %N, align 4, !tbaa !5
  %41 = load i32, ptr %a, align 4, !tbaa !5
  %sub54 = sub nsw i32 %40, %41
  store i32 %sub54, ptr %i, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc62, %for.end53
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %43 = load i32, ptr %N, align 4, !tbaa !5
  %sub56 = sub nsw i32 %43, 1
  %cmp57 = icmp slt i32 %42, %sub56
  br i1 %cmp57, label %for.body58, label %for.end64

for.body58:                                       ; preds = %for.cond55
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %44 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom59
  %45 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %45)
  br label %for.inc62

for.inc62:                                        ; preds = %for.body58
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %inc63 = add nsw i32 %46, 1
  store i32 %inc63, ptr %i, align 4, !tbaa !5
  br label %for.cond55, !llvm.loop !16

for.end64:                                        ; preds = %for.cond55
  %47 = load i32, ptr %N, align 4, !tbaa !5
  %sub65 = sub nsw i32 %47, 1
  %idxprom66 = sext i32 %sub65 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom66
  %48 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %call68 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %48)
  store i32 0, ptr %retval, align 4
  %49 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %49)
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #4
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
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
!16 = distinct !{!16, !10, !11}
