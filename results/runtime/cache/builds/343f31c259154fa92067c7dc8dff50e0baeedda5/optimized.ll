; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmqvlwl51.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [8 x [8 x i32]], align 16
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n, ptr noundef align 4 %m)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %m, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc72, %for.end9
  %min.0 = phi i32 [ 0, %for.end9 ], [ %min.1, %for.inc72 ]
  %t.0 = phi i32 [ 0, %for.end9 ], [ %t.1, %for.inc72 ]
  %r.0 = phi i32 [ undef, %for.end9 ], [ %r.1, %for.inc72 ]
  %max.0 = phi i32 [ 0, %for.end9 ], [ %max.4, %for.inc72 ]
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc73, %for.inc72 ]
  %s.0 = phi i32 [ undef, %for.end9 ], [ %s.1, %for.inc72 ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %i.1, %2
  br i1 %cmp11, label %for.body12, label %for.end74

for.body12:                                       ; preds = %for.cond10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc31, %for.body12
  %r.1 = phi i32 [ %r.0, %for.body12 ], [ %r.2, %for.inc31 ]
  %max.1 = phi i32 [ %max.0, %for.body12 ], [ %max.2, %for.inc31 ]
  %j.1 = phi i32 [ 0, %for.body12 ], [ %inc32, %for.inc31 ]
  %3 = load i32, ptr %m, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %j.1, %3
  br i1 %cmp14, label %for.body15, label %for.end33

for.body15:                                       ; preds = %for.cond13
  %cmp16 = icmp eq i32 %j.1, 0
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %for.body15
  %idxprom17 = sext i32 %i.1 to i64
  %arrayidx18 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom17
  %4 = load i32, ptr %arrayidx18, align 16, !tbaa !5
  br label %for.inc31

if.else:                                          ; preds = %for.body15
  %idxprom20 = sext i32 %i.1 to i64
  %arrayidx21 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom20
  %idxprom22 = sext i32 %j.1 to i64
  %arrayidx23 = getelementptr inbounds [8 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %5 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %5, %max.1
  br i1 %cmp24, label %if.then25, label %for.inc31

if.then25:                                        ; preds = %if.else
  br label %for.inc31

for.inc31:                                        ; preds = %if.then, %if.then25, %if.else
  %r.2 = phi i32 [ 0, %if.then ], [ %j.1, %if.then25 ], [ %r.1, %if.else ]
  %max.2 = phi i32 [ %4, %if.then ], [ %5, %if.then25 ], [ %max.1, %if.else ]
  %inc32 = add nsw i32 %j.1, 1
  br label %for.cond13, !llvm.loop !13

for.end33:                                        ; preds = %for.cond13
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc69, %for.end33
  %min.1 = phi i32 [ %min.0, %for.end33 ], [ %min.5, %for.inc69 ]
  %t.1 = phi i32 [ %t.0, %for.end33 ], [ %t.2, %for.inc69 ]
  %max.4 = phi i32 [ %max.1, %for.end33 ], [ %max.5, %for.inc69 ]
  %k.0 = phi i32 [ 0, %for.end33 ], [ %inc70, %for.inc69 ]
  %s.1 = phi i32 [ %s.0, %for.end33 ], [ %s.2, %for.inc69 ]
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %k.0, %6
  br i1 %cmp35, label %for.body36, label %for.inc72

for.body36:                                       ; preds = %for.cond34
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc58, %for.body36
  %min.2 = phi i32 [ %min.1, %for.body36 ], [ %min.3, %for.inc58 ]
  %l.0 = phi i32 [ 0, %for.body36 ], [ %inc59, %for.inc58 ]
  %s.2 = phi i32 [ %s.1, %for.body36 ], [ %s.3, %for.inc58 ]
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %l.0, %7
  br i1 %cmp38, label %for.body39, label %for.end60

for.body39:                                       ; preds = %for.cond37
  %cmp40 = icmp eq i32 %l.0, 0
  br i1 %cmp40, label %if.then41, label %if.else45

if.then41:                                        ; preds = %for.body39
  %idxprom43 = sext i32 %k.0 to i64
  %arrayidx44 = getelementptr inbounds [8 x i32], ptr %a, i64 0, i64 %idxprom43
  %8 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  br label %for.inc58

if.else45:                                        ; preds = %for.body39
  %idxprom46 = sext i32 %l.0 to i64
  %arrayidx47 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom46
  %idxprom48 = sext i32 %k.0 to i64
  %arrayidx49 = getelementptr inbounds [8 x i32], ptr %arrayidx47, i64 0, i64 %idxprom48
  %9 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %9, %min.2
  br i1 %cmp50, label %if.then51, label %for.inc58

if.then51:                                        ; preds = %if.else45
  br label %for.inc58

for.inc58:                                        ; preds = %if.then41, %if.then51, %if.else45
  %min.3 = phi i32 [ %8, %if.then41 ], [ %9, %if.then51 ], [ %min.2, %if.else45 ]
  %s.3 = phi i32 [ 0, %if.then41 ], [ %l.0, %if.then51 ], [ %s.2, %if.else45 ]
  %inc59 = add nsw i32 %l.0, 1
  br label %for.cond37, !llvm.loop !14

for.end60:                                        ; preds = %for.cond37
  %cmp61 = icmp eq i32 %max.4, %min.2
  br i1 %cmp61, label %land.lhs.true, label %for.inc69

land.lhs.true:                                    ; preds = %for.end60
  %cmp62 = icmp eq i32 %i.1, %s.2
  br i1 %cmp62, label %land.lhs.true63, label %for.inc69

land.lhs.true63:                                  ; preds = %land.lhs.true
  %cmp64 = icmp eq i32 %r.1, %k.0
  br i1 %cmp64, label %if.then65, label %for.inc69

if.then65:                                        ; preds = %land.lhs.true63
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %i.1, i32 noundef %r.1)
  %inc67 = add nsw i32 %t.1, 1
  br label %for.inc69

for.inc69:                                        ; preds = %for.end60, %land.lhs.true, %land.lhs.true63, %if.then65
  %min.5 = phi i32 [ 100, %if.then65 ], [ %max.4, %land.lhs.true63 ], [ %max.4, %land.lhs.true ], [ %min.2, %for.end60 ]
  %t.2 = phi i32 [ %inc67, %if.then65 ], [ %t.1, %land.lhs.true63 ], [ %t.1, %land.lhs.true ], [ %t.1, %for.end60 ]
  %max.5 = phi i32 [ 0, %if.then65 ], [ %max.4, %land.lhs.true63 ], [ %max.4, %land.lhs.true ], [ %max.4, %for.end60 ]
  %inc70 = add nsw i32 %k.0, 1
  br label %for.cond34, !llvm.loop !15

for.inc72:                                        ; preds = %for.cond34
  %inc73 = add nsw i32 %i.1, 1
  br label %for.cond10, !llvm.loop !16

for.end74:                                        ; preds = %for.cond10
  %cmp75 = icmp eq i32 %t.0, 0
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %for.end74
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %for.end74
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

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
