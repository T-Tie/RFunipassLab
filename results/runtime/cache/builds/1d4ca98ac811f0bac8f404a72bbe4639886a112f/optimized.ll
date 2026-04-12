; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzstf124d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@s = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
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
  %indvars.iv21 = phi i32 [ %indvars.iv.next22, %if.else ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else ], [ 0, %entry ]
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, ptr noundef nonnull %d, ptr noundef nonnull %e, ptr noundef nonnull %f)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %0, 0
  %1 = load i32, ptr %b, align 4
  %cmp2 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  %2 = load i32, ptr %c, align 4
  %cmp4 = icmp eq i32 %2, 0
  %or.cond1 = select i1 %or.cond, i1 %cmp4, i1 false
  %3 = load i32, ptr %d, align 4
  %cmp6 = icmp eq i32 %3, 0
  %or.cond2 = select i1 %or.cond1, i1 %cmp6, i1 false
  %4 = load i32, ptr %e, align 4
  %cmp8 = icmp eq i32 %4, 0
  %or.cond3 = select i1 %or.cond2, i1 %cmp8, i1 false
  %5 = load i32, ptr %f, align 4
  %cmp10 = icmp eq i32 %5, 0
  %or.cond4 = select i1 %or.cond3, i1 %cmp10, i1 false
  br i1 %or.cond4, label %for.cond21.preheader, label %if.else

for.cond21.preheader:                             ; preds = %for.cond
  %wide.trip.count = zext i32 %indvars.iv21 to i64
  br label %for.cond21

if.else:                                          ; preds = %for.cond
  %reass.sub = sub i32 %4, %1
  %6 = mul i32 %reass.sub, 60
  %reass.sub13 = sub i32 %3, %0
  %7 = mul i32 %reass.sub13, 3600
  %reass.sub14 = sub i32 %5, %2
  %reass.mul12 = add i32 %reass.sub14, %7
  %reass.mul = add i32 %reass.mul12, %6
  %add19 = add i32 %reass.mul, 43200
  %arrayidx = getelementptr inbounds nuw [10000 x i32], ptr @s, i64 0, i64 %indvars.iv
  store i32 %add19, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next22 = add nuw i32 %indvars.iv21, 1
  br label %for.cond, !llvm.loop !9

for.cond21:                                       ; preds = %for.cond21.preheader, %for.body23
  %indvars.iv18 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next19, %for.body23 ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond.not, label %for.end29, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [10000 x i32], ptr @s, i64 0, i64 %indvars.iv18
  %8 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %call26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond21, !llvm.loop !12

for.end29:                                        ; preds = %for.cond21
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
!12 = distinct !{!12, !10, !11}
