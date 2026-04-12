; ModuleID = '<stdin>'
source_filename = "/tmp/tmpe_52ltit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@_ZL1a = internal unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@_ZL1b = internal unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z6is_runi(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %rem = srem i32 %x, 100
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %rem1 = srem i32 %x, 4
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %rem3 = srem i32 %x, 400
  %cmp4 = icmp eq i32 %rem3, 0
  br i1 %cmp4, label %return, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  br label %return

return:                                           ; preds = %land.lhs.true, %lor.lhs.false, %if.else
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %lor.lhs.false ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %f1 = alloca [13 x [13 x i32]], align 16
  %f2 = alloca [13 x [13 x i32]], align 16
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %mon1 = alloca i32, align 4
  %mon2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 676, ptr noundef %f1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 676, ptr noundef %f2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %year) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %mon1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %mon2) #6
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %f1, i8 noundef 0, i64 noundef 676, i1 noundef false) #7
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %f2, i8 noundef 0, i64 noundef 676, i1 noundef false) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %add, %for.inc17 ]
  %cmp = icmp sle i32 %i.0, 12
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %i.0, 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc14, %for.body
  %phiofops3 = phi i32 [ %i.0, %for.body ], [ %j.0, %for.inc14 ]
  %j.0 = phi i32 [ %add, %for.body ], [ %inc15, %for.inc14 ]
  %cmp3 = icmp sle i32 %j.0, 12
  br i1 %cmp3, label %for.body4, label %for.inc17

for.body4:                                        ; preds = %for.cond2
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %k.0 = phi i32 [ %i.0, %for.body4 ], [ %inc, %for.inc ]
  %sum.0 = phi i32 [ 0, %for.body4 ], [ %add8, %for.inc ]
  %cmp6 = icmp sle i32 %k.0, %phiofops3
  br i1 %cmp6, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond5
  %idxprom = sext i32 %k.0 to i64
  %arrayidx = getelementptr inbounds [13 x i32], ptr @_ZL1a, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %add8 = add nsw i32 %sum.0, %0
  %inc = add nsw i32 %k.0, 1
  br label %for.cond5, !llvm.loop !10

for.end:                                          ; preds = %for.cond5
  %rem = srem i32 %sum.0, 7
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %if.then, label %for.inc14

if.then:                                          ; preds = %for.end
  %idxprom10 = sext i32 %i.0 to i64
  %arrayidx11 = getelementptr inbounds [13 x [13 x i32]], ptr %f1, i64 0, i64 %idxprom10
  %idxprom12 = sext i32 %j.0 to i64
  %arrayidx13 = getelementptr inbounds [13 x i32], ptr %arrayidx11, i64 0, i64 %idxprom12
  store i32 1, ptr %arrayidx13, align 4, !tbaa !5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end, %if.then
  %inc15 = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !13

for.inc17:                                        ; preds = %for.cond2
  br label %for.cond, !llvm.loop !14

for.end19:                                        ; preds = %for.cond
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc27, %for.end19
  %i.1 = phi i32 [ 1, %for.end19 ], [ %inc28, %for.inc27 ]
  %cmp21 = icmp sle i32 %i.1, 12
  br i1 %cmp21, label %for.inc27, label %for.end29

for.inc27:                                        ; preds = %for.cond20
  %idxprom23 = sext i32 %i.1 to i64
  %arrayidx24 = getelementptr inbounds [13 x [13 x i32]], ptr %f1, i64 0, i64 %idxprom23
  %arrayidx26 = getelementptr inbounds [13 x i32], ptr %arrayidx24, i64 0, i64 %idxprom23
  store i32 1, ptr %arrayidx26, align 4, !tbaa !5
  %inc28 = add nsw i32 %i.1, 1
  br label %for.cond20, !llvm.loop !15

for.end29:                                        ; preds = %for.cond20
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc48, %for.end29
  %phiofops2 = phi i32 [ 0, %for.end29 ], [ %i.2, %for.inc48 ]
  %i.2 = phi i32 [ 1, %for.end29 ], [ %inc49, %for.inc48 ]
  %cmp31 = icmp sle i32 %i.2, 12
  br i1 %cmp31, label %for.body32, label %for.end50

for.body32:                                       ; preds = %for.cond30
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc45, %for.body32
  %j.1 = phi i32 [ 1, %for.body32 ], [ %inc46, %for.inc45 ]
  %cmp35 = icmp sle i32 %j.1, %phiofops2
  br i1 %cmp35, label %for.inc45, label %for.inc48

