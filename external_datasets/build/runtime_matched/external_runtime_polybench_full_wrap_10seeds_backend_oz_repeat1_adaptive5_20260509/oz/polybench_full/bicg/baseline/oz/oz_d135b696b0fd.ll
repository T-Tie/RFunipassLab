; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 3990000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1900, i32 noundef 8)
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8)
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 1900, i32 noundef 8)
  %call4 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1900
  br i1 %exitcond.not.i, label %for.cond2.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv.i to i32
  %conv.i = uitofp nneg i32 %0 to double
  %div.i = fdiv double %conv.i, 1.900000e+03
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !17

for.cond2.i:                                      ; preds = %for.cond.i, %for.inc27.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %for.inc27.i ], [ 0, %for.cond.i ]
  %exitcond29.not.i = icmp eq i64 %indvars.iv26.i, 2100
  br i1 %exitcond29.not.i, label %init_array.exit, label %for.body5.i

for.body5.i:                                      ; preds = %for.cond2.i
  %1 = trunc nuw nsw i64 %indvars.iv26.i to i32
  %conv7.i = uitofp nneg i32 %1 to double
  %div9.i = fdiv double %conv7.i, 2.100000e+03
  %arrayidx11.i = getelementptr inbounds nuw double, ptr %call4, i64 %indvars.iv26.i
  store double %div9.i, ptr %arrayidx11.i, align 8, !tbaa !5
  br label %for.cond12.i

for.cond12.i:                                     ; preds = %for.body15.i, %for.body5.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.body15.i ], [ 0, %for.body5.i ]
  %exitcond25.not.i = icmp eq i64 %indvars.iv21.i, 1900
  br i1 %exitcond25.not.i, label %for.inc27.i, label %for.body15.i

for.body15.i:                                     ; preds = %for.cond12.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %2 = mul nuw nsw i64 %indvars.iv.next22.i, %indvars.iv26.i
  %3 = trunc nuw nsw i64 %2 to i32
  %rem16.i = urem i32 %3, 2100
  %conv17.i = uitofp nneg i32 %rem16.i to double
  %div19.i = fdiv double %conv17.i, 2.100000e+03
  %arrayidx23.i = getelementptr inbounds nuw [1900 x double], ptr %call, i64 %indvars.iv26.i, i64 %indvars.iv21.i
  store double %div19.i, ptr %arrayidx23.i, align 8, !tbaa !5
  br label %for.cond12.i, !llvm.loop !19

for.inc27.i:                                      ; preds = %for.cond12.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  br label %for.cond2.i, !llvm.loop !20

init_array.exit:                                  ; preds = %for.cond2.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i15

for.cond.i15:                                     ; preds = %for.body.i18, %init_array.exit
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i20, %for.body.i18 ], [ 0, %init_array.exit ]
  %exitcond.not.i17 = icmp eq i64 %indvars.iv.i16, 1900
  br i1 %exitcond.not.i17, label %for.cond1.i, label %for.body.i18

for.body.i18:                                     ; preds = %for.cond.i15
  %arrayidx.i19 = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv.i16
  store double 0.000000e+00, ptr %arrayidx.i19, align 8, !tbaa !5
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i16, 1
  br label %for.cond.i15, !llvm.loop !21

for.cond1.i:                                      ; preds = %for.cond.i15, %for.inc32.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %for.inc32.i ], [ 0, %for.cond.i15 ]
  %exitcond31.not.i = icmp eq i64 %indvars.iv28.i, 2100
  br i1 %exitcond31.not.i, label %kernel_bicg.exit, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %arrayidx5.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv28.i
  store double 0.000000e+00, ptr %arrayidx5.i, align 8, !tbaa !5
  %arrayidx12.i = getelementptr inbounds nuw double, ptr %call4, i64 %indvars.iv28.i
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body8.i, %for.body3.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.body8.i ], [ 0, %for.body3.i ]
  %exitcond27.not.i = icmp eq i64 %indvars.iv24.i, 1900
  br i1 %exitcond27.not.i, label %for.inc32.i, label %for.body8.i

for.body8.i:                                      ; preds = %for.cond6.i
  %arrayidx10.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv24.i
  %4 = load double, ptr %arrayidx10.i, align 8, !tbaa !5
  %5 = load double, ptr %arrayidx12.i, align 8, !tbaa !5
  %arrayidx16.i = getelementptr inbounds nuw [1900 x double], ptr %call, i64 %indvars.iv28.i, i64 %indvars.iv24.i
  %6 = load double, ptr %arrayidx16.i, align 8, !tbaa !5
  %7 = tail call double @llvm.fmuladd.f64(double %5, double %6, double %4)
  store double %7, ptr %arrayidx10.i, align 8, !tbaa !5
  %8 = load double, ptr %arrayidx5.i, align 8, !tbaa !5
  %9 = load double, ptr %arrayidx16.i, align 8, !tbaa !5
  %arrayidx26.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv24.i
  %10 = load double, ptr %arrayidx26.i, align 8, !tbaa !5
  %11 = tail call double @llvm.fmuladd.f64(double %9, double %10, double %8)
  store double %11, ptr %arrayidx5.i, align 8, !tbaa !5
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  br label %for.cond6.i, !llvm.loop !22

for.inc32.i:                                      ; preds = %for.cond6.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  br label %for.cond1.i, !llvm.loop !23

kernel_bicg.exit:                                 ; preds = %for.cond1.i
  %call.i21 = tail call fastcc double @rtclock()
  store double %call.i21, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_bicg.exit
  %12 = load ptr, ptr %argv, align 8, !tbaa !24
  %strcmpload = load i8, ptr %12, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call1, ptr noundef %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_bicg.exit
  tail call void @free(ptr noundef nonnull %call) #11
  tail call void @free(ptr noundef nonnull %call1) #11
  tail call void @free(ptr noundef nonnull %call2) #11
  tail call void @free(ptr noundef nonnull %call3) #11
  tail call void @free(ptr noundef nonnull %call4) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %s, ptr noundef nonnull readonly captures(none) %q) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1900
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16
  %rem9 = urem i16 %rem.lhs.trunc, 20
  %cmp2 = icmp eq i16 %rem9, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc8 = tail call i32 @fputc(i32 10, ptr %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds nuw double, ptr %s, i64 %indvars.iv
  %5 = load double, ptr %arrayidx, align 8, !tbaa !5
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, double noundef %5) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.7) #14
  br label %for.cond7

for.cond7:                                        ; preds = %if.end14, %for.end
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %if.end14 ], [ 0, %for.end ]
  %exitcond15.not = icmp eq i64 %indvars.iv12, 2100
  br i1 %exitcond15.not, label %for.end20, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %rem10.lhs.trunc = trunc i64 %indvars.iv12 to i16
  %rem1010 = urem i16 %rem10.lhs.trunc, 20
  %cmp11 = icmp eq i16 %rem1010, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.body9
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %8)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.body9
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx16 = getelementptr inbounds nuw double, ptr %q, i64 %indvars.iv12
  %10 = load double, ptr %arrayidx16, align 8, !tbaa !5
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5.10, double noundef %10) #14
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond7, !llvm.loop !27

for.end20:                                        ; preds = %for.cond7
  %11 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #14
  %12 = load ptr, ptr @stderr, align 8, !tbaa !15
  %13 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %12) #12
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
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 omnipotent char", !14, i64 0}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
