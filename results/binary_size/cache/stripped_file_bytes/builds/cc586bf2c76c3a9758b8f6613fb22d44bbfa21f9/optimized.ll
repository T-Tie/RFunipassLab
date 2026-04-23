; ModuleID = '/tmp/tmp_r5dumkl.cpp'
source_filename = "/tmp/tmp_r5dumkl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.student = type { [20 x i8], [20 x i8], i8, i32, [20 x i8], [20 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s %c %d %s %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s %s %c %d %s %s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %stu = alloca [1000 x %struct.student], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #3
  store i32 0, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  store i32 0, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 88000, ptr %stu) #3
  %arrayidx = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 0
  %num = getelementptr inbounds nuw %struct.student, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [20 x i8], ptr %num, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx1 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom
  %num2 = getelementptr inbounds nuw %struct.student, ptr %arrayidx1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x i8], ptr %num2, i64 0, i64 0
  %1 = load i8, ptr %arrayidx3, align 8, !tbaa !9
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 101
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom4
  %name = getelementptr inbounds nuw %struct.student, ptr %arrayidx5, i32 0, i32 1
  %arraydecay6 = getelementptr inbounds [20 x i8], ptr %name, i64 0, i64 0
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %3 to i64
  %arrayidx8 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom7
  %sex = getelementptr inbounds nuw %struct.student, ptr %arrayidx8, i32 0, i32 2
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %4 to i64
  %arrayidx10 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom9
  %age = getelementptr inbounds nuw %struct.student, ptr %arrayidx10, i32 0, i32 3
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom11
  %score = getelementptr inbounds nuw %struct.student, ptr %arrayidx12, i32 0, i32 4
  %arraydecay13 = getelementptr inbounds [20 x i8], ptr %score, i64 0, i64 0
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %6 to i64
  %arrayidx15 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom14
  %add = getelementptr inbounds nuw %struct.student, ptr %arrayidx15, i32 0, i32 5
  %arraydecay16 = getelementptr inbounds [20 x i8], ptr %add, i64 0, i64 0
  %call17 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay6, ptr noundef %sex, ptr noundef %age, ptr noundef %arraydecay13, ptr noundef %arraydecay16)
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  %8 = load i32, ptr %s, align 4, !tbaa !5
  %inc18 = add nsw i32 %8, 1
  store i32 %inc18, ptr %s, align 4, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %9 to i64
  %arrayidx20 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom19
  %num21 = getelementptr inbounds nuw %struct.student, ptr %arrayidx20, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [20 x i8], ptr %num21, i64 0, i64 0
  %call23 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay22)
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %10 = load i32, ptr %s, align 4, !tbaa !5
  %sub = sub nsw i32 %10, 1
  store i32 %sub, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %cmp24 = icmp sge i32 %11, 0
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %12 to i64
  %arrayidx26 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom25
  %num27 = getelementptr inbounds nuw %struct.student, ptr %arrayidx26, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [20 x i8], ptr %num27, i64 0, i64 0
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %13 to i64
  %arrayidx30 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom29
  %name31 = getelementptr inbounds nuw %struct.student, ptr %arrayidx30, i32 0, i32 1
  %arraydecay32 = getelementptr inbounds [20 x i8], ptr %name31, i64 0, i64 0
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %14 to i64
  %arrayidx34 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom33
  %sex35 = getelementptr inbounds nuw %struct.student, ptr %arrayidx34, i32 0, i32 2
  %15 = load i8, ptr %sex35, align 8, !tbaa !13
  %conv36 = sext i8 %15 to i32
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %16 to i64
  %arrayidx38 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom37
  %age39 = getelementptr inbounds nuw %struct.student, ptr %arrayidx38, i32 0, i32 3
  %17 = load i32, ptr %age39, align 4, !tbaa !15
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %18 to i64
  %arrayidx41 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom40
  %score42 = getelementptr inbounds nuw %struct.student, ptr %arrayidx41, i32 0, i32 4
  %arraydecay43 = getelementptr inbounds [20 x i8], ptr %score42, i64 0, i64 0
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %19 to i64
  %arrayidx45 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %idxprom44
  %add46 = getelementptr inbounds nuw %struct.student, ptr %arrayidx45, i32 0, i32 5
  %arraydecay47 = getelementptr inbounds [20 x i8], ptr %add46, i64 0, i64 0
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay28, ptr noundef %arraydecay32, i32 noundef %conv36, i32 noundef %17, ptr noundef %arraydecay43, ptr noundef %arraydecay47)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 88000, ptr %stu) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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
attributes #3 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !7, i64 40}
!14 = !{!"_ZTS7student", !7, i64 0, !7, i64 20, !7, i64 40, !6, i64 44, !7, i64 48, !7, i64 68}
!15 = !{!14, !6, i64 44}
!16 = distinct !{!16, !11, !12}
