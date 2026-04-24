; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1om4dkmt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d+%d\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %h = alloca i32, align 4
  %l = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %h, ptr noundef nonnull %l)
  %0 = load i32, ptr %h, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #9
  %cmp53 = icmp sgt i32 %0, 0
  br i1 %cmp53, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i32, ptr %l, align 4, !tbaa !5
  %conv2 = sext i32 %1 to i64
  %mul3 = shl nsw i64 %conv2, 2
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #9
  %arrayidx = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.body, %entry
  %mul6 = shl nsw i64 %conv, 2
  %call7 = call noalias ptr @malloc(i64 noundef %mul6) #9
  %call10 = call noalias ptr @malloc(i64 noundef %mul6) #9
  br i1 %cmp53, label %for.cond24.preheader.lr.ph, label %if.else

for.cond24.preheader.lr.ph:                       ; preds = %for.end
  %2 = zext nneg i32 %0 to i64
  %3 = shl nuw nsw i64 %2, 2
  call void @llvm.memset.p0.i64(ptr align 4 %call7, i8 0, i64 %3, i1 false), !tbaa !5
  call void @llvm.memset.p0.i64(ptr align 4 %call10, i8 0, i64 %3, i1 false), !tbaa !5
  %4 = load i32, ptr %l, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %for.cond24.preheader, label %for.cond56.preheader.us.preheader

for.cond24.preheader:                             ; preds = %for.cond24.preheader.lr.ph, %for.inc50
  %6 = phi i32 [ %18, %for.inc50 ], [ %0, %for.cond24.preheader.lr.ph ]
  %7 = phi i32 [ %19, %for.inc50 ], [ %4, %for.cond24.preheader.lr.ph ]
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.inc50 ], [ 0, %for.cond24.preheader.lr.ph ]
  %cmp2557 = icmp sgt i32 %7, 0
  br i1 %cmp2557, label %for.body26.lr.ph, label %for.inc50

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %arrayidx28 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv78
  %8 = load ptr, ptr %arrayidx28, align 8, !tbaa !9
  %arrayidx33 = getelementptr inbounds nuw i32, ptr %call7, i64 %indvars.iv78
  %arrayidx46 = getelementptr inbounds nuw i32, ptr %call10, i64 %indvars.iv78
  br label %for.body26

for.cond53.preheader:                             ; preds = %for.inc50
  %cmp5465 = icmp sgt i32 %18, 0
  br i1 %cmp5465, label %for.cond56.preheader.us.preheader, label %if.else

for.cond56.preheader.us.preheader:                ; preds = %for.cond24.preheader.lr.ph, %for.cond53.preheader
  %.lcssa93 = phi i32 [ %18, %for.cond53.preheader ], [ %0, %for.cond24.preheader.lr.ph ]
  %wide.trip.count89 = zext nneg i32 %.lcssa93 to i64
  br label %for.cond56.preheader.us

for.cond56.preheader.us:                          ; preds = %for.cond56.preheader.us.preheader, %for.inc78.us
  %indvars.iv86 = phi i64 [ 0, %for.cond56.preheader.us.preheader ], [ %indvars.iv.next87, %for.inc78.us ]
  %arrayidx60.us = getelementptr inbounds nuw i32, ptr %call7, i64 %indvars.iv86
  %9 = load i32, ptr %arrayidx60.us, align 4, !tbaa !5
  %arrayidx64.us = getelementptr inbounds nuw i32, ptr %call10, i64 %indvars.iv86
  %10 = load i32, ptr %arrayidx64.us, align 4, !tbaa !5
  %idxprom65.us = sext i32 %10 to i64
  br label %for.body58.us

for.cond56.us:                                    ; preds = %for.body58.us
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count89
  br i1 %exitcond85.not, label %for.end80.thread, label %for.body58.us, !llvm.loop !15

for.body58.us:                                    ; preds = %for.cond56.preheader.us, %for.cond56.us
  %indvars.iv81 = phi i64 [ 0, %for.cond56.preheader.us ], [ %indvars.iv.next82, %for.cond56.us ]
  %arrayidx62.us = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv81
  %11 = load ptr, ptr %arrayidx62.us, align 8, !tbaa !9
  %arrayidx66.us = getelementptr inbounds i32, ptr %11, i64 %idxprom65.us
  %12 = load i32, ptr %arrayidx66.us, align 4, !tbaa !5
  %cmp67.us = icmp sgt i32 %9, %12
  br i1 %cmp67.us, label %for.inc78.us, label %for.cond56.us

for.inc78.us:                                     ; preds = %for.body58.us
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %if.else, label %for.cond56.preheader.us, !llvm.loop !16

for.body26:                                       ; preds = %for.body26.lr.ph, %for.inc47
  %indvars.iv75 = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next76, %for.inc47 ]
  %arrayidx30 = getelementptr inbounds nuw i32, ptr %8, i64 %indvars.iv75
  %call31 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx30)
  %13 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %14 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %13, %14
  br i1 %cmp38, label %if.then, label %for.inc47

if.then:                                          ; preds = %for.body26
  store i32 %14, ptr %arrayidx33, align 4, !tbaa !5
  %15 = trunc nuw nsw i64 %indvars.iv75 to i32
  store i32 %15, ptr %arrayidx46, align 4, !tbaa !5
  br label %for.inc47

for.inc47:                                        ; preds = %for.body26, %if.then
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %16 = load i32, ptr %l, align 4, !tbaa !5
  %17 = sext i32 %16 to i64
  %cmp25 = icmp slt i64 %indvars.iv.next76, %17
  br i1 %cmp25, label %for.body26, label %for.inc50.loopexit, !llvm.loop !17

for.inc50.loopexit:                               ; preds = %for.inc47
  %.pre = load i32, ptr %h, align 4, !tbaa !5
  br label %for.inc50

for.inc50:                                        ; preds = %for.inc50.loopexit, %for.cond24.preheader
  %18 = phi i32 [ %.pre, %for.inc50.loopexit ], [ %6, %for.cond24.preheader ]
  %19 = phi i32 [ %16, %for.inc50.loopexit ], [ %7, %for.cond24.preheader ]
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %20 = sext i32 %18 to i64
  %cmp22 = icmp slt i64 %indvars.iv.next79, %20
  br i1 %cmp22, label %for.cond24.preheader, label %for.cond53.preheader, !llvm.loop !18

for.end80.thread:                                 ; preds = %for.cond56.us
  %21 = trunc nuw nsw i64 %indvars.iv86 to i32
  %idxprom75 = and i64 %indvars.iv86, 4294967295
  %arrayidx76 = getelementptr inbounds nuw i32, ptr %call10, i64 %idxprom75
  %22 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %call84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %21, i32 noundef %22)
  br label %if.end86

if.else:                                          ; preds = %for.inc78.us, %for.end, %for.cond53.preheader
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end86

if.end86:                                         ; preds = %if.else, %for.end80.thread
  %23 = load ptr, ptr %call1, align 8, !tbaa !9
  call void @free(ptr noundef %23) #8
  call void @free(ptr noundef %call7) #8
  call void @free(ptr noundef %call10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14, !19}
!19 = !{!"llvm.loop.unswitch.partial.disable"}
