; ModuleID = '<stdin>'
source_filename = "/tmp/tmph8rybu3n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"5050\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

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
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %c) #6
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %d) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv80, %1
  br i1 %cmp.not.not, label %for.cond1, label %for.end10

for.cond1:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3.not.not, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv80, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond12

for.cond12:                                       ; preds = %for.end27, %for.end10
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.end27 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14.not.not = icmp slt i64 %indvars.iv86, %5
  br i1 %cmp14.not.not, label %for.cond16, label %for.end30

for.cond16:                                       ; preds = %for.cond12, %for.body19
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body19 ], [ 0, %for.cond12 ]
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp18.not.not = icmp slt i64 %indvars.iv83, %7
  br i1 %cmp18.not.not, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv86, i64 %indvars.iv83
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx23)
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond16, !llvm.loop !13

for.end27:                                        ; preds = %for.cond16
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond12, !llvm.loop !14

for.end30:                                        ; preds = %for.cond12
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %9 = load i32, ptr %y1, align 4, !tbaa !5
  %10 = load i32, ptr %y2, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 %9)
  %smax92 = call i32 @llvm.smax.i32(i32 %smax, i32 noundef 0)
  %smax97 = call i32 @llvm.smax.i32(i32 %4, i32 %8)
  %smax98 = call i32 @llvm.smax.i32(i32 %smax97, i32 noundef 0)
  %wide.trip.count99 = zext nneg i32 %smax98 to i64
  %wide.trip.count = zext nneg i32 %smax92 to i64
  br label %for.cond36

for.cond36:                                       ; preds = %for.end48, %for.end30
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.end48 ], [ 0, %for.end30 ]
  %exitcond100.not = icmp eq i64 %indvars.iv93, %wide.trip.count99
  br i1 %exitcond100.not, label %for.cond52.preheader, label %for.cond39

for.cond52.preheader:                             ; preds = %for.cond36
  %smax104 = call i32 @llvm.smax.i32(i32 %9, i32 noundef 0)
  %wide.trip.count105 = zext nneg i32 %smax104 to i64
  br label %for.cond52

for.cond39:                                       ; preds = %for.cond36, %for.body41
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %for.body41 ], [ 0, %for.cond36 ]
  %exitcond.not = icmp eq i64 %indvars.iv89, %wide.trip.count
  br i1 %exitcond.not, label %for.end48, label %for.body41

for.body41:                                       ; preds = %for.cond39
  %arrayidx45 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv93, i64 %indvars.iv89
  store i32 0, ptr %arrayidx45, align 4, !tbaa !5
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond39, !llvm.loop !15

for.end48:                                        ; preds = %for.cond39
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond36, !llvm.loop !16

for.cond52:                                       ; preds = %for.cond52.preheader, %for.end82
  %indvars.iv114 = phi i64 [ 0, %for.cond52.preheader ], [ %indvars.iv.next115, %for.end82 ]
  %exitcond118.not = icmp eq i64 %indvars.iv114, %wide.trip.count99
  br i1 %exitcond118.not, label %for.cond86, label %for.cond55

for.cond55:                                       ; preds = %for.cond52, %for.end79
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.end79 ], [ 0, %for.cond52 ]
  %exitcond113.not = icmp eq i64 %indvars.iv107, %wide.trip.count
  br i1 %exitcond113.not, label %for.end82, label %for.cond58.preheader

for.cond58.preheader:                             ; preds = %for.cond55
  %arrayidx64 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv114, i64 %indvars.iv107
  br label %for.cond58

for.cond58:                                       ; preds = %for.cond58.preheader, %for.body60
  %indvars.iv101 = phi i64 [ 0, %for.cond58.preheader ], [ %indvars.iv.next102, %for.body60 ]
  %exitcond106.not = icmp eq i64 %indvars.iv101, %wide.trip.count105
  br i1 %exitcond106.not, label %for.end79, label %for.body60

