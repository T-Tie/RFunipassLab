; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4z9uxflz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3MinPii(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !5, !invariant.load !9
  ret i32 %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %row = alloca [100 x [100 x i32]], align 16
  %col = alloca [100 x [100 x i32]], align 16
  %sum = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 dereferenceable(40000) %row) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 dereferenceable(40000) %col) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %sum) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add i32 %0, -1
  %1 = zext i32 %0 to i64
  %smax90 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count92 = zext nneg i32 %smax90 to i64
  %exitcond87.not = icmp slt i32 %sub, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc174, %entry
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.inc174 ], [ 0, %entry ]
  %exitcond93.not = icmp eq i64 %indvars.iv88, %wide.trip.count92
  br i1 %exitcond93.not, label %for.cond177.preheader, label %for.cond1

for.cond177.preheader:                            ; preds = %for.cond
  %cmp178 = icmp sgt i32 %0, 0
  br i1 %cmp178, label %for.cond177, label %for.end185

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc10 ], [ 0, %for.cond ]
  %exitcond31.not = icmp eq i64 %indvars.iv27, %1
  br i1 %exitcond31.not, label %for.end12, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %1
  br i1 %exitcond.not, label %for.inc10, label %for.inc

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv27, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !10

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond1, !llvm.loop !13

for.end12:                                        ; preds = %for.cond1
  %arrayidx14 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv88
  store i32 %0, ptr %n, align 4, !tbaa !5
  br i1 %exitcond87.not, label %for.inc174, label %for.cond18

for.cond18:                                       ; preds = %for.end12, %for.inc40
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc40 ], [ 0, %for.end12 ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count92
  br i1 %exitcond41.not, label %for.cond43, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv37
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !9
  %cmp24.not = icmp eq i32 %2, 0
  br i1 %cmp24.not, label %for.inc40, label %for.cond29

for.cond29:                                       ; preds = %for.body20, %for.inc37
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc37 ], [ 0, %for.body20 ]
  %exitcond36.not = icmp eq i64 %indvars.iv32, %1
  br i1 %exitcond36.not, label %for.inc40, label %for.inc37

for.inc37:                                        ; preds = %for.cond29
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv37, i64 %indvars.iv32
  %3 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !9
  %sub36 = sub nsw i32 %3, %2
  store i32 %sub36, ptr %arrayidx35, align 4, !tbaa !5
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond29, !llvm.loop !14

for.inc40:                                        ; preds = %for.cond29, %for.body20
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond18, !llvm.loop !15

for.cond43:                                       ; preds = %for.cond18, %for.inc60
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc60 ], [ 0, %for.cond18 ]
  %exitcond52.not = icmp eq i64 %indvars.iv47, %wide.trip.count92
  br i1 %exitcond52.not, label %for.cond63, label %for.cond46

for.cond46:                                       ; preds = %for.cond43, %for.inc57
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc57 ], [ 0, %for.cond43 ]
  %exitcond46.not = icmp eq i64 %indvars.iv42, %1
  br i1 %exitcond46.not, label %for.inc60, label %for.inc57

for.inc57:                                        ; preds = %for.cond46
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv47, i64 %indvars.iv42
  %4 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !9
  %arrayidx56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv42, i64 %indvars.iv47
  store i32 %4, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond46, !llvm.loop !16

for.inc60:                                        ; preds = %for.cond46
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond43, !llvm.loop !17

for.cond63:                                       ; preds = %for.cond43, %for.inc88
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc88 ], [ 0, %for.cond43 ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count92
  br i1 %exitcond63.not, label %for.cond91, label %for.body65

for.body65:                                       ; preds = %for.cond63
  %arrayidx67 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv58
  %5 = load i32, ptr %arrayidx67, align 4, !tbaa !5, !invariant.load !9
  %cmp70.not = icmp eq i32 %5, 0
  br i1 %cmp70.not, label %for.inc88, label %for.cond76

for.cond76:                                       ; preds = %for.body65, %for.inc84
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc84 ], [ 0, %for.body65 ]
  %exitcond57.not = icmp eq i64 %indvars.iv53, %1
  br i1 %exitcond57.not, label %for.inc88, label %for.inc84

for.inc84:                                        ; preds = %for.cond76
  %arrayidx82 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv58, i64 %indvars.iv53
  %6 = load i32, ptr %arrayidx82, align 4, !tbaa !5, !invariant.load !9
  %sub83 = sub nsw i32 %6, %5
  store i32 %sub83, ptr %arrayidx82, align 4, !tbaa !5
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond76, !llvm.loop !18

for.inc88:                                        ; preds = %for.cond76, %for.body65
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond63, !llvm.loop !19

for.cond91:                                       ; preds = %for.cond94, %for.cond63
  br label %for.cond94

for.cond94:                                       ; preds = %for.cond91, %for.inc105
  %indvars.iv94 = phi i64 [ 0, %for.cond91 ], [ %indvars.iv.next95, %for.inc105 ]
  %exitcond98.not = icmp eq i64 %indvars.iv94, %wide.trip.count92
  br i1 %exitcond98.not, label %for.cond91, label %for.inc105

for.inc105:                                       ; preds = %for.cond94
  %arrayidx98 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv94
  %7 = load i32, ptr %arrayidx98, align 4, !tbaa !5, !invariant.load !9
  %arrayidx104 = getelementptr inbounds nuw [100 x i32], ptr %row, i64 0, i64 %indvars.iv94
  store i32 %7, ptr %arrayidx104, align 4, !tbaa !5
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond94, !llvm.loop !20

for.inc174:                                       ; preds = %for.end12
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond, !llvm.loop !21

for.cond177:                                      ; preds = %for.cond177.preheader, %for.cond177
  %call182 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 0) #8
  br label %for.cond177

for.end185:                                       ; preds = %for.cond177.preheader
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %sum) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %col) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %row) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
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
!9 = !{}
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
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
