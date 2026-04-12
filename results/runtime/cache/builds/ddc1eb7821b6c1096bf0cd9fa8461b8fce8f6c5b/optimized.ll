; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwg73p1sg.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %a) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 2000, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc26, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc27, %for.inc26 ]
  %cmp3 = icmp slt i32 %j.0, %0
  br i1 %cmp3, label %for.body4, label %for.end28

for.body4:                                        ; preds = %for.cond2
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc23, %for.body4
  %i.1 = phi i32 [ 0, %for.body4 ], [ %add, %for.inc23 ]
  %cmp6 = icmp slt i32 %i.1, %0
  br i1 %cmp6, label %for.body7, label %for.inc26

for.body7:                                        ; preds = %for.cond5
  %idxprom8 = sext i32 %i.1 to i64
  %arrayidx9 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom8
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %add = add nsw i32 %i.1, 1
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom10
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %1, %2
  br i1 %cmp12, label %if.then, label %for.inc23

if.then:                                          ; preds = %for.body7
  store i32 %2, ptr %arrayidx9, align 4, !tbaa !5
  store i32 %1, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.body7, %if.then
  br label %for.cond5, !llvm.loop !12

for.inc26:                                        ; preds = %for.cond5
  %inc27 = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !13

for.end28:                                        ; preds = %for.cond2
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc40, %for.end28
  %i.2 = phi i32 [ 0, %for.end28 ], [ %inc41, %for.inc40 ]
  %cmp30 = icmp slt i32 %i.2, %0
  br i1 %cmp30, label %for.body31, label %for.end42

for.body31:                                       ; preds = %for.cond29
  %idxprom32 = sext i32 %i.2 to i64
  %arrayidx33 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom32
  %3 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %rem = srem i32 %3, 2
  %cmp34 = icmp ne i32 %rem, 0
  br i1 %cmp34, label %if.then35, label %for.inc40

if.then35:                                        ; preds = %for.body31
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3) #7
  br label %for.end42

for.inc40:                                        ; preds = %for.body31
  %inc41 = add nsw i32 %i.2, 1
  br label %for.cond29, !llvm.loop !14

for.end42:                                        ; preds = %if.then35, %for.cond29
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc56, %for.end42
  %i.2.sink = phi i32 [ %i.2, %for.end42 ], [ %add43, %for.inc56 ]
  %add43 = add nsw i32 %i.2.sink, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %add43, %4
  br i1 %cmp45, label %for.body46, label %for.end58

for.body46:                                       ; preds = %for.cond44
  %idxprom47 = sext i32 %add43 to i64
  %arrayidx48 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom47
  %5 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %rem49 = srem i32 %5, 2
  %cmp50 = icmp ne i32 %rem49, 0
  br i1 %cmp50, label %if.then51, label %for.inc56

if.then51:                                        ; preds = %for.body46
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %5) #7
  br label %for.inc56

for.inc56:                                        ; preds = %for.body46, %if.then51
  br label %for.cond44, !llvm.loop !15

for.end58:                                        ; preds = %for.cond44
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind }

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
