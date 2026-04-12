; ModuleID = '<stdin>'
source_filename = "/tmp/tmpacqeyxrm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  %c = alloca [100 x i32], align 16
  %d = alloca [100 x i32], align 16
  %e = alloca [100 x i32], align 16
  %f = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %c) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %d) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %e) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %f) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 101
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [100 x i32], ptr %c, i64 0, i64 %indvars.iv
  %arrayidx6 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %indvars.iv
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %e, i64 0, i64 %indvars.iv
  %arrayidx10 = getelementptr inbounds nuw [100 x i32], ptr %f, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx6, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx10)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %0, 0
  br i1 %cmp13, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %land.lhs.true17, label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %2, 0
  br i1 %cmp20, label %land.lhs.true21, label %for.inc

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %3, 0
  br i1 %cmp24, label %land.lhs.true25, label %for.inc

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %4 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %4, 0
  br i1 %cmp28, label %land.lhs.true29, label %for.inc

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %5 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %5, 0
  br i1 %cmp32, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true17, %land.lhs.true21, %land.lhs.true25, %land.lhs.true29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %land.lhs.true29, %for.cond
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc81, %for.end
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc81 ], [ 1, %for.end ]
  %exitcond35.not = icmp eq i64 %indvars.iv32, 101
  br i1 %exitcond35.not, label %for.end83, label %for.body35

for.body35:                                       ; preds = %for.cond33
  %arrayidx37 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv32
  %6 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %6, 0
  %arrayidx41 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv32
  %7 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %7, 0
  %or.cond = select i1 %cmp38, i1 %cmp42, i1 false
  %arrayidx45 = getelementptr inbounds nuw [100 x i32], ptr %c, i64 0, i64 %indvars.iv32
  %8 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  br i1 %or.cond, label %land.lhs.true43, label %for.inc81

land.lhs.true43:                                  ; preds = %for.body35
  %cmp46 = icmp eq i32 %8, 0
  br i1 %cmp46, label %land.lhs.true47, label %for.inc81

land.lhs.true47:                                  ; preds = %land.lhs.true43
  %arrayidx49 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %indvars.iv32
  %9 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %cmp50 = icmp eq i32 %9, 0
  br i1 %cmp50, label %land.lhs.true51, label %for.inc81

land.lhs.true51:                                  ; preds = %land.lhs.true47
  %arrayidx53 = getelementptr inbounds nuw [100 x i32], ptr %e, i64 0, i64 %indvars.iv32
  %10 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %10, 0
  br i1 %cmp54, label %land.lhs.true55, label %for.inc81

land.lhs.true55:                                  ; preds = %land.lhs.true51
  %arrayidx57 = getelementptr inbounds nuw [100 x i32], ptr %f, i64 0, i64 %indvars.iv32
  %11 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %cmp58 = icmp eq i32 %11, 0
  br i1 %cmp58, label %for.end83, label %for.inc81

for.inc81:                                        ; preds = %for.body35, %land.lhs.true43, %land.lhs.true47, %land.lhs.true51, %land.lhs.true55
  %12 = phi i32 [ %8, %land.lhs.true43 ], [ 0, %land.lhs.true47 ], [ 0, %land.lhs.true51 ], [ 0, %land.lhs.true55 ], [ %8, %for.body35 ]
  %13 = phi i32 [ 0, %land.lhs.true43 ], [ 0, %land.lhs.true47 ], [ 0, %land.lhs.true51 ], [ 0, %land.lhs.true55 ], [ %7, %for.body35 ]
  %arrayidx70 = getelementptr inbounds nuw [100 x i32], ptr %f, i64 0, i64 %indvars.iv32
  %14 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  %arrayidx72 = getelementptr inbounds nuw [100 x i32], ptr %e, i64 0, i64 %indvars.iv32
  %15 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %arrayidx76 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %indvars.iv32
  %16 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %reass.add = sub i32 %15, %13
  %reass.mul = mul i32 %reass.add, 60
  %reass.add29 = sub i32 %16, %6
  %reass.mul30 = mul i32 %reass.add29, 3600
  %reass.sub36 = sub i32 %14, %12
  %add74 = add i32 %reass.sub36, 43200
  %add79 = add i32 %add74, %reass.mul
  %sub = add i32 %add79, %reass.mul30
  %call80 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sub) #5
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond33, !llvm.loop !12

for.end83:                                        ; preds = %land.lhs.true55, %for.cond33
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %f) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %e) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %d) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn }
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
!12 = distinct !{!12, !10, !11}
