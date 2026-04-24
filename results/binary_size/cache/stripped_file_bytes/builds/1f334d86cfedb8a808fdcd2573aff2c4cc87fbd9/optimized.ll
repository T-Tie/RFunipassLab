; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0y3uzlca.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #4
  br label %for.cond

for.cond:                                         ; preds = %if.else, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %if.else ]
  %exitcond.not = icmp eq i32 %j.0, 1000
  br i1 %exitcond.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, ptr noundef nonnull %d, ptr noundef nonnull %e, ptr noundef nonnull %f)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %1 = load i32, ptr %b, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %0, %1
  br i1 %cmp1, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  %.pre = load i32, ptr %d, align 4, !tbaa !5
  %.pre7 = load i32, ptr %c, align 4, !tbaa !5
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, ptr %c, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %0, %2
  %.pre6 = load i32, ptr %d, align 4, !tbaa !5
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %cmp4 = icmp eq i32 %0, %.pre6
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %3 = load i32, ptr %e, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %0, %3
  br i1 %cmp6, label %land.lhs.true7, label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %4 = load i32, ptr %f, align 4, !tbaa !5
  %5 = or i32 %4, %0
  %or.cond = icmp eq i32 %5, 0
  br i1 %or.cond, label %cleanup, label %if.else

if.else:                                          ; preds = %for.body.if.else_crit_edge, %land.lhs.true7, %land.lhs.true5, %land.lhs.true3, %land.lhs.true
  %6 = phi i32 [ %.pre7, %for.body.if.else_crit_edge ], [ %0, %land.lhs.true7 ], [ %0, %land.lhs.true5 ], [ %0, %land.lhs.true3 ], [ %2, %land.lhs.true ]
  %7 = phi i32 [ %.pre, %for.body.if.else_crit_edge ], [ %0, %land.lhs.true7 ], [ %0, %land.lhs.true5 ], [ %.pre6, %land.lhs.true3 ], [ %.pre6, %land.lhs.true ]
  %reass.sub = sub i32 %7, %0
  %8 = mul i32 %reass.sub, 3600
  %9 = load i32, ptr %e, align 4, !tbaa !5
  %reass.sub5 = sub i32 %9, %1
  %10 = mul i32 %reass.sub5, 60
  %11 = load i32, ptr %f, align 4, !tbaa !5
  %mul15 = add i32 %8, 43200
  %add17 = sub i32 %mul15, %6
  %sub18 = add i32 %add17, %10
  %add19 = add nsw i32 %sub18, %11
  %call20 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add19)
  %inc = add nuw nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !9

cleanup:                                          ; preds = %for.cond, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
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
