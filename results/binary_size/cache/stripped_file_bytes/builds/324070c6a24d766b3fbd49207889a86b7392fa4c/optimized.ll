; ModuleID = '/tmp/tmp4pq0hl3x.cpp'
source_filename = "/tmp/tmp4pq0hl3x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.m1 = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.m = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%d%d%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %m1 = alloca [12 x i32], align 16
  %m = alloca [12 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr %m1) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %m1, ptr align 16 @__const.main.m1, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %m) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %m, ptr align 16 @__const.main.m, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc90, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end92

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  store i32 0, ptr %c, align 4, !tbaa !5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %y, ptr noundef %a, ptr noundef %b)
  %2 = load i32, ptr %y, align 4, !tbaa !5
  %rem = srem i32 %2, 4
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, ptr %y, align 4, !tbaa !5
  %rem3 = srem i32 %3, 100
  %cmp4 = icmp ne i32 %rem3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %4 = load i32, ptr %y, align 4, !tbaa !5
  %rem5 = srem i32 %4, 400
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then, label %if.else43

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load i32, ptr %a, align 4, !tbaa !5
  %6 = load i32, ptr %b, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %5, %6
  br i1 %cmp7, label %if.then8, label %if.else19

if.then8:                                         ; preds = %if.then
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %if.then8
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %a, align 4, !tbaa !5
  %9 = load i32, ptr %b, align 4, !tbaa !5
  %sub = sub nsw i32 %8, %9
  %cmp10 = icmp slt i32 %7, %sub
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %10 = load i32, ptr %b, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %10, %11
  %sub12 = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub12 to i64
  %arrayidx = getelementptr inbounds [12 x i32], ptr %m, i64 0, i64 %idxprom
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %13 = load i32, ptr %c, align 4, !tbaa !5
  %add13 = add nsw i32 %13, %12
  store i32 %add13, ptr %c, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !9

for.end:                                          ; preds = %for.cond9
  %15 = load i32, ptr %c, align 4, !tbaa !5
  %rem14 = srem i32 %15, 7
  %cmp15 = icmp eq i32 %rem14, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.end
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.else:                                          ; preds = %for.end
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then16
  br label %if.end42

if.else19:                                        ; preds = %if.then
  %16 = load i32, ptr %a, align 4, !tbaa !5
  %17 = load i32, ptr %b, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %16, %17
  br i1 %cmp20, label %if.then21, label %if.end41

if.then21:                                        ; preds = %if.else19
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc31, %if.then21
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %b, align 4, !tbaa !5
  %20 = load i32, ptr %a, align 4, !tbaa !5
  %sub23 = sub nsw i32 %19, %20
  %cmp24 = icmp slt i32 %18, %sub23
  br i1 %cmp24, label %for.body25, label %for.end33

for.body25:                                       ; preds = %for.cond22
  %21 = load i32, ptr %a, align 4, !tbaa !5
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %add26 = add nsw i32 %21, %22
  %sub27 = sub nsw i32 %add26, 1
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [12 x i32], ptr %m, i64 0, i64 %idxprom28
  %23 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %24 = load i32, ptr %c, align 4, !tbaa !5
  %add30 = add nsw i32 %24, %23
  store i32 %add30, ptr %c, align 4, !tbaa !5
  br label %for.inc31

for.inc31:                                        ; preds = %for.body25
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %inc32 = add nsw i32 %25, 1
  store i32 %inc32, ptr %j, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !12

for.end33:                                        ; preds = %for.cond22
  %26 = load i32, ptr %c, align 4, !tbaa !5
  %rem34 = srem i32 %26, 7
  %cmp35 = icmp eq i32 %rem34, 0
  br i1 %cmp35, label %if.then36, label %if.else38

if.then36:                                        ; preds = %for.end33
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end40

if.else38:                                        ; preds = %for.end33
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then36
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.else19
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end
  br label %if.end89

if.else43:                                        ; preds = %lor.lhs.false
  %27 = load i32, ptr %a, align 4, !tbaa !5
  %28 = load i32, ptr %b, align 4, !tbaa !5
  %cmp44 = icmp sgt i32 %27, %28
  br i1 %cmp44, label %if.then45, label %if.else65

if.then45:                                        ; preds = %if.else43
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc55, %if.then45
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %30 = load i32, ptr %a, align 4, !tbaa !5
  %31 = load i32, ptr %b, align 4, !tbaa !5
  %sub47 = sub nsw i32 %30, %31
  %cmp48 = icmp slt i32 %29, %sub47
  br i1 %cmp48, label %for.body49, label %for.end57

for.body49:                                       ; preds = %for.cond46
  %32 = load i32, ptr %b, align 4, !tbaa !5
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %add50 = add nsw i32 %32, %33
  %sub51 = sub nsw i32 %add50, 1
  %idxprom52 = sext i32 %sub51 to i64
  %arrayidx53 = getelementptr inbounds [12 x i32], ptr %m1, i64 0, i64 %idxprom52
  %34 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %35 = load i32, ptr %c, align 4, !tbaa !5
  %add54 = add nsw i32 %35, %34
  store i32 %add54, ptr %c, align 4, !tbaa !5
  br label %for.inc55

for.inc55:                                        ; preds = %for.body49
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %inc56 = add nsw i32 %36, 1
  store i32 %inc56, ptr %j, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !13

for.end57:                                        ; preds = %for.cond46
  %37 = load i32, ptr %c, align 4, !tbaa !5
  %rem58 = srem i32 %37, 7
  %cmp59 = icmp eq i32 %rem58, 0
  br i1 %cmp59, label %if.then60, label %if.else62

if.then60:                                        ; preds = %for.end57
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end64

if.else62:                                        ; preds = %for.end57
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %if.then60
  br label %if.end88

if.else65:                                        ; preds = %if.else43
  %38 = load i32, ptr %a, align 4, !tbaa !5
  %39 = load i32, ptr %b, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %38, %39
  br i1 %cmp66, label %if.then67, label %if.end87

if.then67:                                        ; preds = %if.else65
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc77, %if.then67
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %41 = load i32, ptr %b, align 4, !tbaa !5
  %42 = load i32, ptr %a, align 4, !tbaa !5
  %sub69 = sub nsw i32 %41, %42
  %cmp70 = icmp slt i32 %40, %sub69
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond68
  %43 = load i32, ptr %a, align 4, !tbaa !5
  %44 = load i32, ptr %j, align 4, !tbaa !5
  %add72 = add nsw i32 %43, %44
  %sub73 = sub nsw i32 %add72, 1
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [12 x i32], ptr %m1, i64 0, i64 %idxprom74
  %45 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %46 = load i32, ptr %c, align 4, !tbaa !5
  %add76 = add nsw i32 %46, %45
  store i32 %add76, ptr %c, align 4, !tbaa !5
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %inc78 = add nsw i32 %47, 1
  store i32 %inc78, ptr %j, align 4, !tbaa !5
  br label %for.cond68, !llvm.loop !14

for.end79:                                        ; preds = %for.cond68
  %48 = load i32, ptr %c, align 4, !tbaa !5
  %rem80 = srem i32 %48, 7
  %cmp81 = icmp eq i32 %rem80, 0
  br i1 %cmp81, label %if.then82, label %if.else84

if.then82:                                        ; preds = %for.end79
  %call83 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end86

if.else84:                                        ; preds = %for.end79
  %call85 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.then82
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.else65
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end64
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end42
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  br label %for.inc90

for.inc90:                                        ; preds = %if.end89
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %inc91 = add nsw i32 %49, 1
  store i32 %inc91, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end92:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr %m1) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
