; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvkl9d2tz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [6 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 2400, ptr nonnull %a) #4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %if.end ], [ 0, %entry ]
  %exitcond26.not = icmp eq i64 %indvars.iv21, 100
  br i1 %exitcond26.not, label %for.end37, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 6
  br i1 %exitcond.not, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [6 x i32]], ptr %a, i64 0, i64 %indvars.iv21, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %arrayidx7 = getelementptr inbounds nuw [100 x [6 x i32]], ptr %a, i64 0, i64 %indvars.iv21
  %0 = load i32, ptr %arrayidx7, align 8, !tbaa !8
  %cmp9 = icmp eq i32 %0, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arrayidx7, i64 4
  %1 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %cmp13 = icmp eq i32 %1, 0
  br i1 %cmp13, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arrayidx7, i64 8
  %2 = load i32, ptr %arrayidx17, align 8, !tbaa !8
  %cmp18 = icmp eq i32 %2, 0
  br i1 %cmp18, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %arrayidx7, i64 12
  %3 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %cmp23 = icmp eq i32 %3, 0
  br i1 %cmp23, label %land.lhs.true24, label %if.end

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %arrayidx7, i64 16
  %4 = load i32, ptr %arrayidx27, align 8, !tbaa !8
  %cmp28 = icmp eq i32 %4, 0
  br i1 %cmp28, label %land.lhs.true29, label %if.end

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %arrayidx7, i64 20
  %5 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %cmp33 = icmp eq i32 %5, 0
  br i1 %cmp33, label %for.end37, label %if.end

if.end:                                           ; preds = %land.lhs.true29, %land.lhs.true24, %land.lhs.true19, %land.lhs.true14, %land.lhs.true, %for.end
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond, !llvm.loop !12

for.end37:                                        ; preds = %land.lhs.true29, %for.cond
  %wide.trip.count = and i64 %indvars.iv21, 4294967295
  br label %for.cond38

for.cond38:                                       ; preds = %for.body40, %for.end37
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.body40 ], [ 0, %for.end37 ]
  %exitcond30.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond30.not, label %for.end70, label %for.body40

for.body40:                                       ; preds = %for.cond38
  %arrayidx42 = getelementptr inbounds nuw [100 x [6 x i32]], ptr %a, i64 0, i64 %indvars.iv27
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %arrayidx42, i64 12
  %6 = load i32, ptr %arrayidx43, align 4, !tbaa !8
  %add = add nsw i32 %6, 12
  %7 = load i32, ptr %arrayidx42, align 8, !tbaa !8
  %8 = xor i32 %7, -1
  %sub47 = add i32 %add, %8
  %mul = mul nsw i32 %sub47, 3600
  %arrayidx50 = getelementptr inbounds nuw i8, ptr %arrayidx42, i64 16
  %9 = load i32, ptr %arrayidx50, align 8, !tbaa !8
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %arrayidx42, i64 20
  %10 = load i32, ptr %arrayidx55, align 4, !tbaa !8
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %arrayidx42, i64 4
  %11 = load i32, ptr %arrayidx59, align 4, !tbaa !8
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %arrayidx42, i64 8
  %12 = load i32, ptr %arrayidx64, align 8, !tbaa !8
  %reass.add = sub i32 %9, %11
  %reass.mul = mul i32 %reass.add, 60
  %sub65 = add i32 %mul, 3600
  %add52 = add i32 %sub65, %10
  %add56 = sub i32 %add52, %12
  %add66 = add i32 %add56, %reass.mul
  %call67 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add66)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond38, !llvm.loop !13

for.end70:                                        ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 2400, ptr nonnull %a) #4
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
