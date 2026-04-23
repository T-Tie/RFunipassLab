; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgl16x76z.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %s) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = call i32 @getc(ptr noundef %0)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %1 = load i32, ptr %n, align 4, !tbaa !10
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %3 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i12 = call i32 @getc(ptr noundef %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %s, align 16, !tbaa !10
  %call5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4)
  %5 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i13 = call i32 @getc(ptr noundef %5)
  br label %for.cond7

for.cond7:                                        ; preds = %if.end27, %for.end
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %if.end27 ], [ 1, %for.end ]
  %6 = load i32, ptr %n, align 4, !tbaa !10
  %7 = sext i32 %6 to i64
  %cmp8 = icmp slt i64 %indvars.iv19, %7
  br i1 %cmp8, label %for.cond10.preheader, label %for.end30

for.cond10.preheader:                             ; preds = %for.cond7
  %arrayidx14 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv19
  %8 = load i32, ptr %arrayidx14, align 4, !tbaa !10
  br label %for.cond10

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %indvars.iv16 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next17, %for.body12 ]
  %j.1 = phi i32 [ 0, %for.cond10.preheader ], [ %spec.select, %for.body12 ]
  %exitcond.not = icmp eq i64 %indvars.iv16, %indvars.iv19
  br i1 %exitcond.not, label %for.end21, label %for.body12

for.body12:                                       ; preds = %for.cond10
  %arrayidx16 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv16
  %9 = load i32, ptr %arrayidx16, align 4, !tbaa !10
  %cmp17.not = icmp ne i32 %8, %9
  %inc18 = zext i1 %cmp17.not to i32
  %spec.select = add nuw nsw i32 %j.1, %inc18
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond10, !llvm.loop !15

for.end21:                                        ; preds = %for.cond10
  %10 = zext nneg i32 %j.1 to i64
  %cmp22 = icmp eq i64 %indvars.iv19, %10
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %for.end21
  %call26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %for.end21
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond7, !llvm.loop !16

for.end30:                                        ; preds = %for.cond7
  %putchar = call i32 @putchar(i32 10)
  %11 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i14 = call i32 @getc(ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
