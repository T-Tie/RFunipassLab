; ModuleID = '<stdin>'
source_filename = "/tmp/tmptc7spoak.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global [100 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  store i32 1, ptr @a, align 16, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %while.cond

while.cond:                                       ; preds = %for.end20, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %k.1, %for.end20 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ]
  %cmp = icmp slt i32 %i.0, %k.0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = mul nsw i32 %1, 2
  store i32 %mul, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %if.end17, %for.end
  %k.1 = phi i32 [ %k.0, %for.end ], [ %k.2, %if.end17 ]
  %i.1 = phi i32 [ 0, %for.end ], [ %inc19, %if.end17 ]
  %cmp2 = icmp slt i32 %i.1, %k.1
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %idxprom4 = sext i32 %i.1 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom4
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %2, 10
  %inc19 = add nsw i32 %i.1, 1
  br i1 %cmp6, label %if.then, label %if.end17

if.then:                                          ; preds = %for.body3
  %div = sdiv i32 %2, 10
  %idxprom9 = sext i32 %inc19 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom9
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %add11 = add nsw i32 %3, %div
  store i32 %add11, ptr %arrayidx10, align 4, !tbaa !5
  %rem = srem i32 %2, 10
  store i32 %rem, ptr %arrayidx5, align 4, !tbaa !5
  %sub = sub nsw i32 %k.1, 1
  %cmp14 = icmp eq i32 %i.1, %sub
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then
  %inc16 = add nsw i32 %k.1, 1
  br label %if.end17

if.end17:                                         ; preds = %if.then, %if.then15, %for.body3
  %k.2 = phi i32 [ %k.1, %for.body3 ], [ %inc16, %if.then15 ], [ %k.1, %if.then ]
  br label %for.cond1, !llvm.loop !12

for.end20:                                        ; preds = %for.cond1
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %sub21 = sub nsw i32 %k.0, 1
  br label %for.cond22

for.cond22:                                       ; preds = %for.body24, %while.end
  %i.2 = phi i32 [ %sub21, %while.end ], [ %dec29, %for.body24 ]
  %cmp23 = icmp sge i32 %i.2, 0
  br i1 %cmp23, label %for.body24, label %for.end30

for.body24:                                       ; preds = %for.cond22
  %idxprom25 = sext i32 %i.2 to i64
  %arrayidx26 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom25
  %4 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  %dec29 = add nsw i32 %i.2, -1
  br label %for.cond22, !llvm.loop !14

for.end30:                                        ; preds = %for.cond22
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
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
attributes #3 = { nofree nounwind }
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
