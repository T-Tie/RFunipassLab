; ModuleID = '<stdin>'
source_filename = "/tmp/tmp__2n3chp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.days = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %days = alloca [13 x i32], align 16
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %days) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) %days, ptr noundef nonnull align 16 dereferenceable(52) @__const.main.days, i64 52, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not15 = icmp slt i32 %0, 1
  br i1 %cmp.not15, label %for.end35, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %days, i64 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc33
  %i.016 = phi i32 [ 1, %for.body.lr.ph ], [ %inc34, %for.inc33 ]
  store i32 28, ptr %arrayidx, align 8, !tbaa !5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp2 = icmp eq i32 %2, 0
  %rem3 = srem i32 %1, 100
  %cmp4.not = icmp ne i32 %rem3, 0
  %or.cond9.not11 = and i1 %cmp2, %cmp4.not
  %rem5 = srem i32 %1, 400
  %cmp6 = icmp eq i32 %rem5, 0
  %or.cond10 = or i1 %cmp6, %or.cond9.not11
  br i1 %or.cond10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 29, ptr %arrayidx, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %3 = load i32, ptr %m1, align 4, !tbaa !5
  %4 = add i32 %3, -13
  %or.cond = icmp ult i32 %4, -12
  %5 = load i32, ptr %m2, align 4
  %6 = add i32 %5, -13
  %7 = icmp ult i32 %6, -12
  %or.cond2 = select i1 %or.cond, i1 true, i1 %7
  br i1 %or.cond2, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  %call16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr %m1, align 4, !tbaa !5
  %.pre18 = load i32, ptr %m2, align 4, !tbaa !5
  br label %if.end20

if.else:                                          ; preds = %if.end
  %cmp17 = icmp samesign ugt i32 %3, %5
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.else
  store i32 %5, ptr %m1, align 4, !tbaa !5
  store i32 %3, ptr %m2, align 4, !tbaa !5
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18, %if.then15
  %8 = phi i32 [ %5, %if.else ], [ %3, %if.then18 ], [ %.pre18, %if.then15 ]
  %9 = phi i32 [ %3, %if.else ], [ %5, %if.then18 ], [ %.pre, %if.then15 ]
  %cmp2212 = icmp slt i32 %9, %8
  br i1 %cmp2212, label %for.body23.preheader, label %for.inc33

for.body23.preheader:                             ; preds = %if.end20
  %10 = sext i32 %9 to i64
  %wide.trip.count = sext i32 %8 to i64
  %11 = sub nsw i64 %wide.trip.count, %10
  %min.iters.check = icmp ult i64 %11, 4
  br i1 %min.iters.check, label %for.body23.preheader20, label %vector.ph

vector.ph:                                        ; preds = %for.body23.preheader
  %n.vec = and i64 %11, -4
  %12 = add nsw i64 %n.vec, %10
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %14, %vector.body ]
  %offset.idx = add i64 %index, %10
  %13 = getelementptr inbounds [13 x i32], ptr %days, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %13, align 4, !tbaa !5
  %14 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %16 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %14)
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body23.preheader20

for.body23.preheader20:                           ; preds = %for.body23.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %10, %for.body23.preheader ], [ %12, %middle.block ]
  %d.014.ph = phi i32 [ 0, %for.body23.preheader ], [ %16, %middle.block ]
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader20, %for.body23
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body23 ], [ %indvars.iv.ph, %for.body23.preheader20 ]
  %d.014 = phi i32 [ %add, %for.body23 ], [ %d.014.ph, %for.body23.preheader20 ]
  %arrayidx24 = getelementptr inbounds [13 x i32], ptr %days, i64 0, i64 %indvars.iv
  %17 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %add = add nsw i32 %17, %d.014
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body23, !llvm.loop !14

for.end:                                          ; preds = %for.body23, %middle.block
  %add.lcssa = phi i32 [ %16, %middle.block ], [ %add, %for.body23 ]
  %18 = srem i32 %add.lcssa, 7
  %19 = icmp eq i32 %18, 0
  %spec.select = select i1 %19, ptr @str.1, ptr @str
  br label %for.inc33

for.inc33:                                        ; preds = %for.end, %if.end20
  %str.1.sink = phi ptr [ @str.1, %if.end20 ], [ %spec.select, %for.end ]
  %puts8 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink)
  %inc34 = add nuw nsw i32 %i.016, 1
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.016, %20
  br i1 %cmp.not.not, label %for.body, label %for.end35, !llvm.loop !15

for.end35:                                        ; preds = %for.inc33, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #7
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %days) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
