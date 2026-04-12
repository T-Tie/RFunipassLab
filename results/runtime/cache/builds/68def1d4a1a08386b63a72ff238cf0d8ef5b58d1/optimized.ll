; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdv3iv3rn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z3calPA120_ii(ptr nofree noundef captures(none) %matrix, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %min = alloca i32, align 4
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %min) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %if.end
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %0, %n
  br i1 %cmp1, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  store i32 32767, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %1, %n
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [120 x i32], ptr %matrix, i64 %idxprom
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [120 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %3 = load i32, ptr %min, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %2, %3
  br i1 %cmp7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body4
  store i32 %2, ptr %min, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then8
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.end
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %4, %n
  br i1 %cmp15, label %for.inc25, label %for.inc28

for.inc25:                                        ; preds = %for.cond14
  %idxprom17 = sext i32 %0 to i64
  %arrayidx18 = getelementptr inbounds [120 x i32], ptr %matrix, i64 %idxprom17
  %idxprom19 = sext i32 %4 to i64
  %arrayidx20 = getelementptr inbounds [120 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %5 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %6 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %5, %6
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %inc26 = add nsw i32 %4, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !12

for.inc28:                                        ; preds = %for.cond14
  %inc29 = add nsw i32 %0, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end30:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc66, %for.end30
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %7, %n
  br i1 %cmp32, label %for.body33, label %for.end68

for.body33:                                       ; preds = %for.cond31
  store i32 32767, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc48, %for.body33
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %8, %n
  br i1 %cmp35, label %for.body36, label %for.end50

for.body36:                                       ; preds = %for.cond34
  %idxprom37 = sext i32 %8 to i64
  %arrayidx38 = getelementptr inbounds [120 x i32], ptr %matrix, i64 %idxprom37
  %idxprom39 = sext i32 %7 to i64
  %arrayidx40 = getelementptr inbounds [120 x i32], ptr %arrayidx38, i64 0, i64 %idxprom39
  %9 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %10 = load i32, ptr %min, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %9, %10
  br i1 %cmp41, label %if.then42, label %for.inc48

if.then42:                                        ; preds = %for.body36
  store i32 %9, ptr %min, align 4, !tbaa !5
  br label %for.inc48

for.inc48:                                        ; preds = %for.body36, %if.then42
  %inc49 = add nsw i32 %8, 1
  store i32 %inc49, ptr %j, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !14

for.end50:                                        ; preds = %for.cond34
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc63, %for.end50
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %11, %n
  br i1 %cmp52, label %for.inc63, label %for.inc66

for.inc63:                                        ; preds = %for.cond51
  %idxprom54 = sext i32 %11 to i64
  %arrayidx55 = getelementptr inbounds [120 x i32], ptr %matrix, i64 %idxprom54
  %idxprom56 = sext i32 %7 to i64
  %arrayidx57 = getelementptr inbounds [120 x i32], ptr %arrayidx55, i64 0, i64 %idxprom56
  %12 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %13 = load i32, ptr %min, align 4, !tbaa !5
  %sub58 = sub nsw i32 %12, %13
  store i32 %sub58, ptr %arrayidx57, align 4, !tbaa !5
  %inc64 = add nsw i32 %11, 1
  store i32 %inc64, ptr %j, align 4, !tbaa !5
  br label %for.cond51, !llvm.loop !15

for.inc66:                                        ; preds = %for.cond51
  %inc67 = add nsw i32 %7, 1
  store i32 %inc67, ptr %i, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !16

for.end68:                                        ; preds = %for.cond31
  %arrayidx69 = getelementptr inbounds [120 x i32], ptr %matrix, i64 1
  %arrayidx70 = getelementptr inbounds [120 x i32], ptr %arrayidx69, i64 0, i64 1
  %14 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc89, %for.end68
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %sub72 = sub nsw i32 %n, 1
  %cmp73 = icmp slt i32 %15, %sub72
  br i1 %cmp73, label %for.body74, label %for.end91

for.body74:                                       ; preds = %for.cond71
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc86, %for.body74
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %16, %n
  br i1 %cmp76, label %for.inc86, label %for.inc89

for.inc86:                                        ; preds = %for.cond75
  %add = add nsw i32 %15, 1
  %idxprom78 = sext i32 %add to i64
  %arrayidx79 = getelementptr inbounds [120 x i32], ptr %matrix, i64 %idxprom78
  %idxprom80 = sext i32 %16 to i64
  %arrayidx81 = getelementptr inbounds [120 x i32], ptr %arrayidx79, i64 0, i64 %idxprom80
  %17 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %idxprom82 = sext i32 %15 to i64
  %arrayidx83 = getelementptr inbounds [120 x i32], ptr %matrix, i64 %idxprom82
  %arrayidx85 = getelementptr inbounds [120 x i32], ptr %arrayidx83, i64 0, i64 %idxprom80
  store i32 %17, ptr %arrayidx85, align 4, !tbaa !5
  %inc87 = add nsw i32 %16, 1
  store i32 %inc87, ptr %j, align 4, !tbaa !5
  br label %for.cond75, !llvm.loop !17

for.inc89:                                        ; preds = %for.cond75
  %inc90 = add nsw i32 %15, 1
  store i32 %inc90, ptr %i, align 4, !tbaa !5
  br label %for.cond71, !llvm.loop !18

for.end91:                                        ; preds = %for.cond71
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc112, %for.end91
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %cmp94 = icmp slt i32 %18, %sub72
  br i1 %cmp94, label %for.body95, label %for.end114

for.body95:                                       ; preds = %for.cond92
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc109, %for.body95
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %cmp98 = icmp slt i32 %19, %sub72
  br i1 %cmp98, label %for.inc109, label %for.inc112

for.inc109:                                       ; preds = %for.cond96
  %idxprom100 = sext i32 %18 to i64
  %arrayidx101 = getelementptr inbounds [120 x i32], ptr %matrix, i64 %idxprom100
  %add102 = add nsw i32 %19, 1
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds [120 x i32], ptr %arrayidx101, i64 0, i64 %idxprom103
  %20 = load i32, ptr %arrayidx104, align 4, !tbaa !5, !invariant.load !19
  %idxprom107 = sext i32 %19 to i64
  %arrayidx108 = getelementptr inbounds [120 x i32], ptr %arrayidx101, i64 0, i64 %idxprom107
  store i32 %20, ptr %arrayidx108, align 4, !tbaa !5
  store i32 %add102, ptr %j, align 4, !tbaa !5
  br label %for.cond96, !llvm.loop !20

for.inc112:                                       ; preds = %for.cond96
  %inc113 = add nsw i32 %18, 1
  store i32 %inc113, ptr %i, align 4, !tbaa !5
  br label %for.cond92, !llvm.loop !21

for.end114:                                       ; preds = %for.cond92
  %call = call noundef i32 @_Z3calPA120_ii(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(488) %matrix, i32 noundef %sub72) #5
  %add116 = add nsw i32 %14, %call
  store i32 %add116, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %min) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  br label %return

return:                                           ; preds = %for.end114, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca [120 x [120 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #4
  call void @llvm.lifetime.start.p0(i64 noundef 57600, ptr noundef nonnull align 16 captures(none) dereferenceable(57600) %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.inc15

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [120 x [120 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [120 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx8)
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !22

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %2, 1
  store i32 %inc11, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !23

for.inc15:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3calPA120_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(57600) %a, i32 noundef %3) #6
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call13)
  %inc16 = add nsw i32 %0, 1
  store i32 %inc16, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end17:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 57600, ptr noundef nonnull align 16 dereferenceable(57600) %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nosync nounwind }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = !{}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
