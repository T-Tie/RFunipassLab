; ModuleID = '/tmp/tmppeboh2uh.cpp'
source_filename = "/tmp/tmppeboh2uh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.student = type { [20 x i8], [20 x i8], i8, i32, float, [20 x i8], ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"fail!!!\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s%s %c %d%f%s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s%s %c %d%g%s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s %s %c %d %g %s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head = alloca ptr, align 8
  %p = alloca ptr, align 8
  %wei = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %wei) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  %call = call noalias ptr @malloc(i64 noundef 88) #6
  store ptr %call, ptr %head, align 8, !tbaa !5
  %0 = load ptr, ptr %head, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %fomer = getelementptr inbounds nuw %struct.student, ptr %1, i32 0, i32 6
  store ptr null, ptr %fomer, align 8, !tbaa !10
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @exit(i32 noundef -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %number = getelementptr inbounds nuw %struct.student, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %p, align 8, !tbaa !5
  %name = getelementptr inbounds nuw %struct.student, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %sex = getelementptr inbounds nuw %struct.student, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %p, align 8, !tbaa !5
  %age = getelementptr inbounds nuw %struct.student, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %p, align 8, !tbaa !5
  %score = getelementptr inbounds nuw %struct.student, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %p, align 8, !tbaa !5
  %address = getelementptr inbounds nuw %struct.student, ptr %8, i32 0, i32 5
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %number, ptr noundef %name, ptr noundef %sex, ptr noundef %age, ptr noundef %score, ptr noundef %address)
  store i32 1, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %i, align 4, !tbaa !14
  %cmp3 = icmp sle i32 %9, 1000
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call noalias ptr @malloc(i64 noundef 88) #6
  %10 = load ptr, ptr %p, align 8, !tbaa !5
  %next = getelementptr inbounds nuw %struct.student, ptr %10, i32 0, i32 7
  store ptr %call4, ptr %next, align 8, !tbaa !15
  %11 = load ptr, ptr %p, align 8, !tbaa !5
  %12 = load ptr, ptr %p, align 8, !tbaa !5
  %next5 = getelementptr inbounds nuw %struct.student, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %next5, align 8, !tbaa !15
  %fomer6 = getelementptr inbounds nuw %struct.student, ptr %13, i32 0, i32 6
  store ptr %11, ptr %fomer6, align 8, !tbaa !10
  %14 = load ptr, ptr %p, align 8, !tbaa !5
  %next7 = getelementptr inbounds nuw %struct.student, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %next7, align 8, !tbaa !15
  store ptr %15, ptr %p, align 8, !tbaa !5
  %16 = load ptr, ptr %p, align 8, !tbaa !5
  %number8 = getelementptr inbounds nuw %struct.student, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %p, align 8, !tbaa !5
  %name9 = getelementptr inbounds nuw %struct.student, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %p, align 8, !tbaa !5
  %sex10 = getelementptr inbounds nuw %struct.student, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %p, align 8, !tbaa !5
  %age11 = getelementptr inbounds nuw %struct.student, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %p, align 8, !tbaa !5
  %score12 = getelementptr inbounds nuw %struct.student, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %p, align 8, !tbaa !5
  %address13 = getelementptr inbounds nuw %struct.student, ptr %21, i32 0, i32 5
  %call14 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.2, ptr noundef %number8, ptr noundef %name9, ptr noundef %sex10, ptr noundef %age11, ptr noundef %score12, ptr noundef %address13)
  %22 = load ptr, ptr %p, align 8, !tbaa !5
  %number15 = getelementptr inbounds nuw %struct.student, ptr %22, i32 0, i32 0
  %arraydecay = getelementptr inbounds [20 x i8], ptr %number15, i64 0, i64 0
  %23 = load i8, ptr %arraydecay, align 8, !tbaa !16
  %conv = sext i8 %23 to i32
  %cmp16 = icmp eq i32 %conv, 101
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %for.body
  %24 = load ptr, ptr %p, align 8, !tbaa !5
  %fomer18 = getelementptr inbounds nuw %struct.student, ptr %24, i32 0, i32 6
  %25 = load ptr, ptr %fomer18, align 8, !tbaa !10
  %next19 = getelementptr inbounds nuw %struct.student, ptr %25, i32 0, i32 7
  store ptr null, ptr %next19, align 8, !tbaa !15
  %26 = load ptr, ptr %p, align 8, !tbaa !5
  %fomer20 = getelementptr inbounds nuw %struct.student, ptr %26, i32 0, i32 6
  %27 = load ptr, ptr %fomer20, align 8, !tbaa !10
  store ptr %27, ptr %wei, align 8, !tbaa !5
  br label %for.end

