; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsb9ol05x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local void @_Z3funPii(ptr nofree noundef readonly captures(none) %p, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %b = alloca [400 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 1600, ptr noundef nonnull align 16 %b) #4
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count21 = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc13 ], [ 0, %entry ]
  %q.0 = phi ptr [ %q.1, %for.inc13 ], [ %b, %entry ]
  %exitcond22.not = icmp ne i64 %indvars.iv18, %wide.trip.count21
  call void @llvm.assume(i1 %exitcond22.not)
  %add.ptr = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv18
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv18
  br i1 %exitcond.not, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %0 = load i32, ptr %add.ptr, align 4, !tbaa !5, !invariant.load !9
  %add.ptr5 = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv
  %1 = load i32, ptr %add.ptr5, align 4, !tbaa !5, !invariant.load !9
  %cmp6 = icmp eq i32 %0, %1
  br i1 %cmp6, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.body3, %for.cond1
  %j.0.lcssa.in = phi i64 [ %indvars.iv, %for.body3 ], [ %indvars.iv18, %for.cond1 ]
  %2 = and i64 %j.0.lcssa.in, 4294967295
  %cmp7 = icmp eq i64 %2, %indvars.iv18
  br i1 %cmp7, label %if.then8, label %for.inc13

if.then8:                                         ; preds = %for.end
  %3 = load i32, ptr %add.ptr, align 4, !tbaa !5, !invariant.load !9
  store i32 %3, ptr %q.0, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %q.0, i64 4
  store i32 -1000, ptr %incdec.ptr, align 4, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %q.0, i64 8
  br label %for.inc13

for.inc13:                                        ; preds = %for.end, %if.then8
  %q.1 = phi ptr [ %incdec.ptr11, %if.then8 ], [ %q.0, %for.end ]
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond, !llvm.loop !13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse noreturn uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %a = alloca [300 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 1200, ptr noundef nonnull align 16 captures(none) dereferenceable(1200) %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %add.ptr)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  call void @_Z3funPii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1200) %a, i32 noundef %0)
  unreachable
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse noreturn nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
