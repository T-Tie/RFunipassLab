; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0wd3iyfs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %c) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %a, ptr noundef nonnull align 16 %b, ptr noundef nonnull %c)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #6
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %conv7 = trunc i64 %call6 to i32
  %0 = load i8, ptr %b, align 16
  %sext = shl i64 %call4, 32
  %1 = ashr exact i64 %sext, 32
  %smax = call i32 @llvm.smax.i32(i32 %conv7, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %indvars.iv39 = phi i32 [ %indvars.iv.next40, %for.inc26 ], [ %conv, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc26 ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.else, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp11 = icmp eq i8 %2, %0
  br i1 %cmp11, label %for.cond12.preheader, label %for.inc26

for.cond12.preheader:                             ; preds = %for.body
  %3 = add nsw i64 %indvars.iv, %1
  br label %for.cond12

for.cond12:                                       ; preds = %for.cond12.preheader, %for.body14
  %indvars.iv25 = phi i64 [ %indvars.iv, %for.cond12.preheader ], [ %indvars.iv.next26, %for.body14 ]
  %k.2 = phi i32 [ 1, %for.cond12.preheader ], [ %spec.select, %for.body14 ]
  %cmp13 = icmp slt i64 %indvars.iv25, %3
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond12
  %4 = sub nuw nsw i64 %indvars.iv25, %indvars.iv
  %arrayidx16 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %4
  %5 = load i8, ptr %arrayidx16, align 1, !tbaa !5
  %arrayidx19 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv25
  %6 = load i8, ptr %arrayidx19, align 1, !tbaa !5
  %cmp21.not = icmp eq i8 %5, %6
  %spec.select = select i1 %cmp21.not, i32 %k.2, i32 0
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond12, !llvm.loop !8

for.end:                                          ; preds = %for.cond12
  %tobool.not = icmp eq i32 %k.2, 0
  br i1 %tobool.not, label %for.inc26, label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.end
  %wide.trip.count37 = and i64 %indvars.iv, 4294967295
  br label %for.cond31

for.inc26:                                        ; preds = %for.body, %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next40 = add i32 %indvars.iv39, 1
  br label %for.cond, !llvm.loop !11

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc38
  %indvars.iv31 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next32, %for.inc38 ]
  %exitcond38.not = icmp eq i64 %indvars.iv31, %wide.trip.count37
  br i1 %exitcond38.not, label %for.end40, label %for.inc38

for.inc38:                                        ; preds = %for.cond31
  %arrayidx35 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv31
  %7 = load i8, ptr %arrayidx35, align 1, !tbaa !5
  %conv36 = sext i8 %7 to i32
  %putchar22 = call i32 @putchar(i32 noundef %conv36) #7
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond31, !llvm.loop !12

for.end40:                                        ; preds = %for.cond31
  %call42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %c)
  %8 = sext i32 %indvars.iv39 to i64
  %sext45 = shl i64 %call6, 32
  %9 = ashr exact i64 %sext45, 32
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc51, %for.end40
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc51 ], [ %8, %for.end40 ]
  %cmp45 = icmp slt i64 %indvars.iv42, %9
  br i1 %cmp45, label %for.inc51, label %if.end56

for.inc51:                                        ; preds = %for.cond44
  %arrayidx48 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %indvars.iv42
  %10 = load i8, ptr %arrayidx48, align 1, !tbaa !5
  %conv49 = sext i8 %10 to i32
  %putchar = call i32 @putchar(i32 noundef %conv49) #7
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1
  br label %for.cond44, !llvm.loop !13

if.else:                                          ; preds = %for.cond
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %a)
  br label %if.end56

if.end56:                                         ; preds = %for.cond44, %if.else
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %a) #7
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

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!13 = distinct !{!13, !9, !10}
