; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_3j932_g.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %c = alloca [500 x i32], align 16
  %a = alloca [500 x i8], align 16
  %b = alloca [500 x [5 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(2000) %c, i8 noundef 0, i64 noundef 2000, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2500, ptr noundef nonnull align 16 %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv4 = sext i32 %0 to i64
  %sub = sub i64 %call3, %conv4
  %add = add i64 %sub, 1
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc13 ], [ 0, %entry ]
  %exitcond8.not = icmp eq i64 %indvars.iv5, %add
  br i1 %exitcond8.not, label %for.cond16.preheader, label %for.cond5

for.cond16.preheader:                             ; preds = %for.cond
  br label %for.cond16

for.cond5:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc13, label %for.inc

for.inc:                                          ; preds = %for.cond5
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv5
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %arrayidx12 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %b, i64 0, i64 %indvars.iv5, i64 %indvars.iv
  store i8 %2, ptr %arrayidx12, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !10

for.inc13:                                        ; preds = %for.cond5
  %indvars.iv.next6 = add nuw i64 %indvars.iv5, 1
  br label %for.cond, !llvm.loop !13

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc61
  %indvars.iv14 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next15, %for.inc61 ]
  %exitcond21.not = icmp eq i64 %indvars.iv14, %add
  br i1 %exitcond21.not, label %for.end63, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond16
  %arrayidx55 = getelementptr inbounds nuw [500 x i32], ptr %c, i64 0, i64 %indvars.iv14
  br label %for.cond26

for.cond26:                                       ; preds = %for.cond26.preheader, %for.inc58
  %indvars.iv16 = phi i64 [ %indvars.iv14, %for.cond26.preheader ], [ %indvars.iv.next17, %for.inc58 ]
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond19.not = icmp eq i64 %indvars.iv16, %sub
  br i1 %exitcond19.not, label %for.inc61, label %for.cond35

for.cond35:                                       ; preds = %for.cond26, %for.body37
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.body37 ], [ 0, %for.cond26 ]
  %exitcond13.not = icmp eq i64 %indvars.iv9, %wide.trip.count
  br i1 %exitcond13.not, label %if.then53, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %b, i64 0, i64 %indvars.iv14, i64 %indvars.iv9
  %3 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %arrayidx46 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %b, i64 0, i64 %indvars.iv.next17, i64 %indvars.iv9
  %4 = load i8, ptr %arrayidx46, align 1, !tbaa !9
  %cmp48.not = icmp eq i8 %3, %4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br i1 %cmp48.not, label %for.cond35, label %for.inc58, !llvm.loop !14

if.then53:                                        ; preds = %for.cond35
  %5 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %inc56 = add nsw i32 %5, 1
  store i32 %inc56, ptr %arrayidx55, align 4, !tbaa !5
  br label %for.inc58

for.inc58:                                        ; preds = %for.body37, %if.then53
  br label %for.cond26, !llvm.loop !15

for.inc61:                                        ; preds = %for.cond26
  %indvars.iv.next15 = add nuw i64 %indvars.iv14, 1
  br label %for.cond16, !llvm.loop !16

for.end63:                                        ; preds = %for.cond16
  %6 = load i32, ptr %c, align 16, !tbaa !5
  %umax = call i64 @llvm.umax.i64(i64 %add, i64 noundef 1)
  br label %for.cond65

for.cond65:                                       ; preds = %for.body73, %for.end63
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.body73 ], [ 1, %for.end63 ]
  %h.1 = phi i32 [ %spec.select, %for.body73 ], [ %6, %for.end63 ]
  %exitcond25.not = icmp eq i64 %indvars.iv22, %umax
  br i1 %exitcond25.not, label %for.end83, label %for.body73

for.body73:                                       ; preds = %for.cond65
  %arrayidx75 = getelementptr inbounds nuw [500 x i32], ptr %c, i64 0, i64 %indvars.iv22
  %7 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %h.1, i32 %7)
  %indvars.iv.next23 = add nuw i64 %indvars.iv22, 1
  br label %for.cond65, !llvm.loop !17

for.end83:                                        ; preds = %for.cond65
  %cmp84 = icmp slt i32 %h.1, 1
  br i1 %cmp84, label %if.then85, label %if.else

if.then85:                                        ; preds = %for.end83
  %call86 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end119

if.else:                                          ; preds = %for.end83
  %add87 = add nuw nsw i32 %h.1, 1
  %call88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %add87)
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc116, %if.else
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc116 ], [ 0, %if.else ]
  %call92 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %conv93 = sext i32 %8 to i64
  %sub94 = add i64 %call92, 1
  %add95 = sub i64 %sub94, %conv93
  %cmp96 = icmp ugt i64 %add95, %indvars.iv29
  br i1 %cmp96, label %for.body97, label %if.end119

for.body97:                                       ; preds = %for.cond89
  %arrayidx99 = getelementptr inbounds nuw [500 x i32], ptr %c, i64 0, i64 %indvars.iv29
  %9 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %cmp100 = icmp eq i32 %h.1, %9
  br i1 %cmp100, label %for.cond102, label %for.inc116

for.cond102:                                      ; preds = %for.body97, %for.inc111
  %10 = phi i32 [ %.pre, %for.inc111 ], [ %8, %for.body97 ]
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc111 ], [ 0, %for.body97 ]
  %11 = sext i32 %10 to i64
  %cmp103 = icmp slt i64 %indvars.iv26, %11
  br i1 %cmp103, label %for.inc111, label %for.end113

for.inc111:                                       ; preds = %for.cond102
  %arrayidx108 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %b, i64 0, i64 %indvars.iv29, i64 %indvars.iv26
  %12 = load i8, ptr %arrayidx108, align 1, !tbaa !9
  %conv109 = sext i8 %12 to i32
  %putchar2 = call i32 @putchar(i32 noundef %conv109) #9
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond102, !llvm.loop !18

for.end113:                                       ; preds = %for.cond102
  %putchar = call i32 @putchar(i32 noundef 10) #9
  br label %for.inc116

for.inc116:                                       ; preds = %for.body97, %for.end113
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond89, !llvm.loop !19

if.end119:                                        ; preds = %for.cond89, %if.then85
  call void @llvm.lifetime.end.p0(i64 noundef 2500, ptr noundef nonnull %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %c) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
