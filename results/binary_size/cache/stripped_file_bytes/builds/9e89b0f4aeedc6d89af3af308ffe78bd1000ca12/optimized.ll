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
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %s) #7
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %b) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b)
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = call i32 @getc(ptr noundef %0)
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %conv = trunc i64 %call7 to i32
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %conv10 = trunc i64 %call9 to i32
  %call12 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #8
  %conv13 = trunc i64 %call12 to i32
  %1 = load i8, ptr %a, align 16
  %smax = call i32 @llvm.smax.i32(i32 %conv10, i32 1)
  %smax37 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count39 = zext nneg i32 %smax37 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc35, %entry
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc35 ], [ 0, %entry ]
  %n.0 = phi i32 [ %n.1, %for.inc35 ], [ 0, %entry ]
  %exitcond40.not = icmp eq i64 %indvars.iv35, %wide.trip.count39
  br i1 %exitcond40.not, label %for.end37, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx15 = getelementptr inbounds nuw [1000 x i8], ptr %s, i64 0, i64 %indvars.iv35
  %2 = load i8, ptr %arrayidx15, align 1, !tbaa !10
  %cmp17 = icmp eq i8 %1, %2
  br i1 %cmp17, label %for.cond18.preheader, label %if.end31

for.cond18.preheader:                             ; preds = %for.body
  %3 = add i32 %smax, %n.0
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.body20
  %indvars.iv = phi i64 [ 1, %for.cond18.preheader ], [ %indvars.iv.next, %for.body20 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.end31, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %4 = add nuw nsw i64 %indvars.iv, %indvars.iv35
  %arrayidx22 = getelementptr inbounds nuw [1000 x i8], ptr %s, i64 0, i64 %4
  %5 = load i8, ptr %arrayidx22, align 1, !tbaa !10
  %arrayidx25 = getelementptr inbounds nuw [300 x i8], ptr %a, i64 0, i64 %indvars.iv
  %6 = load i8, ptr %arrayidx25, align 1, !tbaa !10
  %cmp27 = icmp eq i8 %5, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp27, label %for.cond18, label %if.end31, !llvm.loop !11

if.end31:                                         ; preds = %for.body20, %for.cond18, %for.body
  %n.1 = phi i32 [ %n.0, %for.body ], [ 0, %for.body20 ], [ %3, %for.cond18 ]
  %cmp32 = icmp eq i32 %n.1, %conv10
  br i1 %cmp32, label %if.end31.for.end37_crit_edge, label %for.inc35

if.end31.for.end37_crit_edge:                     ; preds = %if.end31
  %7 = trunc nuw nsw i64 %indvars.iv35 to i32
  %.pre = and i64 %indvars.iv35, 4294967295
  br label %for.end37

for.inc35:                                        ; preds = %if.end31
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond, !llvm.loop !14

for.end37:                                        ; preds = %for.cond, %if.end31.for.end37_crit_edge
  %wide.trip.count44.pre-phi = phi i64 [ %.pre, %if.end31.for.end37_crit_edge ], [ %wide.trip.count39, %for.cond ]
  %i.0.lcssa = phi i32 [ %7, %if.end31.for.end37_crit_edge ], [ %smax37, %for.cond ]
  br label %for.cond38

for.cond38:                                       ; preds = %for.body40, %for.end37
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.body40 ], [ 0, %for.end37 ]
  %exitcond45.not = icmp eq i64 %indvars.iv41, %wide.trip.count44.pre-phi
  br i1 %exitcond45.not, label %for.cond49.preheader, label %for.body40

for.cond49.preheader:                             ; preds = %for.cond38
  %cmp50 = icmp ne i32 %i.0.lcssa, %conv
  %cmp50.fr = freeze i1 %cmp50
  br i1 %cmp50.fr, label %for.cond49.preheader32, label %for.end75.split

for.cond49.preheader32:                           ; preds = %for.cond49.preheader
  %smax49 = call i32 @llvm.smax.i32(i32 %conv13, i32 0)
  %wide.trip.count50 = zext nneg i32 %smax49 to i64
  br label %for.cond49

for.body40:                                       ; preds = %for.cond38
  %arrayidx42 = getelementptr inbounds nuw [1000 x i8], ptr %s, i64 0, i64 %indvars.iv41
  %8 = load i8, ptr %arrayidx42, align 1, !tbaa !10
  %conv43 = sext i8 %8 to i32
  %putchar28 = call i32 @putchar(i32 %conv43)
  %9 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i29 = call i32 @getc(ptr noundef %9)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond38, !llvm.loop !15

for.cond49:                                       ; preds = %for.cond49.preheader32, %for.body52
  %indvars.iv46 = phi i64 [ 0, %for.cond49.preheader32 ], [ %indvars.iv.next47, %for.body52 ]
  %exitcond51.not = icmp eq i64 %indvars.iv46, %wide.trip.count50
  br i1 %exitcond51.not, label %for.cond62.preheader, label %for.body52

for.body52:                                       ; preds = %for.cond49
  %arrayidx54 = getelementptr inbounds nuw [300 x i8], ptr %b, i64 0, i64 %indvars.iv46
  %10 = load i8, ptr %arrayidx54, align 1, !tbaa !10
  %conv55 = sext i8 %10 to i32
  %putchar27 = call i32 @putchar(i32 %conv55)
  %11 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i30 = call i32 @getc(ptr noundef %11)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond49, !llvm.loop !16

for.cond62.preheader:                             ; preds = %for.cond49
  %add61 = add i32 %i.0.lcssa, %conv10
  %12 = sext i32 %add61 to i64
  %smax55 = call i32 @llvm.smax.i32(i32 %add61, i32 %conv)
  %wide.trip.count56 = sext i32 %smax55 to i64
  br label %for.cond62

for.cond62:                                       ; preds = %for.cond62.preheader, %for.body67
  %indvars.iv52 = phi i64 [ %12, %for.cond62.preheader ], [ %indvars.iv.next53, %for.body67 ]
  %exitcond57.not = icmp eq i64 %indvars.iv52, %wide.trip.count56
  br i1 %exitcond57.not, label %for.end75.split, label %for.body67

for.body67:                                       ; preds = %for.cond62
  %arrayidx69 = getelementptr inbounds [1000 x i8], ptr %s, i64 0, i64 %indvars.iv52
  %13 = load i8, ptr %arrayidx69, align 1, !tbaa !10
  %conv70 = sext i8 %13 to i32
  %putchar = call i32 @putchar(i32 %conv70)
  %14 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i31 = call i32 @getc(ptr noundef %14)
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, 1
  br label %for.cond62, !llvm.loop !17

for.end75.split:                                  ; preds = %for.cond62, %for.cond49.preheader
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %s) #7
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
