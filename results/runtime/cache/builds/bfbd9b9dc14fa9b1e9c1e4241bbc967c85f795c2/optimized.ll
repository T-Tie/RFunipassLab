; ModuleID = '<stdin>'
source_filename = "/tmp/tmpe8nwttxw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j3 = alloca i8, i32 0, align 4
  %j1 = alloca i8, i32 0, align 4
  %end = alloca i32, align 4
  %dz = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %end) #4
  store i32 0, ptr %end, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef %dz) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.inc18

for.body3:                                        ; preds = %for.cond1
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %dz)
  %call6 = call i64 @strlen(ptr noundef %dz) #6
  %conv = trunc i64 %call6 to i32
  %4 = load i32, ptr %end, align 4, !tbaa !5
  %add = add nsw i32 %4, %conv
  %add7 = add nsw i32 %add, 1
  %cmp8 = icmp sgt i32 %add7, 80
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %end, align 4, !tbaa !5
  br label %for.inc

if.else:                                          ; preds = %for.body3
  %cmp10 = icmp sgt i32 %4, 0
  br i1 %cmp10, label %if.then11, label %for.inc

if.then11:                                        ; preds = %if.else
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %end, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.then11, %if.else
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %dz)
  %5 = load i32, ptr %end, align 4, !tbaa !5
  %add16 = add nsw i32 %5, %conv
  store i32 %add16, ptr %end, align 4, !tbaa !5
  %inc17 = add nsw i32 %2, 1
  store i32 %inc17, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc18:                                        ; preds = %for.cond1
  %inc19 = add nsw i32 %2, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end20:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef %dz) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %end) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
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
attributes #4 = { nofree nounwind }
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
!12 = distinct !{!12, !10, !11}
