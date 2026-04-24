; ModuleID = '<stdin>'
source_filename = "/tmp/tmps1zcc3wi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %d = alloca double, align 8
  %s = alloca [100 x i8], align 16
  %u = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %d)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %s) #5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %u) #5
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s, ptr noundef nonnull %u)
  %0 = load i8, ptr %s, align 16, !tbaa !5
  %cmp.not26 = icmp eq i8 %0, 0
  br i1 %cmp.not26, label %for.cond4.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %scevgep = getelementptr inbounds nuw i8, ptr %s, i64 1
  %strlen = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %scevgep)
  %1 = trunc i64 %strlen to i32
  %2 = add i32 %1, 1
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body.preheader, %entry
  %t.0.lcssa = phi i32 [ 0, %entry ], [ %2, %for.body.preheader ]
  %3 = load i8, ptr %u, align 16, !tbaa !5
  %cmp8.not29 = icmp eq i8 %3, 0
  br i1 %cmp8.not29, label %for.end13, label %for.body9.preheader

for.body9.preheader:                              ; preds = %for.cond4.preheader
  %scevgep38 = getelementptr inbounds nuw i8, ptr %u, i64 1
  %strlen39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %scevgep38)
  %4 = trunc i64 %strlen39 to i32
  %5 = add i32 %4, 1
  br label %for.end13

for.end13:                                        ; preds = %for.body9.preheader, %for.cond4.preheader
  %r.0.lcssa = phi i32 [ 0, %for.cond4.preheader ], [ %5, %for.body9.preheader ]
  %cmp14.not = icmp eq i32 %r.0.lcssa, %t.0.lcssa
  br i1 %cmp14.not, label %for.cond16, label %cleanup

for.cond16:                                       ; preds = %for.end13, %if.else64
  %6 = phi i8 [ %.pre, %if.else64 ], [ %0, %for.end13 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else64 ], [ 0, %for.end13 ]
  %f.0 = phi i32 [ %spec.select, %if.else64 ], [ 0, %for.end13 ]
  switch i8 %6, label %cleanup [
    i8 0, label %for.end78
    i8 65, label %if.else42
    i8 84, label %if.else42
    i8 67, label %if.else42
    i8 71, label %if.else42
  ]

if.else42:                                        ; preds = %for.cond16, %for.cond16, %for.cond16, %for.cond16
  %arrayidx44 = getelementptr inbounds nuw [100 x i8], ptr %u, i64 0, i64 %indvars.iv
  %7 = load i8, ptr %arrayidx44, align 1, !tbaa !5
  switch i8 %7, label %cleanup [
    i8 65, label %if.else64
    i8 84, label %if.else64
    i8 67, label %if.else64
    i8 71, label %if.else64
  ]

if.else64:                                        ; preds = %if.else42, %if.else42, %if.else42, %if.else42
  %cmp71 = icmp eq i8 %6, %7
  %inc73 = zext i1 %cmp71 to i32
  %spec.select = add nuw nsw i32 %f.0, %inc73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx18.phi.trans.insert = getelementptr inbounds nuw [100 x i8], ptr %s, i64 0, i64 %indvars.iv.next
  %.pre = load i8, ptr %arrayidx18.phi.trans.insert, align 1, !tbaa !5
  br label %for.cond16, !llvm.loop !8

for.end78:                                        ; preds = %for.cond16
  %conv79 = uitofp nneg i32 %f.0 to double
  %conv80 = uitofp nneg i32 %t.0.lcssa to double
  %div = fdiv double %conv79, %conv80
  %8 = load double, ptr %d, align 8, !tbaa !11
  %cmp81 = fcmp ult double %div, %8
  %str.str.1 = select i1 %cmp81, ptr @str, ptr @str.1
  br label %cleanup

cleanup:                                          ; preds = %if.else42, %for.cond16, %for.end78, %for.end13
  %str.sink = phi ptr [ @str.4, %for.end13 ], [ %str.str.1, %for.end78 ], [ @str.4, %for.cond16 ], [ @str.4, %if.else42 ]
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.sink)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %u) #5
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %s) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
