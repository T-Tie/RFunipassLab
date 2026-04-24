; ModuleID = '/tmp/tmpm3x_xubi.cpp'
source_filename = "/tmp/tmpm3x_xubi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %m = alloca [26 x i32], align 16
  %x = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca [26 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 104, ptr %h) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %k)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [26 x i32], ptr %h, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [26 x i32], ptr %h, i64 0, i64 0
  %call5 = call noundef i32 @_Z3cmpiiPi(i32 noundef %6, i32 noundef %7, ptr noundef %arraydecay)
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [26 x i32], ptr %m, i64 0, i64 %idxprom6
  store i32 %call5, ptr %arrayidx7, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end10:                                        ; preds = %for.cond2
  %arraydecay11 = getelementptr inbounds [26 x i32], ptr %m, i64 0, i64 0
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %call12 = call noundef i32 @_Z3maxPii(ptr noundef %arraydecay11, i32 noundef %10)
  store i32 %call12, ptr %x, align 4, !tbaa !5
  %11 = load i32, ptr %x, align 4, !tbaa !5
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %11)
  call void @llvm.lifetime.end.p0(i64 104, ptr %h) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr %m) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z3cmpiiPi(i32 noundef %i, i32 noundef %k, ptr noundef %h) #3 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %b = alloca [26 x i32], align 16
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4, !tbaa !5
  store i32 %k, ptr %k.addr, align 4, !tbaa !5
  store ptr %h, ptr %h.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 104, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #5
  store i32 1, ptr %t, align 4, !tbaa !5
  %0 = load i32, ptr %i.addr, align 4, !tbaa !5
  %1 = load i32, ptr %k.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %i.addr, align 4, !tbaa !5
  %add = add nsw i32 %2, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %k.addr, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %h.addr, align 8, !tbaa !13
  %6 = load i32, ptr %i.addr, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %8 = load ptr, ptr %h.addr, align 8, !tbaa !13
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
  %10 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %7, %10
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %for.body
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %12 = load i32, ptr %k.addr, align 4, !tbaa !5
  %13 = load ptr, ptr %h.addr, align 8, !tbaa !13
  %call = call noundef i32 @_Z3cmpiiPi(i32 noundef %11, i32 noundef %12, ptr noundef %13)
  %14 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [26 x i32], ptr %b, i64 0, i64 %idxprom6
  store i32 %call, ptr %arrayidx7, align 4, !tbaa !5
  %15 = load i32, ptr %t, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %t, align 4, !tbaa !5
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc9 = add nsw i32 %16, 1
  store i32 %inc9, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %17 = load i32, ptr %t, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %17, 1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %for.end
  %arraydecay = getelementptr inbounds [26 x i32], ptr %b, i64 0, i64 0
  %18 = load i32, ptr %t, align 4, !tbaa !5
  %sub = sub nsw i32 %18, 1
  %call13 = call noundef i32 @_Z3maxPii(ptr noundef %arraydecay, i32 noundef %sub)
  %add14 = add nsw i32 %call13, 1
  store i32 %add14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr %b) #5
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3maxPii(ptr noundef %m, i32 noundef %k) #4 {
entry:
  %m.addr = alloca ptr, align 8
  %k.addr = alloca i32, align 4
  %big = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !13
  store i32 %k, ptr %k.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %big) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  store i32 %1, ptr %big, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %k.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %big, align 4, !tbaa !5
  %5 = load ptr, ptr %m.addr, align 8, !tbaa !13
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %4, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %m.addr, align 8, !tbaa !13
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 %idxprom3
  %10 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  store i32 %10, ptr %big, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %big, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %big) #5
  ret i32 %12
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 int", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
