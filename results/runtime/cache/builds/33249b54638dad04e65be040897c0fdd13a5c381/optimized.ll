; ModuleID = '<stdin>'
source_filename = "/tmp/tmpviewnt9e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [501 x i8], align 16
  %a = alloca [501 x [5 x i8]], align 16
  %n = alloca i32, align 4
  %b = alloca [500 x i32], align 16
  %c = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef align 16 %s) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2505, ptr noundef align 16 %a) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 2505, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %b) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %b, i8 noundef 0, i64 noundef 2000, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %s)
  %call3 = call i64 @strlen(ptr noundef %s) #7
  %conv = trunc i64 %call3 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc13, %for.inc12 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %add = add nsw i32 %sub, 1
  %cmp = icmp slt i32 %i.0, %add
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %j.0, %0
  br i1 %cmp5, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond4
  %add7 = add nsw i32 %i.0, %j.0
  %idxprom = sext i32 %add7 to i64
  %arrayidx = getelementptr inbounds [501 x i8], ptr %s, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %idxprom8 = sext i32 %i.0 to i64
  %arrayidx9 = getelementptr inbounds [501 x [5 x i8]], ptr %a, i64 0, i64 %idxprom8
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds [5 x i8], ptr %arrayidx9, i64 0, i64 %idxprom10
  store i8 %1, ptr %arrayidx11, align 1, !tbaa !9
  %inc = add nsw i32 %j.0, 1
  br label %for.cond4, !llvm.loop !10

for.inc12:                                        ; preds = %for.cond4
  %inc13 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end14:                                        ; preds = %for.cond
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc42, %for.end14
  %i.1 = phi i32 [ 0, %for.end14 ], [ %inc43, %for.inc42 ]
  %cmp18 = icmp slt i32 %i.1, %add
  br i1 %cmp18, label %for.body19, label %for.end44

for.body19:                                       ; preds = %for.cond15
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc39, %for.body19
  %i.1.sink = phi i32 [ %i.1, %for.body19 ], [ %add20, %for.inc39 ]
  %add20 = add nsw i32 %i.1.sink, 1
  %cmp24 = icmp slt i32 %add20, %add
  br i1 %cmp24, label %for.body25, label %for.inc42

for.body25:                                       ; preds = %for.cond21
  %idxprom26 = sext i32 %i.1 to i64
  %arrayidx27 = getelementptr inbounds [501 x [5 x i8]], ptr %a, i64 0, i64 %idxprom26
  %idxprom29 = sext i32 %add20 to i64
  %arrayidx30 = getelementptr inbounds [501 x [5 x i8]], ptr %a, i64 0, i64 %idxprom29
  %call32 = call i32 @strcmp(ptr noundef %arrayidx27, ptr noundef %arrayidx30) #7
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then, label %for.inc39

if.then:                                          ; preds = %for.body25
  %arrayidx35 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom26
  %2 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %add36 = add nsw i32 %2, 1
  store i32 %add36, ptr %arrayidx35, align 4, !tbaa !5
  br label %for.inc39

for.inc39:                                        ; preds = %if.then, %for.body25
  br label %for.cond21, !llvm.loop !14

for.inc42:                                        ; preds = %for.cond21
  %inc43 = add nsw i32 %i.1, 1
  br label %for.cond15, !llvm.loop !15

for.end44:                                        ; preds = %for.cond15
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc66, %for.end44
  %k.0 = phi i32 [ 500, %for.end44 ], [ %dec, %for.inc66 ]
  %z.0 = phi i32 [ 0, %for.end44 ], [ %z.1, %for.inc66 ]
  %cmp46 = icmp sgt i32 %k.0, 0
  br i1 %cmp46, label %land.end, label %for.end67

land.end:                                         ; preds = %for.cond45
  %cmp47 = icmp eq i32 %z.0, 0
  br i1 %cmp47, label %for.body48, label %if.else71

for.body48:                                       ; preds = %land.end
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc63, %for.body48
  %i.2 = phi i32 [ 0, %for.body48 ], [ %inc64, %for.inc63 ]
  %z.1 = phi i32 [ 0, %for.body48 ], [ %z.2, %for.inc63 ]
  %cmp52 = icmp slt i32 %i.2, %add
  br i1 %cmp52, label %for.body53, label %for.inc66

for.body53:                                       ; preds = %for.cond49
  %idxprom54 = sext i32 %i.2 to i64
  %arrayidx55 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom54
  %3 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %cmp56 = icmp eq i32 %3, %k.0
  br i1 %cmp56, label %if.then57, label %for.inc63

if.then57:                                        ; preds = %for.body53
  %idxprom58 = sext i32 %z.1 to i64
  %arrayidx59 = getelementptr inbounds [500 x i32], ptr %c, i64 0, i64 %idxprom58
  store i32 %i.2, ptr %arrayidx59, align 4, !tbaa !5
  %add60 = add nsw i32 %z.1, 1
  br label %for.inc63

for.inc63:                                        ; preds = %if.then57, %for.body53
  %z.2 = phi i32 [ %add60, %if.then57 ], [ %z.1, %for.body53 ]
  %inc64 = add nsw i32 %i.2, 1
  br label %for.cond49, !llvm.loop !16

for.inc66:                                        ; preds = %for.cond49
  %dec = add nsw i32 %k.0, -1
  br label %for.cond45, !llvm.loop !17

for.end67:                                        ; preds = %for.cond45
  %cmp68 = icmp eq i32 %z.0, 0
  br i1 %cmp68, label %if.then69, label %if.else71

if.then69:                                        ; preds = %for.end67
  %call70 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end86

if.else71:                                        ; preds = %land.end, %for.end67
  %add72 = add nsw i32 %k.0, 2
  %call73 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %add72)
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc83, %if.else71
  %i.3 = phi i32 [ 0, %if.else71 ], [ %inc84, %for.inc83 ]
  %cmp75 = icmp slt i32 %i.3, %z.0
  br i1 %cmp75, label %for.inc83, label %if.end86

for.inc83:                                        ; preds = %for.cond74
  %idxprom77 = sext i32 %i.3 to i64
  %arrayidx78 = getelementptr inbounds [500 x i32], ptr %c, i64 0, i64 %idxprom77
  %4 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %idxprom79 = sext i32 %4 to i64
  %arrayidx80 = getelementptr inbounds [501 x [5 x i8]], ptr %a, i64 0, i64 %idxprom79
  %call82 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %arrayidx80)
  %inc84 = add nsw i32 %i.3, 1
  br label %for.cond74, !llvm.loop !18

if.end86:                                         ; preds = %for.cond74, %if.then69
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 2505, ptr noundef %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef %s) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind willreturn memory(read) }
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
