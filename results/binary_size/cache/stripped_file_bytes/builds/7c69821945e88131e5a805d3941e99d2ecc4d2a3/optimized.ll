; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb6ol11lh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [1000 x i8], align 16
  %a = alloca [300 x i8], align 16
  %b = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %s) #6
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %b) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b)
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = call i32 @getc(ptr noundef %0)
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #7
  %conv = trunc i64 %call7 to i32
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %call9.fr = freeze i64 %call9
  %conv10 = trunc i64 %call9.fr to i32
  %call12 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #7
  %conv13 = trunc i64 %call12 to i32
  %cmp37 = icmp sgt i32 %conv, 0
  br i1 %cmp37, label %for.body.lr.ph, label %for.cond49.preheader

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i8, ptr %a, align 16, !tbaa !10
  %cmp1933 = icmp sgt i32 %conv10, 1
  %wide.trip.count63 = and i64 %call7, 2147483647
  br i1 %cmp1933, label %for.body.us.preheader, label %for.body

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count58 = and i64 %call9.fr, 2147483647
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.inc35.us
  %indvars.iv60 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next61, %for.inc35.us ]
  %n.038.us = phi i32 [ 0, %for.body.us.preheader ], [ %n.1.us80, %for.inc35.us ]
  %arrayidx15.us = getelementptr inbounds nuw [1000 x i8], ptr %s, i64 0, i64 %indvars.iv60
  %2 = load i8, ptr %arrayidx15.us, align 1, !tbaa !10
  %cmp17.us = icmp eq i8 %1, %2
  br i1 %cmp17.us, label %for.cond18.preheader.us, label %for.inc35.us

for.cond18.us:                                    ; preds = %for.body20.us
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count58
  br i1 %exitcond59.not, label %if.end31.us, label %for.body20.us, !llvm.loop !11

for.body20.us:                                    ; preds = %for.cond18.preheader.us, %for.cond18.us
  %indvars.iv54 = phi i64 [ 1, %for.cond18.preheader.us ], [ %indvars.iv.next55, %for.cond18.us ]
  %3 = add nuw nsw i64 %indvars.iv54, %indvars.iv60
  %arrayidx22.us = getelementptr inbounds nuw [1000 x i8], ptr %s, i64 0, i64 %3
  %4 = load i8, ptr %arrayidx22.us, align 1, !tbaa !10
  %arrayidx25.us = getelementptr inbounds nuw [300 x i8], ptr %a, i64 0, i64 %indvars.iv54
  %5 = load i8, ptr %arrayidx25.us, align 1, !tbaa !10
  %cmp27.us = icmp eq i8 %4, %5
  br i1 %cmp27.us, label %for.cond18.us, label %if.end31.us

if.end31.us:                                      ; preds = %for.body20.us, %for.cond18.us
  %n.1.us = phi i32 [ 0, %for.body20.us ], [ %6, %for.cond18.us ]
  %cmp32.us = icmp eq i32 %n.1.us, %conv10
  br i1 %cmp32.us, label %for.end37.loopexit.split.loop.exit, label %for.inc35.us

for.inc35.us:                                     ; preds = %for.body.us, %if.end31.us
  %n.1.us80 = phi i32 [ %n.1.us, %if.end31.us ], [ %n.038.us, %for.body.us ]
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %for.end37, label %for.body.us, !llvm.loop !14

for.cond18.preheader.us:                          ; preds = %for.body.us
  %6 = add i32 %n.038.us, %conv10
  br label %for.body20.us

for.body:                                         ; preds = %for.body.lr.ph, %for.inc35
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc35 ], [ 0, %for.body.lr.ph ]
  %n.038 = phi i32 [ %spec.select, %for.inc35 ], [ 0, %for.body.lr.ph ]
  %arrayidx15 = getelementptr inbounds nuw [1000 x i8], ptr %s, i64 0, i64 %indvars.iv
  %7 = load i8, ptr %arrayidx15, align 1, !tbaa !10
  %cmp17 = icmp eq i8 %1, %7
  %n.232 = zext i1 %cmp17 to i32
  %spec.select = add nuw nsw i32 %n.038, %n.232
  %cmp32 = icmp eq i32 %spec.select, %conv10
  br i1 %cmp32, label %for.end37.loopexit84.split.loop.exit, label %for.inc35

for.inc35:                                        ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count63
  br i1 %exitcond.not, label %for.end37, label %for.body, !llvm.loop !14

for.end37.loopexit.split.loop.exit:               ; preds = %if.end31.us
  %8 = trunc nuw nsw i64 %indvars.iv60 to i32
  br label %for.end37

