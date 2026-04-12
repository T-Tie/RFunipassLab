; ModuleID = '<stdin>'
source_filename = "/tmp/tmpeybc1ucr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [5 x i32], align 16
  %sz1 = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sz) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %sz1) #5
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %sz, i64 12
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %sz, i64 16
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %sz, i64 4
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sz, i64 20
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %sz, i64 8
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then, %entry
  %m.0.ph = phi i32 [ %add17, %if.then ], [ 0, %entry ]
  br label %for.cond

for.cond18.preheader:                             ; preds = %for.end
  %sub19 = add nsw i32 %m.0.ph, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub19, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond18

for.cond:                                         ; preds = %while.cond.outer, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %while.cond.outer ]
  %exitcond.not = icmp eq i64 %indvars.iv, 6
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [5 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %0 = load i32, ptr %sz, align 16, !tbaa !8
  %cmp3.not = icmp eq i32 %0, 0
  br i1 %cmp3.not, label %for.cond18.preheader, label %if.then, !llvm.loop !12

if.then:                                          ; preds = %for.end
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !8
  %reass.sub = sub i32 %1, %0
  %2 = mul i32 %reass.sub, 3600
  %mul = add i32 %2, 43200
  %3 = load i32, ptr %arrayidx6, align 16, !tbaa !8
  %4 = load i32, ptr %arrayidx7, align 4, !tbaa !8
  %sub8 = sub nsw i32 %3, %4
  %mul9 = mul nsw i32 %sub8, 60
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !8
  %6 = load i32, ptr %arrayidx13, align 8, !tbaa !8
  %add10 = add i32 %5, %mul
  %add12 = add i32 %add10, %mul9
  %sub14 = sub i32 %add12, %6
  %idxprom15 = zext nneg i32 %m.0.ph to i64
  %arrayidx16 = getelementptr inbounds nuw [100 x i32], ptr %sz1, i64 0, i64 %idxprom15
  store i32 %sub14, ptr %arrayidx16, align 4, !tbaa !8
  %add17 = add nuw nsw i32 %m.0.ph, 1
  br label %while.cond.outer, !llvm.loop !12

for.cond18:                                       ; preds = %for.cond18.preheader, %for.body21
  %indvars.iv11 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next12, %for.body21 ]
  %exitcond14.not = icmp eq i64 %indvars.iv11, %wide.trip.count
  br i1 %exitcond14.not, label %for.end27, label %for.body21

for.body21:                                       ; preds = %for.cond18
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %sz1, i64 0, i64 %indvars.iv11
  %7 = load i32, ptr %arrayidx23, align 4, !tbaa !8
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond18, !llvm.loop !13

for.end27:                                        ; preds = %for.cond18
  %idxprom29 = sext i32 %sub19 to i64
  %arrayidx30 = getelementptr inbounds [100 x i32], ptr %sz1, i64 0, i64 %idxprom29
  %8 = load i32, ptr %arrayidx30, align 4, !tbaa !8
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %sz1) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sz) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!13 = distinct !{!13, !6, !7}
