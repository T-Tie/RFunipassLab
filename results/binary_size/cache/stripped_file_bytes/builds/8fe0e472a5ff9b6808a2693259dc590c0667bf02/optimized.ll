; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyqin1hln.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.3 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %y = alloca [200 x i32], align 16
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %y) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end76, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end76 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %y, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %2 = load i32, ptr %m1, align 4, !tbaa !5
  %3 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %2, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %3, ptr %m1, align 4, !tbaa !5
  store i32 %2, ptr %m2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = phi i32 [ %2, %if.then ], [ %3, %for.body ]
  %5 = phi i32 [ %3, %if.then ], [ %2, %for.body ]
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %7 = and i32 %6, 3
  %cmp5 = icmp eq i32 %7, 0
  %rem8 = srem i32 %6, 100
  %cmp9.not = icmp eq i32 %rem8, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  br i1 %cmp9.not, label %land.lhs.true14, label %if.then19

lor.lhs.false:                                    ; preds = %if.end
  br i1 %cmp9.not, label %land.lhs.true14, label %if.else47

land.lhs.true14:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %rem17 = srem i32 %6, 400
  %cmp18 = icmp eq i32 %rem17, 0
  br i1 %cmp18, label %if.then19, label %if.else47

if.then19:                                        ; preds = %land.lhs.true14, %land.lhs.true
  switch i32 %5, label %if.else [
    i32 1, label %land.lhs.true21
    i32 2, label %land.lhs.true29
    i32 3, label %land.lhs.true33
    i32 4, label %land.lhs.true37
    i32 9, label %land.lhs.true41
  ]

land.lhs.true21:                                  ; preds = %if.then19
  %switch.selectcmp.case1 = icmp eq i32 %4, 7
  %switch.selectcmp.case2 = icmp eq i32 %4, 4
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %8 = select i1 %switch.selectcmp, ptr @str.2, ptr @str.3
  br label %if.end76

land.lhs.true29:                                  ; preds = %if.then19
  %cmp30 = icmp eq i32 %4, 8
  br i1 %cmp30, label %if.end76, label %if.else

land.lhs.true33:                                  ; preds = %if.then19
  %cmp34 = icmp eq i32 %4, 11
  br i1 %cmp34, label %if.end76, label %if.else

land.lhs.true37:                                  ; preds = %if.then19
  %cmp38 = icmp eq i32 %4, 7
  br i1 %cmp38, label %if.end76, label %if.else

land.lhs.true41:                                  ; preds = %if.then19
  %cmp42 = icmp eq i32 %4, 12
  br i1 %cmp42, label %if.end76, label %if.else

if.else:                                          ; preds = %if.then19, %land.lhs.true29, %land.lhs.true33, %land.lhs.true37, %land.lhs.true41
  br label %if.end76

if.else47:                                        ; preds = %land.lhs.true14, %lor.lhs.false
  switch i32 %5, label %if.else73 [
    i32 1, label %land.lhs.true49
    i32 2, label %land.lhs.true53
    i32 3, label %land.lhs.true61
    i32 4, label %land.lhs.true65
    i32 9, label %land.lhs.true69
  ]

land.lhs.true49:                                  ; preds = %if.else47
  %cmp50 = icmp eq i32 %4, 10
  br i1 %cmp50, label %if.end76, label %if.else73

land.lhs.true53:                                  ; preds = %if.else47
  %9 = and i32 %4, -9
  %or.cond15 = icmp eq i32 %9, 3
  br i1 %or.cond15, label %if.end76, label %if.else73

land.lhs.true61:                                  ; preds = %if.else47
  %cmp62 = icmp eq i32 %4, 11
  br i1 %cmp62, label %if.end76, label %if.else73

land.lhs.true65:                                  ; preds = %if.else47
  %cmp66 = icmp eq i32 %4, 7
  br i1 %cmp66, label %if.end76, label %if.else73

land.lhs.true69:                                  ; preds = %if.else47
  %cmp70 = icmp eq i32 %4, 12
  br i1 %cmp70, label %if.end76, label %if.else73

if.else73:                                        ; preds = %if.else47, %land.lhs.true53, %land.lhs.true49, %land.lhs.true61, %land.lhs.true65, %land.lhs.true69
  br label %if.end76

if.end76:                                         ; preds = %land.lhs.true49, %land.lhs.true53, %land.lhs.true61, %land.lhs.true65, %land.lhs.true69, %land.lhs.true29, %land.lhs.true33, %land.lhs.true37, %land.lhs.true41, %land.lhs.true21, %if.else73, %if.else
  %str.sink = phi ptr [ @str.1, %if.else73 ], [ @str.3, %if.else ], [ %8, %land.lhs.true21 ], [ @str.2, %land.lhs.true41 ], [ @str.2, %land.lhs.true37 ], [ @str.2, %land.lhs.true33 ], [ @str.2, %land.lhs.true29 ], [ @str, %land.lhs.true69 ], [ @str, %land.lhs.true65 ], [ @str, %land.lhs.true61 ], [ @str, %land.lhs.true53 ], [ @str, %land.lhs.true49 ]
  %puts = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.sink) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %y) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nofree nounwind willreturn }
attributes #5 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
