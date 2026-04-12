; ModuleID = '<stdin>'
source_filename = "/tmp/tmpf1qpf37y.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %c = alloca [500 x i32], align 16
  %a = alloca [500 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %c) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %a) #7
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv4 = sext i32 %0 to i64
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %1 = add i64 %call3, 1
  %2 = sub i64 %1, %conv4
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup12, %entry
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.cond.cleanup12 ], [ 0, %entry ]
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.cond.cleanup12 ], [ 1, %entry ]
  %max.0 = phi i32 [ %spec.select, %for.cond.cleanup12 ], [ 0, %entry ]
  %exitcond35 = icmp eq i64 %indvars.iv32, %2
  br i1 %exitcond35, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  %cmp46 = icmp eq i32 %max.0, 1
  br i1 %cmp46, label %if.then47, label %if.else

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %c, i64 0, i64 %indvars.iv32
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc33, %for.body
  %3 = phi i32 [ %8, %for.inc33 ], [ 1, %for.body ]
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc33 ], [ %indvars.iv26, %for.body ]
  %exitcond31 = icmp eq i64 %indvars.iv28, %2
  br i1 %exitcond31, label %for.cond.cleanup12, label %for.cond14

for.cond.cleanup12:                               ; preds = %for.cond5
  %indvars.iv.next33 = add nuw i64 %indvars.iv32, 1
  %spec.select = call i32 @llvm.smax.i32(i32 %3, i32 %max.0)
  %indvars.iv.next27 = add nuw i64 %indvars.iv26, 1
  br label %for.cond, !llvm.loop !9

for.cond14:                                       ; preds = %for.cond5, %for.body17
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body17 ], [ 0, %for.cond5 ]
  %z.0 = phi i32 [ %spec.select22, %for.body17 ], [ 1, %for.cond5 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup16, label %for.body17

for.cond.cleanup16:                               ; preds = %for.cond14
  %cmp27.not = icmp eq i32 %z.0, 0
  br i1 %cmp27.not, label %for.inc33, label %if.then28

for.body17:                                       ; preds = %for.cond14
  %4 = add nuw nsw i64 %indvars.iv, %indvars.iv32
  %arrayidx20 = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %4
  %5 = load i8, ptr %arrayidx20, align 1, !tbaa !12
  %6 = add nuw nsw i64 %indvars.iv, %indvars.iv28
  %arrayidx24 = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %6
  %7 = load i8, ptr %arrayidx24, align 1, !tbaa !12
  %cmp26.not = icmp eq i8 %5, %7
  %spec.select22 = select i1 %cmp26.not, i32 %z.0, i32 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond14, !llvm.loop !13

if.then28:                                        ; preds = %for.cond.cleanup16
  %inc31 = add nsw i32 %3, 1
  store i32 %inc31, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc33

for.inc33:                                        ; preds = %for.cond.cleanup16, %if.then28
  %8 = phi i32 [ %3, %for.cond.cleanup16 ], [ %inc31, %if.then28 ]
  %indvars.iv.next29 = add i64 %indvars.iv28, 1
  br label %for.cond5, !llvm.loop !14

if.then47:                                        ; preds = %for.cond.cleanup
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end88

if.else:                                          ; preds = %for.cond.cleanup
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %max.0)
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc85, %if.else
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.inc85 ], [ 0, %if.else ]
  %call54 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %conv55 = sext i32 %9 to i64
  %sub56 = sub i64 %call54, %conv55
  %cmp57.not = icmp ult i64 %sub56, %indvars.iv40
  br i1 %cmp57.not, label %if.end88, label %for.body59

for.body59:                                       ; preds = %for.cond51
  %arrayidx61 = getelementptr inbounds nuw [500 x i32], ptr %c, i64 0, i64 %indvars.iv40
  %10 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %cmp62 = icmp eq i32 %10, %max.0
  br i1 %cmp62, label %for.cond65, label %for.inc85

for.cond65:                                       ; preds = %for.body59, %for.body69
  %11 = phi i32 [ %.pre, %for.body69 ], [ %9, %for.body59 ]
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.body69 ], [ 0, %for.body59 ]
  %sub66 = add nsw i32 %11, -1
  %12 = sext i32 %sub66 to i64
  %cmp67 = icmp slt i64 %indvars.iv36, %12
  br i1 %cmp67, label %for.body69, label %for.cond.cleanup68

for.cond.cleanup68:                               ; preds = %for.cond65
  %13 = trunc i64 %indvars.iv40 to i32
  %14 = add i32 %13, -1
  %sub79 = add i32 %14, %11
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom80
  %15 = load i8, ptr %arrayidx81, align 1, !tbaa !12
  %conv82 = sext i8 %15 to i32
  %call83 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %conv82)
  br label %for.inc85

for.body69:                                       ; preds = %for.cond65
  %16 = add nuw nsw i64 %indvars.iv36, %indvars.iv40
  %arrayidx72 = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %16
  %17 = load i8, ptr %arrayidx72, align 1, !tbaa !12
  %conv73 = sext i8 %17 to i32
  %putchar = call i32 @putchar(i32 %conv73)
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond65, !llvm.loop !15

for.inc85:                                        ; preds = %for.body59, %for.cond.cleanup68
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond51, !llvm.loop !16

if.end88:                                         ; preds = %for.cond51, %if.then47
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

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
