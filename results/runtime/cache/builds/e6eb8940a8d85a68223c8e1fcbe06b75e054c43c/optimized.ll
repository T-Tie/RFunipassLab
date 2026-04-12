; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmh_eaz48.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.t = private unnamed_addr constant [400 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%c=%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [400 x i8], align 16
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %t = alloca [400 x i8], align 16
  %u = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %f = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %s) #4
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %p) #4
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %q) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %t) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef writeonly align 16 %t, ptr noundef readonly align 16 @__const.main.t, i64 noundef 400, i1 noundef false) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %u) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %f) #4
  store i32 0, ptr %f, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 52
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %u, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %s)
  store ptr %t, ptr %q, align 8, !tbaa !12
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc19, %for.end
  %1 = load ptr, ptr %q, align 8, !tbaa !12
  %2 = load i8, ptr %1, align 1, !tbaa !15, !invariant.load !16
  %conv = sext i8 %2 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %for.body4, label %for.end21

for.body4:                                        ; preds = %for.cond2
  store ptr %s, ptr %p, align 8, !tbaa !12
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc16, %for.body4
  %3 = load ptr, ptr %p, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !15, !invariant.load !16
  %conv7 = sext i8 %4 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %for.body9, label %for.end17

for.body9:                                        ; preds = %for.cond6
  %cmp12 = icmp eq i32 %conv7, %conv
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %5 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], ptr %u, i64 0, i64 %idxprom13
  %6 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !16
  %inc15 = add nsw i32 %6, 1
  store i32 %inc15, ptr %arrayidx14, align 4, !tbaa !5
  store i32 1, ptr %f, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body9
  br label %for.inc16

for.inc16:                                        ; preds = %if.end
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !12
  br label %for.cond6, !llvm.loop !17

for.end17:                                        ; preds = %for.cond6
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc18 = add nsw i32 %7, 1
  store i32 %inc18, ptr %i, align 4, !tbaa !5
  br label %for.inc19

for.inc19:                                        ; preds = %for.end17
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %1, i32 1
  store ptr %incdec.ptr20, ptr %q, align 8, !tbaa !12
  br label %for.cond2, !llvm.loop !18

for.end21:                                        ; preds = %for.cond2
  store ptr %t, ptr %q, align 8, !tbaa !12
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc38, %for.end21
  %8 = load ptr, ptr %q, align 8, !tbaa !12
  %9 = load i8, ptr %8, align 1, !tbaa !15, !invariant.load !16
  %conv24 = sext i8 %9 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %for.body26, label %for.end40

for.body26:                                       ; preds = %for.cond23
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %10 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %u, i64 0, i64 %idxprom27
  %11 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !16
  %cmp29 = icmp ne i32 %11, 0
  br i1 %cmp29, label %if.then30, label %if.end36

if.then30:                                        ; preds = %for.body26
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv24, i32 noundef %11)
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %for.body26
  %inc37 = add nsw i32 %10, 1
  store i32 %inc37, ptr %j, align 4, !tbaa !5
  br label %for.inc38

for.inc38:                                        ; preds = %if.end36
  %incdec.ptr39 = getelementptr inbounds nuw i8, ptr %8, i32 1
  store ptr %incdec.ptr39, ptr %q, align 8, !tbaa !12
  br label %for.cond23, !llvm.loop !19

for.end40:                                        ; preds = %for.cond23
  %12 = load i32, ptr %f, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %12, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %for.end40
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %for.end40
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %f) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %u) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %t) #6
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %q) #6
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %p) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %s) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
