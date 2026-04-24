; ModuleID = '/tmp/tmpdy71gei7.cpp'
source_filename = "/tmp/tmpdy71gei7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [300 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %c = alloca [300 x i32], align 16
  %q = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 1200, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr %c) #5
  call void @llvm.memset.p0.i64(ptr align 16 %c, i8 0, i64 1200, i1 false)
  %0 = getelementptr inbounds <{ i32, [299 x i32] }>, ptr %c, i32 0, i32 0
  store i32 1000, ptr %0, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %call1 = call i32 @getchar()
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [300 x i32], ptr %c, i64 0, i64 %idxprom3
  store i32 0, ptr %arrayidx4, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %8, 1
  store i32 %add, ptr %k, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %9, %10
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom11
  %12 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom13
  %14 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %12, %14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [300 x i32], ptr %c, i64 0, i64 %idxprom16
  %16 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add18 = add nsw i32 %16, 1
  store i32 %add18, ptr %arrayidx17, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body10
  br label %for.inc19

for.inc19:                                        ; preds = %if.end
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, ptr %k, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !12

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %18, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !13

for.end24:                                        ; preds = %for.cond5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc33, %for.end24
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %19, %20
  br i1 %cmp26, label %for.body27, label %for.end35

for.body27:                                       ; preds = %for.cond25
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [300 x i32], ptr %c, i64 0, i64 %idxprom28
  %22 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %22, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.body27
  %23 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %23, ptr %q, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.body27
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %inc34 = add nsw i32 %24, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !14

for.end35:                                        ; preds = %for.cond25
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc48, %for.end35
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %26 = load i32, ptr %q, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %25, %26
  br i1 %cmp37, label %for.body38, label %for.end50

for.body38:                                       ; preds = %for.cond36
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %27 to i64
  %arrayidx40 = getelementptr inbounds [300 x i32], ptr %c, i64 0, i64 %idxprom39
  %28 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %28, 0
  br i1 %cmp41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %for.body38
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %29 to i64
  %arrayidx44 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom43
  %30 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %30)
  %call46 = call i32 @getchar()
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %for.body38
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %inc49 = add nsw i32 %31, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !15

for.end50:                                        ; preds = %for.cond36
  %32 = load i32, ptr %q, align 4, !tbaa !5
  %idxprom51 = sext i32 %32 to i64
  %arrayidx52 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom51
  %33 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %33)
  %call54 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 1200, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 1200, ptr %s) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #4 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !16
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
