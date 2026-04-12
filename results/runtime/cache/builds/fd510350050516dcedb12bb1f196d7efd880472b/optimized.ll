; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz3y67r2d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [501 x i32], align 16
  %b = alloca [501 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2004, ptr noundef align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2004, ptr noundef align 16 %b) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %j.1, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [501 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp4 = icmp ne i32 %rem, 0
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %1, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.body ]
  %inc10 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %sub = sub nsw i32 %j.0, 1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc37, %for.end
  %l.0 = phi i32 [ %sub, %for.end ], [ %dec, %for.inc37 ]
  %cmp12 = icmp sge i32 %l.0, 0
  br i1 %cmp12, label %for.body13, label %for.end38

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc34, %for.body13
  %j.2 = phi i32 [ 0, %for.body13 ], [ %add, %for.inc34 ]
  %cmp15 = icmp slt i32 %j.2, %j.0
  br i1 %cmp15, label %for.body16, label %for.inc37

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %j.2 to i64
  %arrayidx18 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom17
  %2 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add = add nsw i32 %j.2, 1
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom19
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %2, %3
  br i1 %cmp21, label %if.then22, label %for.inc34

if.then22:                                        ; preds = %for.body16
  store i32 %2, ptr %arrayidx20, align 4, !tbaa !5
  store i32 %3, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.inc34

for.inc34:                                        ; preds = %for.body16, %if.then22
  br label %for.cond14, !llvm.loop !12

for.inc37:                                        ; preds = %for.cond14
  %dec = add nsw i32 %l.0, -1
  br label %for.cond11, !llvm.loop !13

for.end38:                                        ; preds = %for.cond11
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc45, %for.end38
  %j.3 = phi i32 [ 1, %for.end38 ], [ %inc46, %for.inc45 ]
  %cmp40 = icmp slt i32 %j.3, %j.0
  br i1 %cmp40, label %for.inc45, label %for.end47

for.inc45:                                        ; preds = %for.cond39
  %idxprom42 = sext i32 %j.3 to i64
  %arrayidx43 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom42
  %4 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4) #5
  %inc46 = add nsw i32 %j.3, 1
  br label %for.cond39, !llvm.loop !14

for.end47:                                        ; preds = %for.cond39
  %idxprom48 = sext i32 %j.0 to i64
  %arrayidx49 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom48
  %5 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5) #5
  call void @llvm.lifetime.end.p0(i64 noundef 2004, ptr noundef %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 2004, ptr noundef %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn }
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
