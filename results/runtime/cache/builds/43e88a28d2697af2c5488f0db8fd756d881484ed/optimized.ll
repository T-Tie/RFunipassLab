; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4m5ige8m.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [500 x i8], align 16
  %sub = alloca [500 x i8], align 16
  %rep = alloca [500 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %str) #6
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %sub) #6
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %rep) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %str, ptr noundef nonnull %sub, ptr noundef nonnull %rep)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #7
  %conv7 = trunc i64 %call6 to i32
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %rep) #7
  %conv10 = trunc i64 %call9 to i32
  %sub11 = sub i32 %conv, %conv7
  %smax = call i32 @llvm.smax.i32(i32 %conv7, i32 0)
  %smax51 = call i32 @llvm.smax.i32(i32 %sub11, i32 -1)
  %0 = add i32 %smax51, 1
  %1 = zext i32 %0 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc24 ], [ 0, %entry ]
  %j.0 = phi i32 [ %j.2.lcssa, %for.inc24 ], [ undef, %entry ]
  %exitcond54 = icmp eq i64 %indvars.iv49, %1
  br i1 %exitcond54, label %for.end26, label %for.cond12

for.cond12:                                       ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body14

for.body14:                                       ; preds = %for.cond12
  %2 = add nuw nsw i64 %indvars.iv, %indvars.iv49
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %str, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %arrayidx17 = getelementptr inbounds nuw [500 x i8], ptr %sub, i64 0, i64 %indvars.iv
  %4 = load i8, ptr %arrayidx17, align 1, !tbaa !5
  %cmp19.not = icmp eq i8 %3, %4
  br i1 %cmp19.not, label %for.inc, label %for.end.split.loop.exit

for.inc:                                          ; preds = %for.body14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond12, !llvm.loop !8

for.end.split.loop.exit:                          ; preds = %for.body14
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond12, %for.end.split.loop.exit
  %j.2.lcssa = phi i32 [ %5, %for.end.split.loop.exit ], [ %smax, %for.cond12 ]
  %cmp20 = icmp eq i32 %j.2.lcssa, %conv7
  br i1 %cmp20, label %for.end26.thread, label %for.inc24

for.end26.thread:                                 ; preds = %for.end
  %6 = trunc nuw nsw i64 %indvars.iv49 to i32
  %add22 = add i64 %call6, %indvars.iv49
  %sext = shl i64 %add22, 32
  %7 = ashr exact i64 %sext, 32
  br label %if.else

for.inc24:                                        ; preds = %for.end
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond, !llvm.loop !11

for.end26:                                        ; preds = %for.cond
  %cmp27.not = icmp eq i32 %j.0, %conv7
  br i1 %cmp27.not, label %if.else, label %if.end93

if.else:                                          ; preds = %for.end26.thread, %for.end26
  %mo.089 = phi i64 [ %7, %for.end26.thread ], [ 0, %for.end26 ]
  %i.04588 = phi i32 [ %6, %for.end26.thread ], [ %0, %for.end26 ]
  %cmp31.not = icmp slt i32 %conv7, %conv10
  br i1 %cmp31.not, label %if.else63, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %if.else
  %8 = zext i32 %i.04588 to i64
  br label %for.cond33

for.cond33:                                       ; preds = %for.cond33.preheader, %for.body38
  %indvars.iv57 = phi i64 [ %8, %for.cond33.preheader ], [ %indvars.iv.next58, %for.body38 ]
  %indvars.iv55 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next56, %for.body38 ]
  %arrayidx35 = getelementptr inbounds nuw [500 x i8], ptr %rep, i64 0, i64 %indvars.iv55
  %9 = load i8, ptr %arrayidx35, align 1, !tbaa !5
  %cmp37.not = icmp eq i8 %9, 0
  br i1 %cmp37.not, label %for.cond47, label %for.body38

for.body38:                                       ; preds = %for.cond33
  %arrayidx42 = getelementptr inbounds nuw [500 x i8], ptr %str, i64 0, i64 %indvars.iv57
  store i8 %9, ptr %arrayidx42, align 1, !tbaa !5
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond33, !llvm.loop !12

for.cond47:                                       ; preds = %for.cond33, %for.body52
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.body52 ], [ %indvars.iv57, %for.cond33 ]
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.body52 ], [ %mo.089, %for.cond33 ]
  %arrayidx49 = getelementptr inbounds [500 x i8], ptr %str, i64 0, i64 %indvars.iv62
  %10 = load i8, ptr %arrayidx49, align 1, !tbaa !5
  %cmp51.not = icmp eq i8 %10, 0
  br i1 %cmp51.not, label %for.end60, label %for.body52

for.body52:                                       ; preds = %for.cond47
  %arrayidx56 = getelementptr inbounds nuw [500 x i8], ptr %str, i64 0, i64 %indvars.iv64
  store i8 %10, ptr %arrayidx56, align 1, !tbaa !5
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond47, !llvm.loop !13

for.end60:                                        ; preds = %for.cond47
  %idxprom61 = and i64 %indvars.iv64, 4294967295
  %arrayidx62 = getelementptr inbounds nuw [500 x i8], ptr %str, i64 0, i64 %idxprom61
  store i8 0, ptr %arrayidx62, align 1, !tbaa !5
  br label %if.end93

if.else63:                                        ; preds = %if.else
  %sub65 = add i32 %sub11, %conv10
  %sext83 = shl i64 %call4, 32
  %11 = ashr exact i64 %sext83, 32
  %12 = sext i32 %sub65 to i64
  br label %for.cond66

for.cond66:                                       ; preds = %for.body68, %if.else63
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body68 ], [ %12, %if.else63 ]
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body68 ], [ %11, %if.else63 ]
  %cmp67.not = icmp slt i64 %indvars.iv69, %mo.089
  br i1 %cmp67.not, label %for.cond76.preheader, label %for.body68

for.cond76.preheader:                             ; preds = %for.cond66
  %13 = zext i32 %i.04588 to i64
  br label %for.cond76

for.body68:                                       ; preds = %for.cond66
  %arrayidx70 = getelementptr inbounds [500 x i8], ptr %str, i64 0, i64 %indvars.iv69
  %14 = load i8, ptr %arrayidx70, align 1, !tbaa !5
  %arrayidx72 = getelementptr inbounds [500 x i8], ptr %str, i64 0, i64 %indvars.iv71
  store i8 %14, ptr %arrayidx72, align 1, !tbaa !5
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, -1
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1
  br label %for.cond66, !llvm.loop !14

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body81
  %indvars.iv78 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next79, %for.body81 ]
  %indvars.iv76 = phi i64 [ %13, %for.cond76.preheader ], [ %indvars.iv.next77, %for.body81 ]
  %arrayidx78 = getelementptr inbounds nuw [500 x i8], ptr %rep, i64 0, i64 %indvars.iv78
  %15 = load i8, ptr %arrayidx78, align 1, !tbaa !5
  %cmp80.not = icmp eq i8 %15, 0
  br i1 %cmp80.not, label %if.end93, label %for.body81

for.body81:                                       ; preds = %for.cond76
  %arrayidx85 = getelementptr inbounds nuw [500 x i8], ptr %str, i64 0, i64 %indvars.iv76
  store i8 %15, ptr %arrayidx85, align 1, !tbaa !5
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond76, !llvm.loop !15

if.end93:                                         ; preds = %for.cond76, %for.end60, %for.end26
  %call92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %str)
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %rep) #6
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %sub) #6
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %str) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
