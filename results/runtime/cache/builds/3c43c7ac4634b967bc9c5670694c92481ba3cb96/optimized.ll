; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9bn92g4z.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %c = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %c) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x i8], ptr %c, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %sub = add nsw i32 %i.0, -1
  %idxprom1 = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds [100 x i8], ptr %c, i64 0, i64 %idxprom1
  %0 = load i8, ptr %arrayidx2, align 1, !tbaa !5
  %cmp3 = icmp eq i8 %0, 32
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp7 = icmp eq i8 %1, 32
  %spec.select = select i1 %cmp7, i32 %sub, i32 %i.0
  %.pre = sext i32 %spec.select to i64
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %idxprom8.pre-phi = phi i64 [ %.pre, %land.lhs.true ], [ %idxprom, %for.body ]
  %i.2 = phi i32 [ %spec.select, %land.lhs.true ], [ %i.0, %for.body ]
  %arrayidx9 = getelementptr inbounds [100 x i8], ptr %c, i64 0, i64 %idxprom8.pre-phi
  %2 = load i8, ptr %arrayidx9, align 1, !tbaa !5
  %cmp11 = icmp eq i8 %2, 10
  br i1 %cmp11, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.2, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.end, %for.cond
  %i.1 = phi i32 [ %i.2, %if.end ], [ %i.0, %for.cond ]
  %smax = call i32 @llvm.smax.i32(i32 %i.1, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.body16, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body16 ], [ 0, %for.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [100 x i8], ptr %c, i64 0, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx18, align 1, !tbaa !5
  %conv19 = sext i8 %3 to i32
  %putchar = call i32 @putchar(i32 %conv19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond14, !llvm.loop !11

for.end23:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %c) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
