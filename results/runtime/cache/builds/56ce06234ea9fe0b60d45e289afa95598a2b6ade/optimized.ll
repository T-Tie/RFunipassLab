; ModuleID = '<stdin>'
source_filename = "/tmp/tmppfbmuh7n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %year) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %m1, ptr noundef %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %2 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %1, %2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %m1, align 4, !tbaa !5
  store i32 %1, ptr %m2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i32, ptr %m1, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.end
  %m.0 = phi i32 [ %3, %if.end ], [ %inc, %for.inc ]
  %diff.0 = phi i32 [ 0, %if.end ], [ %diff.1, %for.inc ]
  %4 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %m.0, %4
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  switch i32 %m.0, label %for.inc [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 5, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 10, label %sw.bb
    i32 4, label %sw.bb6
    i32 6, label %sw.bb6
    i32 9, label %sw.bb6
    i32 11, label %sw.bb6
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.body5, %for.body5, %for.body5, %for.body5, %for.body5, %for.body5
  %add = add nsw i32 %diff.0, 31
  br label %for.inc

sw.bb6:                                           ; preds = %for.body5, %for.body5, %for.body5, %for.body5
  %add7 = add nsw i32 %diff.0, 30
  br label %for.inc

sw.bb8:                                           ; preds = %for.body5
  %5 = load i32, ptr %year, align 4, !tbaa !5
  %rem = srem i32 %5, 4
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %sw.bb8
  %rem10 = srem i32 %5, 100
  %cmp11 = icmp ne i32 %rem10, 0
  br i1 %cmp11, label %if.end17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %sw.bb8
  %rem12 = srem i32 %5, 400
  %cmp13 = icmp eq i32 %rem12, 0
  br i1 %cmp13, label %if.end17, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %lor.lhs.false, %if.else
  %.sink = phi i32 [ 28, %if.else ], [ 29, %lor.lhs.false ], [ 29, %land.lhs.true ]
  %add16 = add nsw i32 %diff.0, %.sink
  br label %for.inc

for.inc:                                          ; preds = %for.body5, %sw.bb, %sw.bb6, %if.end17
  %diff.1 = phi i32 [ %diff.0, %for.body5 ], [ %add, %sw.bb ], [ %add7, %sw.bb6 ], [ %add16, %if.end17 ]
  %inc = add nsw i32 %m.0, 1
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  %rem18 = srem i32 %diff.0, 7
  %cmp19 = icmp eq i32 %rem18, 0
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %for.end
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc25

if.else22:                                        ; preds = %for.end
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %for.inc25

for.inc25:                                        ; preds = %if.then20, %if.else22
  %inc26 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end27:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %year) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!12 = distinct !{!12, !10, !11}
