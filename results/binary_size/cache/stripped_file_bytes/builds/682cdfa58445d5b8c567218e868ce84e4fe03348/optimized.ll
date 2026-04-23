; ModuleID = '/tmp/tmp9jyiknei.cpp'
source_filename = "/tmp/tmp9jyiknei.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %m = alloca i32, align 4
  %s = alloca [501 x i8], align 16
  %str = alloca [500 x [5 x i8]], align 16
  %a = alloca [500 x i32], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 501, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 2500, ptr %str) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %arraydecay = getelementptr inbounds [501 x i8], ptr %s, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay)
  %arraydecay2 = getelementptr inbounds [501 x i8], ptr %s, i64 0, i64 0
  %call3 = call i64 @strlen(ptr noundef %arraydecay2) #6
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %t, align 4, !tbaa !5
  %arraydecay4 = getelementptr inbounds [500 x [5 x i8]], ptr %str, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay4, i8 0, i64 2500, i1 false)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %t, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %2
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %t, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %sub6 = sub nsw i32 %6, %7
  %cmp7 = icmp sle i32 %5, %sub6
  br i1 %cmp7, label %for.body8, label %for.end24

for.body8:                                        ; preds = %for.cond5
  store i32 0, ptr %k, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc19, %for.body8
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %for.body11, label %for.end21

for.body11:                                       ; preds = %for.cond9
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %10, %11
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds [501 x i8], ptr %s, i64 0, i64 %idxprom12
  %12 = load i8, ptr %arrayidx13, align 1, !tbaa !12
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [500 x [5 x i8]], ptr %str, i64 0, i64 %idxprom14
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [5 x i8], ptr %arrayidx15, i64 0, i64 %idxprom16
  store i8 %12, ptr %arrayidx17, align 1, !tbaa !12
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %inc18 = add nsw i32 %15, 1
  store i32 %inc18, ptr %k, align 4, !tbaa !5
  br label %for.inc19

for.inc19:                                        ; preds = %for.body11
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc20 = add nsw i32 %16, 1
  store i32 %inc20, ptr %j, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !13

for.end21:                                        ; preds = %for.cond9
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %17, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !14

for.end24:                                        ; preds = %for.cond5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc69, %for.end24
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %t, align 4, !tbaa !5
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %sub26 = sub nsw i32 %19, %20
  %cmp27 = icmp slt i32 %18, %sub26
  br i1 %cmp27, label %for.body28, label %for.end71

for.body28:                                       ; preds = %for.cond25
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %add29 = add nsw i32 %21, 1
  store i32 %add29, ptr %j, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc66, %for.body28
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %23 = load i32, ptr %t, align 4, !tbaa !5
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %sub31 = sub nsw i32 %23, %24
  %cmp32 = icmp sle i32 %22, %sub31
  br i1 %cmp32, label %for.body33, label %for.end68

for.body33:                                       ; preds = %for.cond30
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [500 x [5 x i8]], ptr %str, i64 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [5 x i8], ptr %arrayidx35, i64 0, i64 0
  %26 = load i8, ptr %arrayidx36, align 1, !tbaa !12
  %conv37 = sext i8 %26 to i32
  %cmp38 = icmp ne i32 %conv37, 48
  br i1 %cmp38, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body33
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom39 = sext i32 %27 to i64
  %arrayidx40 = getelementptr inbounds [500 x [5 x i8]], ptr %str, i64 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [5 x i8], ptr %arrayidx40, i64 0, i64 0
  %28 = load i8, ptr %arrayidx41, align 1, !tbaa !12
  %conv42 = sext i8 %28 to i32
  %cmp43 = icmp ne i32 %conv42, 48
  br i1 %cmp43, label %land.lhs.true44, label %if.end

land.lhs.true44:                                  ; preds = %land.lhs.true
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %29 to i64
  %arrayidx46 = getelementptr inbounds [500 x [5 x i8]], ptr %str, i64 0, i64 %idxprom45
  %arraydecay47 = getelementptr inbounds [5 x i8], ptr %arrayidx46, i64 0, i64 0
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom48 = sext i32 %30 to i64
  %arrayidx49 = getelementptr inbounds [500 x [5 x i8]], ptr %str, i64 0, i64 %idxprom48
  %arraydecay50 = getelementptr inbounds [5 x i8], ptr %arrayidx49, i64 0, i64 0
  %call51 = call i32 @strcmp(ptr noundef %arraydecay47, ptr noundef %arraydecay50) #6
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true44
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %31 to i64
  %arrayidx54 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom53
  %32 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %inc55 = add nsw i32 %32, 1
  store i32 %inc55, ptr %arrayidx54, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc63, %if.then
  %33 = load i32, ptr %k, align 4, !tbaa !5
  %34 = load i32, ptr %n, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %33, %34
  br i1 %cmp57, label %for.body58, label %for.end65

