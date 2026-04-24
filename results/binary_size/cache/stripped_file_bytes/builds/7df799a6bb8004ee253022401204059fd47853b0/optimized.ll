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
  %cmp12 = icmp sgt i32 %0, 0
  br label %for.cond

for.cond:                                         ; preds = %for.end26, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end26 ], [ 0, %entry ]
  %max.0 = phi i32 [ %spec.select, %for.end26 ], [ 0, %entry ]
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @a) #7
  %sub = sub i64 %call2, %conv3
  %cmp.not = icmp ult i64 %sub, %indvars.iv
  br i1 %cmp.not, label %for.end34, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr @a, i64 0, i64 %indvars.iv
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc24
  %indvars.iv12 = phi i64 [ %indvars.iv, %for.cond4.preheader ], [ %indvars.iv.next13, %for.inc24 ]
  %count.1 = phi i32 [ 0, %for.cond4.preheader ], [ %count.2, %for.inc24 ]
  %cmp9.not = icmp ult i64 %sub, %indvars.iv12
  br i1 %cmp9.not, label %for.end26, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond4
  br i1 %cmp12, label %for.cond11.preheader.split, label %if.then21

for.cond11.preheader.split:                       ; preds = %for.cond11.preheader
  %arrayidx17 = getelementptr inbounds nuw [500 x i8], ptr @a, i64 0, i64 %indvars.iv12
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %2 = load i8, ptr %arrayidx17, align 1, !tbaa !9, !invariant.load !10
  %cmp19.not = icmp ne i8 %1, %2
  call void @llvm.assume(i1 %cmp19.not)
  br label %for.inc24

if.then21:                                        ; preds = %for.cond11.preheader
  %inc22 = add nsw i32 %count.1, 1
  br label %for.inc24

for.inc24:                                        ; preds = %for.cond11.preheader.split, %if.then21
  %count.2 = phi i32 [ %inc22, %if.then21 ], [ %count.1, %for.cond11.preheader.split ]
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond4, !llvm.loop !11

for.end26:                                        ; preds = %for.cond4
  %arrayidx28 = getelementptr inbounds nuw [500 x i32], ptr @post, i64 0, i64 %indvars.iv
  store i32 %count.1, ptr %arrayidx28, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %count.1, i32 %max.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !14

for.end34:                                        ; preds = %for.cond
  %cmp35 = icmp slt i32 %max.0, 2
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %for.end34
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0

if.else:                                          ; preds = %for.end34
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %max.0)
  %3 = load i32, ptr @post, align 16, !tbaa !5, !invariant.load !10
  %cmp44 = icmp eq i32 %3, %max.0
  %4 = load i8, ptr @a, align 16
  %conv60 = sext i8 %4 to i32
  br label %for.cond39

for.cond39:                                       ; preds = %if.end62, %if.else
  br i1 %cmp44, label %for.cond46, label %if.end62

for.cond46:                                       ; preds = %for.cond39, %for.body50
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp49 = icmp sgt i32 %5, 1
  br i1 %cmp49, label %for.body50, label %for.end57

for.body50:                                       ; preds = %for.cond46
  %putchar = call i32 @putchar(i32 %conv60)
  br label %for.cond46

for.end57:                                        ; preds = %for.cond46
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %conv60)
  br label %if.end62

if.end62:                                         ; preds = %for.end57, %for.cond39
  br label %for.cond39
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
