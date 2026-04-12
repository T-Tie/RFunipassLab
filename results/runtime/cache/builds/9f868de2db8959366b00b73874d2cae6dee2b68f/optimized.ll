; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsa57m9s7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.res = private unnamed_addr constant [32 x i8] c"0000000000000000000000000000001\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %res = alloca [32 x i8], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 32, ptr noundef nonnull align 16 %res) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(32) %res, ptr noundef nonnull readonly align 16 dereferenceable(32) @__const.main.res, i64 noundef 32, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %c.0 = phi i32 [ 0, %entry ], [ %c.1, %for.inc8 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc8 ]
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %for.cond10, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %j.0 = phi i32 [ %dec, %for.inc ], [ 30, %for.cond ]
  %c.1 = phi i32 [ %div, %for.inc ], [ %c.0, %for.cond ]
  %cmp2 = icmp sgt i32 %j.0, -1
  br i1 %cmp2, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %idxprom = zext nneg i32 %j.0 to i64
  %arrayidx = getelementptr inbounds nuw [32 x i8], ptr %res, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %sub = shl nsw i32 %conv, 1
  %mul = add i32 %c.1, -96
  %add = add i32 %mul, %sub
  %rem = srem i32 %add, 10
  %2 = trunc nsw i32 %rem to i8
  %conv5 = add nsw i8 %2, 48
  store i8 %conv5, ptr %arrayidx, align 1, !tbaa !9
  %div = sdiv i32 %add, 10
  %dec = add nsw i32 %j.0, -1
  br label %for.cond1, !llvm.loop !10

for.inc8:                                         ; preds = %for.cond1
  %inc = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.cond10:                                       ; preds = %for.cond, %for.inc17
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc17 ], [ 0, %for.cond ]
  %exitcond4.not = icmp eq i64 %indvars.iv, 31
  br i1 %exitcond4.not, label %for.end19, label %land.end

land.end:                                         ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw [32 x i8], ptr %res, i64 0, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx13, align 1, !tbaa !9
  %cmp15 = icmp eq i8 %3, 48
  br i1 %cmp15, label %for.inc17, label %for.end19.split.loop.exit10

for.inc17:                                        ; preds = %land.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond10, !llvm.loop !14

for.end19.split.loop.exit10:                      ; preds = %land.end
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end19

for.end19:                                        ; preds = %for.cond10, %for.end19.split.loop.exit10
  %i.1.lcssa = phi i32 [ %4, %for.end19.split.loop.exit10 ], [ 31, %for.cond10 ]
  %5 = zext nneg i32 %i.1.lcssa to i64
  %6 = sext i32 %i.1.lcssa to i64
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %for.end19
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc28 ], [ %5, %for.end19 ]
  %exitcond9.not = icmp eq i64 %indvars.iv5, 31
  br i1 %exitcond9.not, label %for.end30, label %for.inc28

for.inc28:                                        ; preds = %for.cond20
  %arrayidx24 = getelementptr inbounds nuw [32 x i8], ptr %res, i64 0, i64 %indvars.iv5
  %7 = load i8, ptr %arrayidx24, align 1, !tbaa !9
  %8 = sub nuw nsw i64 %indvars.iv5, %6
  %arrayidx27 = getelementptr inbounds nuw [32 x i8], ptr %res, i64 0, i64 %8
  store i8 %7, ptr %arrayidx27, align 1, !tbaa !9
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond20, !llvm.loop !15

for.end30:                                        ; preds = %for.cond20
  %sub31 = sub nsw i32 31, %i.1.lcssa
  %idxprom32 = sext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds [32 x i8], ptr %res, i64 0, i64 %idxprom32
  store i8 0, ptr %arrayidx33, align 1, !tbaa !9
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %res)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 32, ptr noundef nonnull %res) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree }
attributes #7 = { nounwind }

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
