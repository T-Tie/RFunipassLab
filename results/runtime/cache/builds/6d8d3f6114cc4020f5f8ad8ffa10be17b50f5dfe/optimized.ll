; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4m5ige8m.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %str = alloca [500 x i8], align 16
  %sub = alloca [500 x i8], align 16
  %rep = alloca [500 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %str) #6
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %sub) #6
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %rep) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %str, ptr noundef nonnull align 16 %sub, ptr noundef nonnull align 16 %rep)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #7
  %conv7 = trunc i64 %call6 to i32
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %rep) #7
  %conv10 = trunc i64 %call9 to i32
  %sub11 = sub i32 %conv, %conv7
  %smax = call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %conv7, i32 noundef 0)
  %smax43 = call i32 @llvm.smax.i32(i32 %sub11, i32 noundef -1)
  %0 = add i32 %smax43, 1
  %1 = zext i32 %0 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc24 ], [ 0, %entry ]
  %j.0 = phi i32 [ %j.2.lcssa, %for.inc24 ], [ undef, %entry ]
  %exitcond46 = icmp eq i64 %indvars.iv41, %1
  br i1 %exitcond46, label %for.end26, label %for.cond12

for.cond12:                                       ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body14

for.body14:                                       ; preds = %for.cond12
  %2 = add nuw nsw i64 %indvars.iv, %indvars.iv41
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %str, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %arrayidx17 = getelementptr inbounds nuw [500 x i8], ptr %sub, i64 0, i64 %indvars.iv
  %4 = load i8, ptr %arrayidx17, align 1, !tbaa !5, !invariant.load !8
  %cmp19.not = icmp eq i8 %3, %4
  br i1 %cmp19.not, label %for.inc, label %for.end.split.loop.exit

for.inc:                                          ; preds = %for.body14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond12, !llvm.loop !9

for.end.split.loop.exit:                          ; preds = %for.body14
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond12, %for.end.split.loop.exit
  %j.2.lcssa = phi i32 [ %5, %for.end.split.loop.exit ], [ %smax, %for.cond12 ]
  %cmp20 = icmp eq i32 %j.2.lcssa, %conv7
  br i1 %cmp20, label %for.end26.thread, label %for.inc24

for.end26.thread:                                 ; preds = %for.end
  %add22 = add i64 %indvars.iv41, %call6
  %sext = shl i64 %add22, 32
  %6 = ashr exact i64 %sext, 32
  br label %if.else

for.inc24:                                        ; preds = %for.end
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond, !llvm.loop !12

for.end26:                                        ; preds = %for.cond
  %cmp27.not = icmp eq i32 %j.0, %conv7
  br i1 %cmp27.not, label %if.else, label %if.end93

if.else:                                          ; preds = %for.end26.thread, %for.end26
  %mo.082 = phi i64 [ %6, %for.end26.thread ], [ 0, %for.end26 ]
  %cmp31.not = icmp slt i32 %conv7, %conv10
  call void @llvm.assume(i1 %cmp31.not)
  %sub65 = add i32 %sub11, %conv10
  %sext76 = shl i64 %call4, 32
  %7 = ashr exact i64 %sext76, 32
  %8 = sext i32 %sub65 to i64
  br label %for.cond66

for.cond66:                                       ; preds = %for.cond66, %if.else
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.cond66 ], [ %8, %if.else ]
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.cond66 ], [ %7, %if.else ]
  %cmp67.not = icmp sge i64 %indvars.iv61, %mo.082
  call void @llvm.assume(i1 %cmp67.not)
  %arrayidx70 = getelementptr inbounds [500 x i8], ptr %str, i64 0, i64 %indvars.iv61
  %9 = load i8, ptr %arrayidx70, align 1, !tbaa !5, !invariant.load !8
  %arrayidx72 = getelementptr inbounds [500 x i8], ptr %str, i64 0, i64 %indvars.iv63
  store i8 %9, ptr %arrayidx72, align 1, !tbaa !5
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, -1
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, -1
  br label %for.cond66, !llvm.loop !13

if.end93:                                         ; preds = %for.end26
  %call92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %str)
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %rep) #8
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %sub) #8
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %str) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
!13 = distinct !{!13, !10, !11}
