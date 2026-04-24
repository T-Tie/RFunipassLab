; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmn1afqrr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.end12 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end17

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv7, %2
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv7, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z6changePA100_ii(ptr noundef nonnull %a, i32 noundef %1)
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call13)
  %inc16 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end17:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z6changePA100_ii(ptr noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #4 {
entry:
  %b = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #6
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count83 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.inc28 ], [ 0, %entry ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %wide.trip.count83
  br i1 %exitcond84.not, label %for.cond31.preheader, label %for.body

for.cond31.preheader:                             ; preds = %for.cond
  %wide.trip.count88 = zext i32 %n to i64
  br label %for.cond31

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv80
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %s.0 = phi i32 [ %.s.0, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv80, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %.s.0 = tail call i32 @llvm.smin.i32(i32 %s.0, i32 %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !14

for.cond14:                                       ; preds = %for.cond2, %for.body16
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body16 ], [ 0, %for.cond2 ]
  %exitcond79.not = icmp eq i64 %indvars.iv75, %wide.trip.count
  br i1 %exitcond79.not, label %for.inc28, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv80, i64 %indvars.iv75
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %s.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond14, !llvm.loop !15

for.inc28:                                        ; preds = %for.cond14
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond, !llvm.loop !16

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc71
  %indvars.iv95 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next96, %for.inc71 ]
  %exitcond99.not = icmp eq i64 %indvars.iv95, %wide.trip.count83
  br i1 %exitcond99.not, label %for.end73, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx36 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv95
  %3 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.body39, %for.body33
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.body39 ], [ 0, %for.body33 ]
  %s.1 = phi i32 [ %.s.1, %for.body39 ], [ %3, %for.body33 ]
  %exitcond89.not = icmp eq i64 %indvars.iv85, %wide.trip.count88
  br i1 %exitcond89.not, label %for.cond56, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv85, i64 %indvars.iv95
  %4 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %.s.1 = tail call i32 @llvm.smin.i32(i32 %s.1, i32 %4)
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond37, !llvm.loop !17

for.cond56:                                       ; preds = %for.cond37, %for.body58
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.body58 ], [ 0, %for.cond37 ]
  %exitcond94.not = icmp eq i64 %indvars.iv90, %wide.trip.count88
  br i1 %exitcond94.not, label %for.inc71, label %for.body58

for.body58:                                       ; preds = %for.cond56
  %arrayidx62 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv90, i64 %indvars.iv95
  %5 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %sub63 = sub nsw i32 %5, %s.1
  store i32 %sub63, ptr %arrayidx62, align 4, !tbaa !5
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond56, !llvm.loop !18

for.inc71:                                        ; preds = %for.cond56
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %for.cond31, !llvm.loop !19

for.end73:                                        ; preds = %for.cond31
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %6 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %cmp76 = icmp sgt i32 %n, 2
  br i1 %cmp76, label %if.then, label %if.end

if.then:                                          ; preds = %for.end73
  %7 = load i32, ptr %a, align 4, !tbaa !5
  store i32 %7, ptr %b, align 16, !tbaa !5
  %wide.trip.count104 = zext nneg i32 %n to i64
  br label %for.cond81

for.cond81:                                       ; preds = %for.body83, %if.then
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.body83 ], [ 2, %if.then ]
  %exitcond105.not = icmp eq i64 %indvars.iv100, %wide.trip.count104
  br i1 %exitcond105.not, label %for.cond101, label %for.body83

for.body83:                                       ; preds = %for.cond81
  %arrayidx86 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv100
  %8 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %9 = add nsw i64 %indvars.iv100, -1
  %arrayidx90 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %9
  store i32 %8, ptr %arrayidx90, align 4, !tbaa !5
  %arrayidx92 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv100
  %10 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %arrayidx96 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %9
  store i32 %10, ptr %arrayidx96, align 16, !tbaa !5
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond81, !llvm.loop !20

for.cond101:                                      ; preds = %for.cond81, %for.inc120
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.inc120 ], [ 2, %for.cond81 ]
  %exitcond117.not = icmp eq i64 %indvars.iv112, %wide.trip.count104
  br i1 %exitcond117.not, label %for.end122, label %for.cond104.preheader

for.cond104.preheader:                            ; preds = %for.cond101
  %11 = add nsw i64 %indvars.iv112, -1
  br label %for.cond104

for.cond104:                                      ; preds = %for.cond104.preheader, %for.body106
  %indvars.iv106 = phi i64 [ 2, %for.cond104.preheader ], [ %indvars.iv.next107, %for.body106 ]
  %exitcond111.not = icmp eq i64 %indvars.iv106, %wide.trip.count104
  br i1 %exitcond111.not, label %for.inc120, label %for.body106

for.body106:                                      ; preds = %for.cond104
  %arrayidx110 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv112, i64 %indvars.iv106
  %12 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  %13 = add nsw i64 %indvars.iv106, -1
  %arrayidx116 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %11, i64 %13
  store i32 %12, ptr %arrayidx116, align 4, !tbaa !5
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond104, !llvm.loop !21

for.inc120:                                       ; preds = %for.cond104
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond101, !llvm.loop !22

for.end122:                                       ; preds = %for.cond101
  %sub123 = add nsw i32 %n, -1
  %call = call noundef i32 @_Z6changePA100_ii(ptr noundef nonnull %b, i32 noundef %sub123)
  %add = add nsw i32 %call, %6
  br label %if.end

if.end:                                           ; preds = %for.end122, %for.end73
  %f.0 = phi i32 [ %add, %for.end122 ], [ %6, %for.end73 ]
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #6
  ret i32 %f.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
