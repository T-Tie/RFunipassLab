; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll'
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
@.str.3.8 = private unnamed_addr constant [5 x i8] c"corr\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp) #12
  %call = call i32 @gettimeofday(ptr noundef nonnull %Tp, ptr noundef null) #12
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp) #12
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
  tail call void @free(ptr noundef %ptr) #12
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #3 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i) #12
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i, i64 noundef 4096, i64 noundef %mul) #12
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #13
  call void @exit(i32 noundef 1) #14
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i) #12
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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1680000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8)
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8)
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc7.i, %entry
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.inc7.i ], [ 0, %entry ]
  %exitcond13.not.i = icmp eq i64 %indvars.iv10.i, 1400
  br i1 %exitcond13.not.i, label %init_array.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv10.i to i32
  %conv4.i = uitofp nneg i32 %0 to double
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1200
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %1 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv10.i
  %2 = trunc nuw nsw i64 %1 to i32
  %conv.i = uitofp nneg i32 %2 to double
  %div.i = fdiv double %conv.i, 1.200000e+03
  %add.i = fadd double %div.i, %conv4.i
  %arrayidx6.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv10.i, i64 %indvars.iv.i
  store double %add.i, ptr %arrayidx6.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !17

for.inc7.i:                                       ; preds = %for.cond1.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  br label %for.cond.i, !llvm.loop !19

init_array.exit:                                  ; preds = %for.cond.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i10

for.cond.i10:                                     ; preds = %for.end.i, %init_array.exit
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %for.end.i ], [ 0, %init_array.exit ]
  %exitcond95.not.i = icmp eq i64 %indvars.iv92.i, 1200
  br i1 %exitcond95.not.i, label %for.cond15.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i10
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv92.i
  store double 0.000000e+00, ptr %arrayidx.i, align 8, !tbaa !5
  br label %for.cond1.i11

for.cond1.i11:                                    ; preds = %for.body3.i14, %for.body.i
  %indvars.iv.i12 = phi i64 [ %indvars.iv.next.i16, %for.body3.i14 ], [ 0, %for.body.i ]
  %3 = phi double [ %add.i15, %for.body3.i14 ], [ 0.000000e+00, %for.body.i ]
  %exitcond.not.i13 = icmp eq i64 %indvars.iv.i12, 1400
  br i1 %exitcond.not.i13, label %for.end.i, label %for.body3.i14

for.body3.i14:                                    ; preds = %for.cond1.i11
  %arrayidx7.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv.i12, i64 %indvars.iv92.i
  %4 = load double, ptr %arrayidx7.i, align 8, !tbaa !5
  %add.i15 = fadd double %3, %4
  store double %add.i15, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i12, 1
  br label %for.cond1.i11, !llvm.loop !20

for.end.i:                                        ; preds = %for.cond1.i11
  %div.i17 = fdiv double %3, 1.400000e+03
  store double %div.i17, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1
  br label %for.cond.i10, !llvm.loop !21

for.cond15.i:                                     ; preds = %for.cond.i10, %for.end40.i
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %for.end40.i ], [ 0, %for.cond.i10 ]
  %exitcond103.not.i = icmp eq i64 %indvars.iv100.i, 1200
  br i1 %exitcond103.not.i, label %for.cond58.i, label %for.body17.i

for.body17.i:                                     ; preds = %for.cond15.i
  %arrayidx19.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv100.i
  store double 0.000000e+00, ptr %arrayidx19.i, align 8, !tbaa !5
  %arrayidx28.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv100.i
  br label %for.cond20.i

for.cond20.i:                                     ; preds = %for.body22.i, %for.body17.i
  %5 = phi double [ %8, %for.body22.i ], [ 0.000000e+00, %for.body17.i ]
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %for.body22.i ], [ 0, %for.body17.i ]
  %exitcond99.not.i = icmp eq i64 %indvars.iv96.i, 1400
  br i1 %exitcond99.not.i, label %for.end40.i, label %for.body22.i

for.body22.i:                                     ; preds = %for.cond20.i
  %arrayidx26.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv96.i, i64 %indvars.iv100.i
  %6 = load double, ptr %arrayidx26.i, align 8, !tbaa !5
  %7 = load double, ptr %arrayidx28.i, align 8, !tbaa !5
  %sub.i = fsub double %6, %7
  %8 = tail call double @llvm.fmuladd.f64(double %sub.i, double %sub.i, double %5)
  store double %8, ptr %arrayidx19.i, align 8, !tbaa !5
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1
  br label %for.cond20.i, !llvm.loop !22

for.end40.i:                                      ; preds = %for.cond20.i
  %div43.i = fdiv double %5, 1.400000e+03
  %call.i18 = tail call double @sqrt(double noundef %div43.i) #12, !tbaa !23
  %cmp50.i = fcmp ugt double %call.i18, 1.000000e-01
  %cond.i = select i1 %cmp50.i, double %call.i18, double 1.000000e+00
  store double %cond.i, ptr %arrayidx19.i, align 8, !tbaa !5
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1
  br label %for.cond15.i, !llvm.loop !25

for.cond58.i:                                     ; preds = %for.cond15.i, %for.inc82.i
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %for.inc82.i ], [ 0, %for.cond15.i ]
  %exitcond111.not.i = icmp eq i64 %indvars.iv108.i, 1400
  br i1 %exitcond111.not.i, label %for.cond85.i, label %for.cond61.i

for.cond61.i:                                     ; preds = %for.cond58.i, %for.body63.i
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i, %for.body63.i ], [ 0, %for.cond58.i ]
  %exitcond107.not.i = icmp eq i64 %indvars.iv104.i, 1200
  br i1 %exitcond107.not.i, label %for.inc82.i, label %for.body63.i

