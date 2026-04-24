; ModuleID = '/tmp/tmprf1lput4.cpp'
source_filename = "/tmp/tmprf1lput4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %aa = alloca ptr, align 8
  %bb = alloca ptr, align 8
  %cc = alloca ptr, align 8
  %p = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  store i32 0, ptr %j, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x1, ptr noundef %y1)
  call void @llvm.lifetime.start.p0(i64 8, ptr %aa) #4
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #5
  store ptr %call1, ptr %aa, align 8, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %conv2 = sext i32 %3 to i64
  %mul3 = mul i64 4, %conv2
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #5
  %4 = load ptr, ptr %aa, align 8, !tbaa !9
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !13
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %8 = load ptr, ptr %aa, align 8, !tbaa !9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %8, i64 %idxprom8
  %10 = load ptr, ptr %arrayidx9, align 8, !tbaa !13
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %10, i64 %idxprom10
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx11)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !15

for.end:                                          ; preds = %for.cond5
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc14 = add nsw i32 %13, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !18

for.end15:                                        ; preds = %for.cond
  %call16 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x2, ptr noundef %y2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %bb) #4
  %14 = load i32, ptr %x2, align 4, !tbaa !5
  %conv17 = sext i32 %14 to i64
  %mul18 = mul i64 8, %conv17
  %call19 = call noalias ptr @malloc(i64 noundef %mul18) #5
  store ptr %call19, ptr %bb, align 8, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end15
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %16 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %15, %16
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %17 = load i32, ptr %y2, align 4, !tbaa !5
  %conv23 = sext i32 %17 to i64
  %mul24 = mul i64 4, %conv23
  %call25 = call noalias ptr @malloc(i64 noundef %mul24) #5
  %18 = load ptr, ptr %bb, align 8, !tbaa !9
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %18, i64 %idxprom26
  store ptr %call25, ptr %arrayidx27, align 8, !tbaa !13
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc36, %for.body22
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %21 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %20, %21
  br i1 %cmp29, label %for.body30, label %for.end38

for.body30:                                       ; preds = %for.cond28
  %22 = load ptr, ptr %bb, align 8, !tbaa !9
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %22, i64 %idxprom31
  %24 = load ptr, ptr %arrayidx32, align 8, !tbaa !13
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %24, i64 %idxprom33
  %call35 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx34)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body30
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %inc37 = add nsw i32 %26, 1
  store i32 %inc37, ptr %j, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !19

for.end38:                                        ; preds = %for.cond28
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %inc40 = add nsw i32 %27, 1
  store i32 %inc40, ptr %i, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !20

for.end41:                                        ; preds = %for.cond20
  call void @llvm.lifetime.start.p0(i64 8, ptr %cc) #4
  %28 = load i32, ptr %x1, align 4, !tbaa !5
  %conv42 = sext i32 %28 to i64
  %mul43 = mul i64 8, %conv42
  %call44 = call noalias ptr @malloc(i64 noundef %mul43) #5
  store ptr %call44, ptr %cc, align 8, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc88, %for.end41
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %30 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %29, %30
  br i1 %cmp46, label %for.body47, label %for.end90

for.body47:                                       ; preds = %for.cond45
  %31 = load i32, ptr %y2, align 4, !tbaa !5
  %conv48 = sext i32 %31 to i64
  %mul49 = mul i64 4, %conv48
  %call50 = call noalias ptr @malloc(i64 noundef %mul49) #5
  %32 = load ptr, ptr %cc, align 8, !tbaa !9
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %33 to i64
  %arrayidx52 = getelementptr inbounds ptr, ptr %32, i64 %idxprom51
  store ptr %call50, ptr %arrayidx52, align 8, !tbaa !13
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc60, %for.body47
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %35 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %34, %35
  br i1 %cmp54, label %for.body55, label %for.end62

for.body55:                                       ; preds = %for.cond53
  %36 = load ptr, ptr %cc, align 8, !tbaa !9
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %37 to i64
  %arrayidx57 = getelementptr inbounds ptr, ptr %36, i64 %idxprom56
  %38 = load ptr, ptr %arrayidx57, align 8, !tbaa !13
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom58 = sext i32 %39 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %38, i64 %idxprom58
  store i32 0, ptr %arrayidx59, align 4, !tbaa !5
  br label %for.inc60

for.inc60:                                        ; preds = %for.body55
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %inc61 = add nsw i32 %40, 1
  store i32 %inc61, ptr %j, align 4, !tbaa !5
  br label %for.cond53, !llvm.loop !21

for.end62:                                        ; preds = %for.cond53
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc85, %for.end62
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %42 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %41, %42
  br i1 %cmp64, label %for.body65, label %for.end87

