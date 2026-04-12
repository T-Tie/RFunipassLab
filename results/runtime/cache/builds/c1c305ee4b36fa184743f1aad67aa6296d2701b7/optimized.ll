; ModuleID = '<stdin>'
source_filename = "/tmp/tmph8rybu3n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"5050\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  %d = alloca [100 x i32], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %c) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %d) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x2) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %x1, ptr noundef align 4 %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 1
  %cmp = icmp sle i32 %i.0, %sub
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %y1, align 4, !tbaa !5
  %sub2 = sub nsw i32 %1, 1
  %cmp3 = icmp sle i32 %j.0, %sub2
  br i1 %cmp3, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx6)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %inc9 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x2, ptr noundef %y2)
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc28, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc29, %for.inc28 ]
  %2 = load i32, ptr %x2, align 4, !tbaa !5
  %sub13 = sub nsw i32 %2, 1
  %cmp14 = icmp sle i32 %i.1, %sub13
  br i1 %cmp14, label %for.body15, label %for.end30

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc26, %for.inc25 ]
  %3 = load i32, ptr %y2, align 4, !tbaa !5
  %sub17 = sub nsw i32 %3, 1
  %cmp18 = icmp sle i32 %j.1, %sub17
  br i1 %cmp18, label %for.inc25, label %for.inc28

for.inc25:                                        ; preds = %for.cond16
  %idxprom20 = sext i32 %i.1 to i64
  %arrayidx21 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %idxprom20
  %idxprom22 = sext i32 %j.1 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx23)
  %inc26 = add nsw i32 %j.1, 1
  br label %for.cond16, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond16
  %inc29 = add nsw i32 %i.1, 1
  br label %for.cond12, !llvm.loop !14

for.end30:                                        ; preds = %for.cond12
  %4 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %4, %2
  br i1 %cmp31, label %if.end, label %if.else

if.else:                                          ; preds = %for.end30
  br label %if.end

if.end:                                           ; preds = %for.end30, %if.else
  %5 = phi i32 [ %2, %for.end30 ], [ %4, %if.else ]
  %6 = load i32, ptr %y1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %6, %7
  br i1 %cmp32, label %if.end35, label %if.else34

if.else34:                                        ; preds = %if.end
  br label %if.end35

if.end35:                                         ; preds = %if.end, %if.else34
  %8 = phi i32 [ %7, %if.end ], [ %6, %if.else34 ]
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc49, %if.end35
  %i.2 = phi i32 [ 0, %if.end35 ], [ %inc50, %for.inc49 ]
  %cmp37 = icmp slt i32 %i.2, %5
  br i1 %cmp37, label %for.body38, label %for.end51

for.body38:                                       ; preds = %for.cond36
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc46, %for.body38
  %j.2 = phi i32 [ 0, %for.body38 ], [ %inc47, %for.inc46 ]
  %cmp40 = icmp slt i32 %j.2, %8
  br i1 %cmp40, label %for.inc46, label %for.inc49

for.inc46:                                        ; preds = %for.cond39
  %idxprom42 = sext i32 %i.2 to i64
  %arrayidx43 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom42
  %idxprom44 = sext i32 %j.2 to i64
  %arrayidx45 = getelementptr inbounds [100 x i32], ptr %arrayidx43, i64 0, i64 %idxprom44
  store i32 0, ptr %arrayidx45, align 4, !tbaa !5
  %inc47 = add nsw i32 %j.2, 1
  br label %for.cond39, !llvm.loop !15

for.inc49:                                        ; preds = %for.cond39
  %inc50 = add nsw i32 %i.2, 1
  br label %for.cond36, !llvm.loop !16

for.end51:                                        ; preds = %for.cond36
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc83, %for.end51
  %i.3 = phi i32 [ 0, %for.end51 ], [ %inc84, %for.inc83 ]
  %cmp53 = icmp slt i32 %i.3, %5
  br i1 %cmp53, label %for.body54, label %for.end85

for.body54:                                       ; preds = %for.cond52
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc80, %for.body54
  %j.3 = phi i32 [ 0, %for.body54 ], [ %inc81, %for.inc80 ]
  %cmp56 = icmp slt i32 %j.3, %8
  br i1 %cmp56, label %for.body57, label %for.inc83

for.body57:                                       ; preds = %for.cond55
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc77, %for.body57
  %t.0 = phi i32 [ 0, %for.body57 ], [ %inc78, %for.inc77 ]
  %cmp59 = icmp slt i32 %t.0, %6
  br i1 %cmp59, label %for.inc77, label %for.inc80

