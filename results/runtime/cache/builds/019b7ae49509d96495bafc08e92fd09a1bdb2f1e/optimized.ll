; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk_d3jsf8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %b) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %a, ptr noundef align 4 %b)
  %0 = load i32, ptr %b, align 4, !tbaa !5
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %1, ptr %b, align 4, !tbaa !5
  store i32 %0, ptr %a, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = phi i32 [ %inc, %for.inc ], [ 3, %if.end ]
  %cmp1 = icmp slt i32 %2, 100
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %c) #5
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %c)
  %3 = load i32, ptr %c, align 4, !tbaa !5
  %4 = load i32, ptr %b, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %3, %4
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, ptr %a, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %3, %5
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true
  store i32 %3, ptr %b, align 4, !tbaa !5
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true, %for.body
  %6 = load i32, ptr %a, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %3, %6
  br i1 %cmp6, label %if.then7, label %for.inc

if.then7:                                         ; preds = %if.else
  store i32 %3, ptr %a, align 4, !tbaa !5
  store i32 %6, ptr %b, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.then7, %if.else
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %c) #5
  %inc = add nsw i32 %2, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %a, align 4, !tbaa !5
  %8 = load i32, ptr %b, align 4, !tbaa !5
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %7, i32 noundef %8) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn }
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
