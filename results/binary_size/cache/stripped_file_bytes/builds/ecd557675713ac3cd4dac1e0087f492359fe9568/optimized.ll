; ModuleID = '/tmp/tmpgl16x76z.cpp'
source_filename = "/tmp/tmpgl16x76z.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca [100 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 400, ptr %s) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %call1 = call i32 @getchar()
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %s, i64 0, i64 %idxprom
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %call3 = call i32 @getchar()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds [100 x i32], ptr %s, i64 0, i64 0
  %4 = load i32, ptr %arrayidx4, align 16, !tbaa !5
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  %call6 = call i32 @getchar()
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc28, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %5, %6
  br i1 %cmp8, label %for.body9, label %for.end30

for.body9:                                        ; preds = %for.cond7
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc19, %for.body9
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %7, %8
  br i1 %cmp11, label %for.body12, label %for.end21

for.body12:                                       ; preds = %for.cond10
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], ptr %s, i64 0, i64 %idxprom13
  %10 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [100 x i32], ptr %s, i64 0, i64 %idxprom15
  %12 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17 = icmp ne i32 %10, %12
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc18 = add nsw i32 %13, 1
  store i32 %inc18, ptr %j, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body12
  br label %for.inc19

for.inc19:                                        ; preds = %if.end
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %inc20 = add nsw i32 %14, 1
  store i32 %inc20, ptr %k, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !12

for.end21:                                        ; preds = %for.cond10
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %15, %16
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %for.end21
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %s, i64 0, i64 %idxprom24
  %18 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %18)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %for.end21
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc29 = add nsw i32 %19, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !13

for.end30:                                        ; preds = %for.cond7
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %call32 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 400, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #3 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !14
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
