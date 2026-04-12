; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw5gpxjng.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nounwind memory(errnomem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z3shii(i32 noundef %a) local_unnamed_addr #0 {
entry:
  %conv.i = sitofp i32 %a to double
  %call.i = tail call noundef double @sqrt(double noundef %conv.i) #8, !tbaa !5
  %conv = fptosi double %call.i to i32
  %smax = tail call i32 @llvm.smax.i32(i32 %conv, i32 1)
  %0 = add nuw i32 %smax, 1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 2, %entry ], [ %inc, %for.body ]
  %exitcond = icmp eq i32 %i.0, %0
  br i1 %exitcond, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %a, %i.0
  %cmp1 = icmp eq i32 %rem, 0
  %inc = add nuw i32 %i.0, 1
  br i1 %cmp1, label %cleanup, label %for.cond, !llvm.loop !9

cleanup:                                          ; preds = %for.body, %for.cond
  %cmp.not = icmp sgt i32 %i.0, %conv
  %spec.select = zext i1 %cmp.not to i32
  ret i32 %spec.select
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind memory(errnomem: write) uwtable
define dso_local noundef i32 @_Z3shuii(i32 noundef %m, i32 noundef %k) local_unnamed_addr #2 {
entry:
  %conv.i = sitofp i32 %m to double
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %a.0 = phi i32 [ 1, %entry ], [ %a.1, %for.inc ]
  %j.0 = phi i32 [ %k, %entry ], [ %inc10, %for.inc ]
  %conv = sitofp i32 %j.0 to double
  %call.i = tail call noundef double @sqrt(double noundef %conv.i) #8, !tbaa !5
  %cmp = fcmp ult double %call.i, %conv
  br i1 %cmp, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 %a.0

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %m, %j.0
  %div = sdiv i32 %m, %j.0
  %cmp1 = icmp ne i32 %rem, 0
  %cmp2.not = icmp slt i32 %div, %k
  %or.cond = or i1 %cmp1, %cmp2.not
  br i1 %or.cond, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %a.0, 1
  %call4 = tail call noundef i32 @_Z3shii(i32 noundef %div)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %if.then
  %call8 = tail call noundef i32 @_Z3shuii(i32 noundef %div, i32 noundef %j.0)
  %add = add i32 %call8, %a.0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then6, %if.then
  %a.1 = phi i32 [ %add, %if.then6 ], [ %inc, %if.then ], [ %a.0, %for.body ]
  %inc10 = add nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !12
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #8
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m)
  %1 = load i32, ptr %m, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z3shuii(i32 noundef %1, i32 noundef 2)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #8
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nounwind memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!13 = distinct !{!13, !10, !11}
