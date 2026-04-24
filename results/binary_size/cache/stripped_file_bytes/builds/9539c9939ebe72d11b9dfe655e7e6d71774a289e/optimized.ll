; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmegoetrv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@switch.table.main.4 = private unnamed_addr constant [12 x i32] [i32 1, i32 32, i32 61, i32 92, i32 122, i32 153, i32 183, i32 214, i32 245, i32 275, i32 306, i32 336], align 4
@switch.table.main.6 = private unnamed_addr constant [12 x i32] [i32 1, i32 32, i32 60, i32 91, i32 121, i32 152, i32 182, i32 213, i32 244, i32 274, i32 305, i32 335], align 4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca [200 x i32], align 16
  %mon1 = alloca [200 x i32], align 16
  %mon2 = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %year) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %mon1) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %mon2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond6, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %year, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %mon1, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %mon2, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond, %for.inc395
  %2 = phi i32 [ %.pre, %for.inc395 ], [ %0, %for.cond ]
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %for.inc395 ], [ 1, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp7.not = icmp sgt i64 %indvars.iv325, %3
  br i1 %cmp7.not, label %for.end397, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [200 x i32], ptr %year, i64 0, i64 %indvars.iv325
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %rem = srem i32 %4, 100
  %cmp11.not = icmp ne i32 %rem, 0
  %5 = and i32 %4, 3
  %cmp15 = icmp eq i32 %5, 0
  %or.cond = and i1 %cmp11.not, %cmp15
  %rem18 = srem i32 %4, 400
  %cmp19 = icmp eq i32 %rem18, 0
  %or.cond308 = or i1 %cmp19, %or.cond
  %arrayidx21 = getelementptr inbounds nuw [200 x i32], ptr %mon1, i64 0, i64 %indvars.iv325
  %6 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %switch.tableidx = add i32 %6, -1
  %7 = icmp ult i32 %switch.tableidx, 12
  br i1 %or.cond308, label %if.then, label %if.else205

if.then:                                          ; preds = %for.body8
  br i1 %7, label %switch.lookup, label %if.end102

switch.lookup:                                    ; preds = %if.then
  %8 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [12 x i32], ptr @switch.table.main.4, i64 0, i64 %8
  %switch.load = load i32, ptr %switch.gep, align 4
  store i32 %switch.load, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end102

if.end102:                                        ; preds = %if.then, %switch.lookup
  %9 = phi i32 [ %6, %if.then ], [ %switch.load, %switch.lookup ]
  %arrayidx104 = getelementptr inbounds nuw [200 x i32], ptr %mon2, i64 0, i64 %indvars.iv325
  %10 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  %switch.tableidx416 = add i32 %10, -1
  %11 = icmp ult i32 %switch.tableidx416, 12
  br i1 %11, label %switch.lookup415, label %if.end186

switch.lookup415:                                 ; preds = %if.end102
  %12 = zext nneg i32 %switch.tableidx416 to i64
  %switch.gep417 = getelementptr inbounds nuw [12 x i32], ptr @switch.table.main.4, i64 0, i64 %12
  %switch.load418 = load i32, ptr %switch.gep417, align 4
  store i32 %switch.load418, ptr %arrayidx104, align 4, !tbaa !5
  br label %if.end186

if.end186:                                        ; preds = %if.end102, %switch.lookup415
  %13 = phi i32 [ %10, %if.end102 ], [ %switch.load418, %switch.lookup415 ]
  %sub = sub nsw i32 %13, %9
  %rem191 = srem i32 %sub, 7
  %cmp192 = icmp eq i32 %rem191, 0
  br i1 %cmp192, label %for.inc395, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %if.end186
  %sub198 = sub nsw i32 %9, %13
  %rem199 = srem i32 %sub198, 7
  %cmp200 = icmp eq i32 %rem199, 0
  %spec.select = select i1 %cmp200, ptr @str.3, ptr @str.2
  br label %for.inc395

if.else205:                                       ; preds = %for.body8
  br i1 %7, label %switch.lookup419, label %if.end289

switch.lookup419:                                 ; preds = %if.else205
  %14 = zext nneg i32 %switch.tableidx to i64
  %switch.gep421 = getelementptr inbounds nuw [12 x i32], ptr @switch.table.main.6, i64 0, i64 %14
  %switch.load422 = load i32, ptr %switch.gep421, align 4
  store i32 %switch.load422, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end289

if.end289:                                        ; preds = %if.else205, %switch.lookup419
  %15 = phi i32 [ %6, %if.else205 ], [ %switch.load422, %switch.lookup419 ]
  %arrayidx291 = getelementptr inbounds nuw [200 x i32], ptr %mon2, i64 0, i64 %indvars.iv325
  %16 = load i32, ptr %arrayidx291, align 4, !tbaa !5
  %switch.tableidx424 = add i32 %16, -1
  %17 = icmp ult i32 %switch.tableidx424, 12
  br i1 %17, label %switch.lookup423, label %if.end373

switch.lookup423:                                 ; preds = %if.end289
  %18 = zext nneg i32 %switch.tableidx424 to i64
  %switch.gep425 = getelementptr inbounds nuw [12 x i32], ptr @switch.table.main.6, i64 0, i64 %18
  %switch.load426 = load i32, ptr %switch.gep425, align 4
  store i32 %switch.load426, ptr %arrayidx291, align 4, !tbaa !5
  br label %if.end373

if.end373:                                        ; preds = %if.end289, %switch.lookup423
  %19 = phi i32 [ %16, %if.end289 ], [ %switch.load426, %switch.lookup423 ]
  %sub378 = sub nsw i32 %19, %15
  %rem379 = srem i32 %sub378, 7
  %cmp380 = icmp eq i32 %rem379, 0
  br i1 %cmp380, label %for.inc395, label %lor.lhs.false381

lor.lhs.false381:                                 ; preds = %if.end373
  %sub386 = sub nsw i32 %15, %19
  %rem387 = srem i32 %sub386, 7
  %cmp388 = icmp eq i32 %rem387, 0
  %spec.select414 = select i1 %cmp388, ptr @str.3, ptr @str.2
  br label %for.inc395

for.inc395:                                       ; preds = %lor.lhs.false381, %lor.lhs.false193, %if.end373, %if.end186
  %str.2.sink = phi ptr [ @str.3, %if.end186 ], [ @str.3, %if.end373 ], [ %spec.select, %lor.lhs.false193 ], [ %spec.select414, %lor.lhs.false381 ]
  %puts115 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !12

for.end397:                                       ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %mon2) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %mon1) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %year) #4
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
!12 = distinct !{!12, !10, !11}
