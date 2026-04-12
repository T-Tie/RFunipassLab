; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1eu3dhkm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const._Z3dayii.mon = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3dayii(i32 noundef %y, i32 noundef %m) local_unnamed_addr #0 {
entry:
  %mon = alloca [12 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mon) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %mon, ptr noundef nonnull align 16 dereferenceable(48) @__const._Z3dayii.mon, i64 48, i1 false)
  %0 = and i32 %y, 3
  %cmp = icmp ne i32 %0, 0
  %rem1 = srem i32 %y, 100
  %cmp2.not = icmp eq i32 %rem1, 0
  %or.cond = or i1 %cmp, %cmp2.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %mon, i64 4
  store i32 29, ptr %arrayidx, align 4, !tbaa !5
  br label %if.end9

if.else:                                          ; preds = %entry
  %rem3 = srem i32 %y, 400
  %cmp4 = icmp eq i32 %rem3, 0
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %mon, i64 4
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  store i32 29, ptr %arrayidx6, align 4, !tbaa !5
  br label %if.end9

if.else7:                                         ; preds = %if.else
  store i32 28, ptr %arrayidx6, align 4, !tbaa !5
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.else7, %if.then
  %1 = tail call i32 @llvm.smax.i32(i32 %m, i32 1)
  %smax = add nsw i32 %1, -1
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end9 ]
  %x.0 = phi i32 [ %add, %for.body ], [ 0, %if.end9 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx11 = getelementptr inbounds nuw [12 x i32], ptr %mon, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %add = add nsw i32 %2, %x.0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mon) #7
  ret i32 %x.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %s = alloca [1000 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #7
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %s) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond4

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %2 = load i32, ptr %a, align 4, !tbaa !5
  %3 = load i32, ptr %b, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z3dayii(i32 noundef %2, i32 noundef %3)
  %4 = load i32, ptr %c, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z3dayii(i32 noundef %2, i32 noundef %4)
  %sub = sub nsw i32 %call3, %call2
  %rem = srem i32 %sub, 7
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %s, i64 0, i64 %indvars.iv
  store i32 %rem, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.cond4:                                        ; preds = %for.cond, %for.body6
  %5 = phi i32 [ %.pre, %for.body6 ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.body6 ], [ 0, %for.cond ]
  %6 = sext i32 %5 to i64
  %cmp5 = icmp slt i64 %indvars.iv8, %6
  br i1 %cmp5, label %for.body6, label %for.end14

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [1000 x i32], ptr %s, i64 0, i64 %indvars.iv8
  %7 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %7, 0
  %str.1.str = select i1 %cmp9, ptr @str.1, ptr @str
  %puts6 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !13

for.end14:                                        ; preds = %for.cond4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %s) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #7
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
