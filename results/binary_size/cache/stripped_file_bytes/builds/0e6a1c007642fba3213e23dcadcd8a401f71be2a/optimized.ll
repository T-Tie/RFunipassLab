; ModuleID = '/tmp/tmp94ur15uw.cpp'
source_filename = "/tmp/tmp94ur15uw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #3
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %a, ptr noundef %b, ptr noundef %c, ptr noundef %d, ptr noundef %e, ptr noundef %f)
  %1 = load i32, ptr %d, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %2 = load i32, ptr %c, align 4, !tbaa !5
  %sub = sub nsw i32 60, %2
  %3 = load i32, ptr %f, align 4, !tbaa !5
  %add = add nsw i32 %sub, %3
  %4 = load i32, ptr %b, align 4, !tbaa !5
  %sub1 = sub nsw i32 60, %4
  %sub2 = sub nsw i32 %sub1, 1
  %mul = mul nsw i32 %sub2, 60
  %add3 = add nsw i32 %add, %mul
  %5 = load i32, ptr %e, align 4, !tbaa !5
  %mul4 = mul nsw i32 %5, 60
  %add5 = add nsw i32 %add3, %mul4
  %6 = load i32, ptr %d, align 4, !tbaa !5
  %add6 = add nsw i32 12, %6
  %7 = load i32, ptr %a, align 4, !tbaa !5
  %sub7 = sub nsw i32 %add6, %7
  %sub8 = sub nsw i32 %sub7, 1
  %mul9 = mul nsw i32 %sub8, 3600
  %add10 = add nsw i32 %add5, %mul9
  store i32 %add10, ptr %sum, align 4, !tbaa !5
  %8 = load i32, ptr %sum, align 4, !tbaa !5
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  ret i32 0
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