for.body60:                                       ; preds = %for.cond58
  %11 = load i32, ptr %arrayidx64, align 4, !tbaa !5, !invariant.load !17
  %arrayidx68 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv114, i64 %indvars.iv101
  %12 = load i32, ptr %arrayidx68, align 4, !tbaa !5, !invariant.load !17
  %arrayidx72 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv101, i64 %indvars.iv107
  %13 = load i32, ptr %arrayidx72, align 4, !tbaa !5, !invariant.load !17
  %mul = mul nsw i32 %13, %12
  %add = add nsw i32 %mul, %11
  store i32 %add, ptr %arrayidx64, align 4, !tbaa !5
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond58, !llvm.loop !18

for.end79:                                        ; preds = %for.cond58
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  br label %for.cond55, !llvm.loop !19

for.end82:                                        ; preds = %for.cond55
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %for.cond52, !llvm.loop !20

for.cond86:                                       ; preds = %for.cond52, %for.body88
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body88 ], [ 0, %for.cond52 ]
  %exitcond123.not = icmp eq i64 %indvars.iv119, %wide.trip.count99
  br i1 %exitcond123.not, label %for.end93, label %for.body88

for.body88:                                       ; preds = %for.cond86
  %arrayidx90 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %indvars.iv119
  store i32 0, ptr %arrayidx90, align 4, !tbaa !5
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  br label %for.cond86, !llvm.loop !21

for.end93:                                        ; preds = %for.cond86
  %idxprom94 = sext i32 %smax97 to i64
  %arrayidx95 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom94
  store i32 %smax, ptr %arrayidx95, align 4, !tbaa !5
  br label %for.cond96

for.cond96:                                       ; preds = %for.end114, %for.end93
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %for.end114 ], [ 0, %for.end93 ]
  %exitcond135.not = icmp eq i64 %indvars.iv131, %wide.trip.count99
  br i1 %exitcond135.not, label %for.cond118.preheader, label %for.cond99.preheader

for.cond99.preheader:                             ; preds = %for.cond96
  %arrayidx109 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %indvars.iv131
  br label %for.cond99

for.cond118.preheader:                            ; preds = %for.cond96
  %cmp125 = icmp eq i32 %smax97, 100
  %cmp126 = icmp eq i32 %smax, 100
  %or.cond = select i1 %cmp125, i1 %cmp126, i1 false
  %sub179 = add nsw i32 %smax97, -1
  %14 = zext i32 %sub179 to i64
  br label %for.cond118

for.cond99:                                       ; preds = %for.cond99.preheader, %if.end111
  %indvars.iv124 = phi i64 [ 0, %for.cond99.preheader ], [ %indvars.iv.next125, %if.end111 ]
  %exitcond130.not = icmp eq i64 %indvars.iv124, %wide.trip.count
  br i1 %exitcond130.not, label %for.end114, label %for.body101

for.body101:                                      ; preds = %for.cond99
  %arrayidx105 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv131, i64 %indvars.iv124
  %15 = load i32, ptr %arrayidx105, align 4, !tbaa !5, !invariant.load !17
  %cmp106 = icmp eq i32 %15, 0
  br i1 %cmp106, label %if.then107, label %if.end111

if.then107:                                       ; preds = %for.body101
  %16 = load i32, ptr %arrayidx109, align 4, !tbaa !5
  %inc110 = add nsw i32 %16, 1
  store i32 %inc110, ptr %arrayidx109, align 4, !tbaa !5
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %for.body101
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  br label %for.cond99, !llvm.loop !22

for.end114:                                       ; preds = %for.cond99
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  br label %for.cond96, !llvm.loop !23

for.cond118:                                      ; preds = %for.cond118.preheader, %if.end197
  %indvars.iv148 = phi i64 [ 0, %for.cond118.preheader ], [ %.pre.pre-phi, %if.end197 ]
  %exitcond155.not = icmp eq i64 %indvars.iv148, %wide.trip.count99
  br i1 %exitcond155.not, label %for.end200, label %for.body120

for.body120:                                      ; preds = %for.cond118
  %arrayidx122 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %indvars.iv148
  %17 = load i32, ptr %arrayidx122, align 4, !tbaa !5, !invariant.load !17
  %cmp123.not = icmp eq i32 %17, %smax
  br i1 %cmp123.not, label %if.else151, label %if.then124

if.then124:                                       ; preds = %for.body120
  %cmp128 = icmp eq i64 %indvars.iv148, 0
  %or.cond75 = and i1 %or.cond, %cmp128
  br i1 %or.cond75, label %if.then129, label %if.else131