for.inc45:                                        ; preds = %for.cond33
  %idxprom37 = sext i32 %j.1 to i64
  %arrayidx38 = getelementptr inbounds [13 x [13 x i32]], ptr %f1, i64 0, i64 %idxprom37
  %idxprom39 = sext i32 %i.2 to i64
  %arrayidx40 = getelementptr inbounds [13 x i32], ptr %arrayidx38, i64 0, i64 %idxprom39
  %1 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !9
  %arrayidx42 = getelementptr inbounds [13 x [13 x i32]], ptr %f1, i64 0, i64 %idxprom39
  %arrayidx44 = getelementptr inbounds [13 x i32], ptr %arrayidx42, i64 0, i64 %idxprom37
  store i32 %1, ptr %arrayidx44, align 4, !tbaa !5
  %inc46 = add nsw i32 %j.1, 1
  br label %for.cond33, !llvm.loop !16

for.inc48:                                        ; preds = %for.cond33
  %inc49 = add nsw i32 %i.2, 1
  br label %for.cond30, !llvm.loop !17

for.end50:                                        ; preds = %for.cond30
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc79, %for.end50
  %i.3 = phi i32 [ 1, %for.end50 ], [ %add54, %for.inc79 ]
  %cmp52 = icmp sle i32 %i.3, 12
  br i1 %cmp52, label %for.body53, label %for.end81

for.body53:                                       ; preds = %for.cond51
  %add54 = add nsw i32 %i.3, 1
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc76, %for.body53
  %phiofops1 = phi i32 [ %i.3, %for.body53 ], [ %j.2, %for.inc76 ]
  %j.2 = phi i32 [ %add54, %for.body53 ], [ %inc77, %for.inc76 ]
  %cmp56 = icmp sle i32 %j.2, 12
  br i1 %cmp56, label %for.body57, label %for.inc79

for.body57:                                       ; preds = %for.cond55
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc65, %for.body57
  %k.1 = phi i32 [ %i.3, %for.body57 ], [ %inc66, %for.inc65 ]
  %sum.1 = phi i32 [ 0, %for.body57 ], [ %add64, %for.inc65 ]
  %cmp60 = icmp sle i32 %k.1, %phiofops1
  br i1 %cmp60, label %for.inc65, label %for.end67

for.inc65:                                        ; preds = %for.cond58
  %idxprom62 = sext i32 %k.1 to i64
  %arrayidx63 = getelementptr inbounds [13 x i32], ptr @_ZL1b, i64 0, i64 %idxprom62
  %2 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %add64 = add nsw i32 %sum.1, %2
  %inc66 = add nsw i32 %k.1, 1
  br label %for.cond58, !llvm.loop !18

for.end67:                                        ; preds = %for.cond58
  %rem68 = srem i32 %sum.1, 7
  %cmp69 = icmp eq i32 %rem68, 0
  br i1 %cmp69, label %if.then70, label %for.inc76

if.then70:                                        ; preds = %for.end67
  %idxprom71 = sext i32 %i.3 to i64
  %arrayidx72 = getelementptr inbounds [13 x [13 x i32]], ptr %f2, i64 0, i64 %idxprom71
  %idxprom73 = sext i32 %j.2 to i64
  %arrayidx74 = getelementptr inbounds [13 x i32], ptr %arrayidx72, i64 0, i64 %idxprom73
  store i32 1, ptr %arrayidx74, align 4, !tbaa !5
  br label %for.inc76

for.inc76:                                        ; preds = %for.end67, %if.then70
  %inc77 = add nsw i32 %j.2, 1
  br label %for.cond55, !llvm.loop !19

for.inc79:                                        ; preds = %for.cond55
  br label %for.cond51, !llvm.loop !20

for.end81:                                        ; preds = %for.cond51
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc89, %for.end81
  %i.4 = phi i32 [ 1, %for.end81 ], [ %inc90, %for.inc89 ]
  %cmp83 = icmp sle i32 %i.4, 12
  br i1 %cmp83, label %for.inc89, label %for.end91

for.inc89:                                        ; preds = %for.cond82
  %idxprom85 = sext i32 %i.4 to i64
  %arrayidx86 = getelementptr inbounds [13 x [13 x i32]], ptr %f2, i64 0, i64 %idxprom85
  %arrayidx88 = getelementptr inbounds [13 x i32], ptr %arrayidx86, i64 0, i64 %idxprom85
  store i32 1, ptr %arrayidx88, align 4, !tbaa !5
  %inc90 = add nsw i32 %i.4, 1
  br label %for.cond82, !llvm.loop !21

