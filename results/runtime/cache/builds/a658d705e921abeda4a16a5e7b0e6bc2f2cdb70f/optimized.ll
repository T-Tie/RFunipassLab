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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %c, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %a) #8
  call void @llvm.lifetime.start.p0(i64 2500, ptr nonnull %b) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #9
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv4 = sext i32 %0 to i64
  %sub = sub i64 %call3, %conv4
  %add = add i64 %sub, 1
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc13 ], [ 0, %entry ]
  %exitcond39.not = icmp eq i64 %indvars.iv36, %add
  br i1 %exitcond39.not, label %for.cond16.preheader, label %for.cond5

for.cond16.preheader:                             ; preds = %for.cond
  %wide.trip.count43 = zext nneg i32 %smax to i64
  br label %for.cond16

for.cond5:                                        ; preds = %for.cond, %for.body7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc13, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv36
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %arrayidx12 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %b, i64 0, i64 %indvars.iv36, i64 %indvars.iv
  store i8 %2, ptr %arrayidx12, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !10

for.inc13:                                        ; preds = %for.cond5
  %indvars.iv.next37 = add nuw i64 %indvars.iv36, 1
  br label %for.cond, !llvm.loop !13

for.cond16.loopexit:                              ; preds = %for.cond26
  %indvars.iv.next52 = add nuw i64 %indvars.iv51, 1
  %indvars.iv.next46 = add nuw i64 %indvars.iv45, 1
  br label %for.cond16, !llvm.loop !14

for.cond16:                                       ; preds = %for.cond16.loopexit, %for.cond16.preheader
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.cond16.loopexit ], [ 0, %for.cond16.preheader ]
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.cond16.loopexit ], [ 1, %for.cond16.preheader ]
  %exitcond54.not = icmp eq i64 %indvars.iv51, %add
  br i1 %exitcond54.not, label %for.end63, label %for.body24

for.body24:                                       ; preds = %for.cond16
  %arrayidx55 = getelementptr inbounds nuw [500 x i32], ptr %c, i64 0, i64 %indvars.iv51
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc58, %for.body24
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc58 ], [ %indvars.iv45, %for.body24 ]
  %exitcond50.not = icmp eq i64 %indvars.iv47, %add
  br i1 %exitcond50.not, label %for.cond16.loopexit, label %for.cond35

for.cond35:                                       ; preds = %for.cond26, %for.body37
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body37 ], [ 0, %for.cond26 ]
  %exitcond44.not = icmp eq i64 %indvars.iv40, %wide.trip.count43
  br i1 %exitcond44.not, label %if.then53, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %b, i64 0, i64 %indvars.iv51, i64 %indvars.iv40
  %3 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %arrayidx46 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %b, i64 0, i64 %indvars.iv47, i64 %indvars.iv40
  %4 = load i8, ptr %arrayidx46, align 1, !tbaa !9
  %cmp48.not = icmp eq i8 %3, %4
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br i1 %cmp48.not, label %for.cond35, label %for.inc58, !llvm.loop !15

if.then53:                                        ; preds = %for.cond35
  %5 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %inc56 = add nsw i32 %5, 1
  store i32 %inc56, ptr %arrayidx55, align 4, !tbaa !5
  br label %for.inc58

for.inc58:                                        ; preds = %for.body37, %if.then53
  %indvars.iv.next48 = add i64 %indvars.iv47, 1
  br label %for.cond26, !llvm.loop !16

for.end63:                                        ; preds = %for.cond16
  %6 = load i32, ptr %c, align 16, !tbaa !5
  %umax = call i64 @llvm.umax.i64(i64 %add, i64 1)
  br label %for.cond65

for.cond65:                                       ; preds = %for.body73, %for.end63
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.body73 ], [ 1, %for.end63 ]
  %h.1 = phi i32 [ %spec.select, %for.body73 ], [ %6, %for.end63 ]
  %exitcond58.not = icmp eq i64 %indvars.iv55, %umax
  br i1 %exitcond58.not, label %for.end83, label %for.body73

for.body73:                                       ; preds = %for.cond65
  %arrayidx75 = getelementptr inbounds nuw [500 x i32], ptr %c, i64 0, i64 %indvars.iv55
  %7 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %h.1, i32 %7)
  %indvars.iv.next56 = add nuw i64 %indvars.iv55, 1
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
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.inc116 ], [ 0, %if.else ]
  %call92 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #9
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %conv93 = sext i32 %8 to i64
  %sub94 = add i64 %call92, 1
  %add95 = sub i64 %sub94, %conv93
  %cmp96 = icmp ugt i64 %add95, %indvars.iv62
  br i1 %cmp96, label %for.body97, label %if.end119

for.body97:                                       ; preds = %for.cond89
  %arrayidx99 = getelementptr inbounds nuw [500 x i32], ptr %c, i64 0, i64 %indvars.iv62
  %9 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %cmp100 = icmp eq i32 %h.1, %9
  br i1 %cmp100, label %for.cond102, label %for.inc116

for.cond102:                                      ; preds = %for.body97, %for.body104
  %10 = phi i32 [ %.pre, %for.body104 ], [ %8, %for.body97 ]
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.body104 ], [ 0, %for.body97 ]
  %11 = sext i32 %10 to i64
  %cmp103 = icmp slt i64 %indvars.iv59, %11
  br i1 %cmp103, label %for.body104, label %for.end113

for.body104:                                      ; preds = %for.cond102
  %arrayidx108 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %b, i64 0, i64 %indvars.iv62, i64 %indvars.iv59
  %12 = load i8, ptr %arrayidx108, align 1, !tbaa !9
  %conv109 = sext i8 %12 to i32
  %putchar33 = call i32 @putchar(i32 %conv109)
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond102, !llvm.loop !18

for.end113:                                       ; preds = %for.cond102
  %putchar = call i32 @putchar(i32 10)
  br label %for.inc116

for.inc116:                                       ; preds = %for.body97, %for.end113
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond89, !llvm.loop !19

if.end119:                                        ; preds = %for.cond89, %if.then85
  call void @llvm.lifetime.end.p0(i64 2500, ptr nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
