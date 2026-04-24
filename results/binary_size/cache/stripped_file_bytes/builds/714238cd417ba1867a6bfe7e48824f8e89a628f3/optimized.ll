; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_hydg7f4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %c)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #7
  %conv9 = trunc i64 %call8 to i32
  %cmp.not.not22 = icmp sgt i32 %conv, 0
  br i1 %cmp.not.not22, label %for.cond10.preheader.lr.ph, label %for.end23

for.cond10.preheader.lr.ph:                       ; preds = %entry
  %cmp12.not.not18 = icmp sgt i32 %conv9, 0
  br i1 %cmp12.not.not18, label %for.cond10.preheader.us.preheader, label %for.body37.preheader

for.cond10.preheader.us.preheader:                ; preds = %for.cond10.preheader.lr.ph
  %wide.trip.count45 = and i64 %call6, 2147483647
  %wide.trip.count = and i64 %call8, 2147483647
  br label %for.cond10.preheader.us

for.cond10.preheader.us:                          ; preds = %for.cond10.preheader.us.preheader, %for.inc.us
  %indvars.iv = phi i64 [ 0, %for.cond10.preheader.us.preheader ], [ %indvars.iv.next, %for.inc.us ]
  br label %for.body13.us

for.body13.us:                                    ; preds = %for.cond10.preheader.us, %if.then.us
  %indvars.iv39 = phi i64 [ 0, %for.cond10.preheader.us ], [ %indvars.iv.next40, %if.then.us ]
  %indvars.iv37 = phi i64 [ %indvars.iv, %for.cond10.preheader.us ], [ %indvars.iv.next38, %if.then.us ]
  %arrayidx.us = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv37
  %0 = load i8, ptr %arrayidx.us, align 1, !tbaa !5
  %arrayidx16.us = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv39
  %1 = load i8, ptr %arrayidx16.us, align 1, !tbaa !5
  %cmp18.us = icmp eq i8 %0, %1
  br i1 %cmp18.us, label %if.then.us, label %for.end.us

for.end.us:                                       ; preds = %for.body13.us
  %2 = trunc nuw nsw i64 %indvars.iv39 to i32
  %cmp20.us = icmp eq i32 %2, %conv9
  br i1 %cmp20.us, label %for.end23, label %for.inc.us

for.inc.us:                                       ; preds = %for.end.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next, %wide.trip.count45
  br i1 %exitcond46.not, label %for.end23, label %for.cond10.preheader.us, !llvm.loop !8

if.then.us:                                       ; preds = %for.body13.us
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body13.us, !llvm.loop !11

for.end23:                                        ; preds = %for.inc.us, %for.end.us, %if.then.us, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %indvars.iv, %if.then.us ], [ %indvars.iv, %for.end.us ], [ %call6, %for.inc.us ]
  %cmp2531 = icmp sgt i32 %conv9, 0
  br i1 %cmp2531, label %for.body26.preheader, label %for.cond35.preheader

for.body26.preheader:                             ; preds = %for.end23
  %3 = and i64 %i.0.lcssa, 4294967295
  %scevgep = getelementptr i8, ptr %a, i64 %3
  %4 = and i64 %call8, 2147483647
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep, ptr nonnull align 16 %c, i64 %4, i1 false), !tbaa !5
  br label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %for.body26.preheader, %for.end23
  br i1 %cmp.not.not22, label %for.body37.preheader, label %for.end44

for.body37.preheader:                             ; preds = %for.cond10.preheader.lr.ph, %for.cond35.preheader
  %wide.trip.count57 = and i64 %call6, 2147483647
  br label %for.body37

for.body37:                                       ; preds = %for.body37.preheader, %for.body37
  %indvars.iv54 = phi i64 [ 0, %for.body37.preheader ], [ %indvars.iv.next55, %for.body37 ]
  %arrayidx39 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv54
  %5 = load i8, ptr %arrayidx39, align 1, !tbaa !5
  %conv40 = sext i8 %5 to i32
  %putchar = call i32 @putchar(i32 %conv40)
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %for.end44, label %for.body37, !llvm.loop !12

for.end44:                                        ; preds = %for.body37, %for.cond35.preheader
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #6
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
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
