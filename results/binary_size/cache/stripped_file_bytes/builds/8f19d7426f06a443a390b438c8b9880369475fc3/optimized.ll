; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqm0thq4w.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [6 x i32], align 16
  %peo = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sz) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %peo) #4
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %sz, i64 4
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %sz, i64 8
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %sz, i64 12
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sz, i64 16
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %sz, i64 20
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %if.end ], [ 0, %entry ]
  %exitcond15.not = icmp eq i64 %indvars.iv12, 1000
  br i1 %exitcond15.not, label %for.end23, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 6
  br i1 %exitcond.not, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw [6 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %0 = load i32, ptr %sz, align 16, !tbaa !8
  %cmp5 = icmp eq i32 %0, 0
  br i1 %cmp5, label %for.end23, label %if.end

if.end:                                           ; preds = %for.end
  %1 = load i32, ptr %arrayidx7, align 4, !tbaa !8
  %2 = load i32, ptr %arrayidx10, align 8, !tbaa !8
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %4 = load i32, ptr %arrayidx14, align 16, !tbaa !8
  %5 = load i32, ptr %arrayidx16, align 4, !tbaa !8
  %reass.add = sub i32 %4, %1
  %reass.mul = mul i32 %reass.add, 60
  %reass.sub = sub i32 %3, %0
  %6 = mul i32 %reass.sub, 3600
  %reass.mul10 = add i32 %6, 43200
  %sub9 = sub i32 %5, %2
  %sub11 = add i32 %sub9, %reass.mul10
  %add18 = add i32 %sub11, %reass.mul
  %arrayidx20 = getelementptr inbounds nuw [1000 x i32], ptr %peo, i64 0, i64 %indvars.iv12
  store i32 %add18, ptr %arrayidx20, align 4, !tbaa !8
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond, !llvm.loop !12

for.end23:                                        ; preds = %for.end, %for.cond
  %wide.trip.count = and i64 %indvars.iv12, 4294967295
  br label %for.cond24

for.cond24:                                       ; preds = %for.body26, %for.end23
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.body26 ], [ 0, %for.end23 ]
  %exitcond19.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond19.not, label %for.end32, label %for.body26

for.body26:                                       ; preds = %for.cond24
  %arrayidx28 = getelementptr inbounds nuw [1000 x i32], ptr %peo, i64 0, i64 %indvars.iv16
  %7 = load i32, ptr %arrayidx28, align 4, !tbaa !8
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond24, !llvm.loop !13

for.end32:                                        ; preds = %for.cond24
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %peo) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sz) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
