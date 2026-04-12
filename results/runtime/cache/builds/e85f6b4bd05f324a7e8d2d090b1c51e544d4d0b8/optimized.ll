; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6qfz3a0a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [9 x i8] c"%s\0A%s\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [300 x i8], align 16
  %b = alloca [50 x i8], align 16
  %c = alloca [50 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef align 16 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef align 16 %c) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %s) #4
  store i32 0, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %d) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %e) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %a, ptr noundef align 16 %b, ptr noundef align 16 %c)
  %call4 = call i64 @strlen(ptr noundef %b) #5
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef %a) #5
  %conv7 = trunc i64 %call6 to i32
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %conv7
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 %0, ptr %j, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %1, %conv
  br i1 %cmp9, label %for.body10, label %if.then24

for.body10:                                       ; preds = %for.cond8
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv11 = sext i8 %3 to i32
  %idxprom12 = sext i32 %1 to i64
  %arrayidx13 = getelementptr inbounds [50 x i8], ptr %b, i64 0, i64 %idxprom12
  %4 = load i8, ptr %arrayidx13, align 1, !tbaa !9
  %conv14 = sext i8 %4 to i32
  %cmp15 = icmp ne i32 %conv11, %conv14
  br i1 %cmp15, label %for.inc20, label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  %inc16 = add nsw i32 %1, 1
  store i32 %inc16, ptr %k, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !10

for.inc20:                                        ; preds = %for.body10
  store i32 1, ptr %s, align 4, !tbaa !5
  %inc21 = add nsw i32 %0, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end22:                                        ; preds = %for.cond
  %.pr7 = load i32, ptr %s, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %.pr7, 0
  br i1 %cmp23, label %if.then24, label %if.end36

if.then24:                                        ; preds = %for.cond8, %for.end22
  store i32 %0, ptr %d, align 4, !tbaa !5
  store i32 0, ptr %e, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc32, %if.then24
  %5 = load i32, ptr %d, align 4, !tbaa !5
  %add = add nsw i32 %0, %conv
  %cmp26 = icmp slt i32 %5, %add
  br i1 %cmp26, label %for.inc32, label %if.end36

for.inc32:                                        ; preds = %for.cond25
  %6 = load i32, ptr %e, align 4, !tbaa !5
  %idxprom28 = sext i32 %6 to i64
  %arrayidx29 = getelementptr inbounds [50 x i8], ptr %c, i64 0, i64 %idxprom28
  %7 = load i8, ptr %arrayidx29, align 1, !tbaa !9, !invariant.load !14
  %idxprom30 = sext i32 %5 to i64
  %arrayidx31 = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 %idxprom30
  store i8 %7, ptr %arrayidx31, align 1, !tbaa !9
  %inc33 = add nsw i32 %5, 1
  store i32 %inc33, ptr %d, align 4, !tbaa !5
  %inc34 = add nsw i32 %6, 1
  store i32 %inc34, ptr %e, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !15

if.end36:                                         ; preds = %for.cond25, %for.end22
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %a)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %e) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %d) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %s) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind willreturn memory(read) }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = !{}
!15 = distinct !{!15, !11, !12}
