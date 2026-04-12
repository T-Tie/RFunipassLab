; ModuleID = '<stdin>'
source_filename = "/tmp/tmpftrcp9p1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [8 x i8] c"%lf%s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [10000 x i8], align 16
  %s = alloca [10000 x i8], align 16
  %n = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef align 16 %sz) #4
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef align 16 %s) #4
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 8 %n, ptr noundef align 16 %sz, ptr noundef align 16 %s)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %a.0 = phi i32 [ 0, %entry ], [ %a.1, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc ]
  %p.0 = phi i32 [ 0, %entry ], [ %p.1, %for.inc ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [10000 x i8], ptr %sz, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %conv = sext i8 %1 to i32
  %arrayidx4 = getelementptr inbounds [10000 x i8], ptr %s, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !5, !invariant.load !8
  %conv5 = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, %conv5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %a.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %a.1 = phi i32 [ %inc, %if.then ], [ %a.0, %for.body ]
  %inc6 = add nsw i32 %i.0, 1
  %cmp10 = icmp ne i32 %conv, 65
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %cmp14 = icmp ne i32 %conv, 84
  br i1 %cmp14, label %land.lhs.true15, label %lor.lhs.false

land.lhs.true15:                                  ; preds = %land.lhs.true
  %cmp19 = icmp ne i32 %conv, 67
  br i1 %cmp19, label %land.lhs.true20, label %lor.lhs.false

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %conv23 = sext i8 %0 to i32
  %cmp24 = icmp ne i32 %conv23, 71
  br i1 %cmp24, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true20, %land.lhs.true15, %land.lhs.true, %if.end
  %cmp28 = icmp ne i32 %conv5, 65
  br i1 %cmp28, label %land.lhs.true29, label %for.inc

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %cmp33 = icmp ne i32 %conv5, 84
  br i1 %cmp33, label %land.lhs.true34, label %for.inc

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %3 = load i8, ptr %arrayidx4, align 1, !tbaa !5
  %conv37 = sext i8 %3 to i32
  %cmp38 = icmp ne i32 %conv37, 67
  br i1 %cmp38, label %land.lhs.true39, label %for.inc

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %cmp43 = icmp ne i32 %conv37, 71
  br i1 %cmp43, label %if.then44, label %for.inc

if.then44:                                        ; preds = %land.lhs.true39, %land.lhs.true20
  %inc45 = add nsw i32 %p.0, 1
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %land.lhs.true29, %land.lhs.true34, %land.lhs.true39, %if.then44
  %p.1 = phi i32 [ %inc45, %if.then44 ], [ %p.0, %land.lhs.true39 ], [ %p.0, %land.lhs.true34 ], [ %p.0, %land.lhs.true29 ], [ %p.0, %lor.lhs.false ]
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %conv48 = sitofp i32 %a.0 to double
  %conv49 = sitofp i32 %i.0 to double
  %div = fdiv double %conv48, %conv49
  %cmp50 = icmp ne i32 %p.0, 0
  br i1 %cmp50, label %if.end59, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %for.end
  %4 = load double, ptr %n, align 8, !tbaa !12
  %cmp56 = fcmp ogt double %div, %4
  br i1 %cmp56, label %if.then57, label %land.lhs.true61

if.then57:                                        ; preds = %land.lhs.true55
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %land.lhs.true61

if.end59:                                         ; preds = %for.end
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end65

land.lhs.true61:                                  ; preds = %if.then57, %land.lhs.true55
  %5 = load double, ptr %n, align 8, !tbaa !12
  %cmp62 = fcmp ole double %div, %5
  br i1 %cmp62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %land.lhs.true61
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end65

if.end65:                                         ; preds = %if.end59, %if.then63, %land.lhs.true61
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %s) #5
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %sz) #5
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