for.body65:                                       ; preds = %for.cond63
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  store i32 0, ptr %p, align 4, !tbaa !5
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc82, %for.body65
  %43 = load i32, ptr %p, align 4, !tbaa !5
  %44 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %43, %44
  br i1 %cmp67, label %for.body68, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond66
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  br label %for.end84

for.body68:                                       ; preds = %for.cond66
  %45 = load ptr, ptr %aa, align 8, !tbaa !9
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom69 = sext i32 %46 to i64
  %arrayidx70 = getelementptr inbounds ptr, ptr %45, i64 %idxprom69
  %47 = load ptr, ptr %arrayidx70, align 8, !tbaa !13
  %48 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom71 = sext i32 %48 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %47, i64 %idxprom71
  %49 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %50 = load ptr, ptr %bb, align 8, !tbaa !9
  %51 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom73 = sext i32 %51 to i64
  %arrayidx74 = getelementptr inbounds ptr, ptr %50, i64 %idxprom73
  %52 = load ptr, ptr %arrayidx74, align 8, !tbaa !13
  %53 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom75 = sext i32 %53 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %52, i64 %idxprom75
  %54 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %mul77 = mul nsw i32 %49, %54
  %55 = load ptr, ptr %cc, align 8, !tbaa !9
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom78 = sext i32 %56 to i64
  %arrayidx79 = getelementptr inbounds ptr, ptr %55, i64 %idxprom78
  %57 = load ptr, ptr %arrayidx79, align 8, !tbaa !13
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom80 = sext i32 %58 to i64
  %arrayidx81 = getelementptr inbounds i32, ptr %57, i64 %idxprom80
  %59 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %add = add nsw i32 %59, %mul77
  store i32 %add, ptr %arrayidx81, align 4, !tbaa !5
  br label %for.inc82

for.inc82:                                        ; preds = %for.body68
  %60 = load i32, ptr %p, align 4, !tbaa !5
  %inc83 = add nsw i32 %60, 1
  store i32 %inc83, ptr %p, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !22

for.end84:                                        ; preds = %for.cond.cleanup
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %61 = load i32, ptr %j, align 4, !tbaa !5
  %inc86 = add nsw i32 %61, 1
  store i32 %inc86, ptr %j, align 4, !tbaa !5
  br label %for.cond63, !llvm.loop !23

for.end87:                                        ; preds = %for.cond63
  br label %for.inc88

for.inc88:                                        ; preds = %for.end87
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %inc89 = add nsw i32 %62, 1
  store i32 %inc89, ptr %i, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !24

for.end90:                                        ; preds = %for.cond45
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc110, %for.end90
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %64 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp92 = icmp slt i32 %63, %64
  br i1 %cmp92, label %for.body93, label %for.end112

for.body93:                                       ; preds = %for.cond91
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc102, %for.body93
  %65 = load i32, ptr %j, align 4, !tbaa !5
  %66 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = sub nsw i32 %66, 1
  %cmp95 = icmp slt i32 %65, %sub
  br i1 %cmp95, label %for.body96, label %for.end104

for.body96:                                       ; preds = %for.cond94
  %67 = load ptr, ptr %cc, align 8, !tbaa !9
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom97 = sext i32 %68 to i64
  %arrayidx98 = getelementptr inbounds ptr, ptr %67, i64 %idxprom97
  %69 = load ptr, ptr %arrayidx98, align 8, !tbaa !13
  %70 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom99 = sext i32 %70 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %69, i64 %idxprom99
  %71 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %call101 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %71)
  br label %for.inc102

for.inc102:                                       ; preds = %for.body96
  %72 = load i32, ptr %j, align 4, !tbaa !5
  %inc103 = add nsw i32 %72, 1
  store i32 %inc103, ptr %j, align 4, !tbaa !5
  br label %for.cond94, !llvm.loop !25

for.end104:                                       ; preds = %for.cond94
  %73 = load ptr, ptr %cc, align 8, !tbaa !9
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom105 = sext i32 %74 to i64
  %arrayidx106 = getelementptr inbounds ptr, ptr %73, i64 %idxprom105
  %75 = load ptr, ptr %arrayidx106, align 8, !tbaa !13
  %76 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom107 = sext i32 %76 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %75, i64 %idxprom107
  %77 = load i32, ptr %arrayidx108, align 4, !tbaa !5
  %call109 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %77)
  br label %for.inc110

for.inc110:                                       ; preds = %for.end104
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %inc111 = add nsw i32 %78, 1
  store i32 %inc111, ptr %i, align 4, !tbaa !5
  br label %for.cond91, !llvm.loop !26

for.end112:                                       ; preds = %for.cond91
  call void @llvm.lifetime.end.p0(i64 8, ptr %cc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bb) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %aa) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p2 int", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 int", !12, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16, !17}
!23 = distinct !{!23, !16, !17}
!24 = distinct !{!24, !16, !17}
!25 = distinct !{!25, !16, !17}
!26 = distinct !{!26, !16, !17}
