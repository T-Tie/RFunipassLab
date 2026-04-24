; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjq4l32fp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %flag = alloca [550 x i32], align 16
  %s = alloca [550 x i8], align 16
  %s1 = alloca [550 x [6 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2200, ptr noundef nonnull %flag) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(2200) %flag, i8 noundef 0, i64 noundef 2200, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 550, ptr noundef nonnull align 16 %s) #5
  call void @llvm.lifetime.start.p0(i64 noundef 3300, ptr noundef nonnull %s1) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(3300) %s1, i8 noundef 0, i64 noundef 3300, i1 noundef false) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %conv = trunc i64 %call3 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %add = add nsw i32 %sub, 1
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %k.1, %do.body ]
  %j.0 = phi i32 [ 1, %entry ], [ %j.1, %do.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %do.body ]
  %idx.ext = sext i32 %i.0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %s, i64 %idx.ext
  %1 = load i8, ptr %add.ptr, align 1, !tbaa !9
  %idx.ext6 = zext nneg i32 %j.0 to i64
  %add.ptr7 = getelementptr inbounds nuw [6 x i8], ptr %s1, i64 %idx.ext6
  %idx.ext9 = sext i32 %k.0 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %add.ptr7, i64 %idx.ext9
  store i8 %1, ptr %add.ptr10, align 1, !tbaa !9
  %inc = add nsw i32 %i.0, 1
  %inc11 = add nsw i32 %k.0, 1
  %cmp = icmp eq i32 %inc11, %0
  %k.1 = select i1 %cmp, i32 0, i32 %inc11
  %inc12 = zext i1 %cmp to i32
  %j.1 = add nuw nsw i32 %j.0, %inc12
  %i.1 = select i1 %cmp, i32 %j.0, i32 %inc
  %cmp13.not = icmp sgt i32 %j.1, %add
  br i1 %cmp13.not, label %for.cond.preheader, label %do.body, !llvm.loop !10

for.cond.preheader:                               ; preds = %do.body
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond

for.cond.loopexit:                                ; preds = %for.cond17
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

for.cond:                                         ; preds = %for.cond.preheader, %for.cond.loopexit
  %indvars.iv29 = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next30, %for.cond.loopexit ]
  %indvars.iv = phi i64 [ 2, %for.cond.preheader ], [ %indvars.iv.next, %for.cond.loopexit ]
  %exitcond = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond, label %for.end36, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr22 = getelementptr inbounds nuw [6 x i8], ptr %s1, i64 %indvars.iv29
  %arrayidx = getelementptr inbounds nuw [550 x i32], ptr %flag, i64 0, i64 %indvars.iv29
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc ], [ %indvars.iv, %for.body ]
  %3 = trunc nuw i64 %indvars.iv26 to i32
  %cmp18.not = icmp slt i32 %add, %3
  br i1 %cmp18.not, label %for.cond.loopexit, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %add.ptr26 = getelementptr inbounds nuw [6 x i8], ptr %s1, i64 %indvars.iv26
  %call28 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr22, ptr noundef nonnull dereferenceable(1) %add.ptr26) #8
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %for.inc

if.then30:                                        ; preds = %for.body19
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !14
  %inc31 = add nsw i32 %4, 1
  store i32 %inc31, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body19, %if.then30
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond17, !llvm.loop !15

for.end36:                                        ; preds = %for.cond
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %flag, i64 4
  %5 = load i32, ptr %add.ptr38, align 4, !tbaa !5
  %smax35 = call i32 @llvm.smax.i32(i32 %add, i32 1)
  %6 = add nuw nsw i32 %smax35, 1
  %wide.trip.count36 = zext nneg i32 %6 to i64
  br label %for.cond39

for.cond39:                                       ; preds = %for.body41, %for.end36
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body41 ], [ 2, %for.end36 ]
  %max.0 = phi i32 [ %spec.select, %for.body41 ], [ %5, %for.end36 ]
  %exitcond37 = icmp eq i64 %indvars.iv32, %wide.trip.count36
  br i1 %exitcond37, label %for.end53, label %for.body41

for.body41:                                       ; preds = %for.cond39
  %add.ptr44 = getelementptr inbounds nuw i32, ptr %flag, i64 %indvars.iv32
  %7 = load i32, ptr %add.ptr44, align 4, !tbaa !5, !invariant.load !14
  %spec.select = call i32 @llvm.smax.i32(i32 %7, i32 %max.0)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond39, !llvm.loop !16

for.end53:                                        ; preds = %for.cond39
  %cmp54 = icmp eq i32 %max.0, 0
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.end53
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end75

if.else:                                          ; preds = %for.end53
  %add57 = add nsw i32 %max.0, 1
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %add57)
  %smax41 = call i32 @llvm.smax.i32(i32 %add, i32 0)
  %8 = add nuw i32 %smax41, 1
  %wide.trip.count42 = zext i32 %8 to i64
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc72, %if.else
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc72 ], [ 1, %if.else ]
  %exitcond43 = icmp eq i64 %indvars.iv38, %wide.trip.count42
  br i1 %exitcond43, label %if.end75, label %for.body61

for.body61:                                       ; preds = %for.cond59
  %arrayidx63 = getelementptr inbounds nuw [550 x i32], ptr %flag, i64 0, i64 %indvars.iv38
  %9 = load i32, ptr %arrayidx63, align 4, !tbaa !5, !invariant.load !14
  %cmp64 = icmp eq i32 %9, %max.0
  br i1 %cmp64, label %if.then65, label %for.inc72

if.then65:                                        ; preds = %for.body61
  %add.ptr68 = getelementptr inbounds nuw [6 x i8], ptr %s1, i64 %indvars.iv38
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %add.ptr68)
  br label %for.inc72

for.inc72:                                        ; preds = %for.body61, %if.then65
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond59, !llvm.loop !17

if.end75:                                         ; preds = %for.cond59, %if.then55
  call void @llvm.lifetime.end.p0(i64 noundef 3300, ptr noundef nonnull %s1) #9
  call void @llvm.lifetime.end.p0(i64 noundef 550, ptr noundef nonnull %s) #9
  call void @llvm.lifetime.end.p0(i64 noundef 2200, ptr noundef nonnull %flag) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

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
!13 = distinct !{!13, !11, !12}
!14 = !{}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
