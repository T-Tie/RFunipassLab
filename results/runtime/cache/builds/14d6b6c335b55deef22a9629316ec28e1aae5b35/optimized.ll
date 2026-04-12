; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwmcayifo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca [15 x i32], align 16
  %t = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #4
  br label %while.cond1

while.cond1:                                      ; preds = %while.cond1.backedge, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.be, %while.cond1.backedge ]
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %t)
  %0 = load i32, ptr %t, align 4, !tbaa !5
  switch i32 %0, label %if.else [
    i32 -1, label %if.then
    i32 0, label %for.cond
  ]

if.then:                                          ; preds = %while.cond1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #4
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %n) #4
  ret i32 0

if.else:                                          ; preds = %while.cond1
  %arrayidx = getelementptr inbounds nuw [15 x i32], ptr %n, i64 0, i64 %indvars.iv
  store i32 %0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %while.cond1.backedge

while.cond1.backedge:                             ; preds = %if.else, %for.end26
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %if.else ], [ 0, %for.end26 ]
  br label %while.cond1, !llvm.loop !9

for.cond:                                         ; preds = %for.cond8, %while.cond1
  %indvars.iv16 = phi i64 [ %indvars.iv, %while.cond1 ], [ %indvars.iv.next17, %for.cond8 ]
  %y.0 = phi i32 [ %0, %while.cond1 ], [ %y.1, %for.cond8 ]
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, -1
  %cmp6 = icmp sgt i64 %indvars.iv16, 0
  br i1 %cmp6, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %arrayidx12 = getelementptr inbounds nuw [15 x i32], ptr %n, i64 0, i64 %indvars.iv.next17
  %1 = trunc i64 %indvars.iv16 to i32
  %2 = add i32 %1, -2
  br label %for.cond8

for.cond8:                                        ; preds = %for.body10, %for.body
  %x2.0 = phi i32 [ %2, %for.body ], [ %dec, %for.body10 ]
  %y.1 = phi i32 [ %y.0, %for.body ], [ %y.2, %for.body10 ]
  %cmp9 = icmp sgt i32 %x2.0, -1
  br i1 %cmp9, label %for.body10, label %for.cond, !llvm.loop !12

for.body10:                                       ; preds = %for.cond8
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %idxprom13 = zext nneg i32 %x2.0 to i64
  %arrayidx14 = getelementptr inbounds nuw [15 x i32], ptr %n, i64 0, i64 %idxprom13
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %mul = shl nsw i32 %4, 1
  %cmp15 = icmp eq i32 %3, %mul
  %mul20 = shl nsw i32 %3, 1
  %cmp21 = icmp eq i32 %4, %mul20
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp21
  %add = zext i1 %or.cond to i32
  %y.2 = add nsw i32 %y.1, %add
  %dec = add nsw i32 %x2.0, -1
  br label %for.cond8, !llvm.loop !13

for.end26:                                        ; preds = %for.cond
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %y.0)
  br label %while.cond1.backedge
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
