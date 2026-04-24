; ModuleID = '/tmp/tmpsb9ol05x.cpp'
source_filename = "/tmp/tmpsb9ol05x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z3funPii(ptr noundef %p, i32 noundef %n) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca [400 x i32], align 16
  %q = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 1600, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #4
  %arraydecay = getelementptr inbounds [400 x i32], ptr %b, i64 0, i64 0
  store ptr %arraydecay, ptr %q, align 8, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %1 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !10
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i32, ptr %4, i64 %idx.ext
  %6 = load i32, ptr %add.ptr, align 4, !tbaa !10
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !5
  %8 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext4 = sext i32 %8 to i64
  %add.ptr5 = getelementptr inbounds i32, ptr %7, i64 %idx.ext4
  %9 = load i32, ptr %add.ptr5, align 4, !tbaa !10
  %cmp6 = icmp eq i32 %6, %9
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  br label %for.end

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %j, align 4, !tbaa !10
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !10
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %if.then, %for.cond1
  %11 = load i32, ptr %j, align 4, !tbaa !10
  %12 = load i32, ptr %i, align 4, !tbaa !10
  %cmp7 = icmp eq i32 %11, %12
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %for.end
  %13 = load ptr, ptr %p.addr, align 8, !tbaa !5
  %14 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext9 = sext i32 %14 to i64
  %add.ptr10 = getelementptr inbounds i32, ptr %13, i64 %idx.ext9
  %15 = load i32, ptr %add.ptr10, align 4, !tbaa !10
  %16 = load ptr, ptr %q, align 8, !tbaa !5
  store i32 %15, ptr %16, align 4, !tbaa !10
  %17 = load ptr, ptr %q, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %q, align 8, !tbaa !5
  %18 = load ptr, ptr %q, align 8, !tbaa !5
  store i32 -1000, ptr %18, align 4, !tbaa !10
  %19 = load ptr, ptr %q, align 8, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds nuw i32, ptr %19, i32 1
  store ptr %incdec.ptr11, ptr %q, align 8, !tbaa !5
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %for.end
  br label %for.inc13

for.inc13:                                        ; preds = %if.end12
  %20 = load i32, ptr %i, align 4, !tbaa !10
  %inc14 = add nsw i32 %20, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !15

for.end15:                                        ; preds = %for.cond
  %21 = load ptr, ptr %q, align 8, !tbaa !5
  %add.ptr16 = getelementptr inbounds i32, ptr %21, i64 -1
  store i32 0, ptr %add.ptr16, align 4, !tbaa !10
  %arraydecay17 = getelementptr inbounds [400 x i32], ptr %b, i64 0, i64 0
  store ptr %arraydecay17, ptr %q, align 8, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc25, %for.end15
  %22 = load ptr, ptr %q, align 8, !tbaa !5
  %23 = load i32, ptr %22, align 4, !tbaa !10
  %cmp19 = icmp ne i32 %23, 0
  br i1 %cmp19, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond18
  %24 = load ptr, ptr %q, align 8, !tbaa !5
  %25 = load i32, ptr %24, align 4, !tbaa !10
  %cmp21 = icmp eq i32 %25, -1000
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %for.body20
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end24

if.else:                                          ; preds = %for.body20
  %26 = load ptr, ptr %q, align 8, !tbaa !5
  %27 = load i32, ptr %26, align 4, !tbaa !10
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %27)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then22
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %28 = load ptr, ptr %q, align 8, !tbaa !5
  %incdec.ptr26 = getelementptr inbounds nuw i32, ptr %28, i32 1
  store ptr %incdec.ptr26, ptr %q, align 8, !tbaa !5
  br label %for.cond18, !llvm.loop !16

for.end27:                                        ; preds = %for.cond18
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 1600, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 1200, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %arraydecay = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %1 = load i32, ptr %n, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %idx.ext
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !10
  call void @_Z3funPii(ptr noundef %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 1200, ptr %a) #4
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
