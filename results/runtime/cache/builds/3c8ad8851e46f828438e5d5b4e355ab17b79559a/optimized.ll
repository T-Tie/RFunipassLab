; ModuleID = '<stdin>'
source_filename = "/tmp/tmp841kixu_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%d,%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %sz = alloca [8 x [8 x i32]], align 16
  %max = alloca [8 x i32], align 16
  %min = alloca [8 x i32], align 16
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef align 16 %sz) #3
  call void @llvm.lifetime.start.p0(i64 noundef 32, ptr noundef align 16 %max) #3
  call void @llvm.lifetime.start.p0(i64 noundef 32, ptr noundef align 16 %min) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %row) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %col) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %row, ptr noundef align 4 %col)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.end ]
  %0 = load i32, ptr %row, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.body3, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body3 ]
  %1 = load i32, ptr %col, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.2)
  %inc9 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.end66, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc68, %for.end66 ]
  %cmp12 = icmp slt i32 %i.1, %0
  br i1 %cmp12, label %for.body13, label %for.end69

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %if.end63, %for.body13
  %t.1 = phi i32 [ 0, %for.body13 ], [ %t.3, %if.end63 ]
  %j.1 = phi i32 [ 0, %for.body13 ], [ %add, %if.end63 ]
  %2 = load i32, ptr %col, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  %cmp15 = icmp slt i32 %j.1, %sub
  br i1 %cmp15, label %for.body16, label %for.end66

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %i.1 to i64
  %arrayidx18 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom17
  %idxprom19 = sext i32 %j.1 to i64
  %arrayidx20 = getelementptr inbounds [8 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %add = add nsw i32 %j.1, 1
  %idxprom23 = sext i32 %add to i64
  %arrayidx24 = getelementptr inbounds [8 x i32], ptr %arrayidx18, i64 0, i64 %idxprom23
  %4 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp sge i32 %3, %4
  br i1 %cmp25, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body16
  %cmp30 = icmp sge i32 %3, %t.1
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arrayidx36 = getelementptr inbounds [8 x i32], ptr %max, i64 0, i64 %idxprom17
  store i32 %j.1, ptr %arrayidx36, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body16
  %t.2 = phi i32 [ %3, %if.then ], [ %t.1, %land.lhs.true ], [ %t.1, %for.body16 ]
  %cmp46 = icmp sgt i32 %4, %3
  br i1 %cmp46, label %land.lhs.true47, label %if.end63

land.lhs.true47:                                  ; preds = %if.end
  %cmp53 = icmp sge i32 %4, %t.2
  br i1 %cmp53, label %if.then54, label %if.end63

if.then54:                                        ; preds = %land.lhs.true47
  %arrayidx62 = getelementptr inbounds [8 x i32], ptr %max, i64 0, i64 %idxprom17
  store i32 %add, ptr %arrayidx62, align 4, !tbaa !5
  br label %if.end63

if.end63:                                         ; preds = %if.then54, %land.lhs.true47, %if.end
  %t.3 = phi i32 [ %4, %if.then54 ], [ %t.2, %land.lhs.true47 ], [ %t.2, %if.end ]
  br label %for.cond14, !llvm.loop !13

for.end66:                                        ; preds = %for.cond14
  %inc68 = add nsw i32 %i.1, 1
  br label %for.cond11, !llvm.loop !14

for.end69:                                        ; preds = %for.cond11
  br label %for.cond70

for.cond70:                                       ; preds = %for.end133, %for.end69
  %i.2 = phi i32 [ 0, %for.end69 ], [ %inc135, %for.end133 ]
  %5 = load i32, ptr %col, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %i.2, %5
  br i1 %cmp71, label %for.body72, label %for.end136

for.body72:                                       ; preds = %for.cond70
  %idxprom74 = sext i32 %i.2 to i64
  %arrayidx75 = getelementptr inbounds [8 x i32], ptr %sz, i64 0, i64 %idxprom74
  %6 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  br label %for.cond76

for.cond76:                                       ; preds = %if.end130, %for.body72
  %j.2 = phi i32 [ 0, %for.body72 ], [ %add84, %if.end130 ]
  %m.0 = phi i32 [ %6, %for.body72 ], [ %m.2, %if.end130 ]
  %sub77 = sub nsw i32 %0, 1
  %cmp78 = icmp slt i32 %j.2, %sub77
  br i1 %cmp78, label %for.body79, label %for.end133

for.body79:                                       ; preds = %for.cond76
  %idxprom80 = sext i32 %j.2 to i64
  %arrayidx81 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom80
  %arrayidx83 = getelementptr inbounds [8 x i32], ptr %arrayidx81, i64 0, i64 %idxprom74
  %7 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %add84 = add nsw i32 %j.2, 1
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom85
  %arrayidx88 = getelementptr inbounds [8 x i32], ptr %arrayidx86, i64 0, i64 %idxprom74
  %8 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %cmp89 = icmp sle i32 %7, %8
  br i1 %cmp89, label %land.lhs.true90, label %if.end103

land.lhs.true90:                                  ; preds = %for.body79
  %cmp95 = icmp sle i32 %7, %m.0
  br i1 %cmp95, label %if.then96, label %if.end103

if.then96:                                        ; preds = %land.lhs.true90
  %arrayidx102 = getelementptr inbounds [8 x i32], ptr %min, i64 0, i64 %idxprom74
  store i32 %j.2, ptr %arrayidx102, align 4, !tbaa !5
  br label %if.end103

if.end103:                                        ; preds = %if.then96, %land.lhs.true90, %for.body79
  %m.1 = phi i32 [ %7, %if.then96 ], [ %m.0, %land.lhs.true90 ], [ %m.0, %for.body79 ]
  %cmp113 = icmp slt i32 %8, %7
  br i1 %cmp113, label %land.lhs.true114, label %if.end130

land.lhs.true114:                                 ; preds = %if.end103
  %cmp120 = icmp sle i32 %8, %m.1
  br i1 %cmp120, label %if.then121, label %if.end130

if.then121:                                       ; preds = %land.lhs.true114
  %arrayidx129 = getelementptr inbounds [8 x i32], ptr %min, i64 0, i64 %idxprom74
  store i32 %add84, ptr %arrayidx129, align 4, !tbaa !5
  br label %if.end130

if.end130:                                        ; preds = %if.then121, %land.lhs.true114, %if.end103
  %m.2 = phi i32 [ %8, %if.then121 ], [ %m.1, %land.lhs.true114 ], [ %m.1, %if.end103 ]
  br label %for.cond76, !llvm.loop !15

for.end133:                                       ; preds = %for.cond76
  %inc135 = add nsw i32 %i.2, 1
  br label %for.cond70, !llvm.loop !16

for.end136:                                       ; preds = %for.cond70
  br label %for.cond137

for.cond137:                                      ; preds = %if.end148, %for.end136
  %x.0 = phi i32 [ 0, %for.end136 ], [ %x.1, %if.end148 ]
  %i.3 = phi i32 [ 0, %for.end136 ], [ %inc150, %if.end148 ]
  %9 = load i32, ptr %row, align 4, !tbaa !5
  %cmp138 = icmp slt i32 %i.3, %9
  br i1 %cmp138, label %for.body139, label %for.end151

for.body139:                                      ; preds = %for.cond137
  %idxprom140 = sext i32 %i.3 to i64
  %arrayidx141 = getelementptr inbounds [8 x i32], ptr %max, i64 0, i64 %idxprom140
  %10 = load i32, ptr %arrayidx141, align 4, !tbaa !5
  %idxprom142 = sext i32 %10 to i64
  %arrayidx143 = getelementptr inbounds [8 x i32], ptr %min, i64 0, i64 %idxprom142
  %11 = load i32, ptr %arrayidx143, align 4, !tbaa !5
  %cmp144 = icmp eq i32 %11, %i.3
  br i1 %cmp144, label %if.then145, label %if.else

if.then145:                                       ; preds = %for.body139
  %call146 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %i.3, i32 noundef %10)
  br label %if.end148

if.else:                                          ; preds = %for.body139
  %add147 = add nsw i32 %x.0, 1
  br label %if.end148

if.end148:                                        ; preds = %if.else, %if.then145
  %x.1 = phi i32 [ %x.0, %if.then145 ], [ %add147, %if.else ]
  %inc150 = add nsw i32 %i.3, 1
  br label %for.cond137, !llvm.loop !17

for.end151:                                       ; preds = %for.cond137
  %cmp152 = icmp eq i32 %x.0, %9
  br i1 %cmp152, label %if.then153, label %if.end155

if.then153:                                       ; preds = %for.end151
  %call154 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %for.end151
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %col) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %row) #4
  call void @llvm.lifetime.end.p0(i64 noundef 32, ptr noundef %min) #4
  call void @llvm.lifetime.end.p0(i64 noundef 32, ptr noundef %max) #4
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %sz) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind willreturn }
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
!17 = distinct !{!17, !10, !11}
