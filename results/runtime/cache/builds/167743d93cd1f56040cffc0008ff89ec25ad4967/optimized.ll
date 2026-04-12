; ModuleID = '<stdin>'
source_filename = "/tmp/tmphhthk0zo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6stubidiiPA150_i(i32 noundef %x, i32 noundef %y, ptr noundef %z) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %x, 0
  br i1 %cmp, label %for.cond.preheader, label %for.end9

for.cond.preheader:                               ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 %y, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.end
  %indvars.iv3 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next4, %for.end ]
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [150 x i32], ptr %z, i64 %indvars.iv3, i64 %indvars.iv
  %call = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %for.cond

for.end9:                                         ; preds = %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %a = alloca [150 x [150 x i32]], align 16
  %b = alloca [150 x [150 x i32]], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 90000, ptr noundef nonnull align 16 captures(none) dereferenceable(90000) %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 90000, ptr noundef nonnull align 16 captures(none) dereferenceable(90000) %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %p) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %q) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull align 4 %m, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %m, align 4, !tbaa !8
  %1 = load i32, ptr %n, align 4, !tbaa !8
  call void @_Z6stubidiiPA150_i(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 16 dereferenceable(90000) %a)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %q, ptr noundef nonnull %p)
  %2 = load i32, ptr %n, align 4, !tbaa !8
  %3 = load i32, ptr %p, align 4, !tbaa !8
  call void @_Z6stubidiiPA150_i(i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 16 dereferenceable(90000) %b)
  br label %for.cond

for.cond:                                         ; preds = %for.end28, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8.i1, %for.end28 ]
  %4 = load i32, ptr %m, align 4, !tbaa !8
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.cond3, label %for.end31

for.cond3:                                        ; preds = %for.cond, %for.inc26
  %j.0 = phi i32 [ %inc27, %for.inc26 ], [ 0, %for.cond ]
  %5 = load i32, ptr %p, align 4, !tbaa !8
  %cmp4 = icmp slt i32 %j.0, %5
  br i1 %cmp4, label %for.cond6.preheader, label %for.end28

for.cond6.preheader:                              ; preds = %for.cond3
  %sub = add nsw i32 %5, -1
  %cmp15 = icmp slt i32 %j.0, %sub
  br i1 %cmp15, label %for.inc26, label %if.else

if.else:                                          ; preds = %for.cond6.preheader
  %cmp18 = icmp eq i32 %j.0, %sub
  br i1 %cmp18, label %land.lhs.true, label %if.else23

land.lhs.true:                                    ; preds = %if.else
  %6 = load i32, ptr %m, align 4, !tbaa !8
  %sub19 = add nsw i32 %6, -1
  %cmp20 = icmp slt i32 %i.0, %sub19
  br i1 %cmp20, label %for.inc26, label %if.else23

if.else23:                                        ; preds = %land.lhs.true, %if.else
  br label %for.inc26

for.inc26:                                        ; preds = %land.lhs.true, %for.cond6.preheader, %if.else23
  %.str.sink = phi ptr [ @.str, %if.else23 ], [ @.str.2, %for.cond6.preheader ], [ @.str.3, %land.lhs.true ]
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.sink, i32 noundef 0)
  %inc27 = add nuw nsw i32 %j.0, 1
  br label %for.cond3, !llvm.loop !12

for.end28:                                        ; preds = %for.cond3
  %inc8.i1 = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end31:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %q) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %p) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 noundef 90000, ptr noundef nonnull captures(none) %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 90000, ptr noundef nonnull captures(none) %a) #7
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !7}
