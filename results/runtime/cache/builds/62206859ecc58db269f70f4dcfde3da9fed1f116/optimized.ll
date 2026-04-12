; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3dqaugn1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %word = alloca [500 x [40 x i8]], align 16
  %para = alloca [50 x [82 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.start.p0(i64 20000, ptr nonnull %word) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20000) %word, i8 0, i64 20000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4100, ptr nonnull %para) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4100) %para, i8 0, i64 4100, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x [40 x i8]], ptr %word, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call7 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %para, ptr noundef nonnull dereferenceable(1) %word) #8
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc40, %for.end
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc40 ], [ 1, %for.end ]
  %k.0 = phi i32 [ %k.1, %for.inc40 ], [ 0, %for.end ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond.not, label %for.cond43.preheader, label %for.body10

for.cond43.preheader:                             ; preds = %for.cond8
  %smax26 = call i32 @llvm.smax.i32(i32 %k.0, i32 -1)
  %2 = add i32 %smax26, 1
  %wide.trip.count27 = zext i32 %2 to i64
  br label %for.cond43

for.body10:                                       ; preds = %for.cond8
  %idxprom11 = sext i32 %k.0 to i64
  %arrayidx12 = getelementptr inbounds [50 x [82 x i8]], ptr %para, i64 0, i64 %idxprom11
  %call14 = call i64 @strlen(ptr nonnull dereferenceable(1) %arrayidx12)
  %arrayidx16 = getelementptr inbounds nuw [500 x [40 x i8]], ptr %word, i64 0, i64 %indvars.iv18
  %call18 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx16) #9
  %add = add i64 %call14, 1
  %add19 = add i64 %add, %call18
  %cmp20 = icmp ult i64 %add19, 81
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body10
  %endptr = getelementptr inbounds i8, ptr %arrayidx12, i64 %call14
  store i16 32, ptr %endptr, align 1
  br label %for.inc40

if.else:                                          ; preds = %for.body10
  %inc32 = add nsw i32 %k.0, 1
  %idxprom33 = sext i32 %inc32 to i64
  %arrayidx34 = getelementptr inbounds [50 x [82 x i8]], ptr %para, i64 0, i64 %idxprom33
  br label %for.inc40

for.inc40:                                        ; preds = %if.then, %if.else
  %arrayidx12.sink = phi ptr [ %arrayidx12, %if.then ], [ %arrayidx34, %if.else ]
  %k.1 = phi i32 [ %k.0, %if.then ], [ %inc32, %if.else ]
  %call31 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %arrayidx12.sink, ptr noundef nonnull dereferenceable(1) %arrayidx16) #8
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond8, !llvm.loop !12

for.cond43:                                       ; preds = %for.cond43.preheader, %for.body45
  %indvars.iv22 = phi i64 [ 0, %for.cond43.preheader ], [ %indvars.iv.next23, %for.body45 ]
  %exitcond28 = icmp eq i64 %indvars.iv22, %wide.trip.count27
  br i1 %exitcond28, label %for.end52, label %for.body45

for.body45:                                       ; preds = %for.cond43
  %arrayidx47 = getelementptr inbounds nuw [50 x [82 x i8]], ptr %para, i64 0, i64 %indvars.iv22
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %arrayidx47)
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond43, !llvm.loop !13

for.end52:                                        ; preds = %for.cond43
  call void @llvm.lifetime.end.p0(i64 4100, ptr nonnull %para) #8
  call void @llvm.lifetime.end.p0(i64 20000, ptr nonnull %word) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
