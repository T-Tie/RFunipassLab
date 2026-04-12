; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1at_mm4n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %rem2 = srem i32 %1, 100
  %rem3 = srem i32 %1, 50
  %sub4 = sub nsw i32 %rem2, %rem3
  %div5.lhs.trunc = trunc nsw i32 %sub4 to i16
  %div51 = sdiv i16 %div5.lhs.trunc, 50
  %div5.sext = sext i16 %div51 to i32
  %call6 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div5.sext)
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %rem7 = srem i32 %2, 100
  %rem8 = srem i32 %2, 10
  %sub9 = sub nsw i32 %rem7, %rem8
  %cmp = icmp sgt i32 %sub9, 49
  br i1 %cmp, label %if.then, label %if.then26

if.then:                                          ; preds = %entry
  %3 = trunc nsw i32 %rem7 to i16
  %div12.lhs.trunc = add nsw i16 %3, -50
  %div122 = sdiv i16 %div12.lhs.trunc, 20
  %div12.sext = sext i16 %div122 to i32
  %call13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div12.sext)
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %.fr = freeze i32 %4
  %rem14 = srem i32 %.fr, 100
  %5 = trunc nsw i32 %rem14 to i16
  %.lhs.trunc = add nsw i16 %5, -50
  %6 = srem i16 %.lhs.trunc, 20
  %div20.lhs.trunc = trunc nsw i16 %6 to i8
  br label %if.end37

if.then26:                                        ; preds = %entry
  %rem27 = srem i32 %2, 50
  %rem28 = srem i32 %2, 20
  %sub29 = sub nsw i32 %rem27, %rem28
  %div30.lhs.trunc = trunc nsw i32 %sub29 to i8
  %div305 = sdiv i8 %div30.lhs.trunc, 20
  %div30.sext = sext i8 %div305 to i32
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div30.sext)
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %rem32 = srem i32 %7, 20
  %rem33 = srem i32 %7, 10
  %sub34 = sub nsw i32 %rem32, %rem33
  %div35.lhs.trunc = trunc nsw i32 %sub34 to i8
  br label %if.end37

if.end37:                                         ; preds = %if.then26, %if.then
  %div35.lhs.trunc.sink = phi i8 [ %div35.lhs.trunc, %if.then26 ], [ %div20.lhs.trunc, %if.then ]
  %div356 = sdiv i8 %div35.lhs.trunc.sink, 10
  %div35.sext = sext i8 %div356 to i32
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div35.sext)
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %rem38 = srem i32 %8, 10
  %rem39 = srem i32 %8, 5
  %sub40 = sub nsw i32 %rem38, %rem39
  %div41.lhs.trunc = trunc nsw i32 %sub40 to i8
  %div414 = sdiv i8 %div41.lhs.trunc, 5
  %div41.sext = sext i8 %div414 to i32
  %call42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div41.sext)
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %rem43 = srem i32 %9, 5
  %call44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %rem43)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
