; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzlrg2w3o.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %1
  br i1 %cmp.not.not, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %a, align 16, !tbaa !5
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2)
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc27, %for.end
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc27 ], [ 1, %for.end ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv17, %4
  br i1 %cmp6.not.not, label %for.cond8.preheader, label %for.end29

for.cond8.preheader:                              ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv17
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond8.preheader, %if.else
  %indvars.iv12 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next13, %if.else ]
  %exitcond.not = icmp eq i64 %indvars.iv12, %indvars.iv17
  br i1 %exitcond.not, label %for.end20, label %for.body11

for.body11:                                       ; preds = %for.cond8
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %arrayidx15 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv12
  %6 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %5, %6
  br i1 %cmp16, label %for.end20, label %if.else

if.else:                                          ; preds = %for.body11
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond8, !llvm.loop !12

for.end20:                                        ; preds = %for.body11, %for.cond8
  %r.0.lcssa.in = phi i64 [ %indvars.iv12, %for.body11 ], [ %indvars.iv17, %for.cond8 ]
  %7 = and i64 %r.0.lcssa.in, 4294967295
  %cmp21 = icmp eq i64 %7, %indvars.iv17
  br i1 %cmp21, label %if.then22, label %for.inc27

if.then22:                                        ; preds = %for.end20
  %8 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  br label %for.inc27

for.inc27:                                        ; preds = %for.end20, %if.then22
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond4, !llvm.loop !13

for.end29:                                        ; preds = %for.cond4
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
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
!13 = distinct !{!13, !10, !11}
