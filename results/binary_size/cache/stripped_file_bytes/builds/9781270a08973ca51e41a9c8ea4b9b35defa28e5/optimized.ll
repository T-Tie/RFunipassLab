; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjbeak012.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [1000 x i32], align 16
  %x = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %sz) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %j.1, %for.inc ]
  %a.0 = phi i32 [ 0, %entry ], [ %a.1, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc4, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond
  %smax25 = call i32 @llvm.smax.i32(i32 %a.0, i32 0)
  %1 = add nuw i32 %smax25, 1
  br label %for.cond5

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x)
  %2 = load i32, ptr %x, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom
  store i32 %2, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  %inc3 = add nsw i32 %a.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.body ]
  %a.1 = phi i32 [ %inc3, %if.then ], [ %a.0, %for.body ]
  %inc4 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc31
  %indvars.iv22.in = phi i32 [ %a.0, %for.cond5.preheader ], [ %indvars.iv22, %for.inc31 ]
  %k.0 = phi i32 [ 1, %for.cond5.preheader ], [ %inc32, %for.inc31 ]
  %indvars.iv22 = add i32 %indvars.iv22.in, -1
  %exitcond26 = icmp eq i32 %k.0, %1
  br i1 %exitcond26, label %for.end33, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond5
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv22, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond8.backedge, %for.cond8.preheader
  %indvars.iv = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next, %for.cond8.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc31, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %arrayidx12 = getelementptr inbounds nuw [1000 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx14 = getelementptr inbounds nuw [1000 x i32], ptr %sz, i64 0, i64 %indvars.iv.next
  %5 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %4, %5
  br i1 %cmp15, label %if.then16, label %for.cond8.backedge

for.cond8.backedge:                               ; preds = %for.body10, %if.then16
  br label %for.cond8, !llvm.loop !12

if.then16:                                        ; preds = %for.body10
  store i32 %4, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.cond8.backedge

for.inc31:                                        ; preds = %for.cond8
  %inc32 = add nuw i32 %k.0, 1
  br label %for.cond5, !llvm.loop !13

for.end33:                                        ; preds = %for.cond5
  %6 = load i32, ptr %sz, align 16, !tbaa !5
  %call35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %6)
  %smax31 = call i32 @llvm.smax.i32(i32 %a.0, i32 1)
  %wide.trip.count32 = zext nneg i32 %smax31 to i64
  br label %for.cond36

for.cond36:                                       ; preds = %for.body38, %for.end33
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.body38 ], [ 1, %for.end33 ]
  %exitcond33.not = icmp eq i64 %indvars.iv27, %wide.trip.count32
  br i1 %exitcond33.not, label %for.end44, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx40 = getelementptr inbounds nuw [1000 x i32], ptr %sz, i64 0, i64 %indvars.iv27
  %7 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %call41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond36, !llvm.loop !14

for.end44:                                        ; preds = %for.cond36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #5
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
