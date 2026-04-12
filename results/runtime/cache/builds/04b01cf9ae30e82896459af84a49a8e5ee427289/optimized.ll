; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6zpk95vy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [6 x i32]], align 16
  %b = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 2400, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %b) #4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv29 = phi i32 [ %indvars.iv.next30, %if.end ], [ 0, %entry ]
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %if.end ], [ 0, %entry ]
  br label %for.cond1

for.cond1:                                        ; preds = %for.body, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 6
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond1
  %arrayidx3 = getelementptr inbounds nuw [100 x [6 x i32]], ptr %a, i64 0, i64 %indvars.iv23, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [6 x i32]], ptr %a, i64 0, i64 %indvars.iv23
  %0 = load i32, ptr %arrayidx5, align 8, !tbaa !8
  %cmp7 = icmp eq i32 %0, 0
  br i1 %cmp7, label %for.cond12.preheader, label %if.end

for.cond12.preheader:                             ; preds = %for.end
  %wide.trip.count = zext i32 %indvars.iv29 to i64
  br label %for.cond12

if.end:                                           ; preds = %for.end
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1)
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %indvars.iv.next30 = add nuw i32 %indvars.iv29, 1
  br label %for.cond, !llvm.loop !12

for.cond12:                                       ; preds = %for.cond12.preheader, %for.body14
  %indvars.iv26 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next27, %for.body14 ]
  %exitcond31.not = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond31.not, label %for.cond45, label %for.body14

for.body14:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [100 x [6 x i32]], ptr %a, i64 0, i64 %indvars.iv26
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arrayidx16, i64 12
  %1 = load i32, ptr %arrayidx17, align 4, !tbaa !8
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %arrayidx16, i64 16
  %2 = load i32, ptr %arrayidx20, align 8, !tbaa !8
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %arrayidx16, i64 20
  %3 = load i32, ptr %arrayidx25, align 4, !tbaa !8
  %4 = load i32, ptr %arrayidx16, align 8, !tbaa !8
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %arrayidx16, i64 4
  %5 = load i32, ptr %arrayidx33, align 4, !tbaa !8
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %arrayidx16, i64 8
  %6 = load i32, ptr %arrayidx38, align 8, !tbaa !8
  %reass.add = sub i32 %2, %5
  %reass.mul = mul i32 %reass.add, 60
  %reass.add20 = sub i32 %1, %4
  %reass.mul21 = mul i32 %reass.add20, 3600
  %mul = add i32 %3, 43200
  %add22 = sub i32 %mul, %6
  %add26 = add i32 %add22, %reass.mul21
  %sub = add i32 %add26, %reass.mul
  %arrayidx41 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv26
  store i32 %sub, ptr %arrayidx41, align 4, !tbaa !8
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond12, !llvm.loop !13

for.cond45:                                       ; preds = %for.cond12, %for.body47
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body47 ], [ 0, %for.cond12 ]
  %exitcond37.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond37.not, label %for.end53, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv32
  %7 = load i32, ptr %arrayidx49, align 4, !tbaa !8
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %7)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond45, !llvm.loop !14

for.end53:                                        ; preds = %for.cond45
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %b) #4
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
!14 = distinct !{!14, !6, !7}
