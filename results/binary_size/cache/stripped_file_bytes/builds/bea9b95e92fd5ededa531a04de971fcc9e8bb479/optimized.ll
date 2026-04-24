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
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv, 100
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x %struct.point], ptr %sz, i64 0, i64 %indvars.iv
  %b = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  %c = getelementptr inbounds nuw i8, ptr %arrayidx, i64 8
  %d = getelementptr inbounds nuw i8, ptr %arrayidx, i64 12
  %e = getelementptr inbounds nuw i8, ptr %arrayidx, i64 16
  %f = getelementptr inbounds nuw i8, ptr %arrayidx, i64 20
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %b, ptr noundef nonnull %c, ptr noundef nonnull %d, ptr noundef nonnull %e, ptr noundef nonnull %f)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %0 = load i32, ptr %arrayidx, align 8, !tbaa !5
  %cmp14 = icmp eq i32 %0, 0
  br i1 %cmp14, label %land.lhs.true, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %land.lhs.true, %land.lhs.true19, %land.lhs.true24, %land.lhs.true29, %land.lhs.true34
  br label %for.cond, !llvm.loop !10

land.lhs.true:                                    ; preds = %for.body
  %1 = load i32, ptr %b, align 4, !tbaa !13
  %cmp18 = icmp eq i32 %1, 0
  br i1 %cmp18, label %land.lhs.true19, label %for.cond.backedge

land.lhs.true19:                                  ; preds = %land.lhs.true
  %2 = load i32, ptr %c, align 8, !tbaa !14
  %cmp23 = icmp eq i32 %2, 0
  br i1 %cmp23, label %land.lhs.true24, label %for.cond.backedge

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %3 = load i32, ptr %d, align 4, !tbaa !15
  %cmp28 = icmp eq i32 %3, 0
  br i1 %cmp28, label %land.lhs.true29, label %for.cond.backedge

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %4 = load i32, ptr %e, align 8, !tbaa !16
  %cmp33 = icmp eq i32 %4, 0
  br i1 %cmp33, label %land.lhs.true34, label %for.cond.backedge

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %5 = load i32, ptr %f, align 4, !tbaa !17
  %cmp38 = icmp eq i32 %5, 0
  br i1 %cmp38, label %for.end, label %for.cond.backedge

for.end:                                          ; preds = %land.lhs.true34, %for.cond
  %count.1 = phi i64 [ %indvars.iv.next, %land.lhs.true34 ], [ 100, %for.cond ]
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %xsz) #4
  %sub = add i64 %count.1, 4294967295
  %wide.trip.count = and i64 %sub, 4294967295
  br label %for.cond40

for.cond40:                                       ; preds = %for.body42, %for.end
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.body42 ], [ 0, %for.end ]
  %exitcond38.not = icmp eq i64 %indvars.iv35, %wide.trip.count
  br i1 %exitcond38.not, label %for.cond78, label %for.body42

for.body42:                                       ; preds = %for.cond40
  %arrayidx44 = getelementptr inbounds nuw [100 x %struct.point], ptr %sz, i64 0, i64 %indvars.iv35
  %6 = load i32, ptr %arrayidx44, align 8, !tbaa !5
  %b50 = getelementptr inbounds nuw i8, ptr %arrayidx44, i64 4
  %7 = load i32, ptr %b50, align 4, !tbaa !13
  %c56 = getelementptr inbounds nuw i8, ptr %arrayidx44, i64 8
  %8 = load i32, ptr %c56, align 8, !tbaa !14
  %d61 = getelementptr inbounds nuw i8, ptr %arrayidx44, i64 12
  %9 = load i32, ptr %d61, align 4, !tbaa !15
  %e66 = getelementptr inbounds nuw i8, ptr %arrayidx44, i64 16
  %10 = load i32, ptr %e66, align 8, !tbaa !16
  %f71 = getelementptr inbounds nuw i8, ptr %arrayidx44, i64 20
  %11 = load i32, ptr %f71, align 4, !tbaa !17
  %reass.sub = sub i32 %10, %7
  %12 = mul i32 %reass.sub, 60
  %reass.sub30 = sub i32 %9, %6
  %13 = mul i32 %reass.sub30, 3600
  %reass.sub31 = sub i32 %11, %8
  %reass.mul29 = add i32 %reass.sub31, %13
  %reass.mul = add i32 %reass.mul29, %12
  %add72 = add i32 %reass.mul, 43200
  %arrayidx74 = getelementptr inbounds nuw [100 x i32], ptr %xsz, i64 0, i64 %indvars.iv35
  store i32 %add72, ptr %arrayidx74, align 4, !tbaa !18
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond40, !llvm.loop !19

for.cond78:                                       ; preds = %for.cond40, %for.body81
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body81 ], [ 0, %for.cond40 ]
  %exitcond43.not = icmp eq i64 %indvars.iv39, %wide.trip.count
  br i1 %exitcond43.not, label %for.end87, label %for.body81

for.body81:                                       ; preds = %for.cond78
  %arrayidx83 = getelementptr inbounds nuw [100 x i32], ptr %xsz, i64 0, i64 %indvars.iv39
  %14 = load i32, ptr %arrayidx83, align 4, !tbaa !18
  %call84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond78, !llvm.loop !20

for.end87:                                        ; preds = %for.cond78
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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!6, !7, i64 4}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 12}
!16 = !{!6, !7, i64 16}
!17 = !{!6, !7, i64 20}
!18 = !{!7, !7, i64 0}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
