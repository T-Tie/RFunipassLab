; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc0syj0nr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca float, align 4
  %x = alloca [505 x i8], align 16
  %y = alloca [505 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 505, ptr noundef nonnull align 16 %x) #6
  call void @llvm.lifetime.start.p0(i64 noundef 505, ptr noundef nonnull align 16 %y) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 @getchar() #7
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %x)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %x) #8
  %conv = uitofp i64 %call6 to float
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %y) #8
  %conv9 = uitofp i64 %call8 to float
  %cmp = fcmp une float %conv, %conv9
  br i1 %cmp, label %cleanup, label %for.cond

for.cond:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  %conv11 = uitofp nneg i32 %0 to float
  %cmp12 = fcmp olt float %conv11, %conv
  br i1 %cmp12, label %for.body, label %for.cond31

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [505 x i8], ptr %x, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  switch i8 %1, label %cleanup [
    i8 65, label %for.inc
    i8 84, label %for.inc
    i8 67, label %for.inc
    i8 71, label %for.inc
  ]

for.inc:                                          ; preds = %for.body, %for.body, %for.body, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond31:                                       ; preds = %for.cond, %for.inc57
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc57 ], [ 0, %for.cond ]
  %2 = trunc nuw nsw i64 %indvars.iv25 to i32
  %conv32 = uitofp nneg i32 %2 to float
  %cmp33 = fcmp olt float %conv32, %conv9
  br i1 %cmp33, label %for.body34, label %for.cond60

for.body34:                                       ; preds = %for.cond31
  %arrayidx36 = getelementptr inbounds nuw [505 x i8], ptr %y, i64 0, i64 %indvars.iv25
  %3 = load i8, ptr %arrayidx36, align 1, !tbaa !5, !invariant.load !8
  switch i8 %3, label %cleanup [
    i8 65, label %for.inc57
    i8 84, label %for.inc57
    i8 67, label %for.inc57
    i8 71, label %for.inc57
  ]

for.inc57:                                        ; preds = %for.body34, %for.body34, %for.body34, %for.body34
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond31, !llvm.loop !12

for.cond60:                                       ; preds = %for.cond31, %for.body63
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.body63 ], [ 0, %for.cond31 ]
  %count.0 = phi float [ %count.1, %for.body63 ], [ 0.000000e+00, %for.cond31 ]
  %4 = trunc nuw nsw i64 %indvars.iv28 to i32
  %conv61 = uitofp nneg i32 %4 to float
  %cmp62 = fcmp olt float %conv61, %conv
  br i1 %cmp62, label %for.body63, label %for.end76

for.body63:                                       ; preds = %for.cond60
  %arrayidx65 = getelementptr inbounds nuw [505 x i8], ptr %x, i64 0, i64 %indvars.iv28
  %5 = load i8, ptr %arrayidx65, align 1, !tbaa !5, !invariant.load !8
  %arrayidx68 = getelementptr inbounds nuw [505 x i8], ptr %y, i64 0, i64 %indvars.iv28
  %6 = load i8, ptr %arrayidx68, align 1, !tbaa !5, !invariant.load !8
  %cmp70 = icmp eq i8 %5, %6
  %inc72 = fadd float %count.0, 1.000000e+00
  %count.1 = select i1 %cmp70, float %inc72, float %count.0
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond60, !llvm.loop !13

for.end76:                                        ; preds = %for.cond60
  %div = fdiv float %count.0, %conv
  %7 = load float, ptr %n, align 4, !tbaa !14
  %cmp77 = fcmp ogt float %div, %7
  %.str.3..str.4 = select i1 %cmp77, ptr @.str.3, ptr @.str.4
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.body34, %for.end76, %entry
  %.str.3.sink = phi ptr [ @.str.2, %entry ], [ %.str.3..str.4, %for.end76 ], [ @.str.2, %for.body34 ], [ @.str.2, %for.body ]
  %call79 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.3.sink) #7
  call void @llvm.lifetime.end.p0(i64 noundef 505, ptr noundef nonnull %y) #7
  call void @llvm.lifetime.end.p0(i64 noundef 505, ptr noundef nonnull %x) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree nounwind uwtable
declare noundef i32 @getchar() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !6, i64 0}
