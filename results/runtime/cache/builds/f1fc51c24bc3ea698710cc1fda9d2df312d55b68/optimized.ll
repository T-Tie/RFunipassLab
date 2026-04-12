; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz_yurje1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3maxPiii(ptr noundef %a, i32 noundef %n, i32 noundef %m) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %m
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds i32, ptr %a, i64 1
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %y.0 = phi i32 [ %1, %if.then ], [ %0, %if.else ]
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %y.1 = phi i32 [ %y.0, %if.end ], [ %y.2, %for.inc ]
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  %cmp3 = icmp slt i32 %i.0, %n
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %a, i64 %idxprom
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %2, %m
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %cmp10 = icmp sgt i32 %2, %y.1
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7
  %y.3 = phi i32 [ %2, %if.then11 ], [ %y.1, %if.end7 ]
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %if.then6
  %y.2 = phi i32 [ %y.1, %if.then6 ], [ %y.3, %if.end14 ]
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret i32 %y.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca [100 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %call2 = call noundef i32 @_Z3maxPiii(ptr noundef %a, i32 noundef %0, i32 noundef 0)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call2)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %call5 = call noundef i32 @_Z3maxPiii(ptr noundef %a, i32 noundef %1, i32 noundef %call2)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call5)
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr %a) #4
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
