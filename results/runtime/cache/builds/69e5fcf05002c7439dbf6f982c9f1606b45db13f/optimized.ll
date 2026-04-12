; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa27_5qh_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  %a = alloca [25 x i32], align 16
  %b = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #5
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 captures(none) dereferenceable(100) %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef align 16 %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %k)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef nonnull %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc9, %for.inc8 ]
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %i.1, %1
  br i1 %cmp3, label %for.inc8, label %for.end10

for.inc8:                                         ; preds = %for.cond2
  %call5 = call noundef range(i32 -2147483647, -2147483648) i32 @_Z2ljPiii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(100) %a, i32 noundef %i.1, i32 noundef %1) #6
  %idxprom6 = sext i32 %i.1 to i64
  %arrayidx7 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom6
  store i32 %call5, ptr %arrayidx7, align 4, !tbaa !5
  %inc9 = add nsw i32 %i.1, 1
  br label %for.cond2, !llvm.loop !12

for.end10:                                        ; preds = %for.cond2
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc19, %for.end10
  %i.2 = phi i32 [ 0, %for.end10 ], [ %inc20, %for.inc19 ]
  %t.0 = phi i32 [ 0, %for.end10 ], [ %t.1, %for.inc19 ]
  %cmp12 = icmp slt i32 %i.2, %1
  br i1 %cmp12, label %for.body13, label %for.end21

for.body13:                                       ; preds = %for.cond11
  %idxprom14 = sext i32 %i.2 to i64
  %arrayidx15 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom14
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %t.0, %2
  br i1 %cmp16, label %if.then, label %for.inc19

if.then:                                          ; preds = %for.body13
  br label %for.inc19

for.inc19:                                        ; preds = %for.body13, %if.then
  %t.1 = phi i32 [ %2, %if.then ], [ %t.0, %for.body13 ]
  %inc20 = add nsw i32 %i.2, 1
  br label %for.cond11, !llvm.loop !13

for.end21:                                        ; preds = %for.cond11
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %t.0)
  %call23 = call i32 @getchar()
  %call24 = call i32 @getchar()
  %call25 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z2ljPiii(ptr nofree noundef readonly captures(none) %a, i32 noundef %n, i32 noundef %m) local_unnamed_addr #3 {
entry:
  %b = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef align 16 %b) #7
  %sub = sub nsw i32 %m, 1
  %cmp = icmp eq i32 %n, %sub
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 0, %if.else ], [ %inc, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, 25
  br i1 %cmp1, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %n.sink = phi i32 [ %n, %for.end ], [ %add, %for.inc13 ]
  %add = add nsw i32 %n.sink, 1
  %cmp3 = icmp slt i32 %add, %m
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %idxprom5
  %0 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !15
  %idxprom7 = sext i32 %n to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %a, i64 %idxprom7
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !15
  %cmp9 = icmp sle i32 %0, %1
  br i1 %cmp9, label %if.then10, label %for.inc13

if.then10:                                        ; preds = %for.body4
  %call = call noundef i32 @_Z2ljPiii(ptr nofree noundef nonnull readonly captures(none) %a, i32 noundef %add, i32 noundef %m) #8
  %arrayidx12 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom5
  store i32 %call, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then10
  br label %for.cond2, !llvm.loop !16

for.end15:                                        ; preds = %for.cond2
  %add16 = add nsw i32 %n, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom17
  %2 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc30, %for.end15
  %n.sink1 = phi i32 [ %n, %for.end15 ], [ %add19, %for.inc30 ]
  %t.0 = phi i32 [ %2, %for.end15 ], [ %t.1, %for.inc30 ]
  %add19 = add nsw i32 %n.sink1, 1
  %cmp21 = icmp slt i32 %add19, %m
  br i1 %cmp21, label %for.body22, label %for.end32

for.body22:                                       ; preds = %for.cond20
  %idxprom23 = sext i32 %add19 to i64
  %arrayidx24 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom23
  %3 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %t.0, %3
  br i1 %cmp25, label %if.then26, label %for.inc30

if.then26:                                        ; preds = %for.body22
  br label %for.inc30

for.inc30:                                        ; preds = %for.body22, %if.then26
  %t.1 = phi i32 [ %3, %if.then26 ], [ %t.0, %for.body22 ]
  br label %for.cond20, !llvm.loop !17

for.end32:                                        ; preds = %for.cond20
  %add33 = add nsw i32 %t.0, 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end32
  %retval.0 = phi i32 [ %add33, %for.end32 ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef align 16 %b) #7
  ret i32 %retval.0
}

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree nosync nounwind }

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
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
