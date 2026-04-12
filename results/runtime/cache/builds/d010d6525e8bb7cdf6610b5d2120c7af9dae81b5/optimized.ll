; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxel96j7_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %money = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %money) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %money)
  %0 = load i32, ptr %money, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rem = urem i32 %0, 100
  store i32 %rem, ptr %money, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = phi i32 [ %0, %entry ], [ %rem, %if.then ]
  %cmp4 = icmp sgt i32 %1, 49
  br i1 %cmp4, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end
  %rem6 = add nsw i32 %1, -50
  store i32 %rem6, ptr %money, align 4, !tbaa !5
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then5
  %2 = phi i32 [ %1, %if.end ], [ %rem6, %if.then5 ]
  %cmp14 = icmp sgt i32 %2, 19
  br i1 %cmp14, label %if.then15, label %if.end22

if.then15:                                        ; preds = %if.end12
  %rem16.lhs.trunc = trunc i32 %2 to i8
  %rem164 = urem i8 %rem16.lhs.trunc, 20
  %rem16.zext = zext nneg i8 %rem164 to i32
  store i32 %rem16.zext, ptr %money, align 4, !tbaa !5
  br label %if.end22

if.end22:                                         ; preds = %if.end12, %if.then15
  %3 = phi i32 [ %2, %if.end12 ], [ %rem16.zext, %if.then15 ]
  %cmp24 = icmp sgt i32 %3, 9
  %rem26 = add i32 %3, -10
  %4 = select i1 %cmp24, i32 %rem26, i32 %3
  %cmp34 = icmp sgt i32 %4, 4
  %5 = or i1 %cmp24, %cmp34
  br i1 %5, label %6, label %7

6:                                                ; preds = %if.end22
  %rem36 = add i32 %4, -5
  %simplifycfg.merge = select i1 %cmp34, i32 %rem36, i32 %4
  store i32 %simplifycfg.merge, ptr %money, align 4, !tbaa !5
  br label %7

7:                                                ; preds = %if.end22, %6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %7 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 6
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef undef)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %money) #4
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
attributes #3 = { nofree nounwind }
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
