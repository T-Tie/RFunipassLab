; ModuleID = '<stdin>'
source_filename = "/tmp/tmpls6s3fic.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %div1 = sdiv i32 %0, 10
  %rem = srem i32 %div1, 10
  %cmp = icmp sgt i32 %rem, 4
  br i1 %cmp, label %if.end, label %land.lhs.true

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %rem, -5
  %div4313237 = lshr i32 %sub, 1
  %sub8 = and i32 %sub, 1
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %cmp10 = icmp sgt i32 %rem, 1
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %land.lhs.true
  %div12333436 = lshr i32 %rem, 1
  %sub14 = and i32 %rem, 1
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end, %land.lhs.true
  %b2.2 = phi i32 [ 0, %land.lhs.true ], [ %div4313237, %if.end ], [ %div12333436, %if.then11 ]
  %b3.2 = phi i32 [ %rem, %land.lhs.true ], [ %sub8, %if.end ], [ %sub14, %if.then11 ]
  %b1.2 = phi i32 [ 0, %land.lhs.true ], [ 1, %if.end ], [ 0, %if.then11 ]
  %rem2 = srem i32 %0, 10
  %div = sdiv i32 %0, 100
  %cmp19 = icmp sgt i32 %rem2, 4
  %sub22 = add nsw i32 %rem2, -5
  %spec.select = zext i1 %cmp19 to i32
  %spec.select35 = select i1 %cmp19, i32 %sub22, i32 %rem2
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div, i32 noundef %b1.2, i32 noundef %b2.2, i32 noundef %b3.2, i32 noundef %spec.select, i32 noundef %spec.select35)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #4
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
