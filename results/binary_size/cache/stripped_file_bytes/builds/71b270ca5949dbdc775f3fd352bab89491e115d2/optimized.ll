; ModuleID = '/tmp/tmplypdr7bp.cpp'
source_filename = "/tmp/tmplypdr7bp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %k35 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 256, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 256, ptr %c) #3
  %arraydecay = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay1)
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %c, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay3)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup53

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %2 to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 %idxprom6
  %3 = load i8, ptr %arrayidx7, align 1, !tbaa !9
  %conv8 = sext i8 %3 to i32
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %4, %5
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom9
  %6 = load i8, ptr %arrayidx10, align 1, !tbaa !9
  %conv11 = sext i8 %6 to i32
  %cmp12 = icmp eq i32 %conv8, %conv11
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond5
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 %idxprom13
  %8 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %conv15 = sext i8 %8 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond5
  %9 = phi i1 [ false, %for.cond5 ], [ %cmp16, %land.rhs ]
  br i1 %9, label %for.body17, label %for.end

for.body17:                                       ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body17
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !10

for.end:                                          ; preds = %land.end
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 %idxprom18
  %12 = load i8, ptr %arrayidx19, align 1, !tbaa !9
  %conv20 = sext i8 %12 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc30, %if.then
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %13, %14
  br i1 %cmp23, label %for.body25, label %for.cond.cleanup24

for.cond.cleanup24:                               ; preds = %for.cond22
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  br label %for.end32

for.body25:                                       ; preds = %for.cond22
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom26 = sext i32 %15 to i64
  %arrayidx27 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom26
  %16 = load i8, ptr %arrayidx27, align 1, !tbaa !9
  %conv28 = sext i8 %16 to i32
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv28)
  br label %for.inc30

for.inc30:                                        ; preds = %for.body25
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %inc31 = add nsw i32 %17, 1
  store i32 %inc31, ptr %k, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !13

for.end32:                                        ; preds = %for.cond.cleanup24
  %arraydecay33 = getelementptr inbounds [256 x i8], ptr %c, i64 0, i64 0
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay33)
  call void @llvm.lifetime.start.p0(i64 4, ptr %k35) #3
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %add36 = add nsw i32 %18, %19
  store i32 %add36, ptr %k35, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc48, %for.end32
  %20 = load i32, ptr %k35, align 4, !tbaa !5
  %idxprom38 = sext i32 %20 to i64
  %arrayidx39 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom38
  %21 = load i8, ptr %arrayidx39, align 1, !tbaa !9
  %conv40 = sext i8 %21 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %for.body43, label %for.cond.cleanup42

for.cond.cleanup42:                               ; preds = %for.cond37
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k35) #3
  br label %for.end50

for.body43:                                       ; preds = %for.cond37
  %22 = load i32, ptr %k35, align 4, !tbaa !5
  %idxprom44 = sext i32 %22 to i64
  %arrayidx45 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom44
  %23 = load i8, ptr %arrayidx45, align 1, !tbaa !9
  %conv46 = sext i8 %23 to i32
  %call47 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv46)
  br label %for.inc48

for.inc48:                                        ; preds = %for.body43
  %24 = load i32, ptr %k35, align 4, !tbaa !5
  %inc49 = add nsw i32 %24, 1
  store i32 %inc49, ptr %k35, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !14

for.end50:                                        ; preds = %for.cond.cleanup42
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end50
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc51

for.inc51:                                        ; preds = %cleanup.cont
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc52 = add nsw i32 %25, 1
  store i32 %inc52, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

cleanup53:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  %cleanup.dest54 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest54, label %cleanup58 [
    i32 2, label %for.end55
  ]

for.end55:                                        ; preds = %cleanup53
  %arraydecay56 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 0
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay56)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58

cleanup58:                                        ; preds = %for.end55, %cleanup53
  call void @llvm.lifetime.end.p0(i64 256, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr %a) #3
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
