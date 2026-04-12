; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4kapxxz8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.zimu = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %ss = alloca [302 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 302, ptr noundef nonnull align 16 %ss) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(302) %ss, i8 noundef 0, i64 noundef 302, i1 noundef false) #7
  store i8 48, ptr %ss, align 16
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %ss)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %ss) #8
  %conv = trunc i64 %call2 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc23 ], [ 0, %entry ]
  %s.0 = phi i32 [ %s.1, %for.inc23 ], [ 0, %entry ]
  %exitcond6.not = icmp eq i64 %indvars.iv3, 28
  br i1 %exitcond6.not, label %for.end25, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %arrayidx9 = getelementptr inbounds nuw [27 x i8], ptr @__const.main.zimu, i64 0, i64 %indvars.iv3
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body6
  %indvars.iv = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next, %for.body6 ]
  %count.1 = phi i32 [ 0, %for.cond3.preheader ], [ %spec.select, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body6

for.body6:                                        ; preds = %for.cond3
  %arrayidx = getelementptr inbounds nuw [302 x i8], ptr %ss, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %1 = load i8, ptr %arrayidx9, align 1, !tbaa !5, !invariant.load !8
  %cmp11 = icmp eq i8 %0, %1
  %add = zext i1 %cmp11 to i32
  %spec.select = add nuw nsw i32 %count.1, %add
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  %cmp12.not = icmp eq i32 %count.1, 0
  br i1 %cmp12.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.end
  %add21 = add nsw i32 %s.0, 1
  br label %for.inc23

if.end22:                                         ; preds = %for.end
  %2 = load i8, ptr %arrayidx9, align 1, !tbaa !5, !invariant.load !8
  %conv16 = sext i8 %2 to i32
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv16, i32 noundef %count.1)
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22, %if.then20
  %s.1 = phi i32 [ %add21, %if.then20 ], [ %s.0, %if.end22 ]
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %for.cond, !llvm.loop !12

for.end25:                                        ; preds = %for.cond
  %cmp26 = icmp eq i32 %s.0, 28
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %for.end25
  %call28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.end25
  call void @llvm.lifetime.end.p0(i64 noundef 302, ptr noundef nonnull %ss) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nofree willreturn }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
