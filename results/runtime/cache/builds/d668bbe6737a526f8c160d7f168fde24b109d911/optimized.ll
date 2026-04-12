; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxki_9xdd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@__const.main.x = private unnamed_addr constant [14 x i32] [i32 0, i32 0, i32 31, i32 60, i32 91, i32 121, i32 152, i32 182, i32 213, i32 244, i32 274, i32 305, i32 335, i32 366], align 16
@__const.main.x.4 = private unnamed_addr constant [14 x i32] [i32 0, i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334, i32 365], align 16
@stdin = external local_unnamed_addr global ptr, align 8
@str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z9checkyeari(i32 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = and i32 %a, 3
  %cmp = icmp eq i32 %0, 0
  %rem1 = srem i32 %a, 100
  %cmp2.not = icmp ne i32 %rem1, 0
  %or.cond.not4 = and i1 %cmp, %cmp2.not
  %rem3 = srem i32 %a, 400
  %cmp4 = icmp eq i32 %rem3, 0
  %or.cond3 = or i1 %cmp4, %or.cond.not4
  %retval.0 = zext i1 %or.cond3 to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  %b = alloca [1000 x i32], align 16
  %c = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond6

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [1000 x i32], ptr %c, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond, %for.inc44
  %2 = phi i32 [ %.pre, %for.inc44 ], [ %0, %for.cond ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc44 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp7 = icmp slt i64 %indvars.iv18, %3
  br i1 %cmp7, label %for.body8, label %for.end46

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %call11 = call noundef i32 @_Z9checkyeari(i32 noundef %4)
  %tobool.not = icmp eq i32 %call11, 0
  %arrayidx28 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv18
  %5 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %idxprom29 = sext i32 %5 to i64
  %arrayidx32 = getelementptr inbounds nuw [1000 x i32], ptr %c, i64 0, i64 %indvars.iv18
  %6 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %idxprom33 = sext i32 %6 to i64
  br i1 %tobool.not, label %if.else25, label %if.then

if.then:                                          ; preds = %for.body8
  %arrayidx16 = getelementptr inbounds [14 x i32], ptr @__const.main.x, i64 0, i64 %idxprom29
  %7 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds [14 x i32], ptr @__const.main.x, i64 0, i64 %idxprom33
  %8 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %7, %8
  %rem = srem i32 %sub, 7
  %cmp21 = icmp eq i32 %rem, 0
  %str.3.str.2 = select i1 %cmp21, ptr @str.3, ptr @str.2
  br label %for.inc44

if.else25:                                        ; preds = %for.body8
  %arrayidx30 = getelementptr inbounds [14 x i32], ptr @__const.main.x.4, i64 0, i64 %idxprom29
  %9 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %arrayidx34 = getelementptr inbounds [14 x i32], ptr @__const.main.x.4, i64 0, i64 %idxprom33
  %10 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %sub35 = sub nsw i32 %9, %10
  %rem36 = srem i32 %sub35, 7
  %cmp37 = icmp eq i32 %rem36, 0
  %str.1.str = select i1 %cmp37, ptr @str.3, ptr @str.2
  br label %for.inc44

for.inc44:                                        ; preds = %if.else25, %if.then
  %str.1.sink = phi ptr [ %str.3.str.2, %if.then ], [ %str.1.str, %if.else25 ]
  %puts12 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !12

for.end46:                                        ; preds = %for.cond6
  %11 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i = call i32 @getc(ptr noundef %11)
  %12 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i15 = call i32 @getc(ptr noundef %12)
  %13 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i16 = call i32 @getc(ptr noundef %13)
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
