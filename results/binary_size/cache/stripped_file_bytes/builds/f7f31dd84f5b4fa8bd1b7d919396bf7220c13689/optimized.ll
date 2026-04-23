; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_r5dumkl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.student = type { [20 x i8], [20 x i8], i8, i32, [20 x i8], [20 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s %c %d %s %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s %s %c %d %s %s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %stu = alloca [1000 x %struct.student], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 88000, ptr noundef nonnull align 16 %stu) #4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arrayidx20.sink = phi ptr [ %arrayidx20, %while.body ], [ %stu, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %entry ]
  %call23 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx20.sink)
  %arrayidx1 = getelementptr inbounds nuw [1000 x %struct.student], ptr %stu, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx1, align 8, !tbaa !5
  %cmp.not = icmp eq i8 %0, 101
  br i1 %cmp.not, label %for.cond, label %while.body

while.body:                                       ; preds = %while.cond
  %name = getelementptr inbounds nuw i8, ptr %arrayidx1, i64 20
  %sex = getelementptr inbounds nuw i8, ptr %arrayidx1, i64 40
  %age = getelementptr inbounds nuw i8, ptr %arrayidx1, i64 44
  %score = getelementptr inbounds nuw i8, ptr %arrayidx1, i64 48
  %add = getelementptr inbounds nuw i8, ptr %arrayidx1, i64 68
  %call17 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %name, ptr noundef nonnull %sex, ptr noundef nonnull %age, ptr noundef nonnull %score, ptr noundef nonnull %add)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx20 = getelementptr inbounds nuw [1000 x %struct.student], ptr %stu, i64 0, i64 %indvars.iv.next
  br label %while.cond, !llvm.loop !8

for.cond:                                         ; preds = %while.cond, %for.body
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body ], [ %indvars.iv, %while.cond ]
  %cmp24 = icmp sgt i64 %indvars.iv7, 0
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -1
  %arrayidx26 = getelementptr inbounds [1000 x %struct.student], ptr %stu, i64 0, i64 %indvars.iv.next8
  %name31 = getelementptr inbounds nuw i8, ptr %arrayidx26, i64 20
  %sex35 = getelementptr inbounds nuw i8, ptr %arrayidx26, i64 40
  %1 = load i8, ptr %sex35, align 8, !tbaa !11, !invariant.load !14
  %conv36 = sext i8 %1 to i32
  %age39 = getelementptr inbounds nuw i8, ptr %arrayidx26, i64 44
  %2 = load i32, ptr %age39, align 4, !tbaa !15, !invariant.load !14
  %score42 = getelementptr inbounds nuw i8, ptr %arrayidx26, i64 48
  %add46 = getelementptr inbounds nuw i8, ptr %arrayidx26, i64 68
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %arrayidx26, ptr noundef nonnull %name31, i32 noundef %conv36, i32 noundef %2, ptr noundef nonnull %score42, ptr noundef nonnull %add46) #5
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 88000, ptr noundef nonnull %stu) #5
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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !6, i64 40}
!12 = !{!"_ZTS7student", !6, i64 0, !6, i64 20, !6, i64 40, !13, i64 44, !6, i64 48, !6, i64 68}
!13 = !{!"int", !6, i64 0}
!14 = !{}
!15 = !{!12, !13, i64 44}
!16 = distinct !{!16, !9, !10}
