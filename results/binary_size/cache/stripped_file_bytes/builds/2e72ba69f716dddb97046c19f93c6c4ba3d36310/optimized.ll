; ModuleID = '<stdin>'
source_filename = "/tmp/tmpckf559wh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [19 x i8] c" %d %d %d %d %d %d\00", align 1
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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %b) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %c) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %d) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %e) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %f) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %ans.0 = phi i32 [ undef, %entry ], [ %ans.1, %for.inc ]
  %.sink = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %exitcond.not = icmp eq i32 %.sink, 1000
  br i1 %exitcond.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %a, ptr noundef nonnull align 4 %b, ptr noundef nonnull align 4 %c, ptr noundef nonnull align 4 %d, ptr noundef nonnull align 4 %e, ptr noundef nonnull align 4 %f)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %0, 0
  %1 = load i32, ptr %b, align 4
  %cmp2 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  %2 = load i32, ptr %c, align 4
  %cmp4 = icmp eq i32 %2, 0
  %or.cond7 = select i1 %or.cond, i1 %cmp4, i1 false
  %3 = load i32, ptr %d, align 4
  %cmp6 = icmp eq i32 %3, 0
  %or.cond8 = select i1 %or.cond7, i1 %cmp6, i1 false
  %4 = load i32, ptr %e, align 4
  %cmp8 = icmp eq i32 %4, 0
  %or.cond9 = select i1 %or.cond8, i1 %cmp8, i1 false
  %5 = load i32, ptr %f, align 4
  %cmp10 = icmp eq i32 %5, 0
  %or.cond10 = select i1 %or.cond9, i1 %cmp10, i1 false
  br i1 %or.cond10, label %cleanup, label %if.else

if.else:                                          ; preds = %for.body
  %cmp11.not = icmp sgt i32 %2, %5
  %cmp13.not = icmp sgt i32 %1, %4
  %or.cond12 = select i1 %cmp11.not, i1 true, i1 %cmp13.not
  br i1 %or.cond12, label %if.else21, label %for.inc.gvnsink.split

if.else21:                                        ; preds = %if.else
  %cmp22.not = icmp slt i32 %2, %5
  %cmp24.not = icmp sgt i32 %1, %4
  %or.cond13 = select i1 %cmp22.not, i1 true, i1 %cmp24.not
  %cmp38.not = icmp slt i32 %1, %4
  %or.cond14 = select i1 %cmp11.not, i1 true, i1 %cmp38.not
  %or.cond16 = select i1 %or.cond13, i1 %or.cond14, i1 false
  %cmp52.not = icmp slt i32 %1, %4
  %or.cond15 = select i1 %cmp22.not, i1 true, i1 %cmp52.not
  %or.cond17 = select i1 %or.cond16, i1 %or.cond15, i1 false
  br i1 %or.cond17, label %for.inc, label %for.inc.gvnsink.split

for.inc.gvnsink.split:                            ; preds = %if.else21, %if.else
  %reass.sub = sub i32 %3, %0
  %6 = mul i32 %reass.sub, 3600
  %mul56 = add i32 %6, 43200
  %sub57 = sub nsw i32 %4, %1
  %mul58 = mul nsw i32 %sub57, 60
  %add59 = sub i32 %5, %2
  %sub60 = add i32 %add59, %mul56
  %add62 = add i32 %sub60, %mul58
  br label %for.inc

for.inc:                                          ; preds = %if.else21, %for.inc.gvnsink.split
  %ans.1 = phi i32 [ %add62, %for.inc.gvnsink.split ], [ %ans.0, %if.else21 ]
  %call67 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %ans.1)
  %inc = add nuw nsw i32 %.sink, 1
  br label %for.cond, !llvm.loop !9

cleanup:                                          ; preds = %for.body, %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 %f) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 %e) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 %d) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 %c) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