for.inc77:                                        ; preds = %for.cond58
  %idxprom61 = sext i32 %i.3 to i64
  %arrayidx62 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom61
  %idxprom63 = sext i32 %j.3 to i64
  %arrayidx64 = getelementptr inbounds [100 x i32], ptr %arrayidx62, i64 0, i64 %idxprom63
  %9 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %arrayidx66 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom61
  %idxprom67 = sext i32 %t.0 to i64
  %arrayidx68 = getelementptr inbounds [100 x i32], ptr %arrayidx66, i64 0, i64 %idxprom67
  %10 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %arrayidx70 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %idxprom67
  %arrayidx72 = getelementptr inbounds [100 x i32], ptr %arrayidx70, i64 0, i64 %idxprom63
  %11 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %mul = mul nsw i32 %10, %11
  %add = add nsw i32 %9, %mul
  store i32 %add, ptr %arrayidx64, align 4, !tbaa !5
  %inc78 = add nsw i32 %t.0, 1
  br label %for.cond58, !llvm.loop !17

for.inc80:                                        ; preds = %for.cond58
  %inc81 = add nsw i32 %j.3, 1
  br label %for.cond55, !llvm.loop !18

for.inc83:                                        ; preds = %for.cond55
  %inc84 = add nsw i32 %i.3, 1
  br label %for.cond52, !llvm.loop !19

for.end85:                                        ; preds = %for.cond52
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc91, %for.end85
  %i.4 = phi i32 [ 0, %for.end85 ], [ %inc92, %for.inc91 ]
  %cmp87 = icmp slt i32 %i.4, %5
  br i1 %cmp87, label %for.inc91, label %for.end93

for.inc91:                                        ; preds = %for.cond86
  %idxprom89 = sext i32 %i.4 to i64
  %arrayidx90 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom89
  store i32 0, ptr %arrayidx90, align 4, !tbaa !5
  %inc92 = add nsw i32 %i.4, 1
  br label %for.cond86, !llvm.loop !20

for.end93:                                        ; preds = %for.cond86
  %idxprom94 = sext i32 %5 to i64
  %arrayidx95 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom94
  store i32 %8, ptr %arrayidx95, align 4, !tbaa !5
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc115, %for.end93
  %i.5 = phi i32 [ 0, %for.end93 ], [ %inc116, %for.inc115 ]
  %cmp97 = icmp slt i32 %i.5, %5
  br i1 %cmp97, label %for.body98, label %for.end117

for.body98:                                       ; preds = %for.cond96
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.body98
  %j.4 = phi i32 [ 0, %for.body98 ], [ %inc113, %for.inc112 ]
  %cmp100 = icmp slt i32 %j.4, %8
  br i1 %cmp100, label %for.body101, label %for.inc115

for.body101:                                      ; preds = %for.cond99
  %idxprom102 = sext i32 %i.5 to i64
  %arrayidx103 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom102
  %idxprom104 = sext i32 %j.4 to i64
  %arrayidx105 = getelementptr inbounds [100 x i32], ptr %arrayidx103, i64 0, i64 %idxprom104
  %12 = load i32, ptr %arrayidx105, align 4, !tbaa !5
  %cmp106 = icmp eq i32 %12, 0
  br i1 %cmp106, label %if.then107, label %for.inc112

if.then107:                                       ; preds = %for.body101
  %arrayidx109 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom102
  %13 = load i32, ptr %arrayidx109, align 4, !tbaa !5
  %inc110 = add nsw i32 %13, 1
  store i32 %inc110, ptr %arrayidx109, align 4, !tbaa !5
  br label %for.inc112

for.inc112:                                       ; preds = %for.body101, %if.then107
  %inc113 = add nsw i32 %j.4, 1
  br label %for.cond99, !llvm.loop !21

for.inc115:                                       ; preds = %for.cond99
  %inc116 = add nsw i32 %i.5, 1
  br label %for.cond96, !llvm.loop !22

for.end117:                                       ; preds = %for.cond96
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc198, %for.end117
  %i.6 = phi i32 [ 0, %for.end117 ], [ %inc199, %for.inc198 ]
  %cmp119 = icmp slt i32 %i.6, %5
  br i1 %cmp119, label %for.body120, label %for.end200

for.body120:                                      ; preds = %for.cond118
  %idxprom121 = sext i32 %i.6 to i64
  %arrayidx122 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom121
  %14 = load i32, ptr %arrayidx122, align 4, !tbaa !5
  %cmp123 = icmp ne i32 %14, %8
  br i1 %cmp123, label %if.then124, label %if.else151

