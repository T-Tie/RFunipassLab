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
  %a = alloca [6 x i32], align 16
  %money = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %a, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %money) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %money)
  %0 = load i32, ptr %money, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %div = udiv i32 %0, 100
  store i32 %div, ptr %a, align 16, !tbaa !5
  %rem25 = urem i32 %0, 100
  store i32 %rem25, ptr %money, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %.pr = phi i32 [ %0, %entry ], [ %rem25, %if.then ]
  %cmp4 = icmp sgt i32 %.pr, 49
  br i1 %cmp4, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %a, i64 4
  store i32 1, ptr %arrayidx9, align 4, !tbaa !5
  %rem106 = add nsw i32 %.pr, -50
  store i32 %rem106, ptr %money, align 4, !tbaa !5
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then5
  %.pr3 = phi i32 [ %rem106, %if.then5 ], [ %.pr, %if.end ]
  %cmp14 = icmp sgt i32 %.pr3, 19
  br i1 %cmp14, label %if.then15, label %if.end22

if.then15:                                        ; preds = %if.end12
  %div18.lhs.trunc = trunc i32 %.pr3 to i8
  %div1811 = udiv i8 %div18.lhs.trunc, 20
  %div18.zext = zext nneg i8 %div1811 to i32
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %a, i64 8
  store i32 %div18.zext, ptr %arrayidx19, align 8, !tbaa !5
  %rem207.lhs.trunc = trunc i32 %.pr3 to i8
  %rem20712 = urem i8 %rem207.lhs.trunc, 20
  %rem207.zext = zext nneg i8 %rem20712 to i32
  store i32 %rem207.zext, ptr %money, align 4, !tbaa !5
  br label %if.end22

if.end22:                                         ; preds = %if.end12, %if.then15
  %.pr4 = phi i32 [ %rem207.zext, %if.then15 ], [ %.pr3, %if.end12 ]
  %cmp24 = icmp sgt i32 %.pr4, 9
  br i1 %cmp24, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end22
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %a, i64 12
  store i32 1, ptr %arrayidx29, align 4, !tbaa !5
  %rem308 = add nsw i32 %.pr4, -10
  store i32 %rem308, ptr %money, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %if.end22, %if.then25
  %1 = phi i32 [ %rem308, %if.then25 ], [ %.pr4, %if.end22 ]
  %cmp34 = icmp sgt i32 %1, 4
  br i1 %cmp34, label %if.then35, label %if.end42

if.then35:                                        ; preds = %if.end32
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %a, i64 16
  store i32 1, ptr %arrayidx39, align 16, !tbaa !5
  %rem409 = add nsw i32 %1, -5
  store i32 %rem409, ptr %money, align 4, !tbaa !5
  br label %if.end42

if.end42:                                         ; preds = %if.end32, %if.then35
  %2 = phi i32 [ %1, %if.end32 ], [ %rem409, %if.then35 ]
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %a, i64 20
  store i32 %2, ptr %arrayidx43, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end42
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end42 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 6
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx45 = getelementptr inbounds nuw [6 x i32], ptr %a, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %money) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
