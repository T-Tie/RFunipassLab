; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa5kf_ul5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [100 x [100 x i32]], align 16
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %c11 = alloca i8, i32 0, align 4
  %d = alloca i32, align 4
  %d12 = alloca i8, i32 0, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %sz) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %r) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %s) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %p) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %q) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %row) #5
  store i32 0, ptr %row, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %row, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %col) #5
  store i32 0, ptr %col, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %col, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %sz, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %2 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx6)
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %col, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %col) #5
  %inc9 = add nsw i32 %0, 1
  store i32 %inc9, ptr %row, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %row) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %a) #5
  store i32 0, ptr %a, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %4 = load i32, ptr %a, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %4, %1
  br i1 %cmp12, label %for.body14, label %for.end30

for.body14:                                       ; preds = %for.cond11
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %b) #5
  store i32 0, ptr %b, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc24, %for.body14
  %5 = load i32, ptr %b, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %5, %1
  br i1 %cmp16, label %for.body18, label %for.inc27

for.body18:                                       ; preds = %for.cond15
  %idxprom19 = sext i32 %4 to i64
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr %sz, i64 0, i64 %idxprom19
  %idxprom21 = sext i32 %5 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %6 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %6, 0
  br i1 %cmp23, label %if.then, label %for.inc24

if.then:                                          ; preds = %for.body18
  store i32 %4, ptr %r, align 4, !tbaa !5
  store i32 %5, ptr %s, align 4, !tbaa !5
  br label %for.inc27

for.inc24:                                        ; preds = %for.body18
  %inc25 = add nsw i32 %5, 1
  store i32 %inc25, ptr %b, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond15, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %b) #5
  %inc28 = add nsw i32 %4, 1
  store i32 %inc28, ptr %a, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !14

for.end30:                                        ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %a) #5
  %sub = sub nsw i32 %1, 1
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc50, %for.end30
  %7 = phi i32 [ %dec51, %for.inc50 ], [ %sub, %for.end30 ]
  %cmp32 = icmp sge i32 %7, 0
  br i1 %cmp32, label %for.body34, label %for.end53

for.body34:                                       ; preds = %for.cond31
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc47, %for.body34
  %8 = phi i32 [ %dec, %for.inc47 ], [ %sub, %for.body34 ]
  %cmp37 = icmp sge i32 %8, 0
  br i1 %cmp37, label %for.body39, label %for.inc50

for.body39:                                       ; preds = %for.cond36
  %idxprom40 = sext i32 %7 to i64
  %arrayidx41 = getelementptr inbounds [100 x [100 x i32]], ptr %sz, i64 0, i64 %idxprom40
  %idxprom42 = sext i32 %8 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %9 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %9, 0
  br i1 %cmp44, label %if.then45, label %for.inc47

if.then45:                                        ; preds = %for.body39
  store i32 %7, ptr %p, align 4, !tbaa !5
  store i32 %8, ptr %q, align 4, !tbaa !5
  br label %for.inc50

for.inc47:                                        ; preds = %for.body39
  %dec = add nsw i32 %8, -1
  br label %for.cond36, !llvm.loop !15

for.inc50:                                        ; preds = %for.cond36, %if.then45
  %dec51 = add nsw i32 %7, -1
  br label %for.cond31, !llvm.loop !16

for.end53:                                        ; preds = %for.cond31
  %10 = load i32, ptr %r, align 4, !tbaa !5
  %11 = load i32, ptr %p, align 4, !tbaa !5
  %sub54 = sub nsw i32 %10, %11
  %sub55 = sub nsw i32 %sub54, 1
  %12 = load i32, ptr %q, align 4, !tbaa !5
  %13 = load i32, ptr %s, align 4, !tbaa !5
  %sub56 = sub nsw i32 %12, %13
  %sub57 = sub nsw i32 %sub56, 1
  %mul = mul nsw i32 %sub55, %sub57
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %q) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %p) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %s) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %r) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %sz) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
