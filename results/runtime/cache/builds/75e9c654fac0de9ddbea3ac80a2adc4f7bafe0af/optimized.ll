; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjixtnmcs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [500 x i32], align 16
  %b = alloca [100 x i32], align 16
  %c = alloca [100 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %a) #4
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 2000, i1 noundef false) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %b) #4
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %b, i8 noundef 0, i64 noundef 400, i1 noundef false) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %c) #4
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %c, i8 noundef 0, i64 noundef 400, i1 noundef false) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc12, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc13, %for.inc12 ]
  %k.0 = phi i32 [ 0, %for.end ], [ %k.1, %for.inc12 ]
  %cmp3 = icmp slt i32 %j.0, %0
  br i1 %cmp3, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom5
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp7 = icmp ne i32 %rem, 0
  br i1 %cmp7, label %if.then, label %for.inc12

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %k.0 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom10
  store i32 %1, ptr %arrayidx11, align 4, !tbaa !5
  %add = add nsw i32 %k.0, 1
  br label %for.inc12

for.inc12:                                        ; preds = %for.body4, %if.then
  %k.1 = phi i32 [ %add, %if.then ], [ %k.0, %for.body4 ]
  %inc13 = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !12

for.end14:                                        ; preds = %for.cond2
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc36, %for.end14
  %m.0 = phi i32 [ 0, %for.end14 ], [ %inc37, %for.inc36 ]
  %cmp16 = icmp slt i32 %m.0, %k.0
  br i1 %cmp16, label %for.body17, label %for.end38

for.body17:                                       ; preds = %for.cond15
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc29, %for.body17
  %q.0 = phi i32 [ 0, %for.body17 ], [ %inc30, %for.inc29 ]
  %x.0 = phi i32 [ 0, %for.body17 ], [ %x.1, %for.inc29 ]
  %cmp19 = icmp slt i32 %q.0, %k.0
  br i1 %cmp19, label %for.body20, label %for.inc36

for.body20:                                       ; preds = %for.cond18
  %idxprom21 = sext i32 %q.0 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom21
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %idxprom23 = sext i32 %m.0 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom23
  %3 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %2, %3
  br i1 %cmp25, label %if.then26, label %for.inc29

if.then26:                                        ; preds = %for.body20
  %add27 = add nsw i32 %x.0, 1
  br label %for.inc29

for.inc29:                                        ; preds = %for.body20, %if.then26
  %x.1 = phi i32 [ %add27, %if.then26 ], [ %x.0, %for.body20 ]
  %inc30 = add nsw i32 %q.0, 1
  br label %for.cond18, !llvm.loop !13

for.inc36:                                        ; preds = %for.cond18
  %idxprom32 = sext i32 %m.0 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom32
  %4 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %idxprom34 = sext i32 %x.0 to i64
  %arrayidx35 = getelementptr inbounds [100 x i32], ptr %c, i64 0, i64 %idxprom34
  store i32 %4, ptr %arrayidx35, align 4, !tbaa !5
  %inc37 = add nsw i32 %m.0, 1
  br label %for.cond15, !llvm.loop !14

for.end38:                                        ; preds = %for.cond15
  %5 = load i32, ptr %c, align 16, !tbaa !5
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc47, %for.end38
  %v.0 = phi i32 [ 1, %for.end38 ], [ %inc48, %for.inc47 ]
  %cmp42 = icmp slt i32 %v.0, %k.0
  br i1 %cmp42, label %for.inc47, label %for.end49

for.inc47:                                        ; preds = %for.cond41
  %idxprom44 = sext i32 %v.0 to i64
  %arrayidx45 = getelementptr inbounds [100 x i32], ptr %c, i64 0, i64 %idxprom44
  %6 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6)
  %inc48 = add nsw i32 %v.0, 1
  br label %for.cond41, !llvm.loop !15

for.end49:                                        ; preds = %for.cond41
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %a) #6
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
attributes #4 = { nofree nounwind willreturn }
attributes #5 = { nofree willreturn }
attributes #6 = { nounwind }

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
