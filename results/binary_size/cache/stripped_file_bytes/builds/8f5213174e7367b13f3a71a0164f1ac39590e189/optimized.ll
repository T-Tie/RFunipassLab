; ModuleID = '/tmp/tmpew7ktrs6.cpp'
source_filename = "/tmp/tmpew7ktrs6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i8, align 1
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 -1, ptr %k, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %if.then6, %entry
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %c)
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i8, ptr %c, align 1, !tbaa !9
  %conv = sext i8 %0 to i32
  %call1 = call i32 @isspace(i32 noundef %conv) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %k, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %while.body
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i8, ptr %c, align 1, !tbaa !9
  %conv2 = sext i8 %2 to i32
  %call3 = call i32 @isspace(i32 noundef %conv2) #5
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, ptr %k, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %3, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  br label %while.cond, !llvm.loop !10

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %4 = load i8, ptr %c, align 1, !tbaa !9
  %conv8 = sext i8 %4 to i32
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv8)
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) #3

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
