; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4pidx5mj.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %zfc1 = alloca [257 x i8], align 16
  %zfc2 = alloca [257 x i8], align 16
  %zfc3 = alloca [257 x i8], align 16
  %zichuan = alloca [257 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %zfc1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %zfc1, i8 0, i64 257, i1 false)
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %zfc2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %zfc2, i8 0, i64 257, i1 false)
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %zfc3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %zfc3, i8 0, i64 257, i1 false)
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %zichuan) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %zichuan, i8 0, i64 257, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %zfc1)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %zfc2)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %zfc3)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %zfc1) #9
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %zfc2) #9
  %conv9 = trunc i64 %call8 to i32
  %sub = sub nsw i32 %conv, %conv9
  %smax = call i32 @llvm.smax.i32(i32 %conv9, i32 0)
  %smax22 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %0 = add i32 %smax22, 1
  %wide.trip.count23 = zext i32 %0 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %entry
  %indvars.iv33 = phi i32 [ %indvars.iv.next34, %for.inc45 ], [ %conv9, %entry ]
  %indvars.iv28 = phi i32 [ %indvars.iv.next29, %for.inc45 ], [ 0, %entry ]
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc45 ], [ 0, %entry ]
  %exitcond24 = icmp eq i64 %indvars.iv19, %wide.trip.count23
  br i1 %exitcond24, label %if.then49, label %for.cond10

for.cond10:                                       ; preds = %for.cond, %for.body12
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body12 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body12

for.body12:                                       ; preds = %for.cond10
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv19
  %arrayidx = getelementptr inbounds nuw [257 x i8], ptr %zfc1, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw [257 x i8], ptr %zichuan, i64 0, i64 %indvars.iv
  store i8 %2, ptr %arrayidx14, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond10, !llvm.loop !8

for.end:                                          ; preds = %for.cond10
  %call17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %zichuan, ptr noundef nonnull dereferenceable(1) %zfc2) #9
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %for.cond19.preheader, label %for.inc45

for.cond19.preheader:                             ; preds = %for.end
  %wide.trip.count31 = zext i32 %indvars.iv28 to i64
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body21
  %indvars.iv25 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next26, %for.body21 ]
  %exitcond32.not = icmp eq i64 %indvars.iv25, %wide.trip.count31
  br i1 %exitcond32.not, label %for.end28, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [257 x i8], ptr %zfc1, i64 0, i64 %indvars.iv25
  %3 = load i8, ptr %arrayidx23, align 1, !tbaa !5
  %conv24 = sext i8 %3 to i32
  %putchar14 = call i32 @putchar(i32 %conv24)
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond19, !llvm.loop !11

for.end28:                                        ; preds = %for.cond19
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %zfc3)
  %4 = sext i32 %indvars.iv33 to i64
  br label %for.cond32

for.cond32:                                       ; preds = %for.body37, %for.end28
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.body37 ], [ %4, %for.end28 ]
  %arrayidx34 = getelementptr inbounds [257 x i8], ptr %zfc1, i64 0, i64 %indvars.iv36
  %5 = load i8, ptr %arrayidx34, align 1, !tbaa !5
  %cmp36.not = icmp eq i8 %5, 0
  br i1 %cmp36.not, label %if.end52, label %for.body37

for.body37:                                       ; preds = %for.cond32
  %conv35 = sext i8 %5 to i32
  %putchar = call i32 @putchar(i32 %conv35)
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, 1
  br label %for.cond32, !llvm.loop !12

for.inc45:                                        ; preds = %for.end
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %indvars.iv.next29 = add nuw i32 %indvars.iv28, 1
  %indvars.iv.next34 = add i32 %indvars.iv33, 1
  br label %for.cond, !llvm.loop !13

if.then49:                                        ; preds = %for.cond
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %zfc1)
  br label %if.end52

if.end52:                                         ; preds = %for.cond32, %if.then49
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %zichuan) #8
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %zfc3) #8
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %zfc2) #8
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %zfc1) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
