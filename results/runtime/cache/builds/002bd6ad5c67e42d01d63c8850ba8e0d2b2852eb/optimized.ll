; ModuleID = '<stdin>'
source_filename = "/tmp/tmphhthk0zo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6stubidiiPA150_i(i32 noundef %x, i32 noundef %y, ptr noundef %z) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %x
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  br label %for.end9

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, %y
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  br label %for.end

for.body4:                                        ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [150 x i32], ptr %z, i64 %idxprom
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [150 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx6)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup3
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %0, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %a = alloca [150 x [150 x i32]], align 16
  %b = alloca [150 x [150 x i32]], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %z = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 90000, ptr noundef nonnull align 16 captures(none) dereferenceable(90000) %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 90000, ptr noundef nonnull align 16 captures(none) dereferenceable(90000) %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %p) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %q) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %z) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef align 4 %m, ptr noundef align 4 %n)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  call void @_Z6stubidiiPA150_i(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 16 dereferenceable(90000) %a)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %q, ptr noundef %p)
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = load i32, ptr %p, align 4, !tbaa !5
  call void @_Z6stubidiiPA150_i(i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 16 dereferenceable(90000) %b)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %m, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc26, %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %p, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body5, label %for.end28

for.body5:                                        ; preds = %for.cond3
  store i32 0, ptr %z, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body5
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %10 = load i32, ptr %z, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [150 x [150 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [150 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %11 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %arrayidx12 = getelementptr inbounds [150 x [150 x i32]], ptr %b, i64 0, i64 %idxprom9
  %idxprom13 = sext i32 %6 to i64
  %arrayidx14 = getelementptr inbounds [150 x i32], ptr %arrayidx12, i64 0, i64 %idxprom13
  %12 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %mul = mul nsw i32 %11, %12
  %add = add nsw i32 %10, %mul
  store i32 %add, ptr %z, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !13

for.end:                                          ; preds = %for.cond6
  %sub = sub nsw i32 %7, 1
  %cmp15 = icmp slt i32 %6, %sub
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %13 = load i32, ptr %z, align 4, !tbaa !5
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %13)
  br label %if.end25

if.else:                                          ; preds = %for.end
  %cmp18 = icmp eq i32 %6, %sub
  br i1 %cmp18, label %land.lhs.true, label %if.else23

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, ptr %m, align 4, !tbaa !5
  %sub19 = sub nsw i32 %14, 1
  %cmp20 = icmp slt i32 %4, %sub19
  br i1 %cmp20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %land.lhs.true
  %15 = load i32, ptr %z, align 4, !tbaa !5
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %15)
  br label %if.end

if.else23:                                        ; preds = %land.lhs.true, %if.else
  %16 = load i32, ptr %z, align 4, !tbaa !5
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.else23, %if.then21
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %inc27 = add nsw i32 %6, 1
  store i32 %inc27, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !14

for.end28:                                        ; preds = %for.cond3
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %4, 1
  store i32 %inc30, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end31:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %z) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %q) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %p) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m) #5
  call void @llvm.lifetime.end.p0(i64 noundef 90000, ptr noundef captures(none) %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 90000, ptr noundef captures(none) %a) #5
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
