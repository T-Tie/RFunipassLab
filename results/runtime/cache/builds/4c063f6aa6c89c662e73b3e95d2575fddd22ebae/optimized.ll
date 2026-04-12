; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwhi9r9p6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %zfc = alloca [256 x i8], align 16
  %wt = alloca [256 x i8], align 16
  %tar = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr %zfc) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %wt) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %tar) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %zfc)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %wt)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %tar)
  %call6 = call i64 @strlen(ptr noundef %zfc) #5
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef %wt) #5
  %conv9 = trunc i64 %call8 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc35, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc36, %for.inc35 ]
  %sub = sub nsw i32 %conv, %conv9
  %add = add nsw i32 %sub, 1
  %cmp = icmp slt i32 %i.0, %add
  br i1 %cmp, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ %i.0, %for.body ], [ %inc, %for.inc ]
  %add11 = add nsw i32 %i.0, %conv9
  %cmp12 = icmp slt i32 %j.0, %add11
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond10
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %zfc, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv14 = sext i8 %0 to i32
  %sub15 = sub nsw i32 %j.0, %i.0
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr %wt, i64 0, i64 %idxprom16
  %1 = load i8, ptr %arrayidx17, align 1, !tbaa !5
  %conv18 = sext i8 %1 to i32
  %cmp19 = icmp ne i32 %conv14, %conv18
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body13
  br label %for.end

if.end:                                           ; preds = %for.body13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1
  br label %for.cond10, !llvm.loop !8

for.end:                                          ; preds = %if.then, %for.cond10
  %phiofops = phi i1 [ true, %for.cond10 ], [ false, %if.then ]
  %tag.0 = phi i32 [ 1, %if.then ], [ 0, %for.cond10 ]
  br i1 %phiofops, label %if.then21, label %if.end34

if.then21:                                        ; preds = %for.end
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc31, %if.then21
  %j.1 = phi i32 [ %i.0, %if.then21 ], [ %inc32, %for.inc31 ]
  %cmp24 = icmp slt i32 %j.1, %add11
  br i1 %cmp24, label %for.body25, label %for.end33

for.body25:                                       ; preds = %for.cond22
  %sub26 = sub nsw i32 %j.1, %i.0
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds [256 x i8], ptr %tar, i64 0, i64 %idxprom27
  %2 = load i8, ptr %arrayidx28, align 1, !tbaa !5
  %idxprom29 = sext i32 %j.1 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], ptr %zfc, i64 0, i64 %idxprom29
  store i8 %2, ptr %arrayidx30, align 1, !tbaa !5
  br label %for.inc31

for.inc31:                                        ; preds = %for.body25
  %inc32 = add nsw i32 %j.1, 1
  br label %for.cond22, !llvm.loop !11

for.end33:                                        ; preds = %for.cond22
  br label %for.end37

if.end34:                                         ; preds = %for.end
  br label %for.inc35

for.inc35:                                        ; preds = %if.end34
  %inc36 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end37:                                        ; preds = %for.end33, %for.cond
  %call39 = call i32 @puts(ptr noundef %zfc)
  call void @llvm.lifetime.end.p0(i64 256, ptr %tar) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %wt) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %zfc) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

declare i32 @puts(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
