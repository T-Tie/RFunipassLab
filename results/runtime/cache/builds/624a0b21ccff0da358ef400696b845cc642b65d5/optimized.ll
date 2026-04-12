; ModuleID = '<stdin>'
source_filename = "/tmp/tmptw4t7md8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %count = alloca [128 x i32], align 16
  %s = alloca [301 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %count) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %count, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(i64 301, ptr nonnull %s) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [301 x i8], ptr %s, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %for.cond22, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = and i8 %0, -33
  %2 = add i8 %1, -65
  %or.cond15 = icmp ult i8 %2, 26
  br i1 %or.cond15, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom19 = zext nneg i8 %0 to i64
  %arrayidx20 = getelementptr inbounds nuw [128 x i32], ptr %count, i64 0, i64 %idxprom19
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !8
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %arrayidx20, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.cond22:                                       ; preds = %for.cond, %for.inc34
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc34 ], [ 0, %for.cond ]
  %c.0 = phi i32 [ %c.1, %for.inc34 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv17, 128
  br i1 %exitcond.not, label %for.end36, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %arrayidx26 = getelementptr inbounds nuw [128 x i32], ptr %count, i64 0, i64 %indvars.iv17
  %4 = load i32, ptr %arrayidx26, align 4, !tbaa !8
  %tobool27.not = icmp eq i32 %4, 0
  br i1 %tobool27.not, label %for.inc34, label %if.then28

if.then28:                                        ; preds = %for.body24
  %5 = trunc nuw nsw i64 %indvars.iv17 to i32
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %5, i32 noundef %4)
  %inc32 = add nsw i32 %c.0, 1
  br label %for.inc34

for.inc34:                                        ; preds = %for.body24, %if.then28
  %c.1 = phi i32 [ %inc32, %if.then28 ], [ %c.0, %for.body24 ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond22, !llvm.loop !13

for.end36:                                        ; preds = %for.cond22
  %cmp37 = icmp eq i32 %c.0, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %for.end36
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %for.end36
  call void @llvm.lifetime.end.p0(i64 301, ptr nonnull %s) #6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %count) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
