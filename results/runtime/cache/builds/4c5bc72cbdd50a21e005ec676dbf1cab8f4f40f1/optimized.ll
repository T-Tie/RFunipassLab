; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsqu0g44t.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv, %2
  br i1 %cmp, label %for.inc, label %for.cond5

for.inc:                                          ; preds = %for.cond
  %mul3 = shl nsw i64 %2, 2
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #7
  %arrayidx = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.cond5:                                        ; preds = %for.cond, %for.inc19
  %3 = phi i32 [ %5, %for.inc19 ], [ %1, %for.cond ]
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc19 ], [ 0, %for.cond ]
  %4 = sext i32 %3 to i64
  %cmp6 = icmp slt i64 %indvars.iv55, %4
  br i1 %cmp6, label %for.cond8.preheader, label %for.cond22.preheader

for.cond8.preheader:                              ; preds = %for.cond5
  %arrayidx12 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv55
  br label %for.cond8

for.cond22.preheader:                             ; preds = %for.cond5
  %invariant.gep = getelementptr i8, ptr %call1, i64 -8
  %invariant.gep49 = getelementptr inbounds nuw i8, ptr %call1, i64 8
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 noundef 0)
  %wide.trip.count66 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %3 to i64
  br label %for.cond22

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc16
  %5 = phi i32 [ %3, %for.cond8.preheader ], [ %.pre, %for.inc16 ]
  %indvars.iv52 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next53, %for.inc16 ]
  %6 = sext i32 %5 to i64
  %cmp9 = icmp slt i64 %indvars.iv52, %6
  br i1 %cmp9, label %for.inc16, label %for.inc19

for.inc16:                                        ; preds = %for.cond8
  %7 = load ptr, ptr %arrayidx12, align 8, !tbaa !9
  %arrayidx14 = getelementptr inbounds nuw i32, ptr %7, i64 %indvars.iv52
  %call15 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %arrayidx14)
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !15

for.inc19:                                        ; preds = %for.cond8
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond5, !llvm.loop !16

for.cond22:                                       ; preds = %for.cond22.preheader, %for.inc79
  %indvars.iv62 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next63, %for.inc79 ]
  %a.0 = phi i32 [ undef, %for.cond22.preheader ], [ %a.1, %for.inc79 ]
  %b.0 = phi i32 [ undef, %for.cond22.preheader ], [ %b.1, %for.inc79 ]
  %c.0 = phi i32 [ undef, %for.cond22.preheader ], [ %c.1, %for.inc79 ]
  %d.0 = phi i32 [ undef, %for.cond22.preheader ], [ %d.1, %for.inc79 ]
  %exitcond67.not = icmp eq i64 %indvars.iv62, %wide.trip.count66
  br i1 %exitcond67.not, label %for.end81, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond22
  %arrayidx29 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv62
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv62
  %gep50 = getelementptr inbounds nuw ptr, ptr %invariant.gep49, i64 %indvars.iv62
  %8 = trunc nuw nsw i64 %indvars.iv62 to i32
  br label %for.cond25

for.cond25:                                       ; preds = %for.cond25.preheader, %for.inc76
  %indvars.iv58 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next59, %for.inc76 ]
  %exitcond.not = icmp eq i64 %indvars.iv58, %wide.trip.count
  br i1 %exitcond.not, label %for.inc79, label %for.body27

for.body27:                                       ; preds = %for.cond25
  %9 = load ptr, ptr %arrayidx29, align 8, !tbaa !9
  %arrayidx31 = getelementptr i32, ptr %9, i64 %indvars.iv58
  %10 = load i32, ptr %arrayidx31, align 4, !tbaa !5, !invariant.load !17
  %cmp32 = icmp eq i32 %10, 0
  br i1 %cmp32, label %if.then, label %for.inc76

if.then:                                          ; preds = %for.body27
  %11 = load ptr, ptr %gep, align 8, !tbaa !9
  %arrayidx40 = getelementptr inbounds nuw i32, ptr %11, i64 %indvars.iv58
  %12 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !17
  %cmp41.not = icmp eq i32 %12, 0
  br i1 %cmp41.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %arrayidx50 = getelementptr i8, ptr %arrayidx31, i64 -4
  %13 = load i32, ptr %arrayidx50, align 4, !tbaa !5, !invariant.load !17
  %cmp51.not = icmp eq i32 %13, 0
  br i1 %cmp51.not, label %if.end, label %for.inc79.split.loop.exit73

if.end:                                           ; preds = %land.lhs.true, %if.then
  %14 = load ptr, ptr %gep50, align 8, !tbaa !9
  %arrayidx60 = getelementptr inbounds nuw i32, ptr %14, i64 %indvars.iv58
  %15 = load i32, ptr %arrayidx60, align 4, !tbaa !5, !invariant.load !17
  %cmp61.not = icmp eq i32 %15, 0
  br i1 %cmp61.not, label %for.inc76, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.end
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %arrayidx31, i64 4
  %16 = load i32, ptr %arrayidx71, align 4, !tbaa !5, !invariant.load !17
  %cmp72.not = icmp eq i32 %16, 0
  br i1 %cmp72.not, label %for.inc76, label %for.inc79.split.loop.exit78

for.inc76:                                        ; preds = %for.body27, %land.lhs.true62, %if.end
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond25, !llvm.loop !18

for.inc79.split.loop.exit73:                      ; preds = %land.lhs.true
  %17 = trunc nuw nsw i64 %indvars.iv58 to i32
  br label %for.inc79

for.inc79.split.loop.exit78:                      ; preds = %land.lhs.true62
  %18 = trunc nuw nsw i64 %indvars.iv58 to i32
  br label %for.inc79

for.inc79:                                        ; preds = %for.cond25, %for.inc79.split.loop.exit78, %for.inc79.split.loop.exit73
  %a.1 = phi i32 [ %8, %for.inc79.split.loop.exit73 ], [ %a.0, %for.inc79.split.loop.exit78 ], [ %a.0, %for.cond25 ]
  %b.1 = phi i32 [ %17, %for.inc79.split.loop.exit73 ], [ %b.0, %for.inc79.split.loop.exit78 ], [ %b.0, %for.cond25 ]
  %c.1 = phi i32 [ %c.0, %for.inc79.split.loop.exit73 ], [ %8, %for.inc79.split.loop.exit78 ], [ %c.0, %for.cond25 ]
  %d.1 = phi i32 [ %d.0, %for.inc79.split.loop.exit73 ], [ %18, %for.inc79.split.loop.exit78 ], [ %d.0, %for.cond25 ]
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond22, !llvm.loop !19

for.end81:                                        ; preds = %for.cond22
  %19 = xor i32 %a.0, -1
  %sub83 = add i32 %c.0, %19
  %20 = xor i32 %b.0, -1
  %sub85 = add i32 %d.0, %20
  %mul86 = mul nsw i32 %sub85, %sub83
  %call87 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul86)
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc93, %for.end81
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc93 ], [ 0, %for.end81 ]
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %22 = sext i32 %21 to i64
  %cmp89 = icmp slt i64 %indvars.iv68, %22
  br i1 %cmp89, label %for.inc93, label %for.end95

for.inc93:                                        ; preds = %for.cond88
  %arrayidx92 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv68
  %23 = load ptr, ptr %arrayidx92, align 8, !tbaa !9
  call void @free(ptr noundef %23) #8
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond88, !llvm.loop !20

for.end95:                                        ; preds = %for.cond88
  call void @free(ptr noundef %call1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = !{}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
