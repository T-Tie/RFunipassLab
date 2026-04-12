; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz_i6maht.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = mul i64 4, %conv
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %k) #6
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %call1, i64 %idxprom
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc30, %for.end
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %3, %4
  br i1 %cmp4, label %for.body5, label %for.end32

for.body5:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %r) #6
  store i32 0, ptr %r, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc27, %for.body5
  %5 = load i32, ptr %r, align 4, !tbaa !5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8

for.cond.cleanup8:                                ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %r) #6
  br label %for.end29

for.body9:                                        ; preds = %for.cond6
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %call1, i64 %idxprom10
  %7 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %idxprom12 = sext i32 %5 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %call1, i64 %idxprom12
  %8 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %7, %8
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #6
  store i32 %6, ptr %j, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc23, %if.then
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %9, %10
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  br label %for.end25

for.body18:                                       ; preds = %for.cond15
  %add = add nsw i32 %9, 1
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %call1, i64 %idxprom19
  %11 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !12
  %idxprom21 = sext i32 %9 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %call1, i64 %idxprom21
  store i32 %11, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.body18
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.end25:                                        ; preds = %for.cond.cleanup17
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %dec26 = add nsw i32 %6, -1
  store i32 %dec26, ptr %i, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.end25, %for.body9
  br label %for.inc27

for.inc27:                                        ; preds = %if.end
  %inc28 = add nsw i32 %5, 1
  store i32 %inc28, ptr %r, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !14

for.end29:                                        ; preds = %for.cond.cleanup8
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %6, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !15

for.end32:                                        ; preds = %for.cond3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc45, %for.end32
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %12, %13
  br i1 %cmp34, label %for.body35, label %for.end47

for.body35:                                       ; preds = %for.cond33
  %sub = sub nsw i32 %13, 1
  %cmp36 = icmp eq i32 %12, %sub
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %for.body35
  %idxprom38 = sext i32 %12 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %call1, i64 %idxprom38
  %14 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %14)
  br label %if.end44

if.else:                                          ; preds = %for.body35
  %idxprom41 = sext i32 %12 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %call1, i64 %idxprom41
  %15 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %15)
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then37
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %inc46 = add nsw i32 %12, 1
  store i32 %inc46, ptr %i, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !16

for.end47:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
