; ModuleID = '/tmp/tmp7zcrb8gy.cpp'
source_filename = "/tmp/tmp7zcrb8gy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  %e = alloca i32, align 4
  %s = alloca [500 x i32], align 16
  %max = alloca i32, align 4
  %ss = alloca [500 x i32], align 16
  %a = alloca [501 x i8], align 16
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca i32, align 4
  %ee = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #5
  store i32 0, ptr %e, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2000, ptr %s) #5
  call void @llvm.memset.p0.i64(ptr align 16 %s, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr %ss) #5
  call void @llvm.memset.p0.i64(ptr align 16 %ss, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 501, ptr %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %arraydecay = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay)
  %arraydecay2 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 0
  %call3 = call i64 @strlen(ptr noundef %arraydecay2) #6
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %l, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %l, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %2
  %add = add nsw i32 %sub, 1
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  br label %for.end34

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %add4 = add nsw i32 %3, 1
  store i32 %add4, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %l, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %sub6 = sub nsw i32 %5, %6
  %add7 = add nsw i32 %sub6, 1
  %cmp8 = icmp slt i32 %4, %add7
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond5
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  br label %for.end31

for.body10:                                       ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body10
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %7, %8
  br i1 %cmp12, label %for.body14, label %for.cond.cleanup13

for.cond.cleanup13:                               ; preds = %for.cond11
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  br label %for.end

for.body14:                                       ; preds = %for.cond11
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %add15 = add nsw i32 %9, %10
  %idxprom = sext i32 %add15 to i64
  %arrayidx = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom
  %11 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv16 = sext i8 %11 to i32
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %add17 = add nsw i32 %12, %13
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom18
  %14 = load i8, ptr %arrayidx19, align 1, !tbaa !9
  %conv20 = sext i8 %14 to i32
  %cmp21 = icmp eq i32 %conv16, %conv20
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body14
  %15 = load i32, ptr %e, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %e, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body14
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %k, align 4, !tbaa !5
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, ptr %k, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !10

for.end:                                          ; preds = %for.cond.cleanup13
  %17 = load i32, ptr %e, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %17, %18
  br i1 %cmp23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [500 x i32], ptr %s, i64 0, i64 %idxprom25
  %20 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %inc27 = add nsw i32 %20, 1
  store i32 %inc27, ptr %arrayidx26, align 4, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %for.end
  store i32 0, ptr %e, align 4, !tbaa !5
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %inc30 = add nsw i32 %21, 1
  store i32 %inc30, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !13

for.end31:                                        ; preds = %for.cond.cleanup9
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %22, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end34:                                        ; preds = %for.cond.cleanup
  %arrayidx35 = getelementptr inbounds [500 x i32], ptr %s, i64 0, i64 0
  %23 = load i32, ptr %arrayidx35, align 16, !tbaa !5
  store i32 %23, ptr %max, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #5
  store i32 0, ptr %p, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc49, %for.end34
  %24 = load i32, ptr %p, align 4, !tbaa !5
  %25 = load i32, ptr %l, align 4, !tbaa !5
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %sub37 = sub nsw i32 %25, %26
  %add38 = add nsw i32 %sub37, 1
  %cmp39 = icmp slt i32 %24, %add38
  br i1 %cmp39, label %for.body41, label %for.cond.cleanup40

for.cond.cleanup40:                               ; preds = %for.cond36
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #5
  br label %for.end51

for.body41:                                       ; preds = %for.cond36
  %27 = load i32, ptr %max, align 4, !tbaa !5
  %28 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom42 = sext i32 %28 to i64
  %arrayidx43 = getelementptr inbounds [500 x i32], ptr %s, i64 0, i64 %idxprom42
  %29 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %27, %29
  br i1 %cmp44, label %if.then45, label %if.end48

if.then45:                                        ; preds = %for.body41
  %30 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom46 = sext i32 %30 to i64
  %arrayidx47 = getelementptr inbounds [500 x i32], ptr %s, i64 0, i64 %idxprom46
  %31 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  store i32 %31, ptr %max, align 4, !tbaa !5
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %for.body41
  br label %for.inc49

for.inc49:                                        ; preds = %if.end48
  %32 = load i32, ptr %p, align 4, !tbaa !5
  %inc50 = add nsw i32 %32, 1
  store i32 %inc50, ptr %p, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !15