if.then129:                                       ; preds = %if.then124
  %call130 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) #7
  br label %if.end136

if.else131:                                       ; preds = %if.then124
  %arrayidx133 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv148
  %18 = load i32, ptr %arrayidx133, align 16, !tbaa !5
  %call135 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %18) #7
  br label %if.end136

if.end136:                                        ; preds = %if.else131, %if.then129
  %sub140 = sub nsw i32 %smax, %17
  %smax139 = call i32 @llvm.smax.i32(i32 %sub140, i32 noundef 1)
  %wide.trip.count140 = zext nneg i32 %smax139 to i64
  br label %for.cond137

for.cond137:                                      ; preds = %for.body142, %if.end136
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %for.body142 ], [ 1, %if.end136 ]
  %exitcond141.not = icmp eq i64 %indvars.iv136, %wide.trip.count140
  br i1 %exitcond141.not, label %if.end178.loopexit161, label %for.body142

for.body142:                                      ; preds = %for.cond137
  %arrayidx146 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv148, i64 %indvars.iv136
  %19 = load i32, ptr %arrayidx146, align 4, !tbaa !5
  %call147 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %19) #7
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  br label %for.cond137, !llvm.loop !24

if.else151:                                       ; preds = %for.body120
  %20 = add nuw nsw i64 %indvars.iv148, 1
  %arrayidx154 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %20
  %21 = load i32, ptr %arrayidx154, align 4, !tbaa !5
  %cmp155.not = icmp eq i32 %21, %smax
  br i1 %cmp155.not, label %for.end200, label %if.then156

if.then156:                                       ; preds = %if.else151
  %putchar = call i32 @putchar(i32 noundef 48) #7
  %sub162 = sub nsw i32 %smax, %21
  %smax145 = call i32 @llvm.smax.i32(i32 %sub162, i32 noundef 1)
  %wide.trip.count146 = zext nneg i32 %smax145 to i64
  br label %for.cond158

for.cond158:                                      ; preds = %for.body164, %if.then156
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %for.body164 ], [ 1, %if.then156 ]
  %exitcond147.not = icmp eq i64 %indvars.iv142, %wide.trip.count146
  br i1 %exitcond147.not, label %if.end178, label %for.body164

for.body164:                                      ; preds = %for.cond158
  %arrayidx168 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv148, i64 %indvars.iv142
  %22 = load i32, ptr %arrayidx168, align 4, !tbaa !5
  %call169 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %22) #7
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  br label %for.cond158, !llvm.loop !25

if.end178.loopexit161:                            ; preds = %for.cond137
  %.pre162 = add nuw nsw i64 %indvars.iv148, 1
  br label %if.end178

if.end178:                                        ; preds = %for.cond158, %if.end178.loopexit161
  %.pre.pre-phi = phi i64 [ %.pre162, %if.end178.loopexit161 ], [ %20, %for.cond158 ]
  %cmp180.not = icmp eq i64 %indvars.iv148, %14
  br i1 %cmp180.not, label %if.end197, label %land.lhs.true181

land.lhs.true181:                                 ; preds = %if.end178
  %arrayidx184 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %.pre.pre-phi
  %23 = load i32, ptr %arrayidx184, align 4, !tbaa !5
  %cmp185.not = icmp eq i32 %23, %smax
  br i1 %cmp185.not, label %land.lhs.true190, label %if.then195

land.lhs.true190:                                 ; preds = %land.lhs.true181
  %24 = add nuw nsw i64 %indvars.iv148, 2
  %arrayidx193 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %24
  %25 = load i32, ptr %arrayidx193, align 4, !tbaa !5
  %cmp194.not = icmp eq i32 %25, %smax
  br i1 %cmp194.not, label %if.end197, label %if.then195

if.then195:                                       ; preds = %land.lhs.true190, %land.lhs.true181
  %putchar76 = call i32 @putchar(i32 noundef 10) #7
  br label %if.end197

if.end197:                                        ; preds = %if.end178, %if.then195, %land.lhs.true190
  br label %for.cond118, !llvm.loop !26

for.end200:                                       ; preds = %for.cond118, %if.else151
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %d) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }

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
!17 = !{}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
