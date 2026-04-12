; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_c6jldks.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %a = alloca [1000 x i8], align 16
  %n = alloca i32, align 4
  %b = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(4000) %b, i8 noundef 0, i64 noundef 4000, i1 noundef false) #8
  store i32 1, ptr %b, align 16
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1000
  br i1 %exitcond.not, label %for.cond4.preheader, label %for.inc

for.cond4.preheader:                              ; preds = %for.cond
  %conv = trunc i64 %call3 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %1 = sext i32 %0 to i64
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond4

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond4:                                        ; preds = %for.cond7, %for.cond4.preheader
  %indvars.iv16 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next17, %for.cond7 ]
  %w.0 = phi i32 [ undef, %for.cond4.preheader ], [ %w.1, %for.cond7 ]
  %exitcond27.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond27.not, label %for.cond42, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %2 = add nsw i64 %indvars.iv16, %1
  %arrayidx29 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv16
  %3 = trunc nsw i64 %indvars.iv.next17 to i32
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc36, %for.body6
  %w.1 = phi i32 [ %w.0, %for.body6 ], [ %w.2, %for.inc36 ]
  %j.0 = phi i32 [ %3, %for.body6 ], [ %inc37, %for.inc36 ]
  %cmp8 = icmp slt i32 %j.0, %conv
  br i1 %cmp8, label %for.cond10.preheader, label %for.cond4, !llvm.loop !12

for.cond10.preheader:                             ; preds = %for.cond7
  %4 = sext i32 %j.0 to i64
  br label %for.cond10

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc23
  %indvars.iv20 = phi i64 [ %4, %for.cond10.preheader ], [ %indvars.iv.next21, %for.inc23 ]
  %indvars.iv18 = phi i64 [ %indvars.iv16, %for.cond10.preheader ], [ %indvars.iv.next19, %for.inc23 ]
  %flag.0 = phi i32 [ 0, %for.cond10.preheader ], [ %inc21, %for.inc23 ]
  %cmp12 = icmp slt i64 %indvars.iv18, %2
  br i1 %cmp12, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %arrayidx15 = getelementptr inbounds nuw [1000 x i8], ptr %a, i64 0, i64 %indvars.iv18
  %5 = load i8, ptr %arrayidx15, align 1, !tbaa !13
  %arrayidx18 = getelementptr inbounds [1000 x i8], ptr %a, i64 0, i64 %indvars.iv20
  %6 = load i8, ptr %arrayidx18, align 1, !tbaa !13
  %cmp20.not = icmp eq i8 %5, %6
  br i1 %cmp20.not, label %for.inc23, label %for.end25

for.inc23:                                        ; preds = %for.body13
  %inc21 = add nuw nsw i32 %flag.0, 1
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, 1
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond10, !llvm.loop !14

for.end25:                                        ; preds = %for.cond10, %for.body13
  %w.2 = phi i32 [ %flag.0, %for.body13 ], [ %w.1, %for.cond10 ]
  %flag.1 = phi i32 [ 0, %for.body13 ], [ %flag.0, %for.cond10 ]
  %7 = trunc nsw i64 %indvars.iv20 to i32
  %cmp26 = icmp eq i32 %flag.1, %0
  br i1 %cmp26, label %if.then27, label %for.inc36

if.then27:                                        ; preds = %for.end25
  %8 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %inc30 = add nsw i32 %8, 1
  store i32 %inc30, ptr %arrayidx29, align 4, !tbaa !5
  br label %for.inc36

for.inc36:                                        ; preds = %for.end25, %if.then27
  %.pn = phi i32 [ %0, %if.then27 ], [ %w.2, %for.end25 ]
  %j.2 = add i32 %7, 1
  %inc37 = sub i32 %j.2, %.pn
  br label %for.cond7, !llvm.loop !15

for.cond42:                                       ; preds = %for.cond4, %for.body44
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.body44 ], [ 0, %for.cond4 ]
  %max.0 = phi i32 [ %spec.select, %for.body44 ], [ 0, %for.cond4 ]
  %exitcond31.not = icmp eq i64 %indvars.iv28, 1000
  br i1 %exitcond31.not, label %for.end54, label %for.body44

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv28
  %9 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %max.0, i32 %9)
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond42, !llvm.loop !16

for.end54:                                        ; preds = %for.cond42
  %cmp55 = icmp eq i32 %max.0, 1
  br i1 %cmp55, label %if.then56, label %if.else58

if.then56:                                        ; preds = %for.end54
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) #10
  br label %if.end83

if.else58:                                        ; preds = %for.end54
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %max.0) #10
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc80, %if.else58
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc80 ], [ 0, %if.else58 ]
  %exitcond38.not = icmp eq i64 %indvars.iv32, 1000
  br i1 %exitcond38.not, label %if.end83, label %for.body62

for.body62:                                       ; preds = %for.cond60
  %arrayidx64 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv32
  %10 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %10, %max.0
  br i1 %cmp65, label %for.cond67.preheader, label %for.inc80

for.cond67.preheader:                             ; preds = %for.body62
  %11 = trunc nuw nsw i64 %indvars.iv32 to i32
  br label %for.cond67

for.cond67:                                       ; preds = %for.cond67.preheader, %for.inc75
  %indvars.iv34 = phi i64 [ %indvars.iv32, %for.cond67.preheader ], [ %indvars.iv.next35, %for.inc75 ]
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %add68 = add nsw i32 %12, %11
  %13 = sext i32 %add68 to i64
  %cmp69 = icmp slt i64 %indvars.iv34, %13
  br i1 %cmp69, label %for.inc75, label %for.end77

for.inc75:                                        ; preds = %for.cond67
  %arrayidx72 = getelementptr inbounds nuw [1000 x i8], ptr %a, i64 0, i64 %indvars.iv34
  %14 = load i8, ptr %arrayidx72, align 1, !tbaa !13
  %conv73 = sext i8 %14 to i32
  %putchar14 = call i32 @putchar(i32 %conv73)
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond67, !llvm.loop !17

for.end77:                                        ; preds = %for.cond67
  %putchar = call i32 @putchar(i32 10)
  br label %for.inc80

for.inc80:                                        ; preds = %for.body62, %for.end77
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond60, !llvm.loop !18

if.end83:                                         ; preds = %for.cond60, %if.then56
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %b) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef nonnull %a) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

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
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
