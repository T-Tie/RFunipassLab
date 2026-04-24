; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmegoetrv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca [200 x i32], align 16
  %mon1 = alloca [200 x i32], align 16
  %mon2 = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull %year) #4
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull %mon1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull %mon2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond6, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %year, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %mon1, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %mon2, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond, %for.inc395
  %2 = phi i32 [ %.pre, %for.inc395 ], [ %0, %for.cond ]
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %for.inc395 ], [ 1, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp7.not = icmp sgt i64 %indvars.iv244, %3
  br i1 %cmp7.not, label %for.end397, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [200 x i32], ptr %year, i64 0, i64 %indvars.iv244
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !12
  %rem = srem i32 %4, 100
  %cmp11 = icmp ne i32 %rem, 0
  %5 = and i32 %4, 3
  %cmp15 = icmp eq i32 %5, 0
  %or.cond = and i1 %cmp11, %cmp15
  %rem18 = srem i32 %4, 400
  %cmp19 = icmp eq i32 %rem18, 0
  %or.cond232 = or i1 %cmp19, %or.cond
  %arrayidx21 = getelementptr inbounds nuw [200 x i32], ptr %mon1, i64 0, i64 %indvars.iv244
  %6 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !12
  br i1 %or.cond232, label %if.then, label %if.else205

if.then:                                          ; preds = %for.body8
  switch i32 %6, label %if.end102 [
    i32 1, label %if.end102.sink.split
    i32 2, label %if.then29
    i32 3, label %if.then36
    i32 4, label %if.then43
    i32 5, label %if.then50
    i32 6, label %if.then57
    i32 7, label %if.then64
    i32 8, label %if.then71
    i32 9, label %if.then78
    i32 10, label %if.then85
    i32 11, label %if.then92
    i32 12, label %if.then99
  ]

if.then29:                                        ; preds = %if.then
  br label %if.end102.sink.split

if.then36:                                        ; preds = %if.then
  br label %if.end102.sink.split

if.then43:                                        ; preds = %if.then
  br label %if.end102.sink.split

if.then50:                                        ; preds = %if.then
  br label %if.end102.sink.split

if.then57:                                        ; preds = %if.then
  br label %if.end102.sink.split

if.then64:                                        ; preds = %if.then
  br label %if.end102.sink.split

if.then71:                                        ; preds = %if.then
  br label %if.end102.sink.split

if.then78:                                        ; preds = %if.then
  br label %if.end102.sink.split

if.then85:                                        ; preds = %if.then
  br label %if.end102.sink.split

if.then92:                                        ; preds = %if.then
  br label %if.end102.sink.split

if.then99:                                        ; preds = %if.then
  br label %if.end102.sink.split

if.end102.sink.split:                             ; preds = %if.then, %if.then99, %if.then92, %if.then85, %if.then78, %if.then71, %if.then64, %if.then57, %if.then50, %if.then43, %if.then36, %if.then29
  %.sink = phi i32 [ 32, %if.then29 ], [ 61, %if.then36 ], [ 92, %if.then43 ], [ 122, %if.then50 ], [ 153, %if.then57 ], [ 183, %if.then64 ], [ 214, %if.then71 ], [ 245, %if.then78 ], [ 275, %if.then85 ], [ 306, %if.then92 ], [ 336, %if.then99 ], [ 1, %if.then ]
  store i32 %.sink, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end102

if.end102:                                        ; preds = %if.end102.sink.split, %if.then
  %arrayidx104 = getelementptr inbounds nuw [200 x i32], ptr %mon2, i64 0, i64 %indvars.iv244
  %7 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  switch i32 %7, label %if.end186 [
    i32 1, label %if.end186.sink.split
    i32 2, label %if.then113
    i32 3, label %if.end144.thread250
    i32 4, label %if.end144.thread250.fold.split
    i32 5, label %if.end144.thread
    i32 6, label %if.end144.thread.fold.split
    i32 7, label %if.end158.thread
    i32 8, label %if.end158.thread.fold.split
    i32 9, label %if.end172.thread
    i32 10, label %if.end172.thread.fold.split
    i32 11, label %if.end179.thread
    i32 12, label %if.then183
  ]

if.then113:                                       ; preds = %if.end102
  br label %if.end186.sink.split

if.end144.thread250.fold.split:                   ; preds = %if.end102
  br label %if.end186.sink.split

if.end144.thread250:                              ; preds = %if.end102
  br label %if.end186.sink.split

if.end144.thread.fold.split:                      ; preds = %if.end102
  br label %if.end186.sink.split

if.end144.thread:                                 ; preds = %if.end102
  br label %if.end186.sink.split

if.end158.thread.fold.split:                      ; preds = %if.end102
  br label %if.end186.sink.split

if.end158.thread:                                 ; preds = %if.end102
  br label %if.end186.sink.split

if.end172.thread.fold.split:                      ; preds = %if.end102
  br label %if.end186.sink.split

if.end172.thread:                                 ; preds = %if.end102
  br label %if.end186.sink.split

if.end179.thread:                                 ; preds = %if.end102
  br label %if.end186.sink.split

if.then183:                                       ; preds = %if.end102
  br label %if.end186.sink.split

if.end186.sink.split:                             ; preds = %if.end172.thread.fold.split, %if.end158.thread.fold.split, %if.end144.thread.fold.split, %if.end144.thread250.fold.split, %if.end102, %if.then183, %if.end179.thread, %if.then113, %if.end172.thread, %if.end144.thread, %if.end144.thread250, %if.end158.thread
  %storemerge239.sink = phi i32 [ 32, %if.then113 ], [ 306, %if.end179.thread ], [ 336, %if.then183 ], [ 1, %if.end102 ], [ 92, %if.end144.thread250.fold.split ], [ 61, %if.end144.thread250 ], [ 153, %if.end144.thread.fold.split ], [ 122, %if.end144.thread ], [ 214, %if.end158.thread.fold.split ], [ 183, %if.end158.thread ], [ 275, %if.end172.thread.fold.split ], [ 245, %if.end172.thread ]
  store i32 %storemerge239.sink, ptr %arrayidx104, align 4, !tbaa !5
  br label %if.end186

if.end186:                                        ; preds = %if.end186.sink.split, %if.end102
  %8 = phi i32 [ %7, %if.end102 ], [ %storemerge239.sink, %if.end186.sink.split ]
  %sub = sub nsw i32 %8, %6
  %rem191 = srem i32 %sub, 7
  %cmp192 = icmp eq i32 %rem191, 0
  br i1 %cmp192, label %for.inc395, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %if.end186
  %sub198 = sub nsw i32 %6, %8
  %rem199 = srem i32 %sub198, 7
  %cmp200 = icmp eq i32 %rem199, 0
  %spec.select = select i1 %cmp200, ptr @str.3, ptr @str.2
  br label %for.inc395

if.else205:                                       ; preds = %for.body8
  switch i32 %6, label %if.end289 [
    i32 1, label %if.end289.sink.split
    i32 2, label %if.then216
    i32 3, label %if.then223
    i32 4, label %if.then230
    i32 5, label %if.then237
    i32 6, label %if.then244
    i32 7, label %if.then251
    i32 8, label %if.then258
    i32 9, label %if.then265
    i32 10, label %if.then272
    i32 11, label %if.then279
    i32 12, label %if.then286
  ]

if.then216:                                       ; preds = %if.else205
  br label %if.end289.sink.split

if.then223:                                       ; preds = %if.else205
  br label %if.end289.sink.split

if.then230:                                       ; preds = %if.else205
  br label %if.end289.sink.split

if.then237:                                       ; preds = %if.else205
  br label %if.end289.sink.split

if.then244:                                       ; preds = %if.else205
  br label %if.end289.sink.split

if.then251:                                       ; preds = %if.else205
  br label %if.end289.sink.split

if.then258:                                       ; preds = %if.else205
  br label %if.end289.sink.split

if.then265:                                       ; preds = %if.else205
  br label %if.end289.sink.split

if.then272:                                       ; preds = %if.else205
  br label %if.end289.sink.split

if.then279:                                       ; preds = %if.else205
  br label %if.end289.sink.split

if.then286:                                       ; preds = %if.else205
  br label %if.end289.sink.split

if.end289.sink.split:                             ; preds = %if.else205, %if.then286, %if.then279, %if.then272, %if.then265, %if.then258, %if.then251, %if.then244, %if.then237, %if.then230, %if.then223, %if.then216
  %.sink288 = phi i32 [ 32, %if.then216 ], [ 60, %if.then223 ], [ 91, %if.then230 ], [ 121, %if.then237 ], [ 152, %if.then244 ], [ 182, %if.then251 ], [ 213, %if.then258 ], [ 244, %if.then265 ], [ 274, %if.then272 ], [ 305, %if.then279 ], [ 335, %if.then286 ], [ 1, %if.else205 ]
  store i32 %.sink288, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end289

if.end289:                                        ; preds = %if.end289.sink.split, %if.else205
  %arrayidx291 = getelementptr inbounds nuw [200 x i32], ptr %mon2, i64 0, i64 %indvars.iv244
  %9 = load i32, ptr %arrayidx291, align 4, !tbaa !5
  switch i32 %9, label %if.end373 [
    i32 1, label %if.end373.sink.split
    i32 2, label %if.then300
    i32 3, label %if.end331.thread270
    i32 4, label %if.end331.thread270.fold.split
    i32 5, label %if.end331.thread
    i32 6, label %if.end331.thread.fold.split
    i32 7, label %if.end345.thread
    i32 8, label %if.end345.thread.fold.split
    i32 9, label %if.end359.thread
    i32 10, label %if.end359.thread.fold.split
    i32 11, label %if.end366.thread
    i32 12, label %if.then370
  ]

if.then300:                                       ; preds = %if.end289
  br label %if.end373.sink.split

if.end331.thread270.fold.split:                   ; preds = %if.end289
  br label %if.end373.sink.split

if.end331.thread270:                              ; preds = %if.end289
  br label %if.end373.sink.split

if.end331.thread.fold.split:                      ; preds = %if.end289
  br label %if.end373.sink.split

if.end331.thread:                                 ; preds = %if.end289
  br label %if.end373.sink.split

if.end345.thread.fold.split:                      ; preds = %if.end289
  br label %if.end373.sink.split

if.end345.thread:                                 ; preds = %if.end289
  br label %if.end373.sink.split

if.end359.thread.fold.split:                      ; preds = %if.end289
  br label %if.end373.sink.split

if.end359.thread:                                 ; preds = %if.end289
  br label %if.end373.sink.split

if.end366.thread:                                 ; preds = %if.end289
  br label %if.end373.sink.split

if.then370:                                       ; preds = %if.end289
  br label %if.end373.sink.split

if.end373.sink.split:                             ; preds = %if.end359.thread.fold.split, %if.end345.thread.fold.split, %if.end331.thread.fold.split, %if.end331.thread270.fold.split, %if.end289, %if.then370, %if.end366.thread, %if.then300, %if.end359.thread, %if.end331.thread, %if.end331.thread270, %if.end345.thread
  %storemerge234.sink = phi i32 [ 32, %if.then300 ], [ 305, %if.end366.thread ], [ 335, %if.then370 ], [ 1, %if.end289 ], [ 91, %if.end331.thread270.fold.split ], [ 60, %if.end331.thread270 ], [ 152, %if.end331.thread.fold.split ], [ 121, %if.end331.thread ], [ 213, %if.end345.thread.fold.split ], [ 182, %if.end345.thread ], [ 274, %if.end359.thread.fold.split ], [ 244, %if.end359.thread ]
  store i32 %storemerge234.sink, ptr %arrayidx291, align 4, !tbaa !5
  br label %if.end373

if.end373:                                        ; preds = %if.end373.sink.split, %if.end289
  %10 = phi i32 [ %9, %if.end289 ], [ %storemerge234.sink, %if.end373.sink.split ]
  %sub378 = sub nsw i32 %10, %6
  %rem379 = srem i32 %sub378, 7
  %cmp380 = icmp eq i32 %rem379, 0
  br i1 %cmp380, label %for.inc395, label %lor.lhs.false381

lor.lhs.false381:                                 ; preds = %if.end373
  %sub386 = sub nsw i32 %6, %10
  %rem387 = srem i32 %sub386, 7
  %cmp388 = icmp eq i32 %rem387, 0
  %spec.select290 = select i1 %cmp388, ptr @str.1, ptr @str
  br label %for.inc395

for.inc395:                                       ; preds = %lor.lhs.false381, %lor.lhs.false193, %if.end373, %if.end186
  %str.2.sink = phi ptr [ @str.3, %if.end186 ], [ @str.1, %if.end373 ], [ %spec.select, %lor.lhs.false193 ], [ %spec.select290, %lor.lhs.false381 ]
  %puts241 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.2.sink) #5
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !13

for.end397:                                       ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %mon2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %mon1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %year) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{}
!13 = distinct !{!13, !10, !11}
