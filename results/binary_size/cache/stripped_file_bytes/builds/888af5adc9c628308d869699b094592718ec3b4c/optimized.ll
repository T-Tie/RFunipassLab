; ModuleID = '/tmp/tmpq120esm_.cpp'
source_filename = "/tmp/tmpq120esm_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@month = dso_local global [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3runi(i32 noundef %year) #0 {
entry:
  %retval = alloca i32, align 4
  %year.addr = alloca i32, align 4
  store i32 %year, ptr %year.addr, align 4, !tbaa !5
  %0 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem = srem i32 %0, 4
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem1 = srem i32 %1, 4
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %if.then3, label %if.end11

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem4 = srem i32 %2, 100
  %cmp5 = icmp eq i32 %rem4, 0
  br i1 %cmp5, label %if.then6, label %if.else10

if.then6:                                         ; preds = %if.then3
  %3 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem7 = srem i32 %3, 400
  %cmp8 = icmp eq i32 %rem7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then6
  store i32 0, ptr %retval, align 4
  br label %return

if.else10:                                        ; preds = %if.then3
  store i32 1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  unreachable

return:                                           ; preds = %if.else10, %if.else, %if.then9, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %year = alloca i32, align 4
  %date1 = alloca i32, align 4
  %date2 = alloca i32, align 4
  %tem = alloca i32, align 4
  %day = alloca [201 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %year) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %date1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %date2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tem) #5
  call void @llvm.lifetime.start.p0(i64 804, ptr %day) #5
  call void @llvm.memset.p0.i64(ptr align 16 %day, i8 0, i64 804, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %add = add nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %date1, ptr noundef %date2)
  store i32 28, ptr getelementptr inbounds ([13 x i32], ptr @month, i64 0, i64 2), align 8, !tbaa !5
  %2 = load i32, ptr %year, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z3runi(i32 noundef %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 29, ptr getelementptr inbounds ([13 x i32], ptr @month, i64 0, i64 2), align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i32, ptr %date1, align 4, !tbaa !5
  %4 = load i32, ptr %date2, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %3, %4
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %date1, align 4, !tbaa !5
  store i32 %5, ptr %tem, align 4, !tbaa !5
  %6 = load i32, ptr %date2, align 4, !tbaa !5
  store i32 %6, ptr %date1, align 4, !tbaa !5
  %7 = load i32, ptr %tem, align 4, !tbaa !5
  store i32 %7, ptr %date2, align 4, !tbaa !5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %8 = load i32, ptr %date1, align 4, !tbaa !5
  store i32 %8, ptr %j, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.end5
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %10 = load i32, ptr %date2, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [13 x i32], ptr @month, i64 0, i64 %idxprom
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [201 x i32], ptr %day, i64 0, i64 %idxprom9
  %14 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %add11 = add nsw i32 %14, %12
  store i32 %add11, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !9

for.end:                                          ; preds = %for.cond6
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end14:                                        ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc26, %for.end14
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %add16 = add nsw i32 %18, 1
  %cmp17 = icmp slt i32 %17, %add16
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond15
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [201 x i32], ptr %day, i64 0, i64 %idxprom19
  %20 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %rem = srem i32 %20, 7
  %cmp21 = icmp eq i32 %rem, 0
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %for.body18
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end25

if.else:                                          ; preds = %for.body18
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc27 = add nsw i32 %21, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.end28:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 804, ptr %day) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tem) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %date2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %date1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %year) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__isoc23_scanf(ptr noundef, ...) #4

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
