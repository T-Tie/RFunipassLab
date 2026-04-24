; ModuleID = '<stdin>'
source_filename = "/tmp/tmpudolr0q2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.point = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [100 x %struct.point], align 16
  %xsz = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 2400, ptr nonnull %sz) #4
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %entry
  %count.031 = phi i32 [ 0, %entry ], [ %inc, %for.body.backedge ]
  %idxprom = zext nneg i32 %count.031 to i64
  %arrayidx = getelementptr inbounds nuw [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom
  %b = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  %c = getelementptr inbounds nuw i8, ptr %arrayidx, i64 8
  %d = getelementptr inbounds nuw i8, ptr %arrayidx, i64 12
  %e = getelementptr inbounds nuw i8, ptr %arrayidx, i64 16
  %f = getelementptr inbounds nuw i8, ptr %arrayidx, i64 20
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %b, ptr noundef nonnull %c, ptr noundef nonnull %d, ptr noundef nonnull %e, ptr noundef nonnull %f)
  %inc = add nuw nsw i32 %count.031, 1
  %0 = load i32, ptr %arrayidx, align 8, !tbaa !5
  %cmp14 = icmp eq i32 %0, 0
  br i1 %cmp14, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %1 = load i32, ptr %b, align 4, !tbaa !10
  %cmp18 = icmp eq i32 %1, 0
  br i1 %cmp18, label %land.lhs.true19, label %for.inc

land.lhs.true19:                                  ; preds = %land.lhs.true
  %2 = load i32, ptr %c, align 8, !tbaa !11
  %cmp23 = icmp eq i32 %2, 0
  br i1 %cmp23, label %land.lhs.true24, label %for.inc

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %3 = load i32, ptr %d, align 4, !tbaa !12
  %cmp28 = icmp eq i32 %3, 0
  br i1 %cmp28, label %land.lhs.true29, label %for.inc

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %4 = load i32, ptr %e, align 8, !tbaa !13
  %cmp33 = icmp eq i32 %4, 0
  br i1 %cmp33, label %land.lhs.true34, label %for.inc

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %5 = load i32, ptr %f, align 4, !tbaa !14
  %cmp38 = icmp ne i32 %5, 0
  %cmp = icmp samesign ult i32 %count.031, 99
  %or.cond = and i1 %cmp38, %cmp
  br i1 %or.cond, label %for.body.backedge, label %for.end

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true19, %land.lhs.true24, %land.lhs.true29
  %cmp.old = icmp samesign ult i32 %count.031, 99
  br i1 %cmp.old, label %for.body.backedge, label %for.end.thread

for.body.backedge:                                ; preds = %for.inc, %land.lhs.true34
  br label %for.body, !llvm.loop !15

for.end.thread:                                   ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %xsz) #4
  br label %for.body42.preheader

for.end:                                          ; preds = %land.lhs.true34
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %xsz) #4
  %cmp4132.not = icmp eq i32 %count.031, 0
  br i1 %cmp4132.not, label %for.end87, label %for.body42.preheader

for.body42.preheader:                             ; preds = %for.end.thread, %for.end
  br label %for.body42

for.body42:                                       ; preds = %for.body42.preheader, %for.body42
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body42 ], [ 0, %for.body42.preheader ]
  %arrayidx44 = getelementptr inbounds nuw [100 x %struct.point], ptr %sz, i64 0, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx44, align 8, !tbaa !5
  %b50 = getelementptr inbounds nuw i8, ptr %arrayidx44, i64 4
  %7 = load i32, ptr %b50, align 4, !tbaa !10
  %c56 = getelementptr inbounds nuw i8, ptr %arrayidx44, i64 8
  %8 = load i32, ptr %c56, align 8, !tbaa !11
  %d61 = getelementptr inbounds nuw i8, ptr %arrayidx44, i64 12
  %9 = load i32, ptr %d61, align 4, !tbaa !12
  %e66 = getelementptr inbounds nuw i8, ptr %arrayidx44, i64 16
  %10 = load i32, ptr %e66, align 8, !tbaa !13
  %f71 = getelementptr inbounds nuw i8, ptr %arrayidx44, i64 20
  %11 = load i32, ptr %f71, align 4, !tbaa !14
  %reass.sub = sub i32 %10, %7
  %12 = mul i32 %reass.sub, 60
  %reass.sub36 = sub i32 %9, %6
  %13 = mul i32 %reass.sub36, 3600
  %reass.sub37 = sub i32 %11, %8
  %reass.mul29 = add i32 %reass.sub37, %13
  %reass.mul = add i32 %reass.mul29, %12
  %add72 = add i32 %reass.mul, 43200
  %arrayidx74 = getelementptr inbounds nuw [100 x i32], ptr %xsz, i64 0, i64 %indvars.iv
  store i32 %add72, ptr %arrayidx74, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %idxprom
  br i1 %exitcond.not, label %for.body81, label %for.body42, !llvm.loop !19

for.body81:                                       ; preds = %for.body42, %for.body81
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body81 ], [ 0, %for.body42 ]
  %arrayidx83 = getelementptr inbounds nuw [100 x i32], ptr %xsz, i64 0, i64 %indvars.iv40
  %14 = load i32, ptr %arrayidx83, align 4, !tbaa !18
  %call84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next41, %idxprom
  br i1 %exitcond45.not, label %for.end87, label %for.body81, !llvm.loop !20

for.end87:                                        ; preds = %for.body81, %for.end
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %xsz) #4
  call void @llvm.lifetime.end.p0(i64 2400, ptr nonnull %sz) #4
  ret i32 0
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
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSZ4mainE5point", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 12}
!13 = !{!6, !7, i64 16}
!14 = !{!6, !7, i64 20}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!7, !7, i64 0}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}
