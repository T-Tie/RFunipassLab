; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6q6t9tmb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [500 x i8], align 16
  %su = alloca [500 x i8], align 16
  %re = alloca [500 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %s) #6
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %su) #6
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %re) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s, ptr noundef nonnull %su, ptr noundef nonnull %re)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #7
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %su) #7
  %conv7 = trunc i64 %call6 to i32
  %sub = sub nsw i32 %conv, %conv7
  %smax = call i32 @llvm.smax.i32(i32 %conv7, i32 0)
  %smax26 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %0 = add i32 %smax26, 1
  %wide.trip.count27 = zext i32 %0 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc36 ], [ 0, %entry ]
  %exitcond28 = icmp eq i64 %indvars.iv23, %wide.trip.count27
  br i1 %exitcond28, label %for.end38, label %for.cond8

for.cond8:                                        ; preds = %for.cond, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv23
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw [500 x i8], ptr %su, i64 0, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx14, align 1, !tbaa !5
  %cmp16.not = icmp eq i8 %2, %3
  br i1 %cmp16.not, label %if.else, label %for.end.split.loop.exit

if.else:                                          ; preds = %for.body10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond8, !llvm.loop !8

for.end.split.loop.exit:                          ; preds = %for.body10
  %indvars22.le = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond8, %for.end.split.loop.exit
  %k.0.lcssa = phi i32 [ %indvars22.le, %for.end.split.loop.exit ], [ %smax, %for.cond8 ]
  %cmp18 = icmp eq i32 %k.0.lcssa, %conv7
  br i1 %cmp18, label %for.cond21.preheader, label %for.inc36

for.cond21.preheader:                             ; preds = %for.end
  %4 = and i64 %indvars.iv23, 4294967295
  br label %for.cond21

for.cond21:                                       ; preds = %for.cond21.preheader, %for.body23
  %indvars.iv29 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next30, %for.body23 ]
  %exitcond34.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond34.not, label %for.end38, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [500 x i8], ptr %re, i64 0, i64 %indvars.iv29
  %5 = load i8, ptr %arrayidx25, align 1, !tbaa !5
  %6 = add nuw nsw i64 %indvars.iv29, %4
  %arrayidx28 = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %6
  store i8 %5, ptr %arrayidx28, align 1, !tbaa !5
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond21, !llvm.loop !11

for.inc36:                                        ; preds = %for.end
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond, !llvm.loop !12

for.end38:                                        ; preds = %for.cond, %for.cond21
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %s)
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %re) #6
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %su) #6
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %s) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
