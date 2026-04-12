; ModuleID = '<stdin>'
source_filename = "/tmp/tmpscm1sz_a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %a = alloca [101 x [101 x i32]], align 16
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %a) #8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv40, %1
  br i1 %cmp.not.not, label %for.cond1, label %for.end10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3.not.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv40, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %x2) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %y2) #8
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %b) #8
  br label %for.cond12

for.cond12:                                       ; preds = %for.end27, %for.end10
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.end27 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14.not.not = icmp slt i64 %indvars.iv46, %5
  br i1 %cmp14.not.not, label %for.cond16, label %for.end30

for.cond16:                                       ; preds = %for.cond12, %for.inc25
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc25 ], [ 0, %for.cond12 ]
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp18.not.not = icmp slt i64 %indvars.iv43, %7
  br i1 %cmp18.not.not, label %for.inc25, label %for.end27

for.inc25:                                        ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv46, i64 %indvars.iv43
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx23)
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond16, !llvm.loop !12

for.end27:                                        ; preds = %for.cond16
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond12

for.end30:                                        ; preds = %for.cond12
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %c) #8
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %9 = load i32, ptr %y2, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 noundef -1)
  %10 = add i32 %smax, 1
  %smax56 = call i32 @llvm.smax.i32(i32 %9, i32 noundef 0)
  %smax62 = call i32 @llvm.smax.i32(i32 %8, i32 noundef 0)
  %wide.trip.count63 = zext nneg i32 %smax62 to i64
  %wide.trip.count57 = zext nneg i32 %smax56 to i64
  %wide.trip.count = zext i32 %10 to i64
  br label %for.cond31

for.cond31:                                       ; preds = %for.end59, %for.end30
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.end59 ], [ 0, %for.end30 ]
  %exitcond64.not = icmp eq i64 %indvars.iv59, %wide.trip.count63
  br i1 %exitcond64.not, label %for.cond63, label %for.cond35

for.cond35:                                       ; preds = %for.cond31, %for.inc57
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc57 ], [ 0, %for.cond31 ]
  %exitcond58.not = icmp eq i64 %indvars.iv53, %wide.trip.count57
  br i1 %exitcond58.not, label %for.end59, label %for.cond39

for.cond39:                                       ; preds = %for.cond35, %for.body41
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body41 ], [ 0, %for.cond35 ]
  %he.0 = phi i32 [ %add, %for.body41 ], [ 0, %for.cond35 ]
  %exitcond = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond, label %for.inc57, label %for.body41

for.body41:                                       ; preds = %for.cond39
  %arrayidx45 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv59, i64 %indvars.iv49
  %11 = load i32, ptr %arrayidx45, align 4, !tbaa !5, !invariant.load !13
  %arrayidx49 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv49, i64 %indvars.iv53
  %12 = load i32, ptr %arrayidx49, align 4, !tbaa !5, !invariant.load !13
  %mul = mul nsw i32 %12, %11
  %add = add nsw i32 %mul, %he.0
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond39

for.inc57:                                        ; preds = %for.cond39
  %arrayidx56 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv59, i64 %indvars.iv53
  store i32 %he.0, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond35, !llvm.loop !14

for.end59:                                        ; preds = %for.cond35
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond31

for.cond63:                                       ; preds = %for.cond31, %for.end84
  %13 = phi i32 [ %.pre, %for.end84 ], [ %8, %for.cond31 ]
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.end84 ], [ 0, %for.cond31 ]
  %14 = sext i32 %13 to i64
  %cmp65.not.not = icmp slt i64 %indvars.iv69, %14
  br i1 %cmp65.not.not, label %for.cond67.preheader, label %for.end88

for.cond67.preheader:                             ; preds = %for.cond63
  %15 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp69.not.not.peel = icmp sgt i32 %15, 0
  br i1 %cmp69.not.not.peel, label %if.end.peel, label %for.end84

if.end.peel:                                      ; preds = %for.cond67.preheader
  %arrayidx75.peel = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv69, i64 0
  %16 = load i32, ptr %arrayidx75.peel, align 4, !tbaa !5, !invariant.load !13
  %call76.peel = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %16)
  br label %for.cond67

for.cond67:                                       ; preds = %if.end.peel, %if.end
  %indvars.iv65 = phi i64 [ 1, %if.end.peel ], [ %indvars.iv.next66, %if.end ]
  %17 = load i32, ptr %y2, align 4, !tbaa !5
  %18 = sext i32 %17 to i64
  %cmp69.not.not = icmp slt i64 %indvars.iv65, %18
  br i1 %cmp69.not.not, label %if.end, label %for.end84

if.end:                                           ; preds = %for.cond67
  %arrayidx80 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv69, i64 %indvars.iv65
  %19 = load i32, ptr %arrayidx80, align 4, !tbaa !5, !invariant.load !13
  %call81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %19)
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond67, !llvm.loop !15

for.end84:                                        ; preds = %for.cond67, %for.cond67.preheader
  %putchar = call i32 @putchar(i32 noundef 10) #8
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond63

for.end88:                                        ; preds = %for.cond63
  %call89 = call i32 @getchar()
  %call90 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #3

declare i32 @getc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.peeled.count", i32 1}
