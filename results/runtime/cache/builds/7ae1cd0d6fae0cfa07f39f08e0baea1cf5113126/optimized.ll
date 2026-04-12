; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1at_mm4n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %0, 100
  %sub = sub nsw i32 %0, %rem
  %div = sdiv i32 %sub, 100
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %rem2 = srem i32 %1, 100
  %rem3 = srem i32 %1, 50
  %sub4 = sub nsw i32 %rem2, %rem3
  %div5 = sdiv i32 %sub4, 50
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div5)
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %rem7 = srem i32 %2, 100
  %rem8 = srem i32 %2, 10
  %sub9 = sub nsw i32 %rem7, %rem8
  %cmp = icmp sge i32 %sub9, 50
  br i1 %cmp, label %if.then, label %if.then26

if.then:                                          ; preds = %entry
  %sub11 = sub nsw i32 %rem7, 50
  %div12 = sdiv i32 %sub11, 20
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div12)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %rem14 = srem i32 %3, 100
  %sub15 = sub nsw i32 %rem14, 50
  %div18 = sdiv i32 %sub15, 20
  %mul = mul nsw i32 %div18, 20
  %sub19 = sub nsw i32 %sub15, %mul
  br label %if.end37

if.then26:                                        ; preds = %entry
  %rem27 = srem i32 %2, 50
  %rem28 = srem i32 %2, 20
  %sub29 = sub nsw i32 %rem27, %rem28
  %div30 = sdiv i32 %sub29, 20
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div30)
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %rem32 = srem i32 %4, 20
  %rem33 = srem i32 %4, 10
  %sub34 = sub nsw i32 %rem32, %rem33
  br label %if.end37

if.end37:                                         ; preds = %if.then26, %if.then
  %sub34.sink = phi i32 [ %sub34, %if.then26 ], [ %sub19, %if.then ]
  %div35 = sdiv i32 %sub34.sink, 10
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div35)
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %rem38 = srem i32 %5, 10
  %rem39 = srem i32 %5, 5
  %sub40 = sub nsw i32 %rem38, %rem39
  %div41 = sdiv i32 %sub40, 5
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div41)
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %rem43 = srem i32 %6, 5
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %rem43)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
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
attributes #3 = { nofree nounwind willreturn }
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
