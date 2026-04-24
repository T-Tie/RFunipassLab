; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4yppyqu_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"x1=%.5f+%.5fi;x2=%.5f-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #9
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #10
  %call4 = call noalias ptr @malloc(i64 noundef %mul) #10
  %call7 = call noalias ptr @malloc(i64 noundef %mul) #10
  %cmp.not.not16 = icmp sgt i32 %0, 0
  br i1 %cmp.not.not16, label %for.body, label %for.end25

for.cond13.preheader:                             ; preds = %for.body
  %1 = icmp sgt i32 %2, 0
  br i1 %1, label %for.body16, label %for.end25

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv
  %arrayidx9 = getelementptr inbounds nuw double, ptr %call4, i64 %indvars.iv
  %arrayidx11 = getelementptr inbounds nuw double, ptr %call7, i64 %indvars.iv
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx9, ptr noundef %arrayidx11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp.not.not, label %for.body, label %for.cond13.preheader, !llvm.loop !9

for.body16:                                       ; preds = %for.cond13.preheader, %_Z3genddd.exit
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %_Z3genddd.exit ], [ 0, %for.cond13.preheader ]
  %arrayidx18 = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv21
  %4 = load double, ptr %arrayidx18, align 8, !tbaa !12
  %arrayidx20 = getelementptr inbounds nuw double, ptr %call4, i64 %indvars.iv21
  %5 = load double, ptr %arrayidx20, align 8, !tbaa !12
  %arrayidx22 = getelementptr inbounds nuw double, ptr %call7, i64 %indvars.iv21
  %6 = load double, ptr %arrayidx22, align 8, !tbaa !12
  %mul1.i = fmul double %4, 4.000000e+00
  %7 = fneg double %6
  %neg.i = fmul double %mul1.i, %7
  %8 = call double @llvm.fmuladd.f64(double %5, double %5, double %neg.i)
  %cmp.i = fcmp ogt double %8, 0.000000e+00
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body16
  %sub.i = fsub double 0.000000e+00, %5
  %call.i = call double @sqrt(double noundef %8) #9, !tbaa !5
  %add.i = fadd double %sub.i, %call.i
  %mul.i = fmul double %4, 2.000000e+00
  %div.i = fdiv double %add.i, %mul.i
  %sub5.i = fsub double %sub.i, %call.i
  %div7.i = fdiv double %sub5.i, %mul.i
  %call8.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div.i, double noundef %div7.i)
  br label %_Z3genddd.exit

if.else.i:                                        ; preds = %for.body16
  %cmp9.i = fcmp oeq double %8, 0.000000e+00
  %sub11.i = fsub double 0.000000e+00, %5
  %mul12.i = fmul double %4, 2.000000e+00
  %div13.i = fdiv double %sub11.i, %mul12.i
  br i1 %cmp9.i, label %if.then10.i, label %if.else15.i

if.then10.i:                                      ; preds = %if.else.i
  %call14.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div13.i)
  br label %_Z3genddd.exit

if.else15.i:                                      ; preds = %if.else.i
  %sub19.i = fsub double 0.000000e+00, %8
  %call20.i = call double @sqrt(double noundef %sub19.i) #9, !tbaa !5
  %div22.i = fdiv double %call20.i, %mul12.i
  %call23.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div13.i, double noundef %div22.i, double noundef %div13.i, double noundef %div22.i)
  br label %_Z3genddd.exit

_Z3genddd.exit:                                   ; preds = %if.then.i, %if.then10.i, %if.else15.i
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp15.not.not = icmp slt i64 %indvars.iv.next22, %10
  br i1 %cmp15.not.not, label %for.body16, label %for.end25, !llvm.loop !14

for.end25:                                        ; preds = %_Z3genddd.exit, %entry, %for.cond13.preheader
  call void @free(ptr noundef %call1) #9
  call void @free(ptr noundef %call4) #9
  call void @free(ptr noundef %call7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z3genddd(double noundef %a, double noundef %b, double noundef %c) local_unnamed_addr #4 {
entry:
  %mul1 = fmul double %a, 4.000000e+00
  %0 = fneg double %c
  %neg = fmul double %mul1, %0
  %1 = tail call double @llvm.fmuladd.f64(double %b, double %b, double %neg)
  %cmp = fcmp ogt double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = fsub double 0.000000e+00, %b
  %call = tail call double @sqrt(double noundef %1) #9, !tbaa !5
  %add = fadd double %sub, %call
  %mul = fmul double %a, 2.000000e+00
  %div = fdiv double %add, %mul
  %sub5 = fsub double %sub, %call
  %div7 = fdiv double %sub5, %mul
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div, double noundef %div7)
  br label %if.end24

if.else:                                          ; preds = %entry
  %cmp9 = fcmp oeq double %1, 0.000000e+00
  %sub11 = fsub double 0.000000e+00, %b
  %mul12 = fmul double %a, 2.000000e+00
  %div13 = fdiv double %sub11, %mul12
  br i1 %cmp9, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.else
  %call14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div13)
  br label %if.end24

if.else15:                                        ; preds = %if.else
  %sub19 = fsub double 0.000000e+00, %1
  %call20 = tail call double @sqrt(double noundef %sub19) #9, !tbaa !5
  %div22 = fdiv double %call20, %mul12
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div13, double noundef %div22, double noundef %div13, double noundef %div22)
  br label %if.end24

if.end24:                                         ; preds = %if.then10, %if.else15, %if.then
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !10, !11}
