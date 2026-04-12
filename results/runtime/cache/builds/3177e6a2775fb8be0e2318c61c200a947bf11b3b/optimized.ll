; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4mkloxl7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z6minuteiiiiii(i32 noundef %x, i32 noundef %y, i32 noundef %z, i32 noundef %xx, i32 noundef %yy, i32 noundef %zz) local_unnamed_addr #0 {
entry:
  %reass.sub = sub i32 %xx, %x
  %0 = mul i32 %reass.sub, 3600
  %reass.sub1 = sub i32 %yy, %y
  %1 = mul i32 %reass.sub1, 60
  %reass.sub2 = sub i32 %0, %z
  %add8 = add i32 %reass.sub2, 43200
  %reass.mul = add i32 %add8, %zz
  %add11 = add i32 %reass.mul, %1
  ret i32 %add11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %c) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %d) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %e) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %f) #4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end16
  %t.0 = phi i32 [ 0, %entry ], [ %inc, %if.end16 ]
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %a, ptr noundef nonnull align 4 %b, ptr noundef nonnull align 4 %c, ptr noundef nonnull align 4 %d, ptr noundef nonnull align 4 %e, ptr noundef nonnull align 4 %f)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %b, align 4
  %cmp1 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %while.body
  %2 = load i32, ptr %c, align 4, !tbaa !5
  %3 = load i32, ptr %d, align 4, !tbaa !5
  %4 = or i32 %3, %2
  %and1 = icmp eq i32 %4, 0
  br i1 %and1, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true2
  %5 = load i32, ptr %e, align 4, !tbaa !5
  %6 = load i32, ptr %f, align 4, !tbaa !5
  %7 = or i32 %6, %5
  %and112 = icmp eq i32 %7, 0
  br i1 %and112, label %while.end, label %if.end

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true2, %while.body
  %inc = add nuw nsw i32 %t.0, 1
  %cmp13.not = icmp eq i32 %t.0, 0
  br i1 %cmp13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end
  %putchar = call i32 @putchar(i32 10)
  %.pre = load i32, ptr %a, align 4, !tbaa !5
  %.pre3 = load i32, ptr %b, align 4, !tbaa !5
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end
  %8 = phi i32 [ %.pre3, %if.then14 ], [ %1, %if.end ]
  %9 = phi i32 [ %.pre, %if.then14 ], [ %0, %if.end ]
  %10 = load i32, ptr %c, align 4, !tbaa !5
  %11 = load i32, ptr %d, align 4, !tbaa !5
  %12 = load i32, ptr %e, align 4, !tbaa !5
  %13 = load i32, ptr %f, align 4, !tbaa !5
  %reass.sub.i = sub i32 %11, %9
  %14 = mul i32 %reass.sub.i, 3600
  %reass.sub1.i = sub i32 %12, %8
  %15 = mul i32 %reass.sub1.i, 60
  %reass.sub = sub i32 %14, %10
  %add8.i = add i32 %reass.sub, 43200
  %reass.mul.i = add i32 %add8.i, %13
  %add11.i = add i32 %reass.mul.i, %15
  %call18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %add11.i)
  br label %while.body, !llvm.loop !9

while.end:                                        ; preds = %land.lhs.true6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %f) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %e) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %d) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #5
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
