; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0tg7whv6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %a)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %rem = srem i32 %0, 100
  %div = sdiv i32 %0, 100
  %rem2.lhs.trunc = trunc nsw i32 %rem to i8
  %rem29 = srem i8 %rem2.lhs.trunc, 50
  %rem2.sext = sext i8 %rem29 to i32
  %sub3 = sub nsw i32 %rem, %rem2.sext
  %div4.lhs.trunc = trunc nsw i32 %sub3 to i16
  %div410 = sdiv i16 %div4.lhs.trunc, 50
  %div4.sext = sext i16 %div410 to i32
  %rem611 = srem i8 %rem29, 20
  %div812 = sdiv i8 %rem29, 20
  %div8.sext = sext i8 %div812 to i32
  %rem1013 = srem i8 %rem611, 10
  %div1214 = sdiv i8 %rem611, 10
  %div12.sext = sext i8 %div1214 to i32
  %rem1415 = srem i8 %rem1013, 5
  %rem14.sext = sext i8 %rem1415 to i32
  %div1616 = sdiv i8 %rem1013, 5
  %div16.sext = sext i8 %div1616 to i32
  store i32 %rem14.sext, ptr %a, align 4, !tbaa !5
  %call18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div, i32 noundef %div4.sext, i32 noundef %div8.sext, i32 noundef %div12.sext, i32 noundef %div16.sext, i32 noundef %rem14.sext) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #5
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
