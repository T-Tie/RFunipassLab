; ModuleID = '<stdin>'
source_filename = "/tmp/tmpeidfq3p0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [300 x i32], align 16
  %n = alloca i32, align 4
  %b = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1200) %b, i8 0, i64 1200, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2.loopexit:                               ; preds = %for.cond14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond2, !llvm.loop !12

for.cond2:                                        ; preds = %for.cond, %for.cond2.loopexit
  %2 = phi i32 [ %6, %for.cond2.loopexit ], [ %0, %for.cond ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.cond2.loopexit ], [ 0, %for.cond ]
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.cond2.loopexit ], [ 1, %for.cond ]
  %s.0 = phi i32 [ %s.1, %for.cond2.loopexit ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv18, %3
  br i1 %cmp3, label %for.body4, label %for.end31

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %indvars.iv18
  %4 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body4
  %tobool7.not = icmp eq i32 %s.0, 0
  br i1 %tobool7.not, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then
  %putchar = call i32 @putchar(i32 44)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %arrayidx11 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %5)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body4
  %6 = phi i32 [ %2, %for.body4 ], [ %.pre, %if.end ]
  %s.1 = phi i32 [ %s.0, %for.body4 ], [ 1, %if.end ]
  %arrayidx18 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv18
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc26, %if.end13
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc26 ], [ %indvars.iv13, %if.end13 ]
  %7 = trunc nuw i64 %indvars.iv15 to i32
  %cmp15 = icmp sgt i32 %6, %7
  br i1 %cmp15, label %for.body16, label %for.cond2.loopexit

for.body16:                                       ; preds = %for.cond14
  %8 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv15
  %9 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %8, %9
  br i1 %cmp21, label %if.then22, label %for.inc26

if.then22:                                        ; preds = %for.body16
  %arrayidx24 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %indvars.iv15
  store i32 -1, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc26

for.inc26:                                        ; preds = %for.body16, %if.then22
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond14, !llvm.loop !13

for.end31:                                        ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #6
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

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
