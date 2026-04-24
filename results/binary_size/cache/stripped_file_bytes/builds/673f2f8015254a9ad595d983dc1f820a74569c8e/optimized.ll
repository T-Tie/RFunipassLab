; ModuleID = '/tmp/tmp0y3uzlca.cpp'
source_filename = "/tmp/tmp0y3uzlca.cpp"
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
  %j = alloca i32, align 4
  %p = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #3
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %a, ptr noundef %b, ptr noundef %c, ptr noundef %d, ptr noundef %e, ptr noundef %f)
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %2 = load i32, ptr %b, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, ptr %b, align 4, !tbaa !5
  %4 = load i32, ptr %c, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %c, align 4, !tbaa !5
  %6 = load i32, ptr %d, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %5, %6
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %7 = load i32, ptr %d, align 4, !tbaa !5
  %8 = load i32, ptr %e, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %7, %8
  br i1 %cmp6, label %land.lhs.true7, label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %9 = load i32, ptr %e, align 4, !tbaa !5
  %10 = load i32, ptr %f, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %9, %10
  br i1 %cmp8, label %land.lhs.true9, label %if.else

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %11 = load i32, ptr %f, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %11, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true9, %land.lhs.true7, %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %for.body
  store i32 0, ptr %p, align 4, !tbaa !5
  %12 = load i32, ptr %a, align 4, !tbaa !5
  %sub = sub nsw i32 12, %12
  %sub11 = sub nsw i32 %sub, 1
  %13 = load i32, ptr %d, align 4, !tbaa !5
  %add = add nsw i32 %sub11, %13
  %mul = mul nsw i32 3600, %add
  %14 = load i32, ptr %b, align 4, !tbaa !5
  %sub12 = sub nsw i32 60, %14
  %sub13 = sub nsw i32 %sub12, 1
  %15 = load i32, ptr %e, align 4, !tbaa !5
  %add14 = add nsw i32 %sub13, %15
  %mul15 = mul nsw i32 60, %add14
  %add16 = add nsw i32 %mul, %mul15
  %add17 = add nsw i32 %add16, 60
  %16 = load i32, ptr %c, align 4, !tbaa !5
  %sub18 = sub nsw i32 %add17, %16
  %17 = load i32, ptr %f, align 4, !tbaa !5
  %add19 = add nsw i32 %sub18, %17
  store i32 %add19, ptr %p, align 4, !tbaa !5
  %18 = load i32, ptr %p, align 4, !tbaa !5
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
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