for.end91:                                        ; preds = %for.cond82
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc110, %for.end91
  %phiofops = phi i32 [ 0, %for.end91 ], [ %i.5, %for.inc110 ]
  %i.5 = phi i32 [ 1, %for.end91 ], [ %inc111, %for.inc110 ]
  %cmp93 = icmp sle i32 %i.5, 12
  br i1 %cmp93, label %for.body94, label %for.end112

for.body94:                                       ; preds = %for.cond92
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc107, %for.body94
  %j.3 = phi i32 [ 1, %for.body94 ], [ %inc108, %for.inc107 ]
  %cmp97 = icmp sle i32 %j.3, %phiofops
  br i1 %cmp97, label %for.inc107, label %for.inc110

for.inc107:                                       ; preds = %for.cond95
  %idxprom99 = sext i32 %j.3 to i64
  %arrayidx100 = getelementptr inbounds [13 x [13 x i32]], ptr %f2, i64 0, i64 %idxprom99
  %idxprom101 = sext i32 %i.5 to i64
  %arrayidx102 = getelementptr inbounds [13 x i32], ptr %arrayidx100, i64 0, i64 %idxprom101
  %3 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %arrayidx104 = getelementptr inbounds [13 x [13 x i32]], ptr %f2, i64 0, i64 %idxprom101
  %arrayidx106 = getelementptr inbounds [13 x i32], ptr %arrayidx104, i64 0, i64 %idxprom99
  store i32 %3, ptr %arrayidx106, align 4, !tbaa !5
  %inc108 = add nsw i32 %j.3, 1
  br label %for.cond95, !llvm.loop !22

for.inc110:                                       ; preds = %for.cond95
  %inc111 = add nsw i32 %i.5, 1
  br label %for.cond92, !llvm.loop !23

for.end112:                                       ; preds = %for.cond92
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc141, %for.end112
  %i.6 = phi i32 [ 1, %for.end112 ], [ %inc142, %for.inc141 ]
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp114 = icmp sle i32 %i.6, %4
  br i1 %cmp114, label %for.body115, label %for.end143

for.body115:                                      ; preds = %for.cond113
  %call116 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %mon1, ptr noundef %mon2)
  %5 = load i32, ptr %year, align 4, !tbaa !5
  %call117 = call noundef i32 @_Z6is_runi(i32 noundef %5)
  %cmp118 = icmp eq i32 %call117, 1
  %6 = load i32, ptr %mon1, align 4, !tbaa !5
  %7 = load i32, ptr %mon2, align 4, !tbaa !5
  %idxprom130 = sext i32 %6 to i64
  %idxprom132 = sext i32 %7 to i64
  br i1 %cmp118, label %if.then119, label %if.else129

if.then119:                                       ; preds = %for.body115
  %arrayidx121 = getelementptr inbounds [13 x [13 x i32]], ptr %f2, i64 0, i64 %idxprom130
  %arrayidx123 = getelementptr inbounds [13 x i32], ptr %arrayidx121, i64 0, i64 %idxprom132
  %8 = load i32, ptr %arrayidx123, align 4, !tbaa !5
  %cmp124 = icmp eq i32 %8, 1
  br i1 %cmp124, label %for.inc141, label %if.else

if.else:                                          ; preds = %if.then119
  br label %for.inc141

if.else129:                                       ; preds = %for.body115
  %arrayidx131 = getelementptr inbounds [13 x [13 x i32]], ptr %f1, i64 0, i64 %idxprom130
  %arrayidx133 = getelementptr inbounds [13 x i32], ptr %arrayidx131, i64 0, i64 %idxprom132
  %9 = load i32, ptr %arrayidx133, align 4, !tbaa !5
  %cmp134 = icmp eq i32 %9, 1
  br i1 %cmp134, label %for.inc141, label %if.else137

if.else137:                                       ; preds = %if.else129
  br label %for.inc141

for.inc141:                                       ; preds = %if.else129, %if.then119, %if.else, %if.else137
  %.str.3.sink = phi ptr [ @.str.3, %if.else137 ], [ @.str.3, %if.else ], [ @.str.2, %if.then119 ], [ @.str.2, %if.else129 ]
  %call138 = call i32 (ptr, ...) @printf(ptr noundef %.str.3.sink) #8
  %inc142 = add nsw i32 %i.6, 1
  br label %for.cond113, !llvm.loop !24

for.end143:                                       ; preds = %for.cond113
  call void @llvm.lifetime.end.p0(i64 4, ptr %mon2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %mon1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %year) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 676, ptr %f2) #8
  call void @llvm.lifetime.end.p0(i64 676, ptr %f1) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nofree willreturn }
attributes #8 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
