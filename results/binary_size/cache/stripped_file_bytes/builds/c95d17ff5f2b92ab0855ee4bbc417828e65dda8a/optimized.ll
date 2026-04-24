; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxlorsae9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global [500 x i8] zeroinitializer, align 16
@post = dso_local local_unnamed_addr global [500 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull @a)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv3 = sext i32 %0 to i64
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end26, %entry
  %indvars.iv25 = phi i32 [ %indvars.iv.next26, %for.end26 ], [ 0, %entry ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.end26 ], [ 0, %entry ]
  %max.0 = phi i32 [ %spec.select, %for.end26 ], [ 0, %entry ]
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @a) #6
  %sub = sub i64 %call2, %conv3
  %cmp.not = icmp ult i64 %sub, %indvars.iv12
  br i1 %cmp.not, label %for.end34, label %for.cond4

for.cond4:                                        ; preds = %for.cond, %for.inc24
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc24 ], [ %indvars.iv12, %for.cond ]
  %count.1 = phi i32 [ %count.2, %for.inc24 ], [ 0, %for.cond ]
  %cmp9.not = icmp ult i64 %sub, %indvars.iv14
  br i1 %cmp9.not, label %for.end26, label %for.cond11

for.cond11:                                       ; preds = %for.cond4, %for.body13
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13 ], [ 0, %for.cond4 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.then21, label %for.body13

for.body13:                                       ; preds = %for.cond11
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv12
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr @a, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %3 = add nuw nsw i64 %indvars.iv, %indvars.iv14
  %arrayidx17 = getelementptr inbounds nuw [500 x i8], ptr @a, i64 0, i64 %3
  %4 = load i8, ptr %arrayidx17, align 1, !tbaa !9, !invariant.load !10
  %cmp19.not = icmp eq i8 %2, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp19.not, label %for.cond11, label %for.inc24, !llvm.loop !11

if.then21:                                        ; preds = %for.cond11
  %inc22 = add nsw i32 %count.1, 1
  br label %for.inc24

for.inc24:                                        ; preds = %for.body13, %if.then21
  %count.2 = phi i32 [ %inc22, %if.then21 ], [ %count.1, %for.body13 ]
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond4, !llvm.loop !14

for.end26:                                        ; preds = %for.cond4
  %arrayidx28 = getelementptr inbounds nuw [500 x i32], ptr @post, i64 0, i64 %indvars.iv12
  store i32 %count.1, ptr %arrayidx28, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %count.1, i32 %max.0)
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %indvars.iv.next26 = add nuw i32 %indvars.iv25, 1
  br label %for.cond, !llvm.loop !15

for.end34:                                        ; preds = %for.cond
  %cmp35 = icmp slt i32 %max.0, 2
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %for.end34
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end66

if.else:                                          ; preds = %for.end34
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %max.0)
  %wide.trip.count27 = zext i32 %indvars.iv25 to i64
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc63, %if.else
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc63 ], [ 0, %if.else ]
  %exitcond28.not = icmp eq i64 %indvars.iv18, %wide.trip.count27
  br i1 %exitcond28.not, label %if.end66, label %for.body41

for.body41:                                       ; preds = %for.cond39
  %arrayidx43 = getelementptr inbounds nuw [500 x i32], ptr @post, i64 0, i64 %indvars.iv18
  %5 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !10
  %cmp44 = icmp eq i32 %5, %max.0
  br i1 %cmp44, label %for.cond46.preheader, label %for.inc63

for.cond46.preheader:                             ; preds = %for.body41
  %6 = trunc i64 %indvars.iv18 to i32
  %7 = add i32 %6, -1
  br label %for.cond46

for.cond46:                                       ; preds = %for.cond46.preheader, %for.inc55
  %indvars.iv20 = phi i64 [ %indvars.iv18, %for.cond46.preheader ], [ %indvars.iv.next21, %for.inc55 ]
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %sub48 = add i32 %7, %8
  %9 = sext i32 %sub48 to i64
  %cmp49 = icmp slt i64 %indvars.iv20, %9
  %10 = getelementptr inbounds nuw [500 x i8], ptr @a, i64 0, i64 %indvars.iv20
  %11 = load i8, ptr %10, align 1, !tbaa !9, !invariant.load !10
  %conv60 = sext i8 %11 to i32
  br i1 %cmp49, label %for.inc55, label %for.end57

for.inc55:                                        ; preds = %for.cond46
  %putchar = call i32 @putchar(i32 %conv60)
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond46, !llvm.loop !16

for.end57:                                        ; preds = %for.cond46
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %conv60)
  br label %for.inc63

for.inc63:                                        ; preds = %for.body41, %for.end57
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond39, !llvm.loop !17

if.end66:                                         ; preds = %for.cond39, %if.then36
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) }
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
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
