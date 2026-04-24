; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyqin1hln.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %y = alloca [200 x i32], align 16
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %0, 0
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %y, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %2 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %1, %2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %m1, align 4, !tbaa !5
  store i32 %1, ptr %m2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = phi i32 [ %1, %if.then ], [ %2, %for.body ]
  %4 = phi i32 [ %2, %if.then ], [ %1, %for.body ]
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %6 = and i32 %5, 3
  %cmp5 = icmp ne i32 %6, 0
  %rem8 = srem i32 %5, 100
  %cmp9.not = icmp eq i32 %rem8, 0
  %or.cond22 = or i1 %cmp5, %cmp9.not
  br i1 %or.cond22, label %lor.lhs.false, label %if.then19

lor.lhs.false:                                    ; preds = %if.end
  %rem17 = srem i32 %5, 400
  %7 = or i32 %rem8, %rem17
  %or.cond23 = icmp eq i32 %7, 0
  br i1 %or.cond23, label %if.then19, label %if.else47

if.then19:                                        ; preds = %lor.lhs.false, %if.end
  %cmp20 = icmp eq i32 %4, 1
  %cmp22 = icmp eq i32 %3, 4
  %or.cond = and i1 %cmp20, %cmp22
  br i1 %or.cond, label %for.inc, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.then19
  %cmp26 = icmp eq i32 %3, 7
  %or.cond1 = and i1 %cmp20, %cmp26
  br i1 %or.cond1, label %for.inc, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  %cmp28 = icmp eq i32 %4, 2
  %cmp30 = icmp eq i32 %3, 8
  %or.cond2 = and i1 %cmp28, %cmp30
  br i1 %or.cond2, label %for.inc, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %cmp32 = icmp eq i32 %4, 3
  %cmp34 = icmp eq i32 %3, 11
  %or.cond3 = and i1 %cmp32, %cmp34
  %cmp36 = icmp eq i32 %4, 4
  %or.cond4 = and i1 %cmp36, %cmp26
  %or.cond24 = or i1 %or.cond3, %or.cond4
  br i1 %or.cond24, label %for.inc, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false31
  %cmp40 = icmp eq i32 %4, 9
  %cmp42 = icmp eq i32 %3, 12
  %or.cond5 = and i1 %cmp40, %cmp42
  %spec.select = select i1 %or.cond5, ptr @str.3, ptr @str.2
  br label %for.inc

if.else47:                                        ; preds = %lor.lhs.false
  %cmp48 = icmp eq i32 %4, 1
  %cmp50 = icmp eq i32 %3, 10
  %or.cond6 = and i1 %cmp48, %cmp50
  br i1 %or.cond6, label %for.inc, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.else47
  %cmp52 = icmp eq i32 %4, 2
  %cmp54 = icmp eq i32 %3, 3
  %or.cond7 = and i1 %cmp52, %cmp54
  br i1 %or.cond7, label %for.inc, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false51
  %cmp58 = icmp eq i32 %3, 11
  %8 = and i32 %4, -2
  %9 = icmp eq i32 %8, 2
  %or.cond25 = and i1 %9, %cmp58
  br i1 %or.cond25, label %for.inc, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false55
  %cmp64 = icmp eq i32 %4, 4
  %cmp66 = icmp eq i32 %3, 7
  %or.cond10 = and i1 %cmp64, %cmp66
  br i1 %or.cond10, label %for.inc, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false63
  %cmp68 = icmp eq i32 %4, 9
  %cmp70 = icmp eq i32 %3, 12
  %or.cond11 = and i1 %cmp68, %cmp70
  %spec.select30 = select i1 %or.cond11, ptr @str.3, ptr @str.2
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false67, %lor.lhs.false39, %if.else47, %lor.lhs.false51, %lor.lhs.false55, %lor.lhs.false63, %if.then19, %lor.lhs.false23, %lor.lhs.false27, %lor.lhs.false31
  %str.2.sink = phi ptr [ @str.3, %lor.lhs.false31 ], [ @str.3, %lor.lhs.false27 ], [ @str.3, %lor.lhs.false23 ], [ @str.3, %if.then19 ], [ @str.3, %lor.lhs.false63 ], [ @str.3, %lor.lhs.false55 ], [ @str.3, %lor.lhs.false51 ], [ @str.3, %if.else47 ], [ %spec.select, %lor.lhs.false39 ], [ %spec.select30, %lor.lhs.false67 ]
  %puts20 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %11
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m1) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
