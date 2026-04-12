; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjixtnmcs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [500 x i32], align 16
  %b = alloca [100 x i32], align 16
  %c = alloca [100 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %a, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %b, i8 0, i64 400, i1 false)
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %c, i8 0, i64 400, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc12
  %indvars.iv19 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next20, %for.inc12 ]
  %k.0 = phi i32 [ 0, %for.cond2.preheader ], [ %k.1, %for.inc12 ]
  %exitcond.not = icmp eq i64 %indvars.iv19, %wide.trip.count
  br i1 %exitcond.not, label %for.cond15.preheader, label %for.body4

for.cond15.preheader:                             ; preds = %for.cond2
  %smax33 = call i32 @llvm.smax.i32(i32 %k.0, i32 0)
  %wide.trip.count34 = zext nneg i32 %smax33 to i64
  %wide.trip.count27 = zext i32 %k.0 to i64
  br label %for.cond15

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv19
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %for.inc12, label %if.then

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %k.0 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom10
  store i32 %2, ptr %arrayidx11, align 4, !tbaa !5
  %add = add nsw i32 %k.0, 1
  br label %for.inc12

for.inc12:                                        ; preds = %for.body4, %if.then
  %k.1 = phi i32 [ %add, %if.then ], [ %k.0, %for.body4 ]
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond2, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader, %for.end31
  %indvars.iv29 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next30, %for.end31 ]
  %exitcond35.not = icmp eq i64 %indvars.iv29, %wide.trip.count34
  br i1 %exitcond35.not, label %for.end38, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond15
  %arrayidx24 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv29
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.body20
  %indvars.iv23 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next24, %for.body20 ]
  %x.0 = phi i32 [ 0, %for.cond18.preheader ], [ %spec.select, %for.body20 ]
  %exitcond28.not = icmp eq i64 %indvars.iv23, %wide.trip.count27
  br i1 %exitcond28.not, label %for.end31, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %arrayidx22 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv23
  %4 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %4, %5
  %add27 = zext i1 %cmp25 to i32
  %spec.select = add nuw nsw i32 %x.0, %add27
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond18, !llvm.loop !13

for.end31:                                        ; preds = %for.cond18
  %6 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %idxprom34 = zext nneg i32 %x.0 to i64
  %arrayidx35 = getelementptr inbounds nuw [100 x i32], ptr %c, i64 0, i64 %idxprom34
  store i32 %6, ptr %arrayidx35, align 4, !tbaa !5
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond15, !llvm.loop !14

for.end38:                                        ; preds = %for.cond15
  %7 = load i32, ptr %c, align 16, !tbaa !5
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7)
  %smax40 = call i32 @llvm.smax.i32(i32 %k.0, i32 1)
  %wide.trip.count41 = zext nneg i32 %smax40 to i64
  br label %for.cond41

for.cond41:                                       ; preds = %for.body43, %for.end38
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.body43 ], [ 1, %for.end38 ]
  %exitcond42.not = icmp eq i64 %indvars.iv36, %wide.trip.count41
  br i1 %exitcond42.not, label %for.end49, label %for.body43

for.body43:                                       ; preds = %for.cond41
  %arrayidx45 = getelementptr inbounds nuw [100 x i32], ptr %c, i64 0, i64 %indvars.iv36
  %8 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond41, !llvm.loop !15

for.end49:                                        ; preds = %for.cond41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
