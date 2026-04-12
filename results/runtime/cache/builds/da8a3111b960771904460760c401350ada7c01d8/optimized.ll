; ModuleID = '<stdin>'
source_filename = "/tmp/tmpczednpyt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %N = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %N) #3
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %b) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %N)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %t.1, %if.end ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %if.end ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp4 = icmp ne i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %idxprom7 = sext i32 %t.0 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %1, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %t.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %t.1 = phi i32 [ %inc, %if.then ], [ %t.0, %while.body ]
  %inc9 = add nsw i32 %i.0, 1
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %while.cond10

while.cond10:                                     ; preds = %while.end34, %while.end
  %s.0 = phi i32 [ 1, %while.end ], [ %inc35, %while.end34 ]
  %cmp11 = icmp sle i32 %s.0, %t.0
  br i1 %cmp11, label %while.body12, label %while.end36

while.body12:                                     ; preds = %while.cond10
  br label %while.cond13

while.cond13:                                     ; preds = %if.end32, %while.body12
  %r.0 = phi i32 [ 0, %while.body12 ], [ %add, %if.end32 ]
  %sub = sub nsw i32 %t.0, %s.0
  %cmp14 = icmp slt i32 %r.0, %sub
  br i1 %cmp14, label %while.body15, label %while.end34

while.body15:                                     ; preds = %while.cond13
  %idxprom16 = sext i32 %r.0 to i64
  %arrayidx17 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom16
  %2 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add = add nsw i32 %r.0, 1
  %idxprom18 = sext i32 %add to i64
  %arrayidx19 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom18
  %3 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %2, %3
  br i1 %cmp20, label %if.then21, label %if.end32

if.then21:                                        ; preds = %while.body15
  store i32 %2, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %3, ptr %arrayidx17, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %while.body15
  br label %while.cond13, !llvm.loop !12

while.end34:                                      ; preds = %while.cond13
  %inc35 = add nsw i32 %s.0, 1
  br label %while.cond10, !llvm.loop !13

while.end36:                                      ; preds = %while.cond10
  br label %while.cond37

while.cond37:                                     ; preds = %if.end47, %while.end36
  %u.0 = phi i32 [ 0, %while.end36 ], [ %inc48, %if.end47 ]
  %cmp38 = icmp slt i32 %u.0, %t.0
  br i1 %cmp38, label %while.body39, label %while.end49

while.body39:                                     ; preds = %while.cond37
  %cmp40 = icmp eq i32 %u.0, 0
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %while.body39
  %4 = load i32, ptr %b, align 16, !tbaa !5
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  br label %if.end47

if.else:                                          ; preds = %while.body39
  %idxprom44 = sext i32 %u.0 to i64
  %arrayidx45 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom44
  %5 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %5)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then41
  %inc48 = add nsw i32 %u.0, 1
  br label %while.cond37, !llvm.loop !14

while.end49:                                      ; preds = %while.cond37
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %N) #4
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
attributes #3 = { nofree nounwind willreturn }
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