if.end21:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %28 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %if.then17, %for.cond
  %29 = load ptr, ptr %wei, align 8, !tbaa !5
  store ptr %29, ptr %p, align 8, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.body24, %for.end
  %30 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp23 = icmp ne ptr %30, null
  br i1 %cmp23, label %for.body24, label %for.end38

for.body24:                                       ; preds = %for.cond22
  %31 = load ptr, ptr %p, align 8, !tbaa !5
  %number25 = getelementptr inbounds nuw %struct.student, ptr %31, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [20 x i8], ptr %number25, i64 0, i64 0
  %32 = load ptr, ptr %p, align 8, !tbaa !5
  %name27 = getelementptr inbounds nuw %struct.student, ptr %32, i32 0, i32 1
  %arraydecay28 = getelementptr inbounds [20 x i8], ptr %name27, i64 0, i64 0
  %33 = load ptr, ptr %p, align 8, !tbaa !5
  %sex29 = getelementptr inbounds nuw %struct.student, ptr %33, i32 0, i32 2
  %34 = load i8, ptr %sex29, align 8, !tbaa !20
  %conv30 = sext i8 %34 to i32
  %35 = load ptr, ptr %p, align 8, !tbaa !5
  %age31 = getelementptr inbounds nuw %struct.student, ptr %35, i32 0, i32 3
  %36 = load i32, ptr %age31, align 4, !tbaa !21
  %37 = load ptr, ptr %p, align 8, !tbaa !5
  %score32 = getelementptr inbounds nuw %struct.student, ptr %37, i32 0, i32 4
  %38 = load float, ptr %score32, align 8, !tbaa !22
  %conv33 = fpext float %38 to double
  %39 = load ptr, ptr %p, align 8, !tbaa !5
  %address34 = getelementptr inbounds nuw %struct.student, ptr %39, i32 0, i32 5
  %arraydecay35 = getelementptr inbounds [20 x i8], ptr %address34, i64 0, i64 0
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arraydecay26, ptr noundef %arraydecay28, i32 noundef %conv30, i32 noundef %36, double noundef %conv33, ptr noundef %arraydecay35)
  %40 = load ptr, ptr %p, align 8, !tbaa !5
  %fomer37 = getelementptr inbounds nuw %struct.student, ptr %40, i32 0, i32 6
  %41 = load ptr, ptr %fomer37, align 8, !tbaa !10
  store ptr %41, ptr %p, align 8, !tbaa !5
  br label %for.cond22, !llvm.loop !23

for.end38:                                        ; preds = %for.cond22
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %wei) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #5
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTSZ4mainE7student", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !6, i64 72}
!11 = !{!"_ZTSZ4mainE7student", !8, i64 0, !8, i64 20, !8, i64 40, !12, i64 44, !13, i64 48, !8, i64 52, !6, i64 72, !6, i64 80}
!12 = !{!"int", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!12, !12, i64 0}
!15 = !{!11, !6, i64 80}
!16 = !{!8, !8, i64 0}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!11, !8, i64 40}
!21 = !{!11, !12, i64 44}
!22 = !{!11, !13, i64 48}
!23 = distinct !{!23, !18, !19}
