; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw637i79r.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  %c = alloca [100 x i32], align 16
  %d = alloca [100 x i32], align 16
  %e = alloca [100 x i32], align 16
  %f = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %c) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %d) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %e) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %f) #4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 100
  br i1 %exitcond.not, label %for.cond18.preheader, label %for.body

for.cond18.preheader:                             ; preds = %for.body, %for.cond
  br label %for.cond18

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
  br i1 %cmp13, label %for.cond18.preheader, label %if.end

if.end:                                           ; preds = %for.body
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %add = add nsw i32 %1, 12
  store i32 %add, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond18:                                       ; preds = %for.cond18.preheader, %while.end
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %while.end ], [ 0, %for.cond18.preheader ]
  %arrayidx20 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv30
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21.not = icmp eq i32 %2, 0
  br i1 %cmp21.not, label %for.end65, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond18
  %arrayidx34 = getelementptr inbounds nuw [100 x i32], ptr %c, i64 0, i64 %indvars.iv30
  %arrayidx26 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %indvars.iv30
  %3 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %arrayidx29 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv30
  %arrayidx31 = getelementptr inbounds nuw [100 x i32], ptr %e, i64 0, i64 %indvars.iv30
  %arrayidx36 = getelementptr inbounds nuw [100 x i32], ptr %f, i64 0, i64 %indvars.iv30
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then55, %while.cond.preheader
  %inc6028.ph = phi i32 [ %inc60, %if.then55 ], [ %2, %while.cond.preheader ]
  %sum.1.ph = phi i32 [ %sum.2, %if.then55 ], [ 0, %while.cond.preheader ]
  %cmp27.not = icmp eq i32 %inc6028.ph, %3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end51
  %sum.1 = phi i32 [ %sum.2, %if.end51 ], [ %sum.1.ph, %while.cond.outer ]
  br i1 %cmp27.not, label %lor.lhs.false, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  %.pre = load i32, ptr %arrayidx34, align 4, !tbaa !5
  br label %while.body

lor.lhs.false:                                    ; preds = %while.cond
  %4 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32.not = icmp eq i32 %4, %5
  %.pre33 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  br i1 %cmp32.not, label %lor.rhs, label %while.body

lor.rhs:                                          ; preds = %lor.lhs.false
  %6 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %cmp37.not = icmp eq i32 %.pre33, %6
  br i1 %cmp37.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %lor.lhs.false, %lor.rhs
  %7 = phi i32 [ %.pre, %while.cond.while.body_crit_edge ], [ %.pre33, %lor.lhs.false ], [ %.pre33, %lor.rhs ]
  %cmp40 = icmp eq i32 %7, 60
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %while.body
  %8 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %inc46 = add nsw i32 %8, 1
  store i32 %inc46, ptr %arrayidx29, align 4, !tbaa !5
  br label %if.end51

if.else:                                          ; preds = %while.body
  %inc49 = add nsw i32 %7, 1
  %inc50 = add nsw i32 %sum.1, 1
  %.pre34 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then41
  %9 = phi i32 [ %inc46, %if.then41 ], [ %.pre34, %if.else ]
  %inc49.sink = phi i32 [ 0, %if.then41 ], [ %inc49, %if.else ]
  %sum.2 = phi i32 [ %sum.1, %if.then41 ], [ %inc50, %if.else ]
  store i32 %inc49.sink, ptr %arrayidx34, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %9, 60
  br i1 %cmp54, label %if.then55, label %while.cond, !llvm.loop !12

if.then55:                                        ; preds = %if.end51
  store i32 0, ptr %arrayidx29, align 4, !tbaa !5
  %inc60 = add nsw i32 %inc6028.ph, 1
  store i32 %inc60, ptr %arrayidx20, align 4, !tbaa !5
  br label %while.cond.outer, !llvm.loop !12

while.end:                                        ; preds = %lor.rhs
  %call62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sum.1)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond18, !llvm.loop !13

for.end65:                                        ; preds = %for.cond18
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %f) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %e) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %d) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #4
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