for.body58:                                       ; preds = %for.cond56
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom59 = sext i32 %35 to i64
  %arrayidx60 = getelementptr inbounds [500 x [5 x i8]], ptr %str, i64 0, i64 %idxprom59
  %36 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom61 = sext i32 %36 to i64
  %arrayidx62 = getelementptr inbounds [5 x i8], ptr %arrayidx60, i64 0, i64 %idxprom61
  store i8 48, ptr %arrayidx62, align 1, !tbaa !12
  br label %for.inc63

for.inc63:                                        ; preds = %for.body58
  %37 = load i32, ptr %k, align 4, !tbaa !5
  %inc64 = add nsw i32 %37, 1
  store i32 %inc64, ptr %k, align 4, !tbaa !5
  br label %for.cond56, !llvm.loop !15

for.end65:                                        ; preds = %for.cond56
  br label %if.end

if.end:                                           ; preds = %for.end65, %land.lhs.true44, %land.lhs.true, %for.body33
  br label %for.inc66

for.inc66:                                        ; preds = %if.end
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %inc67 = add nsw i32 %38, 1
  store i32 %inc67, ptr %j, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !16

for.end68:                                        ; preds = %for.cond30
  br label %for.inc69

for.inc69:                                        ; preds = %for.end68
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %inc70 = add nsw i32 %39, 1
  store i32 %inc70, ptr %i, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !17

for.end71:                                        ; preds = %for.cond25
  %arrayidx72 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 0
  %40 = load i32, ptr %arrayidx72, align 16, !tbaa !5
  store i32 %40, ptr %m, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc84, %for.end71
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %42 = load i32, ptr %t, align 4, !tbaa !5
  %43 = load i32, ptr %n, align 4, !tbaa !5
  %sub74 = sub nsw i32 %42, %43
  %cmp75 = icmp sle i32 %41, %sub74
  br i1 %cmp75, label %for.body76, label %for.end86

for.body76:                                       ; preds = %for.cond73
  %44 = load i32, ptr %m, align 4, !tbaa !5
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom77 = sext i32 %45 to i64
  %arrayidx78 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom77
  %46 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %cmp79 = icmp slt i32 %44, %46
  br i1 %cmp79, label %if.then80, label %if.end83

if.then80:                                        ; preds = %for.body76
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom81 = sext i32 %47 to i64
  %arrayidx82 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom81
  %48 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  store i32 %48, ptr %m, align 4, !tbaa !5
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %for.body76
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %inc85 = add nsw i32 %49, 1
  store i32 %inc85, ptr %i, align 4, !tbaa !5
  br label %for.cond73, !llvm.loop !18

for.end86:                                        ; preds = %for.cond73
  %50 = load i32, ptr %m, align 4, !tbaa !5
  %cmp87 = icmp slt i32 %50, 2
  br i1 %cmp87, label %if.then88, label %if.else

if.then88:                                        ; preds = %for.end86
  %call89 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %for.end86
  %51 = load i32, ptr %m, align 4, !tbaa !5
  %call90 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %51)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc104, %if.else
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %53 = load i32, ptr %t, align 4, !tbaa !5
  %54 = load i32, ptr %n, align 4, !tbaa !5
  %sub92 = sub nsw i32 %53, %54
  %cmp93 = icmp sle i32 %52, %sub92
  br i1 %cmp93, label %for.body94, label %for.end106

for.body94:                                       ; preds = %for.cond91
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom95 = sext i32 %55 to i64
  %arrayidx96 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom95
  %56 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %57 = load i32, ptr %m, align 4, !tbaa !5
  %cmp97 = icmp eq i32 %56, %57
  br i1 %cmp97, label %if.then98, label %if.end103

if.then98:                                        ; preds = %for.body94
  %58 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom99 = sext i32 %58 to i64
  %arrayidx100 = getelementptr inbounds [500 x [5 x i8]], ptr %str, i64 0, i64 %idxprom99
  %arraydecay101 = getelementptr inbounds [5 x i8], ptr %arrayidx100, i64 0, i64 0
  %call102 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %arraydecay101)
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %for.body94
  br label %for.inc104

for.inc104:                                       ; preds = %if.end103
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %inc105 = add nsw i32 %59, 1
  store i32 %inc105, ptr %i, align 4, !tbaa !5
  br label %for.cond91, !llvm.loop !19

for.end106:                                       ; preds = %for.cond91
  br label %if.end107

if.end107:                                        ; preds = %for.end106
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.then88
  call void @llvm.lifetime.end.p0(i64 2000, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 2500, ptr %str) #5
  call void @llvm.lifetime.end.p0(i64 501, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
