; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa27_5qh_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %a = alloca [25 x i32], align 16
  %b = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #5
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %t) #5
  store i32 0, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 captures(none) dereferenceable(100) %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef align 16 %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %k)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef nonnull %arrayidx)
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %1
  br i1 %cmp3, label %for.inc8, label %for.end10

for.inc8:                                         ; preds = %for.cond2
  %call5 = call noundef i32 @_Z2ljPiii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(100) %a, i32 noundef %2, i32 noundef %1) #6
  %idxprom6 = sext i32 %2 to i64
  %arrayidx7 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom6
  store i32 %call5, ptr %arrayidx7, align 4, !tbaa !5
  %inc9 = add nsw i32 %2, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end10:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc19, %for.end10
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %3, %1
  %4 = load i32, ptr %t, align 4, !tbaa !5
  br i1 %cmp12, label %for.body13, label %for.end21

for.body13:                                       ; preds = %for.cond11
  %idxprom14 = sext i32 %3 to i64
  %arrayidx15 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom14
  %5 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %4, %5
  br i1 %cmp16, label %if.then, label %for.inc19

if.then:                                          ; preds = %for.body13
  store i32 %5, ptr %t, align 4, !tbaa !5
  br label %for.inc19

for.inc19:                                        ; preds = %for.body13, %if.then
  %inc20 = add nsw i32 %3, 1
  store i32 %inc20, ptr %i, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !13

for.end21:                                        ; preds = %for.cond11
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  %call23 = call i32 @getchar()
  %call24 = call i32 @getchar()
  %call25 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %t) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z2ljPiii(ptr nofree noundef readonly captures(none) %a, i32 noundef %n, i32 noundef %m) local_unnamed_addr #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %b = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %t) #5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef align 16 %b) #5
  %sub = sub nsw i32 %m, 1
  %cmp = icmp eq i32 %n, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %.sink = phi i32 [ 0, %if.else ], [ %inc, %for.inc ]
  %cmp1 = icmp slt i32 %.sink, 25
  br i1 %cmp1, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %.sink to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %.sink, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %add = add nsw i32 %n, 1
  store i32 %add, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %0, %m
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %0 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %idxprom5
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !15
  %idxprom7 = sext i32 %n to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %a, i64 %idxprom7
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !15
  %cmp9 = icmp sle i32 %1, %2
  br i1 %cmp9, label %if.then10, label %for.inc13

if.then10:                                        ; preds = %for.body4
  %call = call noundef i32 @_Z2ljPiii(ptr nofree noundef nonnull readonly captures(none) %a, i32 noundef %0, i32 noundef %m) #7
  %arrayidx12 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom5
  store i32 %call, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then10
  %inc14 = add nsw i32 %0, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !16

for.end15:                                        ; preds = %for.cond2
  %idxprom17 = sext i32 %add to i64
  %arrayidx18 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom17
  %3 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %3, ptr %t, align 4, !tbaa !5
  store i32 %add, ptr %i, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc30, %for.end15
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %4, %m
  %5 = load i32, ptr %t, align 4, !tbaa !5
  br i1 %cmp21, label %for.body22, label %for.end32

for.body22:                                       ; preds = %for.cond20
  %idxprom23 = sext i32 %4 to i64
  %arrayidx24 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom23
  %6 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %5, %6
  br i1 %cmp25, label %if.then26, label %for.inc30

if.then26:                                        ; preds = %for.body22
  store i32 %6, ptr %t, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.body22, %if.then26
  %inc31 = add nsw i32 %4, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !17

for.end32:                                        ; preds = %for.cond20
  %add33 = add nsw i32 %5, 1
  store i32 %add33, ptr %retval, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end32, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef align 16 %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %t) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() local_unnamed_addr #4 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !18
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nofree nosync nounwind }

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
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
