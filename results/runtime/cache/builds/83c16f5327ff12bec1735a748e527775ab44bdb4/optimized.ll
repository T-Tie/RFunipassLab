; ModuleID = '<stdin>'
source_filename = "/tmp/tmpus5dadsy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %conv2 = sext i32 %1 to i64
  %mul3 = mul i64 %conv2, 4
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, ptr %call1, i64 %idxprom
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %if.end, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %if.end ]
  %k.0 = phi i32 [ 0, %for.end ], [ %k.1, %if.end ]
  %cmp7 = icmp slt i32 %i.1, %2
  br i1 %cmp7, label %for.body8, label %for.end18

for.body8:                                        ; preds = %for.cond6
  %idxprom9 = sext i32 %i.1 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %call1, i64 %idxprom9
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %rem = srem i32 %3, 2
  %cmp11 = icmp ne i32 %rem, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %idxprom14 = sext i32 %k.0 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %call4, i64 %idxprom14
  store i32 %3, ptr %arrayidx15, align 4, !tbaa !5
  %add = add nsw i32 %k.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  %k.1 = phi i32 [ %add, %if.then ], [ %k.0, %for.body8 ]
  %inc17 = add nsw i32 %i.1, 1
  br label %for.cond6, !llvm.loop !12

for.end18:                                        ; preds = %for.cond6
  br label %for.cond19

for.cond19:                                       ; preds = %for.end43, %for.end18
  %i.2 = phi i32 [ 0, %for.end18 ], [ %add22, %for.end43 ]
  %sub = sub nsw i32 %k.0, 1
  %cmp20 = icmp slt i32 %i.2, %sub
  br i1 %cmp20, label %for.body21, label %for.end46

for.body21:                                       ; preds = %for.cond19
  %add22 = add nsw i32 %i.2, 1
  br label %for.cond23

for.cond23:                                       ; preds = %if.end40, %for.body21
  %j.0 = phi i32 [ %add22, %for.body21 ], [ %inc42, %if.end40 ]
  %cmp24 = icmp slt i32 %j.0, %k.0
  br i1 %cmp24, label %for.body25, label %for.end43

for.body25:                                       ; preds = %for.cond23
  %idxprom26 = sext i32 %j.0 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %call4, i64 %idxprom26
  %4 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %idxprom28 = sext i32 %i.2 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %call4, i64 %idxprom28
  %5 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %4, %5
  br i1 %cmp30, label %if.then31, label %if.end40

if.then31:                                        ; preds = %for.body25
  store i32 %5, ptr %arrayidx27, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx29, align 4, !tbaa !5
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %for.body25
  %inc42 = add nsw i32 %j.0, 1
  br label %for.cond23, !llvm.loop !13

for.end43:                                        ; preds = %for.cond23
  br label %for.cond19, !llvm.loop !14

for.end46:                                        ; preds = %for.cond19
  br label %for.cond47

for.cond47:                                       ; preds = %if.end52, %for.end46
  %i.3 = phi i32 [ 0, %for.end46 ], [ %inc57, %if.end52 ]
  %cmp48 = icmp slt i32 %i.3, %k.0
  br i1 %cmp48, label %for.body49, label %for.end58

for.body49:                                       ; preds = %for.cond47
  %tobool = icmp ne i32 %i.3, 0
  br i1 %tobool, label %if.then50, label %if.end52

if.then50:                                        ; preds = %for.body49
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %for.body49
  %idxprom53 = sext i32 %i.3 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %call4, i64 %idxprom53
  %6 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6)
  %inc57 = add nsw i32 %i.3, 1
  br label %for.cond47, !llvm.loop !15

for.end58:                                        ; preds = %for.cond47
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
