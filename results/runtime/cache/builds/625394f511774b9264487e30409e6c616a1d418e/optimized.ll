; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl_vybhzh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  %invariant.gep = getelementptr i8, ptr %vla1, i64 -4
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %5 = phi i32 [ %.pre, %for.inc31 ], [ %3, %entry ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc31 ], [ 0, %entry ]
  %jn.0 = phi i32 [ %jn.1, %for.inc31 ], [ 0, %entry ]
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv4, %6
  br i1 %cmp, label %for.body, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %jn.0, i32 noundef 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond33

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv4
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %8 = and i32 %7, -2147483647
  %cmp5 = icmp eq i32 %8, 1
  br i1 %cmp5, label %if.then, label %for.inc31

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %jn.0, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom8
  store i32 %7, ptr %arrayidx9, align 4, !tbaa !5
  %9 = zext i32 %add to i64
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %9, %if.then ]
  %10 = trunc nuw i64 %indvars.iv to i32
  %cmp11 = icmp sgt i32 %10, 1
  br i1 %cmp11, label %for.body13, label %for.inc31

for.body13:                                       ; preds = %for.cond10
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv
  %11 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %gep = getelementptr i32, ptr %invariant.gep, i64 %indvars.iv
  %12 = load i32, ptr %gep, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %11, %12
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body13
  store i32 %11, ptr %gep, align 4, !tbaa !5
  store i32 %12, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body13, %if.then19
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br label %for.cond10, !llvm.loop !9

for.inc31:                                        ; preds = %for.cond10, %for.body
  %jn.1 = phi i32 [ %jn.0, %for.body ], [ %add, %for.cond10 ]
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.cond33:                                       ; preds = %for.cond33.preheader, %for.inc40
  %indvars.iv7 = phi i64 [ 1, %for.cond33.preheader ], [ %indvars.iv.next8, %for.inc40 ]
  %exitcond.not = icmp eq i64 %indvars.iv7, %wide.trip.count
  br i1 %exitcond.not, label %for.end42, label %for.inc40

for.inc40:                                        ; preds = %for.cond33
  %arrayidx38 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv7
  %13 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %13)
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond33, !llvm.loop !13

for.end42:                                        ; preds = %for.cond33
  %idxprom43 = sext i32 %jn.0 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom43
  %14 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %14)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }

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
