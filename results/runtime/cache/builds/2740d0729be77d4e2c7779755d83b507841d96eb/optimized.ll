; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3idlx6kg.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global [25 x i32] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef @n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc9, %for.inc8 ]
  %z.0 = phi i32 [ 0, %for.end ], [ %z.1, %for.inc8 ]
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %i.1, %1
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %call5 = call noundef i32 @_Z1Fi(i32 noundef %i.1) #5
  %cmp6 = icmp slt i32 %z.0, %call5
  br i1 %cmp6, label %if.then, label %for.inc8

if.then:                                          ; preds = %for.body4
  %call7 = call noundef i32 @_Z1Fi(i32 noundef %i.1) #5
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4, %if.then
  %z.1 = phi i32 [ %call7, %if.then ], [ %z.0, %for.body4 ]
  %inc9 = add nsw i32 %i.1, 1
  br label %for.cond2, !llvm.loop !12

for.end10:                                        ; preds = %for.cond2
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %z.0) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z1Fi(i32 noundef %x) local_unnamed_addr #3 {
entry:
  %x.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %z.0 = phi i32 [ 1, %entry ], [ %z.1, %for.inc ]
  %x.addr.sink = phi ptr [ %x.addr, %entry ], [ %i, %for.inc ]
  %0 = load i32, ptr %x.addr.sink, align 4, !tbaa !5
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %add, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %x to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom1
  %3 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %2, %3
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %call = call noundef i32 @_Z1Fi(i32 noundef %add) #7
  %add4 = add nsw i32 %z.0, 1
  %call6 = call noundef i32 @_Z1Fi(i32 noundef %add) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %z.1 = phi i32 [ %add4, %if.then ], [ %z.0, %for.body ]
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  ret i32 %z.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree nosync nounwind }

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
