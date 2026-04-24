; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9w25ksfz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@switch.table.main = private unnamed_addr constant [10 x i32] [i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30], align 4
@switch.table.main.2 = private unnamed_addr constant [10 x i32] [i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z3runi(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %rem = srem i32 %x, 400
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = and i32 %x, 3
  %cmp2 = icmp ne i32 %0, 0
  %rem3 = srem i32 %x, 100
  %cmp4.not = icmp eq i32 %rem3, 0
  %or.cond = or i1 %cmp2, %cmp4.not
  %spec.select = zext i1 %or.cond to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %mona = alloca i32, align 4
  %monb = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp51 = icmp sgt i32 %0, 0
  br i1 %cmp51, label %for.body, label %for.end60

for.body:                                         ; preds = %entry, %if.end57
  %i.052 = phi i32 [ %inc59, %if.end57 ], [ 0, %entry ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mona) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %monb) #6
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %mona, ptr noundef nonnull %monb)
  %1 = load i32, ptr %mona, align 4, !tbaa !5
  %2 = load i32, ptr %monb, align 4, !tbaa !5
  %. = call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %.31 = call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %3 = load i32, ptr %year, align 4, !tbaa !5
  %rem.i = srem i32 %3, 400
  %cmp.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.i, label %for.cond6.preheader, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body
  %4 = and i32 %3, 3
  %cmp2.i = icmp eq i32 %4, 0
  %rem3.i = srem i32 %3, 100
  %cmp4.not.i = icmp ne i32 %rem3.i, 0
  %or.cond.i.not = and i1 %cmp2.i, %cmp4.not.i
  %cmp744 = icmp slt i32 %.31, %.
  %or.cond = select i1 %or.cond.i.not, i1 %cmp744, i1 false
  br i1 %or.cond, label %for.body8.preheader, label %_Z3runi.exit41

for.cond6.preheader:                              ; preds = %for.body
  %cmp744.old = icmp slt i32 %.31, %.
  br i1 %cmp744.old, label %for.body8.preheader, label %if.end57

for.body8.preheader:                              ; preds = %for.cond6.preheader, %lor.lhs.false.i
  br label %for.body8

for.body8:                                        ; preds = %for.body8.preheader, %for.inc
  %day.246 = phi i32 [ %add, %for.inc ], [ 0, %for.body8.preheader ]
  %j.045 = phi i32 [ %inc, %for.inc ], [ %.31, %for.body8.preheader ]
  %switch.tableidx = add i32 %j.045, -2
  %5 = icmp ult i32 %switch.tableidx, 10
  br i1 %5, label %switch.lookup, label %for.inc

switch.lookup:                                    ; preds = %for.body8
  %6 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [10 x i32], ptr @switch.table.main, i64 0, i64 %6
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8, %switch.lookup
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 31, %for.body8 ]
  %add = add nuw nsw i32 %day.246, %.sink
  %inc = add nsw i32 %j.045, 1
  %cmp7 = icmp slt i32 %inc, %.
  br i1 %cmp7, label %for.body8, label %if.end24, !llvm.loop !9

if.end24:                                         ; preds = %for.inc
  br i1 %cmp.i, label %if.end51, label %_Z3runi.exit41

_Z3runi.exit41:                                   ; preds = %lor.lhs.false.i, %if.end24
  %day.158 = phi i32 [ %add, %if.end24 ], [ 0, %lor.lhs.false.i ]
  %7 = and i32 %3, 3
  %cmp2.i35 = icmp ne i32 %7, 0
  %rem3.i36 = srem i32 %3, 100
  %cmp4.not.i37 = icmp eq i32 %rem3.i36, 0
  %or.cond.i38.not.not54 = or i1 %cmp2.i35, %cmp4.not.i37
  %cmp2947 = icmp slt i32 %.31, %.
  %or.cond53 = select i1 %or.cond.i38.not.not54, i1 %cmp2947, i1 false
  br i1 %or.cond53, label %for.body30, label %if.end51

for.body30:                                       ; preds = %_Z3runi.exit41, %for.inc48
  %day.549 = phi i32 [ %add33, %for.inc48 ], [ %day.158, %_Z3runi.exit41 ]
  %j.148 = phi i32 [ %inc49, %for.inc48 ], [ %.31, %_Z3runi.exit41 ]
  %switch.tableidx64 = add i32 %j.148, -2
  %8 = icmp ult i32 %switch.tableidx64, 10
  br i1 %8, label %switch.lookup63, label %for.inc48

switch.lookup63:                                  ; preds = %for.body30
  %9 = zext nneg i32 %switch.tableidx64 to i64
  %switch.gep65 = getelementptr inbounds nuw [10 x i32], ptr @switch.table.main.2, i64 0, i64 %9
  %switch.load66 = load i32, ptr %switch.gep65, align 4
  br label %for.inc48

for.inc48:                                        ; preds = %for.body30, %switch.lookup63
  %.sink62 = phi i32 [ %switch.load66, %switch.lookup63 ], [ 31, %for.body30 ]
  %add33 = add nsw i32 %day.549, %.sink62
  %inc49 = add nsw i32 %j.148, 1
  %exitcond.not = icmp eq i32 %inc49, %.
  br i1 %exitcond.not, label %if.end51, label %for.body30, !llvm.loop !12

if.end51:                                         ; preds = %for.inc48, %if.end24, %_Z3runi.exit41
  %day.4 = phi i32 [ %day.158, %_Z3runi.exit41 ], [ %add, %if.end24 ], [ %add33, %for.inc48 ]
  %rem = srem i32 %day.4, 7
  %cmp52 = icmp eq i32 %rem, 0
  %spec.select = select i1 %cmp52, ptr @str.1, ptr @str
  br label %if.end57

if.end57:                                         ; preds = %if.end51, %for.cond6.preheader
  %str.sink = phi ptr [ @str.1, %for.cond6.preheader ], [ %spec.select, %if.end51 ]
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.sink)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %monb) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mona) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #6
  %inc59 = add nuw nsw i32 %i.052, 1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc59, %10
  br i1 %cmp, label %for.body, label %for.end60, !llvm.loop !13

for.end60:                                        ; preds = %if.end57, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
