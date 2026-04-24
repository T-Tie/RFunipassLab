; ModuleID = '/tmp/tmpa5kf_ul5.cpp'
source_filename = "/tmp/tmpa5kf_ul5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %sz = alloca [100 x [100 x i32]], align 16
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %row = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %col = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 40000, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #3
  store i32 0, ptr %row, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %row, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #3
  br label %for.end10

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #3
  store i32 0, ptr %col, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %col, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #3
  br label %for.end

for.body4:                                        ; preds = %for.cond1
  %4 = load i32, ptr %row, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %sz, i64 0, i64 %idxprom
  %5 = load i32, ptr %col, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx6)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %6 = load i32, ptr %col, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %col, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %7 = load i32, ptr %row, align 4, !tbaa !5
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, ptr %row, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  store i32 0, ptr %a, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %8 = load i32, ptr %a, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %8, %9
  br i1 %cmp12, label %for.body14, label %for.cond.cleanup13

for.cond.cleanup13:                               ; preds = %for.cond11
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  br label %for.end30

for.body14:                                       ; preds = %for.cond11
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  store i32 0, ptr %b, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc24, %for.body14
  %10 = load i32, ptr %b, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %10, %11
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body18:                                       ; preds = %for.cond15
  %12 = load i32, ptr %a, align 4, !tbaa !5
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr %sz, i64 0, i64 %idxprom19
  %13 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %14 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %14, 0
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body18
  %15 = load i32, ptr %a, align 4, !tbaa !5
  store i32 %15, ptr %r, align 4, !tbaa !5
  %16 = load i32, ptr %b, align 4, !tbaa !5
  store i32 %16, ptr %s, align 4, !tbaa !5
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %for.body18
  br label %for.inc24

for.inc24:                                        ; preds = %if.else
  %17 = load i32, ptr %b, align 4, !tbaa !5
  %inc25 = add nsw i32 %17, 1
  store i32 %inc25, ptr %b, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

cleanup:                                          ; preds = %if.then, %for.cond.cleanup17
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  br label %for.end26

for.end26:                                        ; preds = %cleanup
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %18 = load i32, ptr %a, align 4, !tbaa !5
  %inc28 = add nsw i32 %18, 1
  store i32 %inc28, ptr %a, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !14

for.end30:                                        ; preds = %for.cond.cleanup13
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %19, 1
  store i32 %sub, ptr %c, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc50, %for.end30
  %20 = load i32, ptr %c, align 4, !tbaa !5
  %cmp32 = icmp sge i32 %20, 0
  br i1 %cmp32, label %for.body34, label %for.cond.cleanup33

for.cond.cleanup33:                               ; preds = %for.cond31
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  br label %for.end53

for.body34:                                       ; preds = %for.cond31
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %sub35 = sub nsw i32 %21, 1
  store i32 %sub35, ptr %d, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc47, %for.body34
  %22 = load i32, ptr %d, align 4, !tbaa !5
  %cmp37 = icmp sge i32 %22, 0
  br i1 %cmp37, label %for.body39, label %for.cond.cleanup38

for.cond.cleanup38:                               ; preds = %for.cond36
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup48

for.body39:                                       ; preds = %for.cond36
  %23 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom40 = sext i32 %23 to i64
  %arrayidx41 = getelementptr inbounds [100 x [100 x i32]], ptr %sz, i64 0, i64 %idxprom40
  %24 = load i32, ptr %d, align 4, !tbaa !5
  %idxprom42 = sext i32 %24 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %25 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %25, 0
  br i1 %cmp44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %for.body39
  %26 = load i32, ptr %c, align 4, !tbaa !5
  store i32 %26, ptr %p, align 4, !tbaa !5
  %27 = load i32, ptr %d, align 4, !tbaa !5
  store i32 %27, ptr %q, align 4, !tbaa !5
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup48

if.else46:                                        ; preds = %for.body39
  br label %for.inc47

for.inc47:                                        ; preds = %if.else46
  %28 = load i32, ptr %d, align 4, !tbaa !5
  %dec = add nsw i32 %28, -1
  store i32 %dec, ptr %d, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !15

cleanup48:                                        ; preds = %if.then45, %for.cond.cleanup38
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  br label %for.end49

for.end49:                                        ; preds = %cleanup48
  br label %for.inc50

for.inc50:                                        ; preds = %for.end49
  %29 = load i32, ptr %c, align 4, !tbaa !5
  %dec51 = add nsw i32 %29, -1
  store i32 %dec51, ptr %c, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !16

for.end53:                                        ; preds = %for.cond.cleanup33
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  %30 = load i32, ptr %r, align 4, !tbaa !5
  %31 = load i32, ptr %p, align 4, !tbaa !5
  %sub54 = sub nsw i32 %30, %31
  %sub55 = sub nsw i32 %sub54, 1
  %32 = load i32, ptr %q, align 4, !tbaa !5
  %33 = load i32, ptr %s, align 4, !tbaa !5
  %sub56 = sub nsw i32 %32, %33
  %sub57 = sub nsw i32 %sub56, 1
  %mul = mul nsw i32 %sub55, %sub57
  store i32 %mul, ptr %e, align 4, !tbaa !5
  %34 = load i32, ptr %e, align 4, !tbaa !5
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %34)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #3
  call void @llvm.lifetime.end.p0(i64 40000, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
