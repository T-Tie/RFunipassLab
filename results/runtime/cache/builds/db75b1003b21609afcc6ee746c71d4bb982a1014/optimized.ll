; ModuleID = '<stdin>'
source_filename = "/tmp/tmpya_y7krd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"worse\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"better\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"same\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sv = alloca [1000 x [2 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 16000, ptr noundef align 16 %sv) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = phi i32 [ %inc, %for.inc ], [ 0, %for.body ]
  %cmp2 = icmp slt i32 %1, 2
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x [2 x double]], ptr %sv, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %1 to i64
  %arrayidx5 = getelementptr inbounds [2 x double], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %1, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %arrayidx11 = getelementptr inbounds [2 x double], ptr %sv, i64 0, i64 1
  %2 = load double, ptr %arrayidx11, align 8, !tbaa !13
  %3 = load double, ptr %sv, align 16, !tbaa !13
  %div = fdiv double %2, %3
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc59, %for.end9
  %i.1 = phi i32 [ 1, %for.end9 ], [ %inc60, %for.inc59 ]
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %i.1, %4
  br i1 %cmp15, label %for.body16, label %for.end61

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %i.1 to i64
  %arrayidx18 = getelementptr inbounds [1000 x [2 x double]], ptr %sv, i64 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [2 x double], ptr %arrayidx18, i64 0, i64 1
  %5 = load double, ptr %arrayidx19, align 8, !tbaa !13
  %6 = load double, ptr %arrayidx18, align 16, !tbaa !13
  %div23 = fdiv double %5, %6
  %sub = fsub double %div, %div23
  %cmp24 = fcmp ogt double %sub, 0.000000e+00
  br i1 %cmp24, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body16
  %cmp33 = fcmp ogt double %sub, 5.000000e-02
  br i1 %cmp33, label %for.inc59, label %if.else

if.else:                                          ; preds = %land.lhs.true, %for.body16
  %cmp43 = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp43, label %land.lhs.true44, label %if.else56

land.lhs.true44:                                  ; preds = %if.else
  %sub52 = fsub double %div23, %div
  %cmp53 = fcmp ogt double %sub52, 5.000000e-02
  br i1 %cmp53, label %for.inc59, label %if.else56

if.else56:                                        ; preds = %land.lhs.true44, %if.else
  br label %for.inc59

for.inc59:                                        ; preds = %land.lhs.true44, %land.lhs.true, %if.else56
  %.str.3.sink = phi ptr [ @.str.3, %if.else56 ], [ @.str.1, %land.lhs.true ], [ @.str.2, %land.lhs.true44 ]
  %call57 = call i32 (ptr, ...) @printf(ptr noundef %.str.3.sink)
  %inc60 = add nsw i32 %i.1, 1
  br label %for.cond14, !llvm.loop !15

for.end61:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 noundef 16000, ptr noundef %sv) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !7, i64 0}
!15 = distinct !{!15, !10, !11}
