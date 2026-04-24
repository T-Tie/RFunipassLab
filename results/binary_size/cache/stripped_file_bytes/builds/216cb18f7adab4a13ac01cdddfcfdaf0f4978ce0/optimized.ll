; ModuleID = '/tmp/tmpzlbsw_4v.cpp'
source_filename = "/tmp/tmpzlbsw_4v.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [16 x [16 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca [15 x i32], align 16
  %k = alloca i32, align 4
  %f = alloca i32, align 4
  %b = alloca [16 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 1024, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 60, ptr %t) #4
  call void @llvm.memset.p0.i64(ptr align 16 %t, i8 0, i64 60, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #4
  call void @llvm.memset.p0.i64(ptr align 16 %b, i8 0, i64 64, i1 false)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %1, 15
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i32]], ptr %a, i64 0, i64 %idxprom
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [16 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [16 x [16 x i32]], ptr %a, i64 0, i64 %idxprom6
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %5 to i64
  %arrayidx9 = getelementptr inbounds [16 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %6, -1
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  br label %for.end

if.end:                                           ; preds = %for.body3
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [16 x [16 x i32]], ptr %a, i64 0, i64 %idxprom11
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [16 x i32], ptr %arrayidx12, i64 0, i64 %idxprom13
  %9 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %9, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  br label %for.end

if.end17:                                         ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [15 x i32], ptr %t, i64 0, i64 %idxprom18
  %11 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %add = add nsw i32 %11, 1
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [15 x i32], ptr %t, i64 0, i64 %idxprom20
  store i32 %add, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %if.then16, %if.then, %for.cond1
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [16 x [16 x i32]], ptr %a, i64 0, i64 %idxprom22
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [16 x i32], ptr %arrayidx23, i64 0, i64 %idxprom24
  %16 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %16, -1
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.end
  br label %for.end32

if.end28:                                         ; preds = %for.end
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %add29 = add nsw i32 %17, 1
  store i32 %add29, ptr %k, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %if.end28
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc31 = add nsw i32 %18, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end32:                                        ; preds = %if.then27, %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc77, %for.end32
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %19, %20
  br i1 %cmp34, label %for.body35, label %for.end79

for.body35:                                       ; preds = %for.cond33
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc74, %for.body35
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [15 x i32], ptr %t, i64 0, i64 %idxprom37
  %23 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %21, %23
  br i1 %cmp39, label %for.body40, label %for.end76

for.body40:                                       ; preds = %for.cond36
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %add41 = add nsw i32 %24, 1
  store i32 %add41, ptr %f, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc71, %for.body40
  %25 = load i32, ptr %f, align 4, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %26 to i64
  %arrayidx44 = getelementptr inbounds [15 x i32], ptr %t, i64 0, i64 %idxprom43
  %27 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %cmp45 = icmp sle i32 %25, %27
  br i1 %cmp45, label %for.body46, label %for.end73

for.body46:                                       ; preds = %for.cond42
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %28 to i64
  %arrayidx48 = getelementptr inbounds [16 x [16 x i32]], ptr %a, i64 0, i64 %idxprom47
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom49 = sext i32 %29 to i64
  %arrayidx50 = getelementptr inbounds [16 x i32], ptr %arrayidx48, i64 0, i64 %idxprom49
  %30 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %31 to i64
  %arrayidx52 = getelementptr inbounds [16 x [16 x i32]], ptr %a, i64 0, i64 %idxprom51
  %32 = load i32, ptr %f, align 4, !tbaa !5
  %idxprom53 = sext i32 %32 to i64
  %arrayidx54 = getelementptr inbounds [16 x i32], ptr %arrayidx52, i64 0, i64 %idxprom53
  %33 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %mul = mul nsw i32 2, %33
  %cmp55 = icmp eq i32 %30, %mul
  br i1 %cmp55, label %if.then66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body46
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %34 to i64
  %arrayidx57 = getelementptr inbounds [16 x [16 x i32]], ptr %a, i64 0, i64 %idxprom56
  %35 = load i32, ptr %f, align 4, !tbaa !5
  %idxprom58 = sext i32 %35 to i64
  %arrayidx59 = getelementptr inbounds [16 x i32], ptr %arrayidx57, i64 0, i64 %idxprom58
  %36 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %37 to i64
  %arrayidx61 = getelementptr inbounds [16 x [16 x i32]], ptr %a, i64 0, i64 %idxprom60
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom62 = sext i32 %38 to i64
  %arrayidx63 = getelementptr inbounds [16 x i32], ptr %arrayidx61, i64 0, i64 %idxprom62
  %39 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %mul64 = mul nsw i32 2, %39
  %cmp65 = icmp eq i32 %36, %mul64
  br i1 %cmp65, label %if.then66, label %if.end70

if.then66:                                        ; preds = %lor.lhs.false, %for.body46
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom67 = sext i32 %40 to i64
  %arrayidx68 = getelementptr inbounds [16 x i32], ptr %b, i64 0, i64 %idxprom67
  %41 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %inc69 = add nsw i32 %41, 1
  store i32 %inc69, ptr %arrayidx68, align 4, !tbaa !5
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %lor.lhs.false
  br label %for.inc71

for.inc71:                                        ; preds = %if.end70
  %42 = load i32, ptr %f, align 4, !tbaa !5
  %inc72 = add nsw i32 %42, 1
  store i32 %inc72, ptr %f, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !13

for.end73:                                        ; preds = %for.cond42
  br label %for.inc74

for.inc74:                                        ; preds = %for.end73
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %inc75 = add nsw i32 %43, 1
  store i32 %inc75, ptr %j, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !14

for.end76:                                        ; preds = %for.cond36
  br label %for.inc77

for.inc77:                                        ; preds = %for.end76
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %inc78 = add nsw i32 %44, 1
  store i32 %inc78, ptr %i, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !15

for.end79:                                        ; preds = %for.cond33
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc86, %for.end79
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %46 = load i32, ptr %k, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %45, %46
  br i1 %cmp81, label %for.body82, label %for.end88

for.body82:                                       ; preds = %for.cond80
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %47 to i64
  %arrayidx84 = getelementptr inbounds [16 x i32], ptr %b, i64 0, i64 %idxprom83
  %48 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %call85 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %48)
  br label %for.inc86

for.inc86:                                        ; preds = %for.body82
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %inc87 = add nsw i32 %49, 1
  store i32 %inc87, ptr %i, align 4, !tbaa !5
  br label %for.cond80, !llvm.loop !16

for.end88:                                        ; preds = %for.cond80
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 60, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 1024, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!16 = distinct !{!16, !10, !11}
