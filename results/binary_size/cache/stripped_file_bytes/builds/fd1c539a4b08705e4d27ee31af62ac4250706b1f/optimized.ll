; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8iwt7ikv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %c = alloca [60 x i32], align 16
  %str = alloca [301 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %c, i8 0, i64 240, i1 false)
  call void @llvm.lifetime.start.p0(i64 301, ptr nonnull %str) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %str)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %conv = trunc i64 %call2 to i32
  %cmp14 = icmp sgt i32 %conv, 0
  br i1 %cmp14, label %for.body.preheader, label %for.cond24.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = and i64 %call2, 2147483647
  br label %for.body

for.cond24.preheader.loopexit:                    ; preds = %for.inc
  %0 = icmp eq i32 %j.1, 0
  br label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.cond24.preheader.loopexit, %entry
  %j.0.lcssa = phi i1 [ false, %entry ], [ %0, %for.cond24.preheader.loopexit ]
  br label %for.body26

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %j.015 = phi i32 [ 1, %for.body.preheader ], [ %j.1, %for.inc ]
  %arrayidx = getelementptr inbounds nuw [301 x i8], ptr %str, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %2 = and i8 %1, -33
  %3 = add i8 %2, -65
  %or.cond13 = icmp ult i8 %3, 26
  br i1 %or.cond13, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %conv20 = zext nneg i8 %1 to i64
  %sub = add nsw i64 %conv20, -65
  %arrayidx22 = getelementptr inbounds [60 x i32], ptr %c, i64 0, i64 %sub
  %4 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %arrayidx22, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ 0, %if.then ], [ %j.015, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond24.preheader.loopexit, label %for.body, !llvm.loop !10

for.body26:                                       ; preds = %for.cond24.preheader, %for.inc35
  %indvars.iv19 = phi i64 [ 0, %for.cond24.preheader ], [ %indvars.iv.next20, %for.inc35 ]
  %arrayidx28 = getelementptr inbounds nuw [60 x i32], ptr %c, i64 0, i64 %indvars.iv19
  %5 = load i32, ptr %arrayidx28, align 4, !tbaa !8
  %cmp29.not = icmp eq i32 %5, 0
  br i1 %cmp29.not, label %for.inc35, label %if.then30

if.then30:                                        ; preds = %for.body26
  %6 = trunc i64 %indvars.iv19 to i32
  %7 = add i32 %6, 65
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7, i32 noundef %5)
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26, %if.then30
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.next20, 60
  br i1 %exitcond23.not, label %for.end37, label %for.body26, !llvm.loop !13

for.end37:                                        ; preds = %for.inc35
  br i1 %j.0.lcssa, label %if.end40, label %if.then38

if.then38:                                        ; preds = %for.end37
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %for.end37
  call void @llvm.lifetime.end.p0(i64 301, ptr nonnull %str) #6
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %c) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