for.end37.loopexit84.split.loop.exit:             ; preds = %for.body
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end37

for.end37:                                        ; preds = %for.inc35, %for.inc35.us, %for.end37.loopexit84.split.loop.exit, %for.end37.loopexit.split.loop.exit
  %i.0.lcssa = phi i32 [ %8, %for.end37.loopexit.split.loop.exit ], [ %9, %for.end37.loopexit84.split.loop.exit ], [ %conv, %for.inc35.us ], [ %conv, %for.inc35 ]
  %cmp3943.not = icmp eq i32 %i.0.lcssa, 0
  br i1 %cmp3943.not, label %for.cond49.preheader, label %for.body40.preheader

for.body40.preheader:                             ; preds = %for.end37
  %wide.trip.count68 = zext i32 %i.0.lcssa to i64
  br label %for.body40

for.cond49.preheader:                             ; preds = %for.body40, %entry, %for.end37
  %i.0.lcssa83 = phi i32 [ 0, %for.end37 ], [ 0, %entry ], [ %i.0.lcssa, %for.body40 ]
  %cmp50 = icmp ne i32 %i.0.lcssa83, %conv
  %cmp50.fr = freeze i1 %cmp50
  %cmp5145 = icmp sgt i32 %conv13, 0
  %10 = select i1 %cmp50.fr, i1 %cmp5145, i1 false
  br i1 %10, label %for.body52.preheader, label %for.end60

for.body52.preheader:                             ; preds = %for.cond49.preheader
  %wide.trip.count73 = and i64 %call12, 2147483647
  br label %for.body52

for.body40:                                       ; preds = %for.body40.preheader, %for.body40
  %indvars.iv65 = phi i64 [ 0, %for.body40.preheader ], [ %indvars.iv.next66, %for.body40 ]
  %arrayidx42 = getelementptr inbounds nuw [1000 x i8], ptr %s, i64 0, i64 %indvars.iv65
  %11 = load i8, ptr %arrayidx42, align 1, !tbaa !10
  %conv43 = sext i8 %11 to i32
  %putchar28 = call i32 @putchar(i32 %conv43)
  %12 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i29 = call i32 @getc(ptr noundef %12)
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %for.cond49.preheader, label %for.body40, !llvm.loop !15

for.body52:                                       ; preds = %for.body52.preheader, %for.body52
  %indvars.iv70 = phi i64 [ 0, %for.body52.preheader ], [ %indvars.iv.next71, %for.body52 ]
  %arrayidx54 = getelementptr inbounds nuw [300 x i8], ptr %b, i64 0, i64 %indvars.iv70
  %13 = load i8, ptr %arrayidx54, align 1, !tbaa !10
  %conv55 = sext i8 %13 to i32
  %putchar27 = call i32 @putchar(i32 %conv55)
  %14 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i30 = call i32 @getc(ptr noundef %14)
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %for.end60, label %for.body52, !llvm.loop !16

for.end60:                                        ; preds = %for.body52, %for.cond49.preheader
  %cmp50.lcssa = phi i1 [ %cmp50.fr, %for.cond49.preheader ], [ true, %for.body52 ]
  %add61 = add i32 %i.0.lcssa83, %conv10
  %cmp6549 = icmp slt i32 %add61, %conv
  %15 = and i1 %cmp50.lcssa, %cmp6549
  br i1 %15, label %for.body67.preheader, label %for.end75

for.body67.preheader:                             ; preds = %for.end60
  %16 = sext i32 %add61 to i64
  %sext = shl i64 %call7, 32
  %17 = ashr exact i64 %sext, 32
  br label %for.body67

for.body67:                                       ; preds = %for.body67.preheader, %for.body67
  %indvars.iv75 = phi i64 [ %16, %for.body67.preheader ], [ %indvars.iv.next76, %for.body67 ]
  %arrayidx69 = getelementptr inbounds [1000 x i8], ptr %s, i64 0, i64 %indvars.iv75
  %18 = load i8, ptr %arrayidx69, align 1, !tbaa !10
  %conv70 = sext i8 %18 to i32
  %putchar = call i32 @putchar(i32 %conv70)
  %19 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i31 = call i32 @getc(ptr noundef %19)
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1
  %cmp65 = icmp slt i64 %indvars.iv.next76, %17
  br i1 %cmp65, label %for.body67, label %for.end75, !llvm.loop !17

for.end75:                                        ; preds = %for.body67, %for.end60
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %s) #6
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
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
