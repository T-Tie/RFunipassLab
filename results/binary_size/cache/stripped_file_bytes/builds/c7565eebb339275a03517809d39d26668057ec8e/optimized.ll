; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwbm423v4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %p = alloca [300 x i8], align 16
  %j = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 %p) #4
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull dereferenceable(1) %j) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %p)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %a.0 = phi i32 [ %a.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [300 x i8], ptr %p, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %cmp4 = icmp sgt i8 %0, 64
  br i1 %cmp4, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cmp8 = icmp samesign ult i8 %0, 91
  %1 = add nsw i8 %0, -97
  %or.cond = icmp ult i8 %1, 26
  %or.cond17 = select i1 %cmp8, i1 true, i1 %or.cond
  %inc = zext i1 %or.cond17 to i32
  %spec.select = add nsw i32 %a.0, %inc
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %a.1 = phi i32 [ %a.0, %for.body ], [ %spec.select, %land.lhs.true ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %cmp19 = icmp eq i32 %a.0, 0
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %for.end
  %call21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %if.end80

if.else:                                          ; preds = %for.end
  store i8 65, ptr %j, align 1, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.end42, %if.else
  %2 = phi i8 [ %.pre, %for.end42 ], [ 65, %if.else ]
  %cmp24 = icmp slt i8 %2, 91
  br i1 %cmp24, label %for.cond26, label %for.end50

for.cond26:                                       ; preds = %for.cond22, %for.body31
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body31 ], [ 0, %for.cond22 ]
  %inc3819 = phi i32 [ %spec.select24, %for.body31 ], [ 0, %for.cond22 ]
  %3 = phi i32 [ %spec.select25, %for.body31 ], [ 0, %for.cond22 ]
  %arrayidx28 = getelementptr inbounds nuw [300 x i8], ptr %p, i64 0, i64 %indvars.iv29
  %4 = load i8, ptr %arrayidx28, align 1, !tbaa !5, !invariant.load !11
  %cmp30.not = icmp eq i8 %4, 0
  br i1 %cmp30.not, label %for.end42, label %for.body31

for.body31:                                       ; preds = %for.cond26
  %cmp36 = icmp eq i8 %4, %2
  %inc38 = add nsw i32 %3, 1
  %spec.select24 = select i1 %cmp36, i32 %inc38, i32 %inc3819
  %spec.select25 = select i1 %cmp36, i32 %inc38, i32 %3
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond26, !llvm.loop !12

for.end42:                                        ; preds = %for.cond26
  call fastcc void @outlined_ir_func_0(i32 %inc3819, ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %j)
  %.pre = load i8, ptr %j, align 1, !tbaa !5
  br label %for.cond22

for.end50:                                        ; preds = %for.cond22
  store i8 97, ptr %j, align 1, !tbaa !5
  br label %for.cond51

for.cond51:                                       ; preds = %for.end71, %for.end50
  %5 = phi i8 [ %.pre35, %for.end71 ], [ 97, %for.end50 ]
  %cmp53 = icmp slt i8 %5, 123
  br i1 %cmp53, label %for.cond55, label %if.end80

for.cond55:                                       ; preds = %for.cond51, %for.body60
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body60 ], [ 0, %for.cond51 ]
  %inc6722 = phi i32 [ %spec.select26, %for.body60 ], [ 0, %for.cond51 ]
  %6 = phi i32 [ %spec.select27, %for.body60 ], [ 0, %for.cond51 ]
  %arrayidx57 = getelementptr inbounds nuw [300 x i8], ptr %p, i64 0, i64 %indvars.iv32
  %7 = load i8, ptr %arrayidx57, align 1, !tbaa !5
  %cmp59.not = icmp eq i8 %7, 0
  br i1 %cmp59.not, label %for.end71, label %for.body60

for.body60:                                       ; preds = %for.cond55
  %cmp65 = icmp eq i8 %7, %5
  %inc67 = add nsw i32 %6, 1
  %spec.select26 = select i1 %cmp65, i32 %inc67, i32 %inc6722
  %spec.select27 = select i1 %cmp65, i32 %inc67, i32 %6
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond55, !llvm.loop !13

for.end71:                                        ; preds = %for.cond55
  call fastcc void @outlined_ir_func_0(i32 %inc6722, ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %j)
  %.pre35 = load i8, ptr %j, align 1, !tbaa !5
  br label %for.cond51

if.end80:                                         ; preds = %for.cond51, %if.then20
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull dereferenceable(1) %j) #5
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %p) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(i32 %0, ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %1) unnamed_addr #3 {
for.end42_to_outline:
  %cmp43.not = icmp eq i32 %0, 0
  %.pre = load i8, ptr %1, align 1, !tbaa !5
  br i1 %cmp43.not, label %for.cond22.exitStub, label %if.then44

if.then44:                                        ; preds = %for.end42_to_outline
  %conv45 = sext i8 %.pre to i32
  %call46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %conv45, i32 noundef %0)
  br label %for.cond22.exitStub

for.cond22.exitStub:                              ; preds = %if.then44, %for.end42_to_outline
  %inc49 = add i8 %.pre, 1
  store i8 %inc49, ptr %1, align 1, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
