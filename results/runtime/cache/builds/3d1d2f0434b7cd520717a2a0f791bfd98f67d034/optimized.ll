; ModuleID = '<stdin>'
source_filename = "/tmp/tmptse4wxp5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [301 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 301, ptr noundef nonnull align 16 %str) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %str)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %a.0 = phi i32 [ %a.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [301 x i8], ptr %str, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %cmp4 = icmp sgt i8 %0, 64
  br i1 %cmp4, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cmp8 = icmp samesign ult i8 %0, 91
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %inc = add nsw i32 %a.0, 1
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true
  %1 = add nsw i8 %0, -97
  %or.cond = icmp ult i8 %1, 26
  %inc19 = zext i1 %or.cond to i32
  %spec.select27 = add nsw i32 %a.0, %inc19
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body, %if.then
  %a.1 = phi i32 [ %inc, %if.then ], [ %a.0, %for.body ], [ %spec.select27, %if.else ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %cmp22 = icmp eq i32 %a.0, 0
  br i1 %cmp22, label %if.then23, label %for.cond26

if.then23:                                        ; preds = %for.end
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %if.end83

for.cond26:                                       ; preds = %for.end, %for.inc51
  %i.1 = phi i32 [ %inc52, %for.inc51 ], [ 65, %for.end ]
  %exitcond.not = icmp eq i32 %i.1, 91
  br i1 %exitcond.not, label %for.cond54, label %for.cond29

for.cond29:                                       ; preds = %for.cond26, %for.body34
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body34 ], [ 0, %for.cond26 ]
  %t.1 = phi i32 [ %spec.select, %for.body34 ], [ 0, %for.cond26 ]
  %arrayidx31 = getelementptr inbounds nuw [301 x i8], ptr %str, i64 0, i64 %indvars.iv29
  %2 = load i8, ptr %arrayidx31, align 1, !tbaa !5, !invariant.load !11
  %cmp33.not = icmp eq i8 %2, 0
  br i1 %cmp33.not, label %for.end44, label %for.body34

for.body34:                                       ; preds = %for.cond29
  %conv32 = sext i8 %2 to i32
  %cmp38 = icmp eq i32 %i.1, %conv32
  %inc40 = zext i1 %cmp38 to i32
  %spec.select = add nuw nsw i32 %t.1, %inc40
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond29, !llvm.loop !12

for.end44:                                        ; preds = %for.cond29
  %cmp45.not = icmp eq i32 %t.1, 0
  br i1 %cmp45.not, label %for.inc51, label %if.then46

if.then46:                                        ; preds = %for.end44
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.1, i32 noundef %t.1)
  br label %for.inc51

for.inc51:                                        ; preds = %for.end44, %if.then46
  %inc52 = add nuw nsw i32 %i.1, 1
  br label %for.cond26, !llvm.loop !13

for.cond54:                                       ; preds = %for.cond26, %for.inc80
  %i.2 = phi i32 [ %inc81, %for.inc80 ], [ 97, %for.cond26 ]
  %exitcond35.not = icmp eq i32 %i.2, 123
  br i1 %exitcond35.not, label %if.end83, label %for.cond57

for.cond57:                                       ; preds = %for.cond54, %for.body62
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body62 ], [ 0, %for.cond54 ]
  %l.1 = phi i32 [ %spec.select26, %for.body62 ], [ 0, %for.cond54 ]
  %arrayidx59 = getelementptr inbounds nuw [301 x i8], ptr %str, i64 0, i64 %indvars.iv32
  %3 = load i8, ptr %arrayidx59, align 1, !tbaa !5
  %cmp61.not = icmp eq i8 %3, 0
  br i1 %cmp61.not, label %for.end72, label %for.body62

for.body62:                                       ; preds = %for.cond57
  %conv60 = sext i8 %3 to i32
  %cmp66 = icmp eq i32 %i.2, %conv60
  %inc68 = zext i1 %cmp66 to i32
  %spec.select26 = add nuw nsw i32 %l.1, %inc68
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond57, !llvm.loop !14

for.end72:                                        ; preds = %for.cond57
  %cmp73.not = icmp eq i32 %l.1, 0
  br i1 %cmp73.not, label %for.inc80, label %if.then74

if.then74:                                        ; preds = %for.end72
  %call78 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.2, i32 noundef %l.1)
  br label %for.inc80

for.inc80:                                        ; preds = %for.end72, %if.then74
  %inc81 = add nuw nsw i32 %i.2, 1
  br label %for.cond54, !llvm.loop !15

if.end83:                                         ; preds = %for.cond54, %if.then23
  call void @llvm.lifetime.end.p0(i64 noundef 301, ptr noundef nonnull %str) #4
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