for.body63.i:                                     ; preds = %for.cond61.i
  %arrayidx65.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv104.i
  %9 = load double, ptr %arrayidx65.i, align 8, !tbaa !5
  %arrayidx69.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv108.i, i64 %indvars.iv104.i
  %10 = load double, ptr %arrayidx69.i, align 8, !tbaa !5
  %sub70.i = fsub double %10, %9
  store double %sub70.i, ptr %arrayidx69.i, align 8, !tbaa !5
  %arrayidx73.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv104.i
  %11 = load double, ptr %arrayidx73.i, align 8, !tbaa !5
  %mul.i = fmul double %11, 0x4042B5524AE1278E
  %div78.i = fdiv double %sub70.i, %mul.i
  store double %div78.i, ptr %arrayidx69.i, align 8, !tbaa !5
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1
  br label %for.cond61.i, !llvm.loop !26

for.inc82.i:                                      ; preds = %for.cond61.i
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1
  br label %for.cond58.i, !llvm.loop !27

for.cond85.loopexit.i:                            ; preds = %for.cond94.i
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1
  %indvars.iv.next117.i = add nuw nsw i64 %indvars.iv116.i, 1
  br label %for.cond85.i, !llvm.loop !28

for.cond85.i:                                     ; preds = %for.cond58.i, %for.cond85.loopexit.i
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %for.cond85.loopexit.i ], [ 0, %for.cond58.i ]
  %indvars.iv116.i = phi i64 [ %indvars.iv.next117.i, %for.cond85.loopexit.i ], [ 1, %for.cond58.i ]
  %exitcond125.not.i = icmp eq i64 %indvars.iv122.i, 1199
  br i1 %exitcond125.not.i, label %kernel_correlation.exit, label %for.body88.i

for.body88.i:                                     ; preds = %for.cond85.i
  %arrayidx92.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv122.i, i64 %indvars.iv122.i
  store double 1.000000e+00, ptr %arrayidx92.i, align 8, !tbaa !5
  br label %for.cond94.i

for.cond94.i:                                     ; preds = %for.end119.i, %for.body88.i
  %indvars.iv118.i = phi i64 [ %indvars.iv.next119.i, %for.end119.i ], [ %indvars.iv116.i, %for.body88.i ]
  %exitcond121.not.i = icmp eq i64 %indvars.iv118.i, 1200
  br i1 %exitcond121.not.i, label %for.cond85.loopexit.i, label %for.body96.i

for.body96.i:                                     ; preds = %for.cond94.i
  %arrayidx100.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv122.i, i64 %indvars.iv118.i
  store double 0.000000e+00, ptr %arrayidx100.i, align 8, !tbaa !5
  br label %for.cond101.i

for.cond101.i:                                    ; preds = %for.body103.i, %for.body96.i
  %indvars.iv112.i = phi i64 [ %indvars.iv.next113.i, %for.body103.i ], [ 0, %for.body96.i ]
  %12 = phi double [ %15, %for.body103.i ], [ 0.000000e+00, %for.body96.i ]
  %exitcond115.not.i = icmp eq i64 %indvars.iv112.i, 1400
  br i1 %exitcond115.not.i, label %for.end119.i, label %for.body103.i

for.body103.i:                                    ; preds = %for.cond101.i
  %arrayidx107.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv112.i, i64 %indvars.iv122.i
  %13 = load double, ptr %arrayidx107.i, align 8, !tbaa !5
  %arrayidx111.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv112.i, i64 %indvars.iv118.i
  %14 = load double, ptr %arrayidx111.i, align 8, !tbaa !5
  %15 = tail call double @llvm.fmuladd.f64(double %13, double %14, double %12)
  store double %15, ptr %arrayidx100.i, align 8, !tbaa !5
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1
  br label %for.cond101.i, !llvm.loop !29

for.end119.i:                                     ; preds = %for.cond101.i
  %arrayidx127.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv118.i, i64 %indvars.iv122.i
  store double %12, ptr %arrayidx127.i, align 8, !tbaa !5
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1
  br label %for.cond94.i, !llvm.loop !30

kernel_correlation.exit:                          ; preds = %for.cond85.i
  %arrayidx139.i = getelementptr inbounds nuw i8, ptr %call1, i64 11519992
  store double 1.000000e+00, ptr %arrayidx139.i, align 8, !tbaa !5
  %call.i19 = tail call fastcc double @rtclock()
  store double %call.i19, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_correlation.exit
  %16 = load ptr, ptr %argv, align 8, !tbaa !31
  %strcmpload = load i8, ptr %16, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_correlation.exit
  tail call void @free(ptr noundef nonnull %call) #12
  tail call void @free(ptr noundef nonnull %call1) #12
  tail call void @free(ptr noundef nonnull %call2) #12
  tail call void @free(ptr noundef nonnull %call3) #12
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %corr) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc10 ], [ 0, %entry ]
  %exitcond15.not = icmp eq i64 %indvars.iv11, 1200
  br i1 %exitcond15.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %3 = mul nuw nsw i64 %indvars.iv11, 1200
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1200
  br i1 %exitcond.not, label %for.inc10, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %4 = add nuw nsw i64 %indvars.iv, %3
  %5 = trunc nuw nsw i64 %4 to i32
  %rem = urem i32 %5, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %corr, i64 %indvars.iv11, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !33

for.inc10:                                        ; preds = %for.cond2
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond, !llvm.loop !34

for.end12:                                        ; preds = %for.cond
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #15
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold nounwind }

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
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !7, i64 0}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 omnipotent char", !14, i64 0}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
