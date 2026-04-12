; ModuleID = '<stdin>'
source_filename = "/tmp/tmpaj9od0uh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [20002 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 80008, ptr noundef nonnull align 16 %a) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(80008) %a, i8 noundef 0, i64 noundef 80008, i1 noundef false) #5
  store i32 1, ptr %a, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i64 4
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0)
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc21 ], [ 2, %entry ]
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc21 ], [ 1, %entry ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp.not = icmp sgt i64 %indvars.iv2, %2
  br i1 %cmp.not, label %for.end22, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw [20002 x i32], ptr %a, i64 0, i64 %indvars.iv2
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx4)
  %3 = add nsw i64 %indvars.iv2, -1
  %4 = trunc nuw nsw i64 %3 to i32
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ %4, %for.body ], [ %dec, %for.inc ]
  %k.0 = phi i32 [ 0, %for.body ], [ %add, %for.inc ]
  %exitcond.not = icmp eq i32 %k.0, %indvars.iv
  br i1 %exitcond.not, label %for.end, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %5 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %idxprom11 = zext nneg i32 %j.0 to i64
  %arrayidx12 = getelementptr inbounds nuw [20002 x i32], ptr %a, i64 0, i64 %idxprom11
  %6 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %5, %6
  br i1 %cmp13, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body8
  %add = add nuw i32 %k.0, 1
  %dec = add nsw i32 %j.0, -1
  br label %for.cond6, !llvm.loop !9

for.end:                                          ; preds = %for.body8, %for.cond6
  %k.0.lcssa = phi i32 [ %k.0, %for.body8 ], [ %indvars.iv, %for.cond6 ]
  %7 = zext i32 %k.0.lcssa to i64
  %cmp15 = icmp eq i64 %3, %7
  br i1 %cmp15, label %if.then16, label %for.inc21

if.then16:                                        ; preds = %for.end
  %8 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %call19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  br label %for.inc21

for.inc21:                                        ; preds = %for.end, %if.then16
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.end22:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 80008, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn }
attributes #5 = { nofree willreturn }
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
