; ModuleID = '/tmp/tmpxki_9xdd.cpp'
source_filename = "/tmp/tmpxki_9xdd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@__const.main.x = private unnamed_addr constant [14 x i32] [i32 0, i32 0, i32 31, i32 60, i32 91, i32 121, i32 152, i32 182, i32 213, i32 244, i32 274, i32 305, i32 335, i32 366], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@__const.main.x.4 = private unnamed_addr constant [14 x i32] [i32 0, i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334, i32 365], align 16
@stdin = external global ptr, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z9checkyeari(i32 noundef %a) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !5
  %0 = load i32, ptr %a.addr, align 4, !tbaa !5
  %rem = srem i32 %0, 4
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %a.addr, align 4, !tbaa !5
  %rem1 = srem i32 %1, 100
  %cmp2 = icmp ne i32 %rem1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !5
  %rem3 = srem i32 %2, 400
  %cmp4 = icmp eq i32 %rem3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  %b = alloca [1000 x i32], align 16
  %c = alloca [1000 x i32], align 16
  %x = alloca double, align 8
  %x12 = alloca [14 x i32], align 16
  %x26 = alloca [14 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr %b) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr %c) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [1000 x i32], ptr %c, i64 0, i64 %idxprom3
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc44, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %6, %7
  br i1 %cmp7, label %for.body8, label %for.end46

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom9
  %9 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %call11 = call noundef i32 @_Z9checkyeari(i32 noundef %9)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.else25

if.then:                                          ; preds = %for.body8
  call void @llvm.lifetime.start.p0(i64 56, ptr %x12) #6
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %x12, ptr align 16 @__const.main.x, i64 56, i1 false)
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom13
  %11 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [14 x i32], ptr %x12, i64 0, i64 %idxprom15
  %12 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [1000 x i32], ptr %c, i64 0, i64 %idxprom17
  %14 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [14 x i32], ptr %x12, i64 0, i64 %idxprom19
  %15 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %15
  %rem = srem i32 %sub, 7
  %cmp21 = icmp eq i32 %rem, 0
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then22
  call void @llvm.lifetime.end.p0(i64 56, ptr %x12) #6
  br label %if.end43

if.else25:                                        ; preds = %for.body8
  call void @llvm.lifetime.start.p0(i64 56, ptr %x26) #6
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %x26, ptr align 16 @__const.main.x.4, i64 56, i1 false)
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %16 to i64
  %arrayidx28 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom27
  %17 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %idxprom29 = sext i32 %17 to i64
  %arrayidx30 = getelementptr inbounds [14 x i32], ptr %x26, i64 0, i64 %idxprom29
  %18 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %19 to i64
  %arrayidx32 = getelementptr inbounds [1000 x i32], ptr %c, i64 0, i64 %idxprom31
  %20 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [14 x i32], ptr %x26, i64 0, i64 %idxprom33
  %21 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %sub35 = sub nsw i32 %18, %21
  %rem36 = srem i32 %sub35, 7
  %cmp37 = icmp eq i32 %rem36, 0
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else25
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end42

if.else40:                                        ; preds = %if.else25
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then38
  call void @llvm.lifetime.end.p0(i64 56, ptr %x26) #6
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc45 = add nsw i32 %22, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !12

for.end46:                                        ; preds = %for.cond6
  %call47 = call i32 @getchar()
  %call48 = call i32 @getchar()
  %call49 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #6
  call void @llvm.lifetime.end.p0(i64 4000, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 4000, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 4000, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #5 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

declare i32 @getc(ptr noundef) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
