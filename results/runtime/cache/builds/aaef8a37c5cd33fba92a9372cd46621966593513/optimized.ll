; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmh_eaz48.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.t = private unnamed_addr constant [400 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%c=%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [400 x i8], align 16
  %u = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %s) #3
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %u) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 52
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %u, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %s)
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc19, %for.end
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc19 ], [ 0, %for.end ]
  %q.0 = phi ptr [ %incdec.ptr20, %for.inc19 ], [ @__const.main.t, %for.end ]
  %f.0 = phi i32 [ %f.1, %for.inc19 ], [ 0, %for.end ]
  %0 = load i8, ptr %q.0, align 1, !tbaa !12, !invariant.load !13
  %exitcond5 = icmp eq i64 %indvars.iv2, 52
  br i1 %exitcond5, label %for.cond23.preheader, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond2
  %arrayidx14 = getelementptr inbounds nuw [100 x i32], ptr %u, i64 0, i64 %indvars.iv2
  br label %for.cond6

for.cond23.preheader:                             ; preds = %for.cond2
  br label %for.cond23

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc16
  %p.0 = phi ptr [ %incdec.ptr, %for.inc16 ], [ %s, %for.cond6.preheader ]
  %f.1 = phi i32 [ %f.2, %for.inc16 ], [ %f.0, %for.cond6.preheader ]
  %1 = load i8, ptr %p.0, align 1, !tbaa !12, !invariant.load !13
  %cmp8.not = icmp eq i8 %1, 0
  br i1 %cmp8.not, label %for.inc19, label %for.body9

for.body9:                                        ; preds = %for.cond6
  %cmp12 = icmp eq i8 %1, %0
  br i1 %cmp12, label %if.then, label %for.inc16

if.then:                                          ; preds = %for.body9
  %2 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !13
  %inc15 = add nsw i32 %2, 1
  store i32 %inc15, ptr %arrayidx14, align 4, !tbaa !5
  br label %for.inc16

for.inc16:                                        ; preds = %for.body9, %if.then
  %f.2 = phi i32 [ 1, %if.then ], [ %f.1, %for.body9 ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  br label %for.cond6, !llvm.loop !14

for.inc19:                                        ; preds = %for.cond6
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %q.0, i64 1
  br label %for.cond2, !llvm.loop !15

for.cond23:                                       ; preds = %for.cond23.preheader, %for.inc38
  %indvars.iv6 = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next7, %for.inc38 ]
  %q.1 = phi ptr [ @__const.main.t, %for.cond23.preheader ], [ %incdec.ptr39, %for.inc38 ]
  %3 = load i8, ptr %q.1, align 1, !tbaa !12, !invariant.load !13
  %conv24 = sext i8 %3 to i32
  %exitcond9 = icmp eq i64 %indvars.iv6, 52
  br i1 %exitcond9, label %for.end40, label %for.body26

for.body26:                                       ; preds = %for.cond23
  %arrayidx28 = getelementptr inbounds nuw [100 x i32], ptr %u, i64 0, i64 %indvars.iv6
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !13
  %cmp29.not = icmp eq i32 %4, 0
  br i1 %cmp29.not, label %for.inc38, label %if.then30

if.then30:                                        ; preds = %for.body26
  %call34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv24, i32 noundef %4)
  %putchar = call i32 @putchar(i32 noundef 10) #4
  br label %for.inc38

for.inc38:                                        ; preds = %for.body26, %if.then30
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %incdec.ptr39 = getelementptr inbounds nuw i8, ptr %q.1, i64 1
  br label %for.cond23, !llvm.loop !16

for.end40:                                        ; preds = %for.cond23
  %cmp41 = icmp eq i32 %f.0, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %for.end40
  %call43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %for.end40
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %u) #4
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %s) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!12 = !{!7, !7, i64 0}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
