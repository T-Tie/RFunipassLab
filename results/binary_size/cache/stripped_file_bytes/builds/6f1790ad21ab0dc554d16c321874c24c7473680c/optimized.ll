; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4db8b9s9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"same\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %z = alloca i32, align 4
  %e = alloca i32, align 4
  %y = alloca [100 x double], align 16
  %x = alloca [100 x [10 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %z) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %e) #6
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %y) #6
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef nonnull %x) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end28, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end28 ], [ 0, %entry ]
  %k.0 = phi i32 [ %k.1, %if.end28 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %k.0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond30

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %z, ptr noundef nonnull %e)
  %2 = load i32, ptr %e, align 4, !tbaa !5
  %conv = sitofp i32 %2 to double
  %3 = load i32, ptr %z, align 4, !tbaa !5
  %conv2 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv2
  %arrayidx = getelementptr inbounds nuw [100 x double], ptr %y, i64 0, i64 %indvars.iv
  store double %div, ptr %arrayidx, align 8, !tbaa !9
  %cmp3.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp3.not, label %if.end28, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load double, ptr %y, align 16, !tbaa !9
  %sub = fsub double %div, %4
  %cmp7 = fcmp ogt double %sub, 5.000000e-02
  %idxprom9 = sext i32 %k.0 to i64
  br i1 %cmp7, label %if.end27, label %if.else

if.else:                                          ; preds = %if.then
  %sub15 = fsub double %4, %div
  %cmp16 = fcmp ogt double %sub15, 5.000000e-02
  br i1 %cmp16, label %if.end27, label %if.else22

if.else22:                                        ; preds = %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.else22, %if.else, %if.then
  %.str.4.sink.sink = phi ptr [ @.str.2, %if.then ], [ @.str.4, %if.else22 ], [ @.str.3, %if.else ]
  %arrayidx24 = getelementptr inbounds [100 x [10 x i8]], ptr %x, i64 0, i64 %idxprom9
  %call26 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx24, ptr noundef nonnull dereferenceable(1) %.str.4.sink.sink) #7
  %inc = add nsw i32 %k.0, 1
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %for.body
  %k.1 = phi i32 [ %inc, %if.end27 ], [ %k.0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !11

for.cond30:                                       ; preds = %for.cond30.preheader, %for.body32
  %indvars.iv9 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next10, %for.body32 ]
  %exitcond.not = icmp eq i64 %indvars.iv9, %wide.trip.count
  br i1 %exitcond.not, label %for.end39, label %for.body32

for.body32:                                       ; preds = %for.cond30
  %arrayidx34 = getelementptr inbounds nuw [100 x [10 x i8]], ptr %x, i64 0, i64 %indvars.iv9
  %puts = call i32 @puts(ptr noundef nonnull readonly captures(none) dereferenceable(1) %arrayidx34) #7
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond30, !llvm.loop !14

for.end39:                                        ; preds = %for.cond30
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef nonnull %x) #7
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %y) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %e) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %z) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