for.end51:                                        ; preds = %for.cond.cleanup40
  call void @llvm.lifetime.start.p0(i64 4, ptr %ee) #5
  store i32 0, ptr %ee, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #5
  store i32 0, ptr %q, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc66, %for.end51
  %33 = load i32, ptr %q, align 4, !tbaa !5
  %34 = load i32, ptr %l, align 4, !tbaa !5
  %35 = load i32, ptr %n, align 4, !tbaa !5
  %sub53 = sub nsw i32 %34, %35
  %add54 = add nsw i32 %sub53, 1
  %cmp55 = icmp slt i32 %33, %add54
  br i1 %cmp55, label %for.body57, label %for.cond.cleanup56

for.cond.cleanup56:                               ; preds = %for.cond52
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #5
  br label %for.end68

for.body57:                                       ; preds = %for.cond52
  %36 = load i32, ptr %max, align 4, !tbaa !5
  %37 = load i32, ptr %q, align 4, !tbaa !5
  %idxprom58 = sext i32 %37 to i64
  %arrayidx59 = getelementptr inbounds [500 x i32], ptr %s, i64 0, i64 %idxprom58
  %38 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %36, %38
  br i1 %cmp60, label %if.then61, label %if.end65

if.then61:                                        ; preds = %for.body57
  %39 = load i32, ptr %q, align 4, !tbaa !5
  %40 = load i32, ptr %ee, align 4, !tbaa !5
  %idxprom62 = sext i32 %40 to i64
  %arrayidx63 = getelementptr inbounds [500 x i32], ptr %ss, i64 0, i64 %idxprom62
  store i32 %39, ptr %arrayidx63, align 4, !tbaa !5
  %41 = load i32, ptr %ee, align 4, !tbaa !5
  %inc64 = add nsw i32 %41, 1
  store i32 %inc64, ptr %ee, align 4, !tbaa !5
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %for.body57
  br label %for.inc66

for.inc66:                                        ; preds = %if.end65
  %42 = load i32, ptr %q, align 4, !tbaa !5
  %inc67 = add nsw i32 %42, 1
  store i32 %inc67, ptr %q, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !16

for.end68:                                        ; preds = %for.cond.cleanup56
  %43 = load i32, ptr %max, align 4, !tbaa !5
  %cmp69 = icmp ne i32 %43, 0
  br i1 %cmp69, label %if.then70, label %if.else

if.then70:                                        ; preds = %for.end68
  %44 = load i32, ptr %max, align 4, !tbaa !5
  %add71 = add nsw i32 %44, 1
  %call72 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %add71)
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  store i32 0, ptr %r, align 4, !tbaa !5
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc92, %if.then70
  %45 = load i32, ptr %r, align 4, !tbaa !5
  %46 = load i32, ptr %ee, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %45, %46
  br i1 %cmp74, label %for.body76, label %for.cond.cleanup75

for.cond.cleanup75:                               ; preds = %for.cond73
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  br label %for.end94

for.body76:                                       ; preds = %for.cond73
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #5
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc89, %for.body76
  %47 = load i32, ptr %t, align 4, !tbaa !5
  %48 = load i32, ptr %n, align 4, !tbaa !5
  %cmp79 = icmp slt i32 %47, %48
  br i1 %cmp79, label %for.body81, label %for.cond.cleanup80

for.cond.cleanup80:                               ; preds = %for.cond78
  store i32 20, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #5
  br label %for.end91

for.body81:                                       ; preds = %for.cond78
  %49 = load i32, ptr %r, align 4, !tbaa !5
  %idxprom82 = sext i32 %49 to i64
  %arrayidx83 = getelementptr inbounds [500 x i32], ptr %ss, i64 0, i64 %idxprom82
  %50 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %51 = load i32, ptr %t, align 4, !tbaa !5
  %add84 = add nsw i32 %50, %51
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom85
  %52 = load i8, ptr %arrayidx86, align 1, !tbaa !9
  %conv87 = sext i8 %52 to i32
  %call88 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %conv87)
  br label %for.inc89

for.inc89:                                        ; preds = %for.body81
  %53 = load i32, ptr %t, align 4, !tbaa !5
  %inc90 = add nsw i32 %53, 1
  store i32 %inc90, ptr %t, align 4, !tbaa !5
  br label %for.cond78, !llvm.loop !17

for.end91:                                        ; preds = %for.cond.cleanup80
  br label %for.inc92

for.inc92:                                        ; preds = %for.end91
  %54 = load i32, ptr %r, align 4, !tbaa !5
  %inc93 = add nsw i32 %54, 1
  store i32 %inc93, ptr %r, align 4, !tbaa !5
  br label %for.cond73, !llvm.loop !18

for.end94:                                        ; preds = %for.cond.cleanup75
  br label %if.end96

if.else:                                          ; preds = %for.end68
  %call95 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end96

if.end96:                                         ; preds = %if.else, %for.end94
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ee) #5
  call void @llvm.lifetime.end.p0(i64 501, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr %ss) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
