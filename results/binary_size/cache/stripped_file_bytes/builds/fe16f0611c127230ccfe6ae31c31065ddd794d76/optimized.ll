; ModuleID = '/tmp/tmpyhn_v25g.cpp'
source_filename = "/tmp/tmpyhn_v25g.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %y = alloca [200 x i32], align 16
  %m1 = alloca [200 x i32], align 16
  %m2 = alloca [200 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 800, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr %m1) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr %m2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [200 x i32], ptr %y, i64 0, i64 %idxprom
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [200 x i32], ptr %m1, i64 0, i64 %idxprom1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [200 x i32], ptr %m2, i64 0, i64 %idxprom3
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc23, %for.end
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %6, %7
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8

for.cond.cleanup8:                                ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  br label %for.end25

for.body9:                                        ; preds = %for.cond6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [200 x i32], ptr %y, i64 0, i64 %idxprom10
  %9 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [200 x i32], ptr %m1, i64 0, i64 %idxprom12
  %11 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %call14 = call noundef i32 @_Z8dijitianiii(i32 noundef %9, i32 noundef %11, i32 noundef 1)
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [200 x i32], ptr %y, i64 0, i64 %idxprom15
  %13 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [200 x i32], ptr %m2, i64 0, i64 %idxprom17
  %15 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %call19 = call noundef i32 @_Z8dijitianiii(i32 noundef %13, i32 noundef %15, i32 noundef 1)
  %sub = sub nsw i32 %call14, %call19
  %rem = srem i32 %sub, 7
  %cmp20 = icmp eq i32 %rem, 0
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body9
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.else:                                          ; preds = %for.body9
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc23

for.inc23:                                        ; preds = %if.end
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc24 = add nsw i32 %16, 1
  store i32 %inc24, ptr %j, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !12

for.end25:                                        ; preds = %for.cond.cleanup8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr %m2) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr %m1) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr %y) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z8dijitianiii(i32 noundef %y, i32 noundef %m, i32 noundef %day) #3 {
entry:
  %y.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %day.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4, !tbaa !5
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  store i32 %day, ptr %day.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #4
  store i32 0, ptr %d, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %k, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, ptr %k, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %4, 5
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %5, 7
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %6, 8
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %7, 10
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %for.body
  %8 = load i32, ptr %d, align 4, !tbaa !5
  %add = add nsw i32 %8, 31
  store i32 %add, ptr %d, align 4, !tbaa !5
  br label %if.end35

if.else:                                          ; preds = %lor.lhs.false9
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %9, 4
  br i1 %cmp11, label %if.then18, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.else
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %10, 6
  br i1 %cmp13, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %11, 9
  br i1 %cmp15, label %if.then18, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %12, 11
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false12, %if.else
  %13 = load i32, ptr %d, align 4, !tbaa !5
  %add19 = add nsw i32 %13, 30
  store i32 %add19, ptr %d, align 4, !tbaa !5
  br label %if.end34

if.else20:                                        ; preds = %lor.lhs.false16
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %14, 2
  br i1 %cmp21, label %if.then22, label %if.end33

if.then22:                                        ; preds = %if.else20
  %15 = load i32, ptr %y.addr, align 4, !tbaa !5
  %rem = srem i32 %15, 4
  %cmp23 = icmp eq i32 %rem, 0
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false26

land.lhs.true:                                    ; preds = %if.then22
  %16 = load i32, ptr %y.addr, align 4, !tbaa !5
  %rem24 = srem i32 %16, 100
  %cmp25 = icmp ne i32 %rem24, 0
  br i1 %cmp25, label %if.then29, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %land.lhs.true, %if.then22
  %17 = load i32, ptr %y.addr, align 4, !tbaa !5
  %rem27 = srem i32 %17, 400
  %cmp28 = icmp eq i32 %rem27, 0
  br i1 %cmp28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %lor.lhs.false26, %land.lhs.true
  %18 = load i32, ptr %d, align 4, !tbaa !5
  %add30 = add nsw i32 %18, 29
  store i32 %add30, ptr %d, align 4, !tbaa !5
  br label %if.end

if.else31:                                        ; preds = %lor.lhs.false26
  %19 = load i32, ptr %d, align 4, !tbaa !5
  %add32 = add nsw i32 %19, 28
  store i32 %add32, ptr %d, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else31, %if.then29
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.else20
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then18
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond.cleanup
  %21 = load i32, ptr %day.addr, align 4, !tbaa !5
  %22 = load i32, ptr %d, align 4, !tbaa !5
  %add36 = add nsw i32 %22, %21
  store i32 %add36, ptr %d, align 4, !tbaa !5
  %23 = load i32, ptr %d, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #4
  ret i32 %23
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = distinct !{!13, !10, !11}
