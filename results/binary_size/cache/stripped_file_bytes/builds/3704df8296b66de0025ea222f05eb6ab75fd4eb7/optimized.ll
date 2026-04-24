; ModuleID = '/tmp/tmpzrf_706h.cpp'
source_filename = "/tmp/tmpzrf_706h.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %sum = alloca i32, align 4
  %a = alloca [1000 x [40 x i8]], align 16
  %p = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #5
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #5
  call void @llvm.memset.p0.i64(ptr align 16 %a, i8 0, i64 40000, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x [40 x i8]], ptr %a, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [40 x i8], ptr %arrayidx, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [1000 x [40 x i8]], ptr %a, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [40 x i8], ptr %arrayidx2, i64 0, i64 0
  %call4 = call i64 @strlen(ptr noundef %arraydecay3) #6
  %4 = load i32, ptr %sum, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  %add = add i64 %conv, %call4
  %conv5 = trunc i64 %add to i32
  store i32 %conv5, ptr %sum, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds [1000 x [40 x i8]], ptr %a, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [40 x i8], ptr %arrayidx6, i64 0, i64 0
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay7)
  %arrayidx9 = getelementptr inbounds [1000 x [40 x i8]], ptr %a, i64 0, i64 1
  %arrayidx10 = getelementptr inbounds [40 x i8], ptr %arrayidx9, i64 0, i64 0
  store ptr %arrayidx10, ptr %p, align 8, !tbaa !12
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end
  %5 = load ptr, ptr %p, align 8, !tbaa !12
  %arrayidx12 = getelementptr inbounds [1000 x [40 x i8]], ptr %a, i64 0, i64 0
  %arrayidx13 = getelementptr inbounds [40 x i8], ptr %arrayidx12, i64 0, i64 0
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %mul = mul nsw i32 %6, 40
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %arrayidx13, i64 %idx.ext
  %cmp14 = icmp ult ptr %5, %add.ptr
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond11
  %7 = load ptr, ptr %p, align 8, !tbaa !12
  %call16 = call i64 @strlen(ptr noundef %7) #6
  %8 = load i32, ptr %sum, align 4, !tbaa !5
  %conv17 = sext i32 %8 to i64
  %add18 = add i64 %call16, %conv17
  %add19 = add i64 %add18, 1
  %cmp20 = icmp ugt i64 %add19, 80
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body15
  %9 = load ptr, ptr %p, align 8, !tbaa !12
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %9)
  %10 = load ptr, ptr %p, align 8, !tbaa !12
  %call22 = call i64 @strlen(ptr noundef %10) #6
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, ptr %sum, align 4, !tbaa !5
  br label %for.inc30

if.end:                                           ; preds = %for.body15
  %11 = load ptr, ptr %p, align 8, !tbaa !12
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %11)
  %12 = load ptr, ptr %p, align 8, !tbaa !12
  %call25 = call i64 @strlen(ptr noundef %12) #6
  %13 = load i32, ptr %sum, align 4, !tbaa !5
  %conv26 = sext i32 %13 to i64
  %add27 = add i64 %conv26, %call25
  %conv28 = trunc i64 %add27 to i32
  store i32 %conv28, ptr %sum, align 4, !tbaa !5
  %14 = load i32, ptr %sum, align 4, !tbaa !5
  %inc29 = add nsw i32 %14, 1
  store i32 %inc29, ptr %sum, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %if.end, %if.then
  %15 = load ptr, ptr %p, align 8, !tbaa !12
  %add.ptr31 = getelementptr inbounds i8, ptr %15, i64 40
  store ptr %add.ptr31, ptr %p, align 8, !tbaa !12
  br label %for.cond11, !llvm.loop !15

for.end32:                                        ; preds = %for.cond11
  %16 = load ptr, ptr %p, align 8, !tbaa !12
  %add.ptr33 = getelementptr inbounds i8, ptr %16, i64 40
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %add.ptr33)
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!15 = distinct !{!15, !10, !11}
