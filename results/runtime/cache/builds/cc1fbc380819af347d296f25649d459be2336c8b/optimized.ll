; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa4qwx_sw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %count = alloca [26 x i32], align 16
  %str = alloca [300 x i8], align 16
  %zf = alloca [26 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %count) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %count, i8 0, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %str) #5
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %zf) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %str)
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %ps.0 = phi ptr [ %str, %entry ], [ %incdec.ptr, %for.inc19 ]
  %0 = load i8, ptr %ps.0, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %for.cond21, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = add i8 %0, -97
  %or.cond = icmp ult i8 %1, 26
  br i1 %or.cond, label %for.cond6.preheader, label %for.inc19

for.cond6.preheader:                              ; preds = %for.body
  %2 = zext nneg i8 %0 to i64
  %sub = add nsw i64 %2, -97
  %arrayidx = getelementptr inbounds [26 x i8], ptr %zf, i64 0, i64 %sub
  %arrayidx16 = getelementptr inbounds [26 x i32], ptr %count, i64 0, i64 %sub
  br label %for.cond6

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc
  %indvars.iv = phi i64 [ 97, %for.cond6.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, 123
  br i1 %exitcond.not, label %for.inc19, label %for.body9

for.body9:                                        ; preds = %for.cond6
  %cmp12 = icmp eq i64 %indvars.iv, %2
  br i1 %cmp12, label %if.then13, label %for.inc

if.then13:                                        ; preds = %for.body9
  store i8 %0, ptr %arrayidx, align 1, !tbaa !5
  %3 = load i32, ptr %arrayidx16, align 4, !tbaa !8
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %arrayidx16, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body9, %if.then13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !10

for.inc19:                                        ; preds = %for.cond6, %for.body
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %ps.0, i64 1
  br label %for.cond, !llvm.loop !13

for.cond21:                                       ; preds = %for.cond, %for.inc35
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc35 ], [ 0, %for.cond ]
  %k.0 = phi i32 [ %k.1, %for.inc35 ], [ 0, %for.cond ]
  %exitcond19.not = icmp eq i64 %indvars.iv16, 26
  br i1 %exitcond19.not, label %for.end37, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [26 x i32], ptr %count, i64 0, i64 %indvars.iv16
  %4 = load i32, ptr %arrayidx25, align 4, !tbaa !8
  %cmp26.not = icmp eq i32 %4, 0
  br i1 %cmp26.not, label %for.inc35, label %if.then27

if.then27:                                        ; preds = %for.body23
  %arrayidx29 = getelementptr inbounds nuw [26 x i8], ptr %zf, i64 0, i64 %indvars.iv16
  %5 = load i8, ptr %arrayidx29, align 1, !tbaa !5
  %conv30 = sext i8 %5 to i32
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv30, i32 noundef %4)
  %add = add nsw i32 %k.0, 1
  br label %for.inc35

for.inc35:                                        ; preds = %for.body23, %if.then27
  %k.1 = phi i32 [ %add, %if.then27 ], [ %k.0, %for.body23 ]
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond21, !llvm.loop !14

for.end37:                                        ; preds = %for.cond21
  %cmp38 = icmp eq i32 %k.0, 0
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %for.end37
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %for.end37
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %zf) #5
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %str) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %count) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
