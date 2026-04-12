; ModuleID = '<stdin>'
source_filename = "/tmp/tmpll1duifb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i8], align 16
  %b = alloca [100 x [100 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %b) #6
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %indvars.iv18 = phi i32 [ %indvars.iv.next19, %for.end ], [ -1, %entry ]
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.end ], [ 0, %entry ]
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %for.cond8.preheader, label %while.body

for.cond8.preheader:                              ; preds = %while.cond
  %sext = shl i64 %indvars.iv11, 32
  %0 = ashr exact i64 %sext, 32
  %smax20 = call i32 @llvm.smax.i32(i32 %indvars.iv18, i32 0)
  %wide.trip.count21 = zext nneg i32 %smax20 to i64
  br label %for.cond8

while.body:                                       ; preds = %while.cond
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv = trunc i64 %call1 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %while.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i8], ptr %a, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i8]], ptr %b, i64 0, i64 %indvars.iv11, i64 %indvars.iv
  store i8 %1, ptr %arrayidx6, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %indvars.iv.next19 = add nsw i32 %indvars.iv18, 1
  br label %while.cond, !llvm.loop !11

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body10
  %indvars.iv14 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next15, %for.body10 ]
  %exitcond22.not = icmp eq i64 %indvars.iv14, %wide.trip.count21
  br i1 %exitcond22.not, label %for.end19, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %2 = xor i64 %indvars.iv14, -1
  %3 = add nsw i64 %0, %2
  %arrayidx14 = getelementptr inbounds [100 x [100 x i8]], ptr %b, i64 0, i64 %3
  %call16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %arrayidx14)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond8, !llvm.loop !12

for.end19:                                        ; preds = %for.cond8
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %b)
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
