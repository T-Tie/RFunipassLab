; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfwx1s0w8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %a = alloca [301 x i8], align 16
  %b = alloca [26 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 301, ptr noundef align 16 %a) #4
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 301, i1 noundef false) #5
  store i8 48, ptr %a, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 26, ptr noundef align 16 %b) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %idxprom = sext i32 %t.0 to i64
  %arrayidx = getelementptr inbounds [301 x i8], ptr %a, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %t.0, 1
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc16, %for.end
  %s.0 = phi i32 [ 0, %for.end ], [ %s.1, %for.inc16 ]
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ]
  %cmp5 = icmp slt i32 %i.1, %inc
  br i1 %cmp5, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond4
  %idxprom6 = sext i32 %i.1 to i64
  %arrayidx7 = getelementptr inbounds [301 x i8], ptr %a, i64 0, i64 %idxprom6
  %1 = load i8, ptr %arrayidx7, align 1, !tbaa !5, !invariant.load !11
  %conv8 = sext i8 %1 to i32
  %cmp9 = icmp sge i32 %conv8, 97
  br i1 %cmp9, label %land.lhs.true, label %for.inc16

land.lhs.true:                                    ; preds = %for.body
  %cmp13 = icmp sle i32 %conv8, 122
  br i1 %cmp13, label %if.then14, label %for.inc16

if.then14:                                        ; preds = %land.lhs.true
  %add = add nsw i32 %s.0, 1
  br label %for.inc16

for.inc16:                                        ; preds = %for.body, %land.lhs.true, %if.then14
  %s.1 = phi i32 [ %add, %if.then14 ], [ %s.0, %land.lhs.true ], [ %s.0, %for.body ]
  %inc17 = add nsw i32 %i.1, 1
  br label %for.cond4, !llvm.loop !12

for.end18:                                        ; preds = %for.cond4
  %cmp19 = icmp eq i32 %s.0, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.end18
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.end18
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc58, %if.end22
  %j.0 = phi i32 [ 0, %if.end22 ], [ %add32, %for.inc58 ]
  %cmp24 = icmp slt i32 %j.0, 26
  br i1 %cmp24, label %for.body25, label %for.end60

for.body25:                                       ; preds = %for.cond23
  %idxprom27 = sext i32 %j.0 to i64
  %arrayidx28 = getelementptr inbounds [26 x i8], ptr %b, i64 0, i64 %idxprom27
  %2 = load i8, ptr %arrayidx28, align 1, !tbaa !5, !invariant.load !11
  %conv29 = sext i8 %2 to i32
  %add30 = add nsw i32 %conv29, 1
  %conv31 = trunc i32 %add30 to i8
  %add32 = add nsw i32 %j.0, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [26 x i8], ptr %b, i64 0, i64 %idxprom33
  store i8 %conv31, ptr %arrayidx34, align 1, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc48, %for.body25
  %n.0 = phi i32 [ 0, %for.body25 ], [ %n.1, %for.inc48 ]
  %i.2 = phi i32 [ 0, %for.body25 ], [ %inc49, %for.inc48 ]
  %cmp36 = icmp slt i32 %i.2, %inc
  br i1 %cmp36, label %for.body37, label %for.end50

for.body37:                                       ; preds = %for.cond35
  %idxprom38 = sext i32 %i.2 to i64
  %arrayidx39 = getelementptr inbounds [301 x i8], ptr %a, i64 0, i64 %idxprom38
  %3 = load i8, ptr %arrayidx39, align 1, !tbaa !5, !invariant.load !11
  %conv40 = sext i8 %3 to i32
  %cmp44 = icmp eq i32 %conv40, %conv29
  br i1 %cmp44, label %if.then45, label %for.inc48

if.then45:                                        ; preds = %for.body37
  %inc46 = add nsw i32 %n.0, 1
  br label %for.inc48

for.inc48:                                        ; preds = %for.body37, %if.then45
  %n.1 = phi i32 [ %inc46, %if.then45 ], [ %n.0, %for.body37 ]
  %inc49 = add nsw i32 %i.2, 1
  br label %for.cond35, !llvm.loop !13

for.end50:                                        ; preds = %for.cond35
  %cmp51 = icmp ne i32 %n.0, 0
  br i1 %cmp51, label %if.then52, label %for.inc58

if.then52:                                        ; preds = %for.end50
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv29, i32 noundef %n.0)
  br label %for.inc58

for.inc58:                                        ; preds = %for.end50, %if.then52
  br label %for.cond23, !llvm.loop !14

for.end60:                                        ; preds = %for.cond23
  call void @llvm.lifetime.end.p0(i64 noundef 26, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 301, ptr noundef %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
