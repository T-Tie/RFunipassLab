; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8zpu5yfo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.5 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.6 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.7 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc164, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc165, %for.inc164 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end166

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %y) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %m1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %m2) #6
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp2 = icmp eq i32 %2, 0
  %rem3 = srem i32 %1, 100
  %cmp4 = icmp ne i32 %rem3, 0
  %or.cond = and i1 %cmp2, %cmp4
  %rem5 = srem i32 %1, 400
  %cmp6 = icmp eq i32 %rem5, 0
  %or.cond61 = or i1 %cmp6, %or.cond
  %3 = load i32, ptr %m1, align 4, !tbaa !5
  %smax94 = call i32 @llvm.smax.i32(i32 %3, i32 noundef 1)
  br i1 %or.cond61, label %for.cond7, label %for.cond85

for.cond7:                                        ; preds = %for.body, %for.inc
  %j.0 = phi i32 [ %inc, %for.inc ], [ 1, %for.body ]
  %n1.0 = phi i32 [ %add28, %for.inc ], [ 0, %for.body ]
  %exitcond95.not = icmp eq i32 %j.0, %smax94
  br i1 %exitcond95.not, label %for.cond30.preheader, label %for.body9

for.cond30.preheader:                             ; preds = %for.cond7
  %4 = load i32, ptr %m2, align 4, !tbaa !5
  %smax96 = call i32 @llvm.smax.i32(i32 %4, i32 noundef 1)
  br label %for.cond30

for.body9:                                        ; preds = %for.cond7
  switch i32 %j.0, label %if.else27 [
    i32 2, label %for.inc
    i32 1, label %for.inc.fold.split
    i32 3, label %for.inc.fold.split
    i32 5, label %for.inc.fold.split
    i32 7, label %for.inc.fold.split
    i32 8, label %for.inc.fold.split
    i32 10, label %for.inc.fold.split
    i32 12, label %for.inc.fold.split
  ]

if.else27:                                        ; preds = %for.body9
  br label %for.inc

for.inc.fold.split:                               ; preds = %for.body9, %for.body9, %for.body9, %for.body9, %for.body9, %for.body9, %for.body9
  br label %for.inc

for.inc:                                          ; preds = %for.body9, %for.inc.fold.split, %if.else27
  %.sink4.sink = phi i32 [ 29, %for.body9 ], [ 30, %if.else27 ], [ 31, %for.inc.fold.split ]
  %add28 = add nuw nsw i32 %.sink4.sink, %n1.0
  %inc = add nuw i32 %j.0, 1
  br label %for.cond7, !llvm.loop !9

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc56
  %j.1 = phi i32 [ %inc57, %for.inc56 ], [ 1, %for.cond30.preheader ]
  %n2.0 = phi i32 [ %add53, %for.inc56 ], [ 0, %for.cond30.preheader ]
  %exitcond97.not = icmp eq i32 %j.1, %smax96
  br i1 %exitcond97.not, label %for.end58, label %for.body32

for.body32:                                       ; preds = %for.cond30
  switch i32 %j.1, label %if.else52 [
    i32 2, label %for.inc56
    i32 1, label %for.inc56.fold.split
    i32 3, label %for.inc56.fold.split
    i32 5, label %for.inc56.fold.split
    i32 7, label %for.inc56.fold.split
    i32 8, label %for.inc56.fold.split
    i32 10, label %for.inc56.fold.split
    i32 12, label %for.inc56.fold.split
  ]

if.else52:                                        ; preds = %for.body32
  br label %for.inc56

for.inc56.fold.split:                             ; preds = %for.body32, %for.body32, %for.body32, %for.body32, %for.body32, %for.body32, %for.body32
  br label %for.inc56

for.inc56:                                        ; preds = %for.body32, %for.inc56.fold.split, %if.else52
  %.sink3.sink = phi i32 [ 29, %for.body32 ], [ 30, %if.else52 ], [ 31, %for.inc56.fold.split ]
  %add53 = add nuw nsw i32 %.sink3.sink, %n2.0
  %inc57 = add nuw i32 %j.1, 1
  br label %for.cond30, !llvm.loop !12

for.end58:                                        ; preds = %for.cond30
  %cmp59 = icmp samesign ult i32 %n1.0, %n2.0
  br i1 %cmp59, label %if.then60, label %if.end68

if.then60:                                        ; preds = %for.end58
  %sub = sub nuw nsw i32 %n2.0, %n1.0
  %rem61 = urem i32 %sub, 7
  %cmp62 = icmp eq i32 %rem61, 0
  %str.5.str.4 = select i1 %cmp62, ptr @str.5, ptr @str.4
  %puts89 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.5.str.4) #6
  br label %if.end68

if.end68:                                         ; preds = %if.then60, %for.end58
  %cmp69 = icmp samesign ugt i32 %n1.0, %n2.0
  br i1 %cmp69, label %if.then70, label %for.inc164

