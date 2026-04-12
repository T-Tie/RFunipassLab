; ModuleID = '<stdin>'
source_filename = "/tmp/tmpysqwb1xv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %a) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %x2.0 = phi i32 [ undef, %entry ], [ %x2.1, %for.end ]
  %y1.0 = phi i32 [ undef, %entry ], [ %y1.1, %for.end ]
  %x1.0 = phi i32 [ -1, %entry ], [ %x1.1, %for.end ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.end ]
  %y2.0 = phi i32 [ undef, %entry ], [ %y2.1, %for.end ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %if.end10, %for.body
  %x2.1 = phi i32 [ %x2.0, %for.body ], [ %x2.2, %if.end10 ]
  %y1.1 = phi i32 [ %y1.0, %for.body ], [ %y1.2, %if.end10 ]
  %x1.1 = phi i32 [ %x1.0, %for.body ], [ %x1.2, %if.end10 ]
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %if.end10 ]
  %y2.1 = phi i32 [ %y2.0, %for.body ], [ %y2.2, %if.end10 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %2, 0
  br i1 %cmp7, label %if.then, label %if.end10

if.then:                                          ; preds = %for.body3
  %cmp8 = icmp eq i32 %x1.1, -1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then9, %for.body3
  %x2.2 = phi i32 [ %x2.1, %for.body3 ], [ %i.0, %if.then9 ], [ %i.0, %if.then ]
  %y1.2 = phi i32 [ %y1.1, %for.body3 ], [ %j.0, %if.then9 ], [ %y1.1, %if.then ]
  %x1.2 = phi i32 [ %x1.1, %for.body3 ], [ %i.0, %if.then9 ], [ %x1.1, %if.then ]
  %y2.2 = phi i32 [ %y2.1, %for.body3 ], [ %j.0, %if.then9 ], [ %j.0, %if.then ]
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %inc12 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  %sub = sub nsw i32 %x2.0, %x1.0
  %sub14 = sub nsw i32 %sub, 1
  %sub15 = sub nsw i32 %y2.0, %y1.0
  %sub16 = sub nsw i32 %sub15, 1
  %mul = mul nsw i32 %sub14, %sub16
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %a) #4
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
