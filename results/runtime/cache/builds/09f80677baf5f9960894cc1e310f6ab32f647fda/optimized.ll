; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6q6t9tmb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %s = alloca [500 x i8], align 16
  %su = alloca [500 x i8], align 16
  %re = alloca [500 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %s) #5
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %su) #5
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %re) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %s, ptr noundef nonnull align 16 %su, ptr noundef nonnull align 16 %re)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #6
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %su) #6
  %conv7 = trunc i64 %call6 to i32
  %sub = sub nsw i32 %conv, %conv7
  %smax = call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %conv7, i32 noundef 0)
  %smax31 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef -1)
  %0 = add i32 %smax31, 1
  %wide.trip.count32 = zext i32 %0 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc36 ], [ 0, %entry ]
  %exitcond33 = icmp eq i64 %indvars.iv28, %wide.trip.count32
  br i1 %exitcond33, label %for.end38, label %for.cond8

for.cond8:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv28
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw [500 x i8], ptr %su, i64 0, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx14, align 1, !tbaa !5
  %cmp16.not = icmp eq i8 %2, %3
  br i1 %cmp16.not, label %for.inc, label %for.end.split.loop.exit

for.inc:                                          ; preds = %for.body10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond8, !llvm.loop !8

for.end.split.loop.exit:                          ; preds = %for.body10
  %indvars21.le = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond8, %for.end.split.loop.exit
  %k.0.lcssa = phi i32 [ %indvars21.le, %for.end.split.loop.exit ], [ %smax, %for.cond8 ]
  %cmp18 = icmp eq i32 %k.0.lcssa, %conv7
  br i1 %cmp18, label %if.then19, label %for.inc36

if.then19:                                        ; preds = %for.end
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc29, %if.then19
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc29 ], [ 0, %if.then19 ]
  %exitcond27.not = icmp eq i64 %indvars.iv22, %wide.trip.count
  br i1 %exitcond27.not, label %for.end38, label %for.inc29

for.inc29:                                        ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [500 x i8], ptr %re, i64 0, i64 %indvars.iv22
  %4 = load i8, ptr %arrayidx25, align 1, !tbaa !5
  %5 = add nuw nsw i64 %indvars.iv22, %indvars.iv28
  %arrayidx28 = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %5
  store i8 %4, ptr %arrayidx28, align 1, !tbaa !5
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond21, !llvm.loop !11

for.inc36:                                        ; preds = %for.end
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond, !llvm.loop !12

for.end38:                                        ; preds = %for.cond, %for.cond21
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %s)
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %re) #7
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %su) #7
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %s) #7
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
