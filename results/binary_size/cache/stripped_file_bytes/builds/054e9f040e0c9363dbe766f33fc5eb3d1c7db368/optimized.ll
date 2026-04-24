; ModuleID = '<stdin>'
source_filename = "/tmp/tmpht2tif9z.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #8
  %call4 = call noalias ptr @malloc(i64 noundef %mul) #8
  %cmp36 = icmp sgt i32 %0, 0
  br i1 %cmp36, label %for.body, label %for.cond43.preheader.thread

for.cond14.preheader:                             ; preds = %for.inc
  %cmp15.not41 = icmp slt i32 %k.1, 1
  br i1 %cmp15.not41, label %for.cond43.preheader.thread, label %for.cond17.preheader.preheader

for.cond43.preheader.thread:                      ; preds = %for.cond14.preheader, %entry
  %k.0.lcssa62 = phi i32 [ %k.1, %for.cond14.preheader ], [ 0, %entry ]
  %.pre58 = add i32 %k.0.lcssa62, -1
  br label %for.end53

for.cond17.preheader.preheader:                   ; preds = %for.cond14.preheader
  %1 = add nsw i32 %k.1, -1
  br label %for.cond17.preheader

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %k.038 = phi i32 [ %k.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %3 = and i32 %2, -2147483647
  %cmp8 = icmp eq i32 %3, 1
  br i1 %cmp8, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom11 = sext i32 %k.038 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %call4, i64 %idxprom11
  store i32 %2, ptr %arrayidx12, align 4, !tbaa !5
  %inc = add nsw i32 %k.038, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %k.1 = phi i32 [ %inc, %if.then ], [ %k.038, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp, label %for.body, label %for.cond14.preheader, !llvm.loop !9

for.cond17.preheader:                             ; preds = %for.cond17.preheader.preheader, %for.inc40
  %indvars.iv50 = phi i32 [ %1, %for.cond17.preheader.preheader ], [ %indvars.iv.next51, %for.inc40 ]
  %m.042 = phi i32 [ 1, %for.cond17.preheader.preheader ], [ %inc41, %for.inc40 ]
  %cmp1839 = icmp sgt i32 %k.1, %m.042
  br i1 %cmp1839, label %for.body19.preheader, label %for.inc40

for.body19.preheader:                             ; preds = %for.cond17.preheader
  %wide.trip.count = zext i32 %indvars.iv50 to i64
  %.pre = load i32, ptr %call4, align 4, !tbaa !5
  br label %for.body19

for.cond43.preheader:                             ; preds = %for.inc40
  %cmp4543.not = icmp eq i32 %k.1, 1
  br i1 %cmp4543.not, label %for.end53, label %for.body46.preheader

for.body46.preheader:                             ; preds = %for.cond43.preheader
  %wide.trip.count56 = zext nneg i32 %1 to i64
  br label %for.body46

for.body19:                                       ; preds = %for.body19.preheader, %for.inc37
  %6 = phi i32 [ %.pre, %for.body19.preheader ], [ %8, %for.inc37 ]
  %indvars.iv47 = phi i64 [ 0, %for.body19.preheader ], [ %indvars.iv.next48, %for.inc37 ]
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv.next48
  %7 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %7, %6
  br i1 %cmp24, label %if.then25, label %for.inc37

if.then25:                                        ; preds = %for.body19
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv47
  store i32 %7, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc37

for.inc37:                                        ; preds = %for.body19, %if.then25
  %8 = phi i32 [ %7, %for.body19 ], [ %6, %if.then25 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count
  br i1 %exitcond.not, label %for.inc40, label %for.body19, !llvm.loop !12

for.inc40:                                        ; preds = %for.inc37, %for.cond17.preheader
  %inc41 = add nuw i32 %m.042, 1
  %indvars.iv.next51 = add i32 %indvars.iv50, -1
  %exitcond52.not = icmp eq i32 %m.042, %k.1
  br i1 %exitcond52.not, label %for.cond43.preheader, label %for.cond17.preheader, !llvm.loop !13

for.body46:                                       ; preds = %for.body46.preheader, %for.body46
  %indvars.iv53 = phi i64 [ 0, %for.body46.preheader ], [ %indvars.iv.next54, %for.body46 ]
  %arrayidx48 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv53
  %9 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  %putchar = call i32 @putchar(i32 44)
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %for.end53, label %for.body46, !llvm.loop !14

for.end53:                                        ; preds = %for.body46, %for.cond43.preheader.thread, %for.cond43.preheader
  %sub44.pre-phi66 = phi i32 [ %.pre58, %for.cond43.preheader.thread ], [ %1, %for.cond43.preheader ], [ %1, %for.body46 ]
  %idxprom55 = sext i32 %sub44.pre-phi66 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %call4, i64 %idxprom55
  %10 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %10)
  call void @free(ptr noundef %call1) #7
  call void @free(ptr noundef %call4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
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
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!14 = distinct !{!14, !10, !11}
