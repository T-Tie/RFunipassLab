; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuw_pj86e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x = alloca [100 x [16 x i32]], align 16
  %sum = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 6400, ptr nonnull %x) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %sum) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %sum, i8 0, i64 400, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc17 ], [ 0, %entry ]
  %exitcond33.not = icmp eq i64 %indvars.iv30, 100
  br i1 %exitcond33.not, label %for.cond20.preheader, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x [16 x i32]], ptr %x, i64 0, i64 %indvars.iv30
  br label %for.cond1

for.cond1:                                        ; preds = %if.end, %for.cond1.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %for.cond1.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.inc17, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [16 x i32]], ptr %x, i64 0, i64 %indvars.iv30, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !5
  %cmp9 = icmp eq i32 %0, -1
  br i1 %cmp9, label %for.cond20.preheader, label %if.end

for.cond20.preheader:                             ; preds = %for.cond, %for.body3
  br label %for.cond20

if.end:                                           ; preds = %for.body3
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %1, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp14, label %for.inc17, label %for.cond1, !llvm.loop !9

for.inc17:                                        ; preds = %for.cond1, %if.end
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond, !llvm.loop !12

for.cond20:                                       ; preds = %for.cond20.preheader, %if.end75
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %if.end75 ], [ 0, %for.cond20.preheader ]
  %exitcond45.not = icmp eq i64 %indvars.iv42, 100
  br i1 %exitcond45.not, label %for.end84, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %arrayidx24 = getelementptr inbounds nuw [100 x [16 x i32]], ptr %x, i64 0, i64 %indvars.iv42
  %2 = load i32, ptr %arrayidx24, align 16, !tbaa !5
  %cmp26.not = icmp eq i32 %2, -1
  br i1 %cmp26.not, label %for.end84, label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.body22
  %arrayidx62 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv42
  br label %for.cond28

for.cond28:                                       ; preds = %for.cond28.preheader, %for.inc69
  %indvars.iv38 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next39, %for.inc69 ]
  %exitcond41.not = icmp eq i64 %indvars.iv38, 16
  br i1 %exitcond41.not, label %if.end75, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %arrayidx34 = getelementptr inbounds nuw [100 x [16 x i32]], ptr %x, i64 0, i64 %indvars.iv42, i64 %indvars.iv38
  %3 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %3, 0
  br i1 %cmp35, label %if.end75, label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.body30
  %conv = sitofp i32 %3 to double
  br label %for.cond38

for.cond38:                                       ; preds = %for.cond38.preheader, %for.inc66
  %indvars.iv34 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next35, %for.inc66 ]
  %exitcond37.not = icmp eq i64 %indvars.iv34, 16
  br i1 %exitcond37.not, label %for.inc69, label %for.body40

for.body40:                                       ; preds = %for.cond38
  %arrayidx44 = getelementptr inbounds nuw [100 x [16 x i32]], ptr %x, i64 0, i64 %indvars.iv42, i64 %indvars.iv34
  %4 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %4, 0
  br i1 %cmp45, label %for.inc69, label %if.end47

if.end47:                                         ; preds = %for.body40
  %conv56 = sitofp i32 %4 to double
  %div = fdiv double %conv, %conv56
  %conv58 = fptrunc double %div to float
  %cmp59 = fcmp oeq float %conv58, 2.000000e+00
  br i1 %cmp59, label %if.then60, label %for.inc66

if.then60:                                        ; preds = %if.end47
  %5 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %add = add nsw i32 %5, 1
  store i32 %add, ptr %arrayidx62, align 4, !tbaa !5
  br label %for.inc66

for.inc66:                                        ; preds = %if.end47, %if.then60
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond38, !llvm.loop !13

for.inc69:                                        ; preds = %for.cond38, %for.body40
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond28, !llvm.loop !14

if.end75:                                         ; preds = %for.cond28, %for.body30
  %6 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %call74 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  %.pr = load i32, ptr %arrayidx24, align 16, !tbaa !5
  %cmp79 = icmp eq i32 %.pr, -1
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br i1 %cmp79, label %for.end84, label %for.cond20, !llvm.loop !15

for.end84:                                        ; preds = %for.body22, %if.end75, %for.cond20
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %sum) #5
  call void @llvm.lifetime.end.p0(i64 6400, ptr nonnull %x) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
