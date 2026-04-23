; ModuleID = '/tmp/tmpckf559wh.cpp'
source_filename = "/tmp/tmpckf559wh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [19 x i8] c" %d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %ans = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ans) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %a, ptr noundef %b, ptr noundef %c, ptr noundef %d, ptr noundef %e, ptr noundef %f)
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, ptr %b, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %c, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %4 = load i32, ptr %d, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %land.lhs.true7, label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %5 = load i32, ptr %e, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %land.lhs.true9, label %if.else

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %6 = load i32, ptr %f, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true9, %land.lhs.true7, %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %for.body
  %7 = load i32, ptr %c, align 4, !tbaa !5
  %8 = load i32, ptr %f, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %7, %8
  br i1 %cmp11, label %land.lhs.true12, label %if.else21

land.lhs.true12:                                  ; preds = %if.else
  %9 = load i32, ptr %b, align 4, !tbaa !5
  %10 = load i32, ptr %e, align 4, !tbaa !5
  %cmp13 = icmp sle i32 %9, %10
  br i1 %cmp13, label %if.then14, label %if.else21

if.then14:                                        ; preds = %land.lhs.true12
  %11 = load i32, ptr %d, align 4, !tbaa !5
  %add = add nsw i32 12, %11
  %12 = load i32, ptr %a, align 4, !tbaa !5
  %sub = sub nsw i32 %add, %12
  %mul = mul nsw i32 %sub, 3600
  %13 = load i32, ptr %e, align 4, !tbaa !5
  %14 = load i32, ptr %b, align 4, !tbaa !5
  %sub15 = sub nsw i32 %13, %14
  %mul16 = mul nsw i32 %sub15, 60
  %add17 = add nsw i32 %mul, %mul16
  %15 = load i32, ptr %f, align 4, !tbaa !5
  %16 = load i32, ptr %c, align 4, !tbaa !5
  %sub18 = sub nsw i32 %15, %16
  %mul19 = mul nsw i32 %sub18, 1
  %add20 = add nsw i32 %add17, %mul19
  store i32 %add20, ptr %ans, align 4, !tbaa !5
  br label %if.end65

if.else21:                                        ; preds = %land.lhs.true12, %if.else
  %17 = load i32, ptr %c, align 4, !tbaa !5
  %18 = load i32, ptr %f, align 4, !tbaa !5
  %cmp22 = icmp sge i32 %17, %18
  br i1 %cmp22, label %land.lhs.true23, label %if.else35

land.lhs.true23:                                  ; preds = %if.else21
  %19 = load i32, ptr %b, align 4, !tbaa !5
  %20 = load i32, ptr %e, align 4, !tbaa !5
  %cmp24 = icmp sle i32 %19, %20
  br i1 %cmp24, label %if.then25, label %if.else35

if.then25:                                        ; preds = %land.lhs.true23
  %21 = load i32, ptr %d, align 4, !tbaa !5
  %add26 = add nsw i32 12, %21
  %22 = load i32, ptr %a, align 4, !tbaa !5
  %sub27 = sub nsw i32 %add26, %22
  %mul28 = mul nsw i32 %sub27, 3600
  %23 = load i32, ptr %e, align 4, !tbaa !5
  %24 = load i32, ptr %b, align 4, !tbaa !5
  %sub29 = sub nsw i32 %23, %24
  %mul30 = mul nsw i32 %sub29, 60
  %add31 = add nsw i32 %mul28, %mul30
  %25 = load i32, ptr %f, align 4, !tbaa !5
  %26 = load i32, ptr %c, align 4, !tbaa !5
  %sub32 = sub nsw i32 %25, %26
  %mul33 = mul nsw i32 %sub32, 1
  %add34 = add nsw i32 %add31, %mul33
  store i32 %add34, ptr %ans, align 4, !tbaa !5
  br label %if.end64

if.else35:                                        ; preds = %land.lhs.true23, %if.else21
  %27 = load i32, ptr %c, align 4, !tbaa !5
  %28 = load i32, ptr %f, align 4, !tbaa !5
  %cmp36 = icmp sle i32 %27, %28
  br i1 %cmp36, label %land.lhs.true37, label %if.else49

land.lhs.true37:                                  ; preds = %if.else35
  %29 = load i32, ptr %b, align 4, !tbaa !5
  %30 = load i32, ptr %e, align 4, !tbaa !5
  %cmp38 = icmp sge i32 %29, %30
  br i1 %cmp38, label %if.then39, label %if.else49

if.then39:                                        ; preds = %land.lhs.true37
  %31 = load i32, ptr %d, align 4, !tbaa !5
  %add40 = add nsw i32 12, %31
  %32 = load i32, ptr %a, align 4, !tbaa !5
  %sub41 = sub nsw i32 %add40, %32
  %mul42 = mul nsw i32 %sub41, 3600
  %33 = load i32, ptr %e, align 4, !tbaa !5
  %34 = load i32, ptr %b, align 4, !tbaa !5
  %sub43 = sub nsw i32 %33, %34
  %mul44 = mul nsw i32 %sub43, 60
  %add45 = add nsw i32 %mul42, %mul44
  %35 = load i32, ptr %f, align 4, !tbaa !5
  %36 = load i32, ptr %c, align 4, !tbaa !5
  %sub46 = sub nsw i32 %35, %36
  %mul47 = mul nsw i32 %sub46, 1
  %add48 = add nsw i32 %add45, %mul47
  store i32 %add48, ptr %ans, align 4, !tbaa !5
  br label %if.end63

if.else49:                                        ; preds = %land.lhs.true37, %if.else35
  %37 = load i32, ptr %c, align 4, !tbaa !5
  %38 = load i32, ptr %f, align 4, !tbaa !5
  %cmp50 = icmp sge i32 %37, %38
  br i1 %cmp50, label %land.lhs.true51, label %if.end

land.lhs.true51:                                  ; preds = %if.else49
  %39 = load i32, ptr %b, align 4, !tbaa !5
  %40 = load i32, ptr %e, align 4, !tbaa !5
  %cmp52 = icmp sge i32 %39, %40
  br i1 %cmp52, label %if.then53, label %if.end

if.then53:                                        ; preds = %land.lhs.true51
  %41 = load i32, ptr %d, align 4, !tbaa !5
  %add54 = add nsw i32 12, %41
  %42 = load i32, ptr %a, align 4, !tbaa !5
  %sub55 = sub nsw i32 %add54, %42
  %mul56 = mul nsw i32 %sub55, 3600
  %43 = load i32, ptr %e, align 4, !tbaa !5
  %44 = load i32, ptr %b, align 4, !tbaa !5
  %sub57 = sub nsw i32 %43, %44
  %mul58 = mul nsw i32 %sub57, 60
  %add59 = add nsw i32 %mul56, %mul58
  %45 = load i32, ptr %f, align 4, !tbaa !5
  %46 = load i32, ptr %c, align 4, !tbaa !5
  %sub60 = sub nsw i32 %45, %46
  %mul61 = mul nsw i32 %sub60, 1
  %add62 = add nsw i32 %add59, %mul61
  store i32 %add62, ptr %ans, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then53, %land.lhs.true51, %if.else49
  br label %if.end63

if.end63:                                         ; preds = %if.end, %if.then39
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then25
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then14
  br label %if.end66

if.end66:                                         ; preds = %if.end65
  %47 = load i32, ptr %ans, align 4, !tbaa !5
  %call67 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %47)
  br label %for.inc

for.inc:                                          ; preds = %if.end66
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ans) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
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