if.then70:                                        ; preds = %if.end68
  %sub71 = sub nuw nsw i32 %n1.0, %n2.0
  %rem72 = urem i32 %sub71, 7
  %cmp73 = icmp eq i32 %rem72, 0
  %str.7.str.6 = select i1 %cmp73, ptr @str.7, ptr @str.6
  br label %for.inc164.sink.split

for.cond85:                                       ; preds = %for.body, %for.inc109
  %j81.0 = phi i32 [ %inc110, %for.inc109 ], [ 1, %for.body ]
  %n182.0 = phi i32 [ %add106, %for.inc109 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i32 %j81.0, %smax94
  br i1 %exitcond.not, label %for.cond112.preheader, label %for.body87

for.cond112.preheader:                            ; preds = %for.cond85
  %5 = load i32, ptr %m2, align 4, !tbaa !5
  %smax92 = call i32 @llvm.smax.i32(i32 %5, i32 noundef 1)
  br label %for.cond112

for.body87:                                       ; preds = %for.cond85
  switch i32 %j81.0, label %if.else105 [
    i32 2, label %for.inc109
    i32 1, label %for.inc109.fold.split
    i32 3, label %for.inc109.fold.split
    i32 5, label %for.inc109.fold.split
    i32 7, label %for.inc109.fold.split
    i32 8, label %for.inc109.fold.split
    i32 10, label %for.inc109.fold.split
  ]

if.else105:                                       ; preds = %for.body87
  br label %for.inc109

for.inc109.fold.split:                            ; preds = %for.body87, %for.body87, %for.body87, %for.body87, %for.body87, %for.body87
  br label %for.inc109

for.inc109:                                       ; preds = %for.body87, %for.inc109.fold.split, %if.else105
  %.sink2.sink = phi i32 [ 28, %for.body87 ], [ 30, %if.else105 ], [ 31, %for.inc109.fold.split ]
  %add106 = add nuw nsw i32 %.sink2.sink, %n182.0
  %inc110 = add nuw i32 %j81.0, 1
  br label %for.cond85, !llvm.loop !13

for.cond112:                                      ; preds = %for.cond112.preheader, %for.inc138
  %j81.1 = phi i32 [ %inc139, %for.inc138 ], [ 1, %for.cond112.preheader ]
  %n283.0 = phi i32 [ %add135, %for.inc138 ], [ 0, %for.cond112.preheader ]
  %exitcond93.not = icmp eq i32 %j81.1, %smax92
  br i1 %exitcond93.not, label %for.end140, label %for.body114

for.body114:                                      ; preds = %for.cond112
  switch i32 %j81.1, label %if.else134 [
    i32 2, label %for.inc138
    i32 1, label %for.inc138.fold.split
    i32 3, label %for.inc138.fold.split
    i32 5, label %for.inc138.fold.split
    i32 7, label %for.inc138.fold.split
    i32 8, label %for.inc138.fold.split
    i32 10, label %for.inc138.fold.split
    i32 12, label %for.inc138.fold.split
  ]

if.else134:                                       ; preds = %for.body114
  br label %for.inc138

for.inc138.fold.split:                            ; preds = %for.body114, %for.body114, %for.body114, %for.body114, %for.body114, %for.body114, %for.body114
  br label %for.inc138

for.inc138:                                       ; preds = %for.body114, %for.inc138.fold.split, %if.else134
  %.sink1.sink = phi i32 [ 28, %for.body114 ], [ 30, %if.else134 ], [ 31, %for.inc138.fold.split ]
  %add135 = add nuw nsw i32 %.sink1.sink, %n283.0
  %inc139 = add nuw i32 %j81.1, 1
  br label %for.cond112, !llvm.loop !14

for.end140:                                       ; preds = %for.cond112
  %cmp141 = icmp samesign ult i32 %n182.0, %n283.0
  br i1 %cmp141, label %if.then142, label %if.end151

if.then142:                                       ; preds = %for.end140
  %sub143 = sub nuw nsw i32 %n283.0, %n182.0
  %rem144 = urem i32 %sub143, 7
  %cmp145 = icmp eq i32 %rem144, 0
  %str.1.str = select i1 %cmp145, ptr @str.1, ptr @str
  %puts85 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.str) #6
  br label %if.end151

if.end151:                                        ; preds = %if.then142, %for.end140
  %cmp152 = icmp samesign ugt i32 %n182.0, %n283.0
  br i1 %cmp152, label %if.then153, label %for.inc164

if.then153:                                       ; preds = %if.end151
  %sub154 = sub nuw nsw i32 %n182.0, %n283.0
  %rem155 = urem i32 %sub154, 7
  %cmp156 = icmp eq i32 %rem155, 0
  %str.3.str.2 = select i1 %cmp156, ptr @str.3, ptr @str.2
  br label %for.inc164.sink.split

for.inc164.sink.split:                            ; preds = %if.then153, %if.then70
  %str.7.sink = phi ptr [ %str.7.str.6, %if.then70 ], [ %str.3.str.2, %if.then153 ]
  %puts91 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.7.sink) #6
  br label %for.inc164

for.inc164:                                       ; preds = %for.inc164.sink.split, %if.end68, %if.end151
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y) #6
  %inc165 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.end166:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
