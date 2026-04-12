; ModuleID = '<stdin>'
source_filename = "/tmp/tmpll1duifb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [100 x i8], align 16
  %b = alloca [100 x [100 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef align 16 %b) #4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %n.0 = phi i32 [ 0, %entry ], [ %inc7, %for.end ]
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %a)
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i64 @strlen(ptr noundef %a) #5
  %conv = trunc i64 %call1 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ]
  %cmp2 = icmp slt i32 %i.0, %conv
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %idxprom3 = sext i32 %n.0 to i64
  %arrayidx4 = getelementptr inbounds [100 x [100 x i8]], ptr %b, i64 0, i64 %idxprom3
  %arrayidx6 = getelementptr inbounds [100 x i8], ptr %arrayidx4, i64 0, i64 %idxprom
  store i8 %0, ptr %arrayidx6, align 1, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %inc7 = add nsw i32 %n.0, 1
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.body10, %while.end
  %i.1 = phi i32 [ 0, %while.end ], [ %inc18, %for.body10 ]
  %sub = sub nsw i32 %n.0, 1
  %cmp9 = icmp slt i32 %i.1, %sub
  br i1 %cmp9, label %for.body10, label %for.end19

for.body10:                                       ; preds = %for.cond8
  %sub11 = sub nsw i32 %n.0, %i.1
  %sub12 = sub nsw i32 %sub11, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds [100 x [100 x i8]], ptr %b, i64 0, i64 %idxprom13
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arrayidx14)
  %inc18 = add nsw i32 %i.1, 1
  br label %for.cond8, !llvm.loop !12

for.end19:                                        ; preds = %for.cond8
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %b)
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
