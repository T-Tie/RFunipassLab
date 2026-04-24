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
  %cmp.not18 = icmp slt i32 %conv, %conv7
  br i1 %cmp.not18, label %for.end25, label %for.cond11.preheader.lr.ph

for.cond11.preheader.lr.ph:                       ; preds = %entry
  %cmp1216 = icmp sgt i32 %conv7, 0
  br i1 %cmp1216, label %for.cond11.preheader.us.preheader, label %for.cond11.preheader.preheader

for.cond11.preheader.preheader:                   ; preds = %for.cond11.preheader.lr.ph
  %0 = add i32 %conv, 1
  %1 = sub i32 %0, %conv7
  br label %for.cond11.preheader

for.cond11.preheader.us.preheader:                ; preds = %for.cond11.preheader.lr.ph
  %2 = and i64 %call6, 2147483647
  %3 = add i32 %conv, 1
  %4 = sub i32 %3, %conv7
  %wide.trip.count = zext i32 %4 to i64
  br label %for.cond11.preheader.us

for.cond11.preheader.us:                          ; preds = %for.cond11.preheader.us.preheader, %for.inc23.us
  %indvar = phi i64 [ 0, %for.cond11.preheader.us.preheader ], [ %indvar.next, %for.inc23.us ]
  %scevgep = getelementptr nuw i8, ptr %s, i64 %indvar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %a, ptr nonnull align 1 %scevgep, i64 %2, i1 false), !tbaa !5
  store i8 0, ptr %arrayidx18, align 1, !tbaa !5
  %call21.us = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %a, ptr noundef nonnull dereferenceable(1) %b) #8
  %cmp22.us = icmp eq i32 %call21.us, 0
  br i1 %cmp22.us, label %for.end25.loopexit.split.loop.exit, label %for.inc23.us

for.inc23.us:                                     ; preds = %for.cond11.preheader.us
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond29.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond29.not, label %for.end25, label %for.cond11.preheader.us, !llvm.loop !8

for.cond11.preheader:                             ; preds = %for.cond11.preheader.preheader, %for.inc23
  %i.019 = phi i32 [ %inc24, %for.inc23 ], [ 0, %for.cond11.preheader.preheader ]
  store i8 0, ptr %arrayidx18, align 1, !tbaa !5
  %call21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %a, ptr noundef nonnull dereferenceable(1) %b) #8
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %for.end25, label %for.inc23

for.inc23:                                        ; preds = %for.cond11.preheader
  %inc24 = add nuw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc24, %1
  br i1 %exitcond.not, label %for.end25, label %for.cond11.preheader, !llvm.loop !8

for.end25.loopexit.split.loop.exit:               ; preds = %for.cond11.preheader.us
  %indvars28.le = trunc i64 %indvar to i32
  br label %for.end25

for.end25:                                        ; preds = %for.inc23, %for.cond11.preheader, %for.inc23.us, %for.end25.loopexit.split.loop.exit, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %indvars28.le, %for.end25.loopexit.split.loop.exit ], [ %4, %for.inc23.us ], [ %i.019, %for.cond11.preheader ], [ %1, %for.inc23 ]
  %cmp2722 = icmp sgt i32 %conv, 0
  br i1 %cmp2722, label %for.body28, label %for.end42

for.body28:                                       ; preds = %for.end25, %for.inc40
  %i.123 = phi i32 [ %i.2, %for.inc40 ], [ 0, %for.end25 ]
  %cmp29 = icmp eq i32 %i.123, %i.0.lcssa
  br i1 %cmp29, label %if.then30, label %if.else35

if.then30:                                        ; preds = %for.body28
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %r)
  br label %for.inc40

if.else35:                                        ; preds = %for.body28
  %idxprom36 = sext i32 %i.123 to i64
  %arrayidx37 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %idxprom36
  %5 = load i8, ptr %arrayidx37, align 1, !tbaa !5
  %conv38 = sext i8 %5 to i32
  %putchar = call i32 @putchar(i32 %conv38)
  br label %for.inc40

for.inc40:                                        ; preds = %if.then30, %if.else35
  %conv7.pn = phi i32 [ %conv7, %if.then30 ], [ 1, %if.else35 ]
  %i.2 = add nsw i32 %conv7.pn, %i.123
  %cmp27 = icmp slt i32 %i.2, %conv
  br i1 %cmp27, label %for.body28, label %for.end42, !llvm.loop !11

for.end42:                                        ; preds = %for.inc40, %for.end25
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
