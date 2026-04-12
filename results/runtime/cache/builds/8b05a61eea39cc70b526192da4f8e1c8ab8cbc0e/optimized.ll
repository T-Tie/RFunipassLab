; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4kapxxz8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.zimu = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %ss = alloca [302 x i8], align 16
  %zimu = alloca [27 x i8], align 16
  %count = alloca i32, align 4
  %s = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 302, ptr noundef align 16 %ss) #6
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %ss, i8 noundef 0, i64 noundef 302, i1 noundef false) #7
  store i8 48, ptr %ss, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 27, ptr noundef align 16 %zimu) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef writeonly align 16 %zimu, ptr noundef readonly align 16 @__const.main.zimu, i64 noundef 27, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %count) #6
  store i32 0, ptr %count, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %s) #6
  store i32 0, ptr %s, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %ss)
  %call2 = call i64 @strlen(ptr noundef %ss) #8
  %conv = trunc i64 %call2 to i32
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #9
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 27
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #9
  br label %for.end25

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %1, %conv
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5

for.cond.cleanup5:                                ; preds = %for.cond3
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #9
  br label %for.end

for.body6:                                        ; preds = %for.cond3
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [302 x i8], ptr %ss, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv7 = sext i8 %2 to i32
  %idxprom8 = sext i32 %0 to i64
  %arrayidx9 = getelementptr inbounds [27 x i8], ptr %zimu, i64 0, i64 %idxprom8
  %3 = load i8, ptr %arrayidx9, align 1, !tbaa !9
  %conv10 = sext i8 %3 to i32
  %cmp11 = icmp eq i32 %conv7, %conv10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %4 = load i32, ptr %count, align 4, !tbaa !5
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %count, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !10

for.end:                                          ; preds = %for.cond.cleanup5
  %5 = load i32, ptr %count, align 4, !tbaa !5
  %cmp12 = icmp ne i32 %5, 0
  br i1 %cmp12, label %if.then13, label %if.end18

if.then13:                                        ; preds = %for.end
  %idxprom14 = sext i32 %0 to i64
  %arrayidx15 = getelementptr inbounds [27 x i8], ptr %zimu, i64 0, i64 %idxprom14
  %6 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %conv16 = sext i8 %6 to i32
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv16, i32 noundef %5)
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %for.end
  %cmp19 = icmp eq i32 %5, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %7 = load i32, ptr %s, align 4, !tbaa !5
  %add21 = add nsw i32 %7, 1
  store i32 %add21, ptr %s, align 4, !tbaa !5
  br label %for.inc23

if.end22:                                         ; preds = %if.end18
  store i32 0, ptr %count, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22, %if.then20
  %inc24 = add nsw i32 %0, 1
  store i32 %inc24, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end25:                                        ; preds = %for.cond.cleanup
  %8 = load i32, ptr %s, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %8, 28
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %for.end25
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.end25
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %s) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %count) #9
  call void @llvm.lifetime.end.p0(i64 noundef 27, ptr noundef %zimu) #9
  call void @llvm.lifetime.end.p0(i64 noundef 302, ptr noundef %ss) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

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
