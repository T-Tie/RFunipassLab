; ModuleID = '<stdin>'
source_filename = "/tmp/tmpiilb3kqi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %a, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %b, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp23 = icmp sgt i32 %0, 0
  br i1 %cmp23, label %for.body, label %for.end38.thread

for.cond10.preheader:                             ; preds = %for.inc
  %cmp1128 = icmp sgt i32 %m.1, 1
  br i1 %cmp1128, label %for.cond13.preheader, label %for.end38.thread

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %m.024 = phi i32 [ %m.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %2 = and i32 %1, -2147483647
  %cmp4 = icmp eq i32 %2, 1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %m.024 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %1, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %m.024, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %m.1 = phi i32 [ %inc, %if.then ], [ %m.024, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.cond10.preheader, !llvm.loop !9

for.cond13.preheader:                             ; preds = %for.cond10.preheader, %for.inc36
  %indvars.iv36.in = phi i32 [ %indvars.iv36, %for.inc36 ], [ %m.1, %for.cond10.preheader ]
  %j.029 = phi i32 [ %inc37, %for.inc36 ], [ 1, %for.cond10.preheader ]
  %indvars.iv36 = add i32 %indvars.iv36.in, -1
  %cmp1426 = icmp sgt i32 %m.1, %j.029
  br i1 %cmp1426, label %for.body15.preheader, label %for.inc36

for.body15.preheader:                             ; preds = %for.cond13.preheader
  %wide.trip.count = zext i32 %indvars.iv36 to i64
  %.pre = load i32, ptr %b, align 16, !tbaa !5
  br label %for.body15

for.body15:                                       ; preds = %for.body15.preheader, %for.inc33
  %5 = phi i32 [ %.pre, %for.body15.preheader ], [ %7, %for.inc33 ]
  %indvars.iv33 = phi i64 [ 0, %for.body15.preheader ], [ %indvars.iv.next34, %for.inc33 ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %arrayidx19 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv.next34
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %5, %6
  br i1 %cmp20, label %if.then21, label %for.inc33

if.then21:                                        ; preds = %for.body15
  %arrayidx17 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv33
  store i32 %6, ptr %arrayidx17, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.inc33

for.inc33:                                        ; preds = %for.body15, %if.then21
  %7 = phi i32 [ %6, %for.body15 ], [ %5, %if.then21 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count
  br i1 %exitcond.not, label %for.inc36, label %for.body15, !llvm.loop !12

for.inc36:                                        ; preds = %for.inc33, %for.cond13.preheader
  %inc37 = add nuw nsw i32 %j.029, 1
  %exitcond38.not = icmp eq i32 %inc37, %m.1
  br i1 %exitcond38.not, label %for.end38, label %for.cond13.preheader, !llvm.loop !13

for.end38.thread:                                 ; preds = %for.cond10.preheader, %entry
  %8 = load i32, ptr %b, align 16, !tbaa !5
  %call4050 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8)
  br label %for.end49

for.end38:                                        ; preds = %for.inc36
  %9 = load i32, ptr %b, align 16, !tbaa !5
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  %wide.trip.count42 = zext nneg i32 %m.1 to i64
  br label %for.body43

for.body43:                                       ; preds = %for.end38, %for.body43
  %indvars.iv39 = phi i64 [ 1, %for.end38 ], [ %indvars.iv.next40, %for.body43 ]
  %arrayidx45 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv39
  %10 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %10)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond43.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count42
  br i1 %exitcond43.not, label %for.end49, label %for.body43, !llvm.loop !14

for.end49:                                        ; preds = %for.body43, %for.end38.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #5
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
