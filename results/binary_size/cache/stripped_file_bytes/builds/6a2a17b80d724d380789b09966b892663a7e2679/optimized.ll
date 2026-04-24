; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn5sdzby2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %c) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #8
  %conv7 = trunc i64 %call6 to i32
  %sext = shl i64 %call4, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %conv7, i32 0)
  %smax26 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count27 = zext nneg i32 %smax26 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %indvars.iv37 = phi i32 [ %indvars.iv.next38, %for.inc21 ], [ %conv7, %entry ]
  %indvars.iv32 = phi i32 [ %indvars.iv.next33, %for.inc21 ], [ 0, %entry ]
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc21 ], [ 0, %entry ]
  %exitcond28.not = icmp eq i64 %indvars.iv23, %wide.trip.count27
  br i1 %exitcond28.not, label %if.then25, label %for.cond8

for.cond8:                                        ; preds = %for.cond, %for.body10
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond28.preheader, label %for.body10

for.cond28.preheader:                             ; preds = %for.cond8
  %wide.trip.count35 = zext i32 %indvars.iv32 to i64
  br label %for.cond28

for.body10:                                       ; preds = %for.cond8
  %0 = add nuw nsw i64 %indvars.iv, %indvars.iv23
  %arrayidx12 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %0
  %1 = load i8, ptr %arrayidx12, align 1, !tbaa !5
  %arrayidx15 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx15, align 1, !tbaa !5
  %cmp17.not = icmp eq i8 %1, %2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp17.not, label %for.cond8, label %for.inc21, !llvm.loop !8

for.inc21:                                        ; preds = %for.body10
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %indvars.iv.next33 = add nuw i32 %indvars.iv32, 1
  %indvars.iv.next38 = add i32 %indvars.iv37, 1
  br label %for.cond, !llvm.loop !11

if.then25:                                        ; preds = %for.cond
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %a)
  br label %if.end51

for.cond28:                                       ; preds = %for.cond28.preheader, %for.body30
  %indvars.iv29 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next30, %for.body30 ]
  %exitcond36.not = icmp eq i64 %indvars.iv29, %wide.trip.count35
  br i1 %exitcond36.not, label %for.end37, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %arrayidx32 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv29
  %3 = load i8, ptr %arrayidx32, align 1, !tbaa !5
  %conv33 = sext i8 %3 to i32
  %putchar18 = call i32 @putchar(i32 %conv33)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond28, !llvm.loop !12

for.end37:                                        ; preds = %for.cond28
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %c)
  %4 = sext i32 %indvars.iv37 to i64
  %sext43 = shl i64 %call4, 32
  %5 = ashr exact i64 %sext43, 32
  br label %for.cond41

for.cond41:                                       ; preds = %for.body43, %for.end37
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body43 ], [ %4, %for.end37 ]
  %cmp42 = icmp slt i64 %indvars.iv40, %5
  br i1 %cmp42, label %for.body43, label %if.end51

for.body43:                                       ; preds = %for.cond41
  %arrayidx45 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %indvars.iv40
  %6 = load i8, ptr %arrayidx45, align 1, !tbaa !5
  %conv46 = sext i8 %6 to i32
  %putchar = call i32 @putchar(i32 %conv46)
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, 1
  br label %for.cond41, !llvm.loop !13

if.end51:                                         ; preds = %for.cond41, %if.then25
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
