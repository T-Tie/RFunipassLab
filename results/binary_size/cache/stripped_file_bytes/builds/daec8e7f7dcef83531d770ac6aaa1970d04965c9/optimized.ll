; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuv1801mq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [510 x i8], align 16
  %a = alloca [500 x [5 x i8]], align 16
  %count = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 510, ptr nonnull %s) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s)
  call void @llvm.lifetime.start.p0(i64 2500, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %count) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 500
  br i1 %exitcond.not, label %for.cond2.preheader, label %for.body

for.cond2.preheader:                              ; preds = %for.cond
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %invariant.op = add i32 %0, -1
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %count, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.end19
  %indvars.iv48 = phi i32 [ 0, %for.cond2.preheader ], [ %indvars.iv.next49, %for.end19 ]
  %indvars.iv38 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next39, %for.end19 ]
  %1 = trunc nuw nsw i64 %indvars.iv38 to i32
  %sub.reass = add i32 %invariant.op, %1
  %idxprom3 = sext i32 %sub.reass to i64
  %arrayidx4 = getelementptr inbounds [510 x i8], ptr %s, i64 0, i64 %idxprom3
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %cmp5.not = icmp eq i8 %2, 0
  br i1 %cmp5.not, label %for.cond28.preheader, label %for.cond7

for.cond28.preheader:                             ; preds = %for.cond2
  %wide.trip.count56 = zext i32 %indvars.iv48 to i64
  br label %for.cond28

for.cond7:                                        ; preds = %for.cond2, %for.body9
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body9 ], [ 0, %for.cond2 ]
  %exitcond37.not = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond37.not, label %for.end19, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %3 = add nuw nsw i64 %indvars.iv33, %indvars.iv38
  %arrayidx12 = getelementptr inbounds nuw [510 x i8], ptr %s, i64 0, i64 %3
  %4 = load i8, ptr %arrayidx12, align 1, !tbaa !12
  %arrayidx16 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv38, i64 %indvars.iv33
  store i8 %4, ptr %arrayidx16, align 1, !tbaa !12
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond7, !llvm.loop !13

for.end19:                                        ; preds = %for.cond7
  %arrayidx23 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv38, i64 %wide.trip.count
  store i8 0, ptr %arrayidx23, align 1, !tbaa !12
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %indvars.iv.next49 = add nuw i32 %indvars.iv48, 1
  br label %for.cond2, !llvm.loop !14

for.cond28:                                       ; preds = %for.cond28.preheader, %for.end48
  %indvars.iv52 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next53, %for.end48 ]
  %indvars.iv43 = phi i64 [ 1, %for.cond28.preheader ], [ %indvars.iv.next44, %for.end48 ]
  %max.0 = phi i32 [ 0, %for.cond28.preheader ], [ %spec.select, %for.end48 ]
  %exitcond57.not = icmp eq i64 %indvars.iv52, %wide.trip.count56
  br i1 %exitcond57.not, label %for.end58, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %arrayidx36 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv52
  %arrayidx44 = getelementptr inbounds nuw [500 x i32], ptr %count, i64 0, i64 %indvars.iv52
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc46, %for.body30
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.inc46 ], [ %indvars.iv43, %for.body30 ]
  %exitcond51.not = icmp eq i64 %indvars.iv45, %wide.trip.count56
  br i1 %exitcond51.not, label %for.end48, label %for.body34

for.body34:                                       ; preds = %for.cond32
  %arrayidx39 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv45
  %call41 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx36, ptr noundef nonnull dereferenceable(1) %arrayidx39) #8
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then, label %for.inc46

if.then:                                          ; preds = %for.body34
  %5 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %inc45 = add nsw i32 %5, 1
  store i32 %inc45, ptr %arrayidx44, align 4, !tbaa !5
  br label %for.inc46

for.inc46:                                        ; preds = %for.body34, %if.then
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond32, !llvm.loop !15

for.end48:                                        ; preds = %for.cond32
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %6 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %6, i32 %max.0)
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond28, !llvm.loop !16

for.end58:                                        ; preds = %for.cond28
  %cmp59.not = icmp eq i32 %max.0, 1
  br i1 %cmp59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %for.end58
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %max.0)
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc74, %if.then60
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc74 ], [ 0, %if.then60 ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count56
  br i1 %exitcond63.not, label %if.end78, label %for.body64

for.body64:                                       ; preds = %for.cond62
  %arrayidx66 = getelementptr inbounds nuw [500 x i32], ptr %count, i64 0, i64 %indvars.iv58
  %7 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %cmp67 = icmp eq i32 %7, %max.0
  br i1 %cmp67, label %if.then68, label %for.inc74

if.then68:                                        ; preds = %for.body64
  %arrayidx70 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv58
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %arrayidx70)
  br label %for.inc74

for.inc74:                                        ; preds = %for.body64, %if.then68
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond62, !llvm.loop !17

if.else:                                          ; preds = %for.end58
  %call77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %if.end78

if.end78:                                         ; preds = %for.cond62, %if.else
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %count) #7
  call void @llvm.lifetime.end.p0(i64 2500, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 510, ptr nonnull %s) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