if.then124:                                       ; preds = %for.body120
  %cmp125 = icmp eq i32 %5, 100
  br i1 %cmp125, label %land.lhs.true, label %if.else131

land.lhs.true:                                    ; preds = %if.then124
  %cmp126 = icmp eq i32 %8, 100
  br i1 %cmp126, label %land.lhs.true127, label %if.else131

land.lhs.true127:                                 ; preds = %land.lhs.true
  %cmp128 = icmp eq i32 %i.6, 0
  br i1 %cmp128, label %if.then129, label %if.else131

if.then129:                                       ; preds = %land.lhs.true127
  %call130 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5
  br label %if.end136

if.else131:                                       ; preds = %land.lhs.true127, %land.lhs.true, %if.then124
  %arrayidx133 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom121
  %15 = load i32, ptr %arrayidx133, align 16, !tbaa !5
  %call135 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %15) #5
  br label %if.end136

if.end136:                                        ; preds = %if.else131, %if.then129
  br label %for.cond137

for.cond137:                                      ; preds = %for.inc148, %if.end136
  %j.5 = phi i32 [ 1, %if.end136 ], [ %inc149, %for.inc148 ]
  %sub140 = sub nsw i32 %8, %14
  %cmp141 = icmp slt i32 %j.5, %sub140
  br i1 %cmp141, label %for.inc148, label %if.end178

for.inc148:                                       ; preds = %for.cond137
  %arrayidx144 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom121
  %idxprom145 = sext i32 %j.5 to i64
  %arrayidx146 = getelementptr inbounds [100 x i32], ptr %arrayidx144, i64 0, i64 %idxprom145
  %16 = load i32, ptr %arrayidx146, align 4, !tbaa !5
  %call147 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %16) #5
  %inc149 = add nsw i32 %j.5, 1
  br label %for.cond137, !llvm.loop !23

if.else151:                                       ; preds = %for.body120
  %add152 = add nsw i32 %i.6, 1
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom153
  %17 = load i32, ptr %arrayidx154, align 4, !tbaa !5
  %cmp155 = icmp ne i32 %17, %8
  br i1 %cmp155, label %if.then156, label %for.end200

if.then156:                                       ; preds = %if.else151
  %call157 = call i32 (ptr, ...) @printf(ptr noundef @.str.4) #5
  br label %for.cond158

for.cond158:                                      ; preds = %for.inc170, %if.then156
  %j.6 = phi i32 [ 1, %if.then156 ], [ %inc171, %for.inc170 ]
  %sub162 = sub nsw i32 %8, %17
  %cmp163 = icmp slt i32 %j.6, %sub162
  br i1 %cmp163, label %for.inc170, label %if.end178

for.inc170:                                       ; preds = %for.cond158
  %arrayidx166 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom121
  %idxprom167 = sext i32 %j.6 to i64
  %arrayidx168 = getelementptr inbounds [100 x i32], ptr %arrayidx166, i64 0, i64 %idxprom167
  %18 = load i32, ptr %arrayidx168, align 4, !tbaa !5
  %call169 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %18) #5
  %inc171 = add nsw i32 %j.6, 1
  br label %for.cond158, !llvm.loop !24

if.end178:                                        ; preds = %for.cond158, %for.cond137
  %sub179 = sub nsw i32 %5, 1
  %cmp180 = icmp ne i32 %i.6, %sub179
  br i1 %cmp180, label %land.lhs.true181, label %for.inc198

land.lhs.true181:                                 ; preds = %if.end178
  %add182 = add nsw i32 %i.6, 1
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom183
  %19 = load i32, ptr %arrayidx184, align 4, !tbaa !5
  %cmp185 = icmp ne i32 %19, %8
  br i1 %cmp185, label %if.then195, label %land.lhs.true190

land.lhs.true190:                                 ; preds = %land.lhs.true181
  %add191 = add nsw i32 %i.6, 2
  %idxprom192 = sext i32 %add191 to i64
  %arrayidx193 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom192
  %20 = load i32, ptr %arrayidx193, align 4, !tbaa !5
  %cmp194 = icmp ne i32 %20, %8
  br i1 %cmp194, label %if.then195, label %for.inc198

if.then195:                                       ; preds = %land.lhs.true190, %land.lhs.true181
  %call196 = call i32 (ptr, ...) @printf(ptr noundef @.str.5) #5
  br label %for.inc198

for.inc198:                                       ; preds = %if.end178, %land.lhs.true190, %if.then195
  %inc199 = add nsw i32 %i.6, 1
  br label %for.cond118, !llvm.loop !25

for.end200:                                       ; preds = %if.else151, %for.cond118
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %d) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
