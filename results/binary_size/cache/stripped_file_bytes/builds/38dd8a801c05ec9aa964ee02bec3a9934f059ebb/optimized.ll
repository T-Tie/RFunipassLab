; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl6kg6zrb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [300 x i8], align 16
  %b = alloca [50 x i8], align 16
  %r = alloca [50 x i8], align 16
  %a = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %s) #7
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %r) #7
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %a) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s, ptr noundef nonnull %b, ptr noundef nonnull %r)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #8
  %conv7 = trunc i64 %call6 to i32
  %sext = shl i64 %call6, 32
  %idxprom17 = ashr exact i64 %sext, 32
  %arrayidx18 = getelementptr inbounds [50 x i8], ptr %a, i64 0, i64 %idxprom17
  %sub = sub nsw i32 %conv, %conv7
  %smax = call i32 @llvm.smax.i32(i32 %conv7, i32 0)
  %smax20 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %0 = add i32 %smax20, 1
  %wide.trip.count22 = zext i32 %0 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc23 ], [ 0, %entry ]
  %exitcond23 = icmp eq i64 %indvars.iv18, %wide.trip.count22
  br i1 %exitcond23, label %for.end25, label %for.cond11

for.cond11:                                       ; preds = %for.cond, %for.body13
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body13

for.body13:                                       ; preds = %for.cond11
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv18
  %arrayidx = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %arrayidx16 = getelementptr inbounds nuw [50 x i8], ptr %a, i64 0, i64 %indvars.iv
  store i8 %2, ptr %arrayidx16, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond11, !llvm.loop !8

for.end:                                          ; preds = %for.cond11
  store i8 0, ptr %arrayidx18, align 1, !tbaa !5
  %call21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %a, ptr noundef nonnull dereferenceable(1) %b) #8
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %for.end25.split.loop.exit, label %for.inc23

for.inc23:                                        ; preds = %for.end
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond, !llvm.loop !11

for.end25.split.loop.exit:                        ; preds = %for.end
  %3 = trunc nuw nsw i64 %indvars.iv18 to i32
  br label %for.end25

for.end25:                                        ; preds = %for.cond, %for.end25.split.loop.exit
  %i.0.lcssa = phi i32 [ %3, %for.end25.split.loop.exit ], [ %0, %for.cond ]
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc40, %for.end25
  %i.1 = phi i32 [ 0, %for.end25 ], [ %i.2, %for.inc40 ]
  %cmp27 = icmp slt i32 %i.1, %conv
  br i1 %cmp27, label %for.body28, label %for.end42

for.body28:                                       ; preds = %for.cond26
  %cmp29 = icmp eq i32 %i.1, %i.0.lcssa
  br i1 %cmp29, label %if.then30, label %if.else35

if.then30:                                        ; preds = %for.body28
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %r)
  br label %for.inc40

if.else35:                                        ; preds = %for.body28
  %idxprom36 = sext i32 %i.1 to i64
  %arrayidx37 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %idxprom36
  %4 = load i8, ptr %arrayidx37, align 1, !tbaa !5
  %conv38 = sext i8 %4 to i32
  %putchar = call i32 @putchar(i32 %conv38)
  br label %for.inc40

for.inc40:                                        ; preds = %if.then30, %if.else35
  %conv7.pn = phi i32 [ %conv7, %if.then30 ], [ 1, %if.else35 ]
  %i.2 = add nsw i32 %conv7.pn, %i.1
  br label %for.cond26, !llvm.loop !12

for.end42:                                        ; preds = %for.cond26
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %r) #7
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %s) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

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
