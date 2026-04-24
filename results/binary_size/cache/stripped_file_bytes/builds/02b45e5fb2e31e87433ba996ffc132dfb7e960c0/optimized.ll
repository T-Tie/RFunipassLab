; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbgdu8sqy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [256 x i8], align 16
  %sub = alloca [256 x i8], align 16
  %rep = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %str) #4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %sub) #4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %rep) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %str, ptr noundef nonnull align 16 %sub, ptr noundef nonnull %rep)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #6
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #6
  %conv7 = trunc i64 %call6 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv7, i32 noundef 0)
  %smax10 = call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count12 = zext nneg i32 %smax10 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc20 ], [ 0, %entry ]
  %e.0 = phi i32 [ %e.2, %for.inc20 ], [ undef, %entry ]
  %exitcond13.not = icmp eq i64 %indvars.iv8, %wide.trip.count12
  br i1 %exitcond13.not, label %for.end22, label %for.cond8

for.cond8:                                        ; preds = %for.cond, %for.body10
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10 ], [ 0, %for.cond ]
  %e.2 = phi i32 [ %spec.select, %for.body10 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %0 = add nuw nsw i64 %indvars.iv, %indvars.iv8
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %arrayidx13 = getelementptr inbounds nuw [256 x i8], ptr %sub, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx13, align 1, !tbaa !5, !invariant.load !8
  %cmp15 = icmp eq i8 %1, %2
  %inc = zext i1 %cmp15 to i32
  %spec.select = add nuw nsw i32 %e.2, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond8, !llvm.loop !9

for.end:                                          ; preds = %for.cond8
  %cmp17 = icmp eq i32 %e.2, %conv7
  br i1 %cmp17, label %for.cond25.preheader.loopexit, label %for.inc20

for.inc20:                                        ; preds = %for.end
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond, !llvm.loop !12

for.end22:                                        ; preds = %for.cond
  %cmp23 = icmp eq i32 %e.0, %conv7
  br i1 %cmp23, label %for.cond25.preheader, label %if.else

for.cond25.preheader.loopexit:                    ; preds = %for.end
  %3 = trunc nuw nsw i64 %indvars.iv8 to i32
  %.pre = and i64 %indvars.iv8, 4294967295
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond25.preheader.loopexit, %for.end22
  %wide.trip.count17.pre-phi = phi i64 [ %.pre, %for.cond25.preheader.loopexit ], [ %wide.trip.count12, %for.end22 ]
  %i.0.lcssa28 = phi i32 [ %3, %for.cond25.preheader.loopexit ], [ %smax10, %for.end22 ]
  br label %for.cond25

for.cond25:                                       ; preds = %for.cond25.preheader, %for.inc32
  %indvars.iv14 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next15, %for.inc32 ]
  %exitcond18.not = icmp eq i64 %indvars.iv14, %wide.trip.count17.pre-phi
  br i1 %exitcond18.not, label %for.end34, label %for.inc32

for.inc32:                                        ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv14
  %4 = load i8, ptr %arrayidx29, align 1, !tbaa !5, !invariant.load !8
  %conv30 = sext i8 %4 to i32
  %putchar5 = call i32 @putchar(i32 noundef %conv30) #7
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond25, !llvm.loop !13

for.end34:                                        ; preds = %for.cond25
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %rep)
  %add37 = add i32 %i.0.lcssa28, %conv7
  %5 = sext i32 %add37 to i64
  %smax22 = call i32 @llvm.smax.i32(i32 %add37, i32 %conv)
  %wide.trip.count23 = sext i32 %smax22 to i64
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc45, %for.end34
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc45 ], [ %5, %for.end34 ]
  %exitcond24.not = icmp eq i64 %indvars.iv19, %wide.trip.count23
  br i1 %exitcond24.not, label %if.end50, label %for.inc45

for.inc45:                                        ; preds = %for.cond38
  %arrayidx42 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 %indvars.iv19
  %6 = load i8, ptr %arrayidx42, align 1, !tbaa !5, !invariant.load !8
  %conv43 = sext i8 %6 to i32
  %putchar = call i32 @putchar(i32 noundef %conv43) #7
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, 1
  br label %for.cond38, !llvm.loop !14

if.else:                                          ; preds = %for.end22
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %str)
  br label %if.end50

if.end50:                                         ; preds = %for.cond38, %if.else
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %rep) #7
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %sub) #7
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %str) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
