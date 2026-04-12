; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyk6rmdkn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef %s) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %end2.0 = phi i32 [ undef, %entry ], [ %end2.1, %for.inc22 ]
  %end1.0 = phi i32 [ undef, %entry ], [ %end1.1, %for.inc22 ]
  %star2.0 = phi i32 [ undef, %entry ], [ %star2.1, %for.inc22 ]
  %star1.0 = phi i32 [ undef, %entry ], [ %star1.1, %for.inc22 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc23, %for.inc22 ]
  %f.0 = phi i32 [ -1, %entry ], [ %f.1, %for.inc22 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %end2.1 = phi i32 [ %end2.0, %for.body ], [ %end2.2, %for.inc ]
  %end1.1 = phi i32 [ %end1.0, %for.body ], [ %end1.2, %for.inc ]
  %star2.1 = phi i32 [ %star2.0, %for.body ], [ %star2.2, %for.inc ]
  %star1.1 = phi i32 [ %star1.0, %for.body ], [ %star1.2, %for.inc ]
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %f.1 = phi i32 [ %f.0, %for.body ], [ %f.2, %for.inc ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body3, label %for.inc22

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %s, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %cmp11 = icmp eq i32 %2, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body3
  %cmp12 = icmp eq i32 %f.1, -1
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %add = add nsw i32 %i.0, 1
  %add13 = add nsw i32 %j.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body3
  %star2.2 = phi i32 [ %add13, %if.then ], [ %star2.1, %land.lhs.true ], [ %star2.1, %for.body3 ]
  %star1.2 = phi i32 [ %add, %if.then ], [ %star1.1, %land.lhs.true ], [ %star1.1, %for.body3 ]
  %f.2 = phi i32 [ 1, %if.then ], [ %f.1, %land.lhs.true ], [ %f.1, %for.body3 ]
  br i1 %cmp11, label %if.then19, label %for.inc

if.then19:                                        ; preds = %if.end
  %sub = sub nsw i32 %i.0, 1
  %sub20 = sub nsw i32 %j.0, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then19
  %end2.2 = phi i32 [ %sub20, %if.then19 ], [ %end2.1, %if.end ]
  %end1.2 = phi i32 [ %sub, %if.then19 ], [ %end1.1, %if.end ]
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !10

for.inc22:                                        ; preds = %for.cond1
  %inc23 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end24:                                        ; preds = %for.cond
  %sub25 = sub nsw i32 %end1.0, %star1.0
  %add26 = add nsw i32 %sub25, 1
  %sub27 = sub nsw i32 %end2.0, %star2.0
  %add28 = add nsw i32 %sub27, 1
  %mul = mul nsw i32 %add26, %add28
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef %s) #4
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
