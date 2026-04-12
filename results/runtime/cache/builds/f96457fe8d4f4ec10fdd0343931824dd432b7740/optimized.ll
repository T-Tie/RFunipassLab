; ModuleID = '<stdin>'
source_filename = "/tmp/tmpf1qpf37y.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %c = alloca [500 x i32], align 16
  %a = alloca [500 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %c) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull %a) #6
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv4 = sext i32 %0 to i64
  %sub = sub i64 %call3, %conv4
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %1 = add i64 %call3, 1
  %2 = sub i64 %1, %conv4
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end35, %entry
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.end35 ], [ 0, %entry ]
  %cmp46.not = phi i1 [ false, %for.end35 ], [ true, %entry ]
  %exitcond34 = icmp eq i64 %indvars.iv27, %2
  br i1 %exitcond34, label %for.end45, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %c, i64 0, i64 %indvars.iv27
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc33, %for.body
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc33 ], [ %indvars.iv27, %for.body ]
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond32 = icmp eq i64 %indvars.iv29, %sub
  br i1 %exitcond32, label %for.end35, label %for.cond14

for.cond14:                                       ; preds = %for.cond5, %for.body17
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body17 ], [ 0, %for.cond5 ]
  %z.0 = phi i32 [ %spec.select, %for.body17 ], [ 1, %for.cond5 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body17

for.body17:                                       ; preds = %for.cond14
  %3 = add nuw nsw i64 %indvars.iv, %indvars.iv27
  %arrayidx20 = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %3
  %4 = load i8, ptr %arrayidx20, align 1, !tbaa !9, !invariant.load !10
  %5 = add nuw nsw i64 %indvars.iv, %indvars.iv.next30
  %arrayidx24 = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %5
  %6 = load i8, ptr %arrayidx24, align 1, !tbaa !9, !invariant.load !10
  %cmp26.not = icmp eq i8 %4, %6
  %spec.select = select i1 %cmp26.not, i32 %z.0, i32 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond14, !llvm.loop !11

for.end:                                          ; preds = %for.cond14
  %cmp27.not = icmp eq i32 %z.0, 0
  br i1 %cmp27.not, label %for.inc33, label %if.then28

if.then28:                                        ; preds = %for.end
  store i32 2, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc33

for.inc33:                                        ; preds = %for.end, %if.then28
  br label %for.cond5, !llvm.loop !14

for.end35:                                        ; preds = %for.cond5
  %indvars.iv.next28 = add nuw i64 %indvars.iv27, 1
  br label %for.cond, !llvm.loop !15

for.end45:                                        ; preds = %for.cond
  br i1 %cmp46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %for.end45
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end88

if.else:                                          ; preds = %for.end45
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 0)
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc85, %if.else
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc85 ], [ 0, %if.else ]
  %call54 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %conv55 = sext i32 %7 to i64
  %sub56 = sub i64 %call54, %conv55
  %cmp57.not = icmp ult i64 %sub56, %indvars.iv39
  br i1 %cmp57.not, label %if.end88, label %for.body59

for.body59:                                       ; preds = %for.cond51
  %arrayidx61 = getelementptr inbounds nuw [500 x i32], ptr %c, i64 0, i64 %indvars.iv39
  %8 = load i32, ptr %arrayidx61, align 4, !tbaa !5, !invariant.load !10
  %cmp62 = icmp eq i32 %8, 0
  br i1 %cmp62, label %for.cond65, label %for.inc85

for.cond65:                                       ; preds = %for.body59, %for.inc75
  %9 = phi i32 [ %.pre, %for.inc75 ], [ %7, %for.body59 ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc75 ], [ 0, %for.body59 ]
  %sub66 = add nsw i32 %9, -1
  %10 = sext i32 %sub66 to i64
  %cmp67 = icmp slt i64 %indvars.iv35, %10
  br i1 %cmp67, label %for.inc75, label %for.end77

for.inc75:                                        ; preds = %for.cond65
  %11 = add nuw nsw i64 %indvars.iv35, %indvars.iv39
  %arrayidx72 = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %11
  %12 = load i8, ptr %arrayidx72, align 1, !tbaa !9
  %conv73 = sext i8 %12 to i32
  %putchar = call i32 @putchar(i32 noundef %conv73) #6
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond65, !llvm.loop !16

for.end77:                                        ; preds = %for.cond65
  %13 = trunc i64 %indvars.iv39 to i32
  %14 = add i32 %13, -1
  %sub79 = add i32 %14, %9
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom80
  %15 = load i8, ptr %arrayidx81, align 1, !tbaa !9
  %conv82 = sext i8 %15 to i32
  %call83 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %conv82)
  br label %for.inc85

for.inc85:                                        ; preds = %for.body59, %for.end77
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond51, !llvm.loop !17

if.end88:                                         ; preds = %for.cond51, %if.then47
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
