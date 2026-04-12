; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0wd3iyfs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %a, ptr noundef nonnull align 16 %b, ptr noundef nonnull %c)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #7
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv7 = trunc i64 %call6 to i32
  %0 = load i8, ptr %b, align 16
  %sext = shl i64 %call4, 32
  %1 = ashr exact i64 %sext, 32
  %smax = call i32 @llvm.smax.i32(i32 %conv7, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %indvars.iv19 = phi i32 [ %indvars.iv.next20, %for.inc26 ], [ %conv, %entry ]
  %indvars.iv14 = phi i32 [ %indvars.iv.next15, %for.inc26 ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc26 ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.else, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %cmp11 = icmp eq i8 %2, %0
  br i1 %cmp11, label %for.cond12.preheader, label %for.inc26

for.cond12.preheader:                             ; preds = %for.body
  %3 = add nsw i64 %indvars.iv, %1
  br label %for.cond12

for.cond12:                                       ; preds = %for.cond12.preheader, %for.body14
  %indvars.iv5 = phi i64 [ %indvars.iv, %for.cond12.preheader ], [ %indvars.iv.next6, %for.body14 ]
  %k.2 = phi i32 [ 1, %for.cond12.preheader ], [ %spec.select, %for.body14 ]
  %cmp13 = icmp slt i64 %indvars.iv5, %3
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond12
  %4 = sub nuw nsw i64 %indvars.iv5, %indvars.iv
  %arrayidx16 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %4
  %5 = load i8, ptr %arrayidx16, align 1, !tbaa !5, !invariant.load !8
  %arrayidx19 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv5
  %6 = load i8, ptr %arrayidx19, align 1, !tbaa !5, !invariant.load !8
  %cmp21.not = icmp eq i8 %5, %6
  %spec.select = select i1 %cmp21.not, i32 %k.2, i32 0
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond12, !llvm.loop !9

for.end:                                          ; preds = %for.cond12
  %tobool.not = icmp eq i32 %k.2, 0
  br i1 %tobool.not, label %for.inc26, label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.end
  %wide.trip.count17 = zext i32 %indvars.iv14 to i64
  br label %for.cond31

for.inc26:                                        ; preds = %for.body, %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next15 = add nuw i32 %indvars.iv14, 1
  %indvars.iv.next20 = add i32 %indvars.iv19, 1
  br label %for.cond, !llvm.loop !12

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc38
  %indvars.iv11 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next12, %for.inc38 ]
  %exitcond18.not = icmp eq i64 %indvars.iv11, %wide.trip.count17
  br i1 %exitcond18.not, label %for.end40, label %for.inc38

for.inc38:                                        ; preds = %for.cond31
  %arrayidx35 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv11
  %7 = load i8, ptr %arrayidx35, align 1, !tbaa !5, !invariant.load !8
  %conv36 = sext i8 %7 to i32
  %putchar2 = call i32 @putchar(i32 noundef %conv36) #8
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond31, !llvm.loop !13

for.end40:                                        ; preds = %for.cond31
  %call42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %c) #8
  %8 = sext i32 %indvars.iv19 to i64
  %sext25 = shl i64 %call6, 32
  %9 = ashr exact i64 %sext25, 32
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc51, %for.end40
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc51 ], [ %8, %for.end40 ]
  %cmp45 = icmp slt i64 %indvars.iv22, %9
  br i1 %cmp45, label %for.inc51, label %if.end56

for.inc51:                                        ; preds = %for.cond44
  %arrayidx48 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %indvars.iv22
  %10 = load i8, ptr %arrayidx48, align 1, !tbaa !5, !invariant.load !8
  %conv49 = sext i8 %10 to i32
  %putchar = call i32 @putchar(i32 noundef %conv49) #8
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  br label %for.cond44, !llvm.loop !14

if.else:                                          ; preds = %for.cond
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %a) #8
  br label %if.end56

if.end56:                                         ; preds = %for.cond44, %if.else
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %a) #8
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

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!14 = distinct !{!14, !10, !11}
