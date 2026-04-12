; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsqu0g44t.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #8
  %mul3 = shl nsw i64 %conv, 2
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond5, label %for.body

for.body:                                         ; preds = %for.cond
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #8
  %arrayidx = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.cond5:                                        ; preds = %for.cond, %for.inc19
  %1 = phi i32 [ %3, %for.inc19 ], [ %0, %for.cond ]
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc19 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp6 = icmp slt i64 %indvars.iv55, %2
  br i1 %cmp6, label %for.cond8.preheader, label %for.cond22.preheader

for.cond8.preheader:                              ; preds = %for.cond5
  %arrayidx12 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv55
  br label %for.cond8

for.cond22.preheader:                             ; preds = %for.cond5
  %smax68 = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count69 = zext nneg i32 %smax68 to i64
  %wide.trip.count62 = zext i32 %1 to i64
  br label %for.cond22

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body10
  %3 = phi i32 [ %1, %for.cond8.preheader ], [ %.pre, %for.body10 ]
  %indvars.iv52 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next53, %for.body10 ]
  %4 = sext i32 %3 to i64
  %cmp9 = icmp slt i64 %indvars.iv52, %4
  br i1 %cmp9, label %for.body10, label %for.inc19

for.body10:                                       ; preds = %for.cond8
  %5 = load ptr, ptr %arrayidx12, align 8, !tbaa !9
  %arrayidx14 = getelementptr inbounds nuw i32, ptr %5, i64 %indvars.iv52
  %call15 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %arrayidx14)
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !15

for.inc19:                                        ; preds = %for.cond8
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond5, !llvm.loop !16

for.cond22:                                       ; preds = %for.cond22.preheader, %for.inc79
  %indvars.iv64 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next65, %for.inc79 ]
  %a.0 = phi i32 [ undef, %for.cond22.preheader ], [ %a.1, %for.inc79 ]
  %b.0 = phi i32 [ undef, %for.cond22.preheader ], [ %b.1, %for.inc79 ]
  %c.0 = phi i32 [ undef, %for.cond22.preheader ], [ %c.1, %for.inc79 ]
  %d.0 = phi i32 [ undef, %for.cond22.preheader ], [ %d.1, %for.inc79 ]
  %exitcond70.not = icmp eq i64 %indvars.iv64, %wide.trip.count69
  br i1 %exitcond70.not, label %for.end81, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond22
  %arrayidx29 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv64
  %arrayidx38 = getelementptr i8, ptr %arrayidx29, i64 -8
  %arrayidx58 = getelementptr inbounds nuw i8, ptr %arrayidx29, i64 8
  %6 = trunc nuw nsw i64 %indvars.iv64 to i32
  br label %for.cond25

for.cond25:                                       ; preds = %for.cond25.preheader, %for.inc76
  %indvars.iv58 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next59, %for.inc76 ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count62
  br i1 %exitcond63.not, label %for.inc79, label %for.body27

for.body27:                                       ; preds = %for.cond25
  %7 = load ptr, ptr %arrayidx29, align 8, !tbaa !9
  %arrayidx31 = getelementptr inbounds nuw i32, ptr %7, i64 %indvars.iv58
  %8 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %8, 0
  br i1 %cmp32, label %if.then, label %for.inc76

if.then:                                          ; preds = %for.body27
  %9 = load ptr, ptr %arrayidx38, align 8, !tbaa !9
  %arrayidx40 = getelementptr inbounds nuw i32, ptr %9, i64 %indvars.iv58
  %10 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41.not = icmp eq i32 %10, 0
  br i1 %cmp41.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %arrayidx50 = getelementptr i8, ptr %arrayidx31, i64 -4
  %11 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %cmp51.not = icmp eq i32 %11, 0
  br i1 %cmp51.not, label %if.end, label %for.inc79.split.loop.exit75

if.end:                                           ; preds = %land.lhs.true, %if.then
  %12 = load ptr, ptr %arrayidx58, align 8, !tbaa !9
  %arrayidx60 = getelementptr inbounds nuw i32, ptr %12, i64 %indvars.iv58
  %13 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %cmp61.not = icmp eq i32 %13, 0
  br i1 %cmp61.not, label %for.inc76, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.end
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %arrayidx31, i64 4
  %14 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %cmp72.not = icmp eq i32 %14, 0
  br i1 %cmp72.not, label %for.inc76, label %for.inc79.split.loop.exit

for.inc76:                                        ; preds = %for.body27, %land.lhs.true62, %if.end
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond25, !llvm.loop !17

for.inc79.split.loop.exit:                        ; preds = %land.lhs.true62
  %15 = trunc nuw nsw i64 %indvars.iv58 to i32
  br label %for.inc79

for.inc79.split.loop.exit75:                      ; preds = %land.lhs.true
  %16 = trunc nuw nsw i64 %indvars.iv58 to i32
  br label %for.inc79

for.inc79:                                        ; preds = %for.cond25, %for.inc79.split.loop.exit75, %for.inc79.split.loop.exit
  %a.1 = phi i32 [ %a.0, %for.inc79.split.loop.exit ], [ %6, %for.inc79.split.loop.exit75 ], [ %a.0, %for.cond25 ]
  %b.1 = phi i32 [ %b.0, %for.inc79.split.loop.exit ], [ %16, %for.inc79.split.loop.exit75 ], [ %b.0, %for.cond25 ]
  %c.1 = phi i32 [ %6, %for.inc79.split.loop.exit ], [ %c.0, %for.inc79.split.loop.exit75 ], [ %c.0, %for.cond25 ]
  %d.1 = phi i32 [ %15, %for.inc79.split.loop.exit ], [ %d.0, %for.inc79.split.loop.exit75 ], [ %d.0, %for.cond25 ]
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond22, !llvm.loop !18

for.end81:                                        ; preds = %for.cond22
  %17 = xor i32 %a.0, -1
  %sub83 = add i32 %c.0, %17
  %18 = xor i32 %b.0, -1
  %sub85 = add i32 %d.0, %18
  %mul86 = mul nsw i32 %sub85, %sub83
  %call87 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul86)
  br label %for.cond88

for.cond88:                                       ; preds = %for.body90, %for.end81
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body90 ], [ 0, %for.end81 ]
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %20 = sext i32 %19 to i64
  %cmp89 = icmp slt i64 %indvars.iv71, %20
  br i1 %cmp89, label %for.body90, label %for.end95

for.body90:                                       ; preds = %for.cond88
  %arrayidx92 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv71
  %21 = load ptr, ptr %arrayidx92, align 8, !tbaa !9
  call void @free(ptr noundef %21) #7
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond88, !llvm.loop !19

for.end95:                                        ; preds = %for.cond88
  call void @free(ptr noundef %call1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
