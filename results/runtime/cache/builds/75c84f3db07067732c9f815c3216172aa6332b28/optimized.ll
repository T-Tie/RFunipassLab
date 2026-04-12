; ModuleID = '<stdin>'
source_filename = "/tmp/tmpaj9od0uh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [20002 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 80008, ptr noundef align 16 %a) #4
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 80008, i1 noundef false) #5
  store i32 1, ptr %a, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %arrayidx = getelementptr inbounds [20002 x i32], ptr %a, i64 0, i64 1
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %1 to i64
  %arrayidx4 = getelementptr inbounds [20002 x i32], ptr %a, i64 0, i64 %idxprom
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx4)
  store i32 0, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %sub.sink = phi i32 [ %sub, %for.body ], [ %dec, %for.inc ]
  %3 = phi i32 [ %dec, %for.inc ], [ %sub, %for.body ]
  store i32 %sub.sink, ptr %j, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %3, 0
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %4 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds [20002 x i32], ptr %a, i64 0, i64 %idxprom11
  %6 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %4, %6
  br i1 %cmp13, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body8
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %add = add nsw i32 %7, 1
  store i32 %add, ptr %k, align 4, !tbaa !5
  %dec = add nsw i32 %5, -1
  br label %for.cond6, !llvm.loop !9

for.end:                                          ; preds = %for.body8, %for.cond6
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %8, %sub
  br i1 %cmp15, label %if.then16, label %for.inc21

if.then16:                                        ; preds = %for.end
  %9 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9)
  br label %for.inc21

for.inc21:                                        ; preds = %for.end, %if.then16
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end22:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 80008, ptr noundef %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree }
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
