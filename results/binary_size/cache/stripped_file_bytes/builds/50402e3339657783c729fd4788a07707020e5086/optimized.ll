; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2x_kyt6i.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, ptr noundef nonnull %d, ptr noundef nonnull %e, ptr noundef nonnull %f)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %b, align 4
  %cmp1 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  %2 = load i32, ptr %c, align 4
  %cmp3 = icmp eq i32 %2, 0
  %or.cond1 = select i1 %or.cond, i1 %cmp3, i1 false
  %3 = load i32, ptr %d, align 4
  %cmp5 = icmp eq i32 %3, 0
  %or.cond2 = select i1 %or.cond1, i1 %cmp5, i1 false
  %4 = load i32, ptr %e, align 4
  %cmp7 = icmp eq i32 %4, 0
  %or.cond3 = select i1 %or.cond2, i1 %cmp7, i1 false
  %5 = load i32, ptr %f, align 4
  %cmp9 = icmp eq i32 %5, 0
  %or.cond4 = select i1 %or.cond3, i1 %cmp9, i1 false
  br i1 %or.cond4, label %for.end, label %if.end

if.end:                                           ; preds = %for.cond
  %reass.sub = sub i32 %4, %1
  %6 = mul i32 %reass.sub, 60
  %reass.mul = add i32 %6, 3600
  %reass.sub7 = sub i32 %3, %0
  %7 = mul i32 %reass.sub7, 3600
  %reass.mul6 = add i32 %7, 39600
  %add17 = sub i32 %5, %2
  %add20 = add i32 %add17, %reass.mul6
  %sub21 = add i32 %add20, %reass.mul
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sub21)
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
