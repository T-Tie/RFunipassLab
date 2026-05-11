; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Error return from gettimeofday: %d\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.6 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4.9 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #3 {
entry:
  %call = tail call fastcc double @rtclock()
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #3 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp) #11
  %call = call i32 @gettimeofday(ptr noundef nonnull %Tp, ptr noundef null) #11
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !9
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !12
  %conv2 = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2, double 0x3EB0C6F7A0B5ED8D, double %conv)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp) #11
  ret double %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 {
entry:
  %call = tail call fastcc double @rtclock()
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #3 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #6 {
entry:
  tail call void @free(ptr noundef %ptr) #11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #3 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i) #11
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i, i64 noundef 4096, i64 noundef %mul) #11
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #12
  call void @exit(i32 noundef 1) #13
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i) #11
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #8 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc14.i, %entry
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %for.inc14.i ], [ 0, %entry ]
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.inc14.i ], [ 1, %entry ]
  %exitcond26.not.i = icmp eq i64 %indvars.iv20.i, 2000
  br i1 %exitcond26.not.i, label %init_array.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv20.i
  store double -9.990000e+02, ptr %arrayidx.i, align 8, !tbaa !5
  %0 = trunc nuw nsw i64 %indvars.iv20.i to i32
  %conv.i = uitofp nneg i32 %0 to double
  %arrayidx2.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv20.i
  store double %conv.i, ptr %arrayidx2.i, align 8, !tbaa !5
  %1 = add nuw nsw i64 %indvars.iv20.i, 2000
  br label %for.cond3.i

for.cond3.i:                                      ; preds = %for.body6.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body6.i ], [ 0, %for.body.i ]
  %exitcond.i = icmp eq i64 %indvars.iv.i, %indvars.iv18.i
  br i1 %exitcond.i, label %for.inc14.i, label %for.body6.i

for.body6.i:                                      ; preds = %for.cond3.i
  %2 = sub nsw i64 %1, %indvars.iv.i
  %.tr.i = trunc i64 %2 to i32
  %3 = shl i32 %.tr.i, 1
  %4 = add i32 %3, 2
  %mul.i = uitofp nneg i32 %4 to double
  %div.i = fdiv double %mul.i, 2.000000e+03
  %arrayidx13.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv20.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx13.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond3.i, !llvm.loop !17

for.inc14.i:                                      ; preds = %for.cond3.i
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  br label %for.cond.i, !llvm.loop !19

init_array.exit:                                  ; preds = %for.cond.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i10

for.cond.i10:                                     ; preds = %for.end.i, %init_array.exit
  %indvars.iv20.i11 = phi i64 [ %indvars.iv.next21.i19, %for.end.i ], [ 0, %init_array.exit ]
  %exitcond23.not.i = icmp eq i64 %indvars.iv20.i11, 2000
  br i1 %exitcond23.not.i, label %kernel_trisolv.exit, label %for.body.i12

for.body.i12:                                     ; preds = %for.cond.i10
  %arrayidx.i13 = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv20.i11
  %5 = load double, ptr %arrayidx.i13, align 8, !tbaa !5
  %arrayidx2.i14 = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv20.i11
  store double %5, ptr %arrayidx2.i14, align 8, !tbaa !5
  br label %for.cond3.i15

for.cond3.i15:                                    ; preds = %for.body5.i, %for.body.i12
  %6 = phi double [ %9, %for.body5.i ], [ %5, %for.body.i12 ]
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i17, %for.body5.i ], [ 0, %for.body.i12 ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i16, %indvars.iv20.i11
  br i1 %exitcond.not.i, label %for.end.i, label %for.body5.i

for.body5.i:                                      ; preds = %for.cond3.i15
  %arrayidx9.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv20.i11, i64 %indvars.iv.i16
  %7 = load double, ptr %arrayidx9.i, align 8, !tbaa !5
  %arrayidx11.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv.i16
  %8 = load double, ptr %arrayidx11.i, align 8, !tbaa !5
  %neg.i = fneg double %7
  %9 = tail call double @llvm.fmuladd.f64(double %neg.i, double %8, double %6)
  store double %9, ptr %arrayidx2.i14, align 8, !tbaa !5
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i16, 1
  br label %for.cond3.i15, !llvm.loop !20

for.end.i:                                        ; preds = %for.cond3.i15
  %arrayidx19.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv20.i11, i64 %indvars.iv20.i11
  %10 = load double, ptr %arrayidx19.i, align 8, !tbaa !5
  %div.i18 = fdiv double %6, %10
  store double %div.i18, ptr %arrayidx2.i14, align 8, !tbaa !5
  %indvars.iv.next21.i19 = add nuw nsw i64 %indvars.iv20.i11, 1
  br label %for.cond.i10, !llvm.loop !21

kernel_trisolv.exit:                              ; preds = %for.cond.i10
  %call.i20 = tail call fastcc double @rtclock()
  store double %call.i20, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_trisolv.exit
  %11 = load ptr, ptr %argv, align 8, !tbaa !22
  %strcmpload = load i8, ptr %11, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_trisolv.exit
  tail call void @free(ptr noundef nonnull %call) #11
  tail call void @free(ptr noundef nonnull %call1) #11
  tail call void @free(ptr noundef nonnull %call2) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %x) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 2000
  %3 = load ptr, ptr @stderr, align 8, !tbaa !15
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw double, ptr %x, i64 %indvars.iv
  %4 = load double, ptr %arrayidx, align 8, !tbaa !5
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.4.9, double noundef %4) #14
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16
  %rem4 = urem i16 %rem.lhs.trunc, 20
  %cmp3 = icmp eq i16 %rem4, 0
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %7 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %6) #12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { cold nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"timeval", !11, i64 0, !11, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 omnipotent char", !14, i64 0}
!24 = distinct !{!24, !18}
