; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa0uamr_5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %t = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %t) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.end ]
  %w.0 = phi i32 [ undef, %entry ], [ %w.1, %for.end ]
  %z.0 = phi i32 [ undef, %entry ], [ %z.1, %for.end ]
  %y.0 = phi i32 [ undef, %entry ], [ %y.1, %for.end ]
  %x.0 = phi i32 [ undef, %entry ], [ %x.1, %for.end ]
  %tz.0 = phi i32 [ 0, %entry ], [ %tz.1, %for.end ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %if.end9, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc10, %if.end9 ]
  %w.1 = phi i32 [ %w.0, %for.body ], [ %w.2, %if.end9 ]
  %z.1 = phi i32 [ %z.0, %for.body ], [ %z.2, %if.end9 ]
  %y.1 = phi i32 [ %y.0, %for.body ], [ %y.26, %if.end9 ]
  %x.1 = phi i32 [ %x.0, %for.body ], [ %x.28, %if.end9 ]
  %tz.1 = phi i32 [ %tz.0, %for.body ], [ %tz.210, %if.end9 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %t)
  %2 = load i32, ptr %t, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %2, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %for.body3
  %cmp6 = icmp eq i32 %tz.1, 0
  br i1 %cmp6, label %if.then, label %if.end9

if.then:                                          ; preds = %land.lhs.true
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.then, %for.body3
  %tz.210 = phi i32 [ %tz.1, %for.body3 ], [ %tz.1, %land.lhs.true ], [ 1, %if.then ]
  %x.28 = phi i32 [ %x.1, %for.body3 ], [ %x.1, %land.lhs.true ], [ %i.0, %if.then ]
  %y.26 = phi i32 [ %y.1, %for.body3 ], [ %y.1, %land.lhs.true ], [ %j.0, %if.then ]
  %w.2 = phi i32 [ %w.1, %for.body3 ], [ %j.0, %if.then ], [ %j.0, %land.lhs.true ]
  %z.2 = phi i32 [ %z.1, %for.body3 ], [ %i.0, %if.then ], [ %i.0, %land.lhs.true ]
  %inc10 = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %inc12 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  %sub = sub nsw i32 %z.0, %x.0
  %sub14 = sub nsw i32 %sub, 1
  %sub15 = sub nsw i32 %w.0, %y.0
  %sub16 = sub nsw i32 %sub15, 1
  %mul = mul nsw i32 %sub14, %sub16
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %t) #4
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
