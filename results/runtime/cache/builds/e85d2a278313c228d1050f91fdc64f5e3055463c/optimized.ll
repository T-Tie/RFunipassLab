; ModuleID = '<stdin>'
source_filename = "/tmp/tmpeao8e25m.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20001 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 80004, ptr noundef nonnull align 16 %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(80004) %a, i8 noundef 0, i64 noundef 80004, i1 noundef false) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond5, %for.cond
  %2 = phi i32 [ %0, %for.cond ], [ %6, %for.cond5 ]
  %indvars.iv17 = phi i64 [ 0, %for.cond ], [ %indvars.iv.next18, %for.cond5 ]
  %n.promoted12 = phi i32 [ %0, %for.cond ], [ %n.promoted11, %for.cond5 ]
  %3 = sext i32 %n.promoted12 to i64
  %cmp3 = icmp slt i64 %indvars.iv17, %3
  br i1 %cmp3, label %for.body4, label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.cond2
  %4 = load i32, ptr %a, align 16
  br label %for.cond31

for.body4:                                        ; preds = %for.cond2
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %arrayidx11 = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv17
  %5 = trunc nuw i64 %indvars.iv.next18 to i32
  br label %for.cond5

for.cond5:                                        ; preds = %if.end, %for.body4
  %6 = phi i32 [ %2, %for.body4 ], [ %11, %if.end ]
  %n.promoted11 = phi i32 [ %n.promoted12, %for.body4 ], [ %n.promoted10, %if.end ]
  %dec8 = phi i32 [ %n.promoted12, %for.body4 ], [ %dec7, %if.end ]
  %l.0 = phi i32 [ %5, %for.body4 ], [ %inc22.i1, %if.end ]
  %cmp6 = icmp slt i32 %l.0, %dec8
  br i1 %cmp6, label %for.body7, label %for.cond2, !llvm.loop !12

for.body7:                                        ; preds = %for.cond5
  %idxprom8 = sext i32 %l.0 to i64
  %arrayidx9 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 %idxprom8
  %7 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !13
  %8 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !13
  %cmp12 = icmp eq i32 %7, %8
  br i1 %cmp12, label %for.cond14.preheader, label %if.end

for.cond14.preheader:                             ; preds = %for.body7
  %9 = add nsw i32 %dec8, -1
  %wide.trip.count = sext i32 %9 to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv14 = phi i64 [ %idxprom8, %for.cond14.preheader ], [ %indvars.iv.next15, %for.body16 ]
  %exitcond.not = icmp eq i64 %indvars.iv14, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1
  %arrayidx18 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 %indvars.iv.next15
  %10 = load i32, ptr %arrayidx18, align 4, !tbaa !5, !invariant.load !13
  %arrayidx20 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 %indvars.iv14
  store i32 %10, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.cond14

for.end23:                                        ; preds = %for.cond14
  %sub24 = add nsw i32 %l.0, -1
  store i32 %9, ptr %n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.end23, %for.body7
  %11 = phi i32 [ %9, %for.end23 ], [ %6, %for.body7 ]
  %n.promoted10 = phi i32 [ %9, %for.end23 ], [ %n.promoted11, %for.body7 ]
  %dec7 = phi i32 [ %9, %for.end23 ], [ %dec8, %for.body7 ]
  %l.1 = phi i32 [ %sub24, %for.end23 ], [ %l.0, %for.body7 ]
  %inc22.i1 = add nsw i32 %l.1, 1
  br label %for.cond5

for.cond31:                                       ; preds = %for.cond31.preheader, %if.end42
  %12 = phi i32 [ %2, %for.cond31.preheader ], [ %.pre, %if.end42 ]
  %cmp32 = icmp sgt i32 %12, 0
  br i1 %cmp32, label %if.end42, label %for.end45

if.end42:                                         ; preds = %for.cond31
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond31

for.end45:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 noundef 80004, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind }

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
!13 = !{}
