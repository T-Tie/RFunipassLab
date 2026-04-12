; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuzu4pwcy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  %a = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %sz) #3
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %a) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc15, %for.end
  %i2.0 = phi i32 [ 0, %for.end ], [ %inc16, %for.inc15 ]
  %k.0 = phi i32 [ 0, %for.end ], [ %k.1, %for.inc15 ]
  %cmp4 = icmp slt i32 %i2.0, %0
  br i1 %cmp4, label %for.body6, label %for.end17

for.body6:                                        ; preds = %for.cond3
  %idxprom7 = sext i32 %i2.0 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom7
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !12
  %rem = srem i32 %1, 2
  %cmp9 = icmp eq i32 %rem, 1
  br i1 %cmp9, label %if.then, label %for.inc15

if.then:                                          ; preds = %for.body6
  %idxprom12 = sext i32 %k.0 to i64
  %arrayidx13 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom12
  store i32 %1, ptr %arrayidx13, align 4, !tbaa !5
  %inc14 = add nsw i32 %k.0, 1
  br label %for.inc15

for.inc15:                                        ; preds = %for.body6, %if.then
  %k.1 = phi i32 [ %inc14, %if.then ], [ %k.0, %for.body6 ]
  %inc16 = add nsw i32 %i2.0, 1
  br label %for.cond3, !llvm.loop !13

for.end17:                                        ; preds = %for.cond3
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc47, %for.end17
  %l.0 = phi i32 [ 0, %for.end17 ], [ %inc48, %for.inc47 ]
  %cmp19 = icmp sle i32 %l.0, %k.0
  br i1 %cmp19, label %for.body21, label %for.end49

for.body21:                                       ; preds = %for.cond18
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc44, %for.body21
  %i22.0 = phi i32 [ 0, %for.body21 ], [ %add, %for.inc44 ]
  %sub = sub nsw i32 %k.0, 1
  %cmp24 = icmp slt i32 %i22.0, %sub
  br i1 %cmp24, label %for.body26, label %for.inc47

for.body26:                                       ; preds = %for.cond23
  %idxprom27 = sext i32 %i22.0 to i64
  %arrayidx28 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom27
  %2 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !12
  %add = add nsw i32 %i22.0, 1
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom29
  %3 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !12
  %cmp31 = icmp sgt i32 %2, %3
  br i1 %cmp31, label %if.then32, label %for.inc44

if.then32:                                        ; preds = %for.body26
  store i32 %2, ptr %arrayidx30, align 4, !tbaa !5
  store i32 %3, ptr %arrayidx28, align 4, !tbaa !5
  br label %for.inc44

for.inc44:                                        ; preds = %for.body26, %if.then32
  br label %for.cond23, !llvm.loop !14

for.inc47:                                        ; preds = %for.cond23
  %inc48 = add nsw i32 %l.0, 1
  br label %for.cond18, !llvm.loop !15

for.end49:                                        ; preds = %for.cond18
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc64, %for.end49
  %i50.0 = phi i32 [ 0, %for.end49 ], [ %inc65, %for.inc64 ]
  %cmp52 = icmp slt i32 %i50.0, %k.0
  br i1 %cmp52, label %for.body54, label %for.end66

for.body54:                                       ; preds = %for.cond51
  %cmp55 = icmp eq i32 %i50.0, 0
  br i1 %cmp55, label %for.inc64, label %if.else

if.else:                                          ; preds = %for.body54
  br label %for.inc64

for.inc64:                                        ; preds = %if.else, %for.body54
  %.str.2.sink = phi ptr [ @.str.2, %if.else ], [ @.str.1, %for.body54 ]
  %idxprom60 = sext i32 %i50.0 to i64
  %arrayidx61 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom60
  %4 = load i32, ptr %arrayidx61, align 4, !tbaa !5, !invariant.load !12
  %call62 = call i32 (ptr, ...) @printf(ptr noundef %.str.2.sink, i32 noundef %4)
  %inc65 = add nsw i32 %i50.0, 1
  br label %for.cond51, !llvm.loop !16

for.end66:                                        ; preds = %for.cond51
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %sz) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
