; ModuleID = '/tmp/tmpk7askaw6.cpp'
source_filename = "/tmp/tmpk7askaw6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.word = type { [20 x i8], i32 }

@word = dso_local global [1000 x %struct.word] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %line = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %line) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  store ptr @word, ptr %p, align 8, !tbaa !13
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8, !tbaa !13
  %w = getelementptr inbounds nuw %struct.word, ptr %2, i32 0, i32 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %w)
  %3 = load ptr, ptr %p, align 8, !tbaa !13
  %w2 = getelementptr inbounds nuw %struct.word, ptr %3, i32 0, i32 0
  %arraydecay = getelementptr inbounds [20 x i8], ptr %w2, i64 0, i64 0
  %call3 = call i64 @strlen(ptr noundef %arraydecay) #5
  %conv = trunc i64 %call3 to i32
  %4 = load ptr, ptr %p, align 8, !tbaa !13
  %a = getelementptr inbounds nuw %struct.word, ptr %4, i32 0, i32 1
  store i32 %conv, ptr %a, align 4, !tbaa !15
  %5 = load ptr, ptr %p, align 8, !tbaa !13
  %incdec.ptr = getelementptr inbounds nuw %struct.word, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  store ptr @word, ptr %p, align 8, !tbaa !13
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc31, %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %7, %8
  br i1 %cmp5, label %for.body6, label %for.end33

for.body6:                                        ; preds = %for.cond4
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %9, 1
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body6
  %10 = load ptr, ptr %p, align 8, !tbaa !13
  %w8 = getelementptr inbounds nuw %struct.word, ptr %10, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [20 x i8], ptr %w8, i64 0, i64 0
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay9)
  %11 = load ptr, ptr %p, align 8, !tbaa !13
  %a11 = getelementptr inbounds nuw %struct.word, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %a11, align 4, !tbaa !15
  store i32 %12, ptr %line, align 4, !tbaa !5
  %13 = load ptr, ptr %p, align 8, !tbaa !13
  %incdec.ptr12 = getelementptr inbounds nuw %struct.word, ptr %13, i32 1
  store ptr %incdec.ptr12, ptr %p, align 8, !tbaa !13
  br label %if.end30

if.else:                                          ; preds = %for.body6
  %14 = load i32, ptr %line, align 4, !tbaa !5
  %15 = load ptr, ptr %p, align 8, !tbaa !13
  %a13 = getelementptr inbounds nuw %struct.word, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %a13, align 4, !tbaa !15
  %add = add nsw i32 %14, %16
  %add14 = add nsw i32 %add, 1
  %cmp15 = icmp sgt i32 %add14, 80
  br i1 %cmp15, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.else
  %17 = load ptr, ptr %p, align 8, !tbaa !13
  %w17 = getelementptr inbounds nuw %struct.word, ptr %17, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [20 x i8], ptr %w17, i64 0, i64 0
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay18)
  %18 = load ptr, ptr %p, align 8, !tbaa !13
  %a20 = getelementptr inbounds nuw %struct.word, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %a20, align 4, !tbaa !15
  store i32 %19, ptr %line, align 4, !tbaa !5
  %20 = load ptr, ptr %p, align 8, !tbaa !13
  %incdec.ptr21 = getelementptr inbounds nuw %struct.word, ptr %20, i32 1
  store ptr %incdec.ptr21, ptr %p, align 8, !tbaa !13
  br label %if.end

if.else22:                                        ; preds = %if.else
  %21 = load ptr, ptr %p, align 8, !tbaa !13
  %w23 = getelementptr inbounds nuw %struct.word, ptr %21, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [20 x i8], ptr %w23, i64 0, i64 0
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arraydecay24)
  %22 = load ptr, ptr %p, align 8, !tbaa !13
  %a26 = getelementptr inbounds nuw %struct.word, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %a26, align 4, !tbaa !15
  %add27 = add nsw i32 %23, 1
  %24 = load i32, ptr %line, align 4, !tbaa !5
  %add28 = add nsw i32 %24, %add27
  store i32 %add28, ptr %line, align 4, !tbaa !5
  %25 = load ptr, ptr %p, align 8, !tbaa !13
  %incdec.ptr29 = getelementptr inbounds nuw %struct.word, ptr %25, i32 1
  store ptr %incdec.ptr29, ptr %p, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else22, %if.then16
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !20

for.end33:                                        ; preds = %for.cond4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %line) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p2 omnipotent char", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS4word", !12, i64 0}
!15 = !{!16, !6, i64 20}
!16 = !{!"_ZTS4word", !7, i64 0, !6, i64 20}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !18, !19}
