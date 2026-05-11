; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/root/exp/RFunipassLab/external_datasets/sources/polybench/utilities/polybench.c\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Error return from gettimeofday: %d\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.6 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3.8 = private unnamed_addr constant [5 x i8] c"corr\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
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

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #5 {
entry:
  %call = tail call fastcc double @rtclock() #17
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #5 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp) #18
  %call = call i32 @gettimeofday(ptr noundef nonnull align 8 captures(none) %Tp, ptr noundef null) #17
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !9
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !12
  %conv2 = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2, double noundef 0x3EB0C6F7A0B5ED8D, double %conv) #19
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp) #17
  ret double %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #5 {
entry:
  %call = tail call fastcc double @rtclock() #17
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #5 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #8 {
entry:
  tail call void @free(ptr noundef captures(none) %ptr) #20
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #5 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #18
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #17
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly captures(none) dereferenceable(51) @.str.4) #17
  call void @exit(i32 noundef 1) #21
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #17
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #10 {
entry:
  %call = tail call nonnull ptr @polybench_alloc_data(i64 noundef 1680000, i32 noundef 8) #17
  %call1 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #17
  %call2 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8) #17
  %call3 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8) #17
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.end.i, %entry
  %indvars.iv5.i = phi i64 [ %indvars.iv.next6.i, %for.end.i ], [ 0, %entry ]
  %exitcond8.not.i = icmp eq i64 %indvars.iv5.i, 1400
  br i1 %exitcond8.not.i, label %init_array.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv5.i to i32
  %conv4.i = uitofp nneg i32 %0 to double
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.inc.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1200
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond1.i
  %1 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv5.i
  %2 = trunc nuw nsw i64 %1 to i32
  %conv.i = uitofp nneg i32 %2 to double
  %div.i = fdiv double %conv.i, 1.200000e+03
  %add.i = fadd double %div.i, %conv4.i
  %arrayidx6.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv5.i, i64 %indvars.iv.i
  store double %add.i, ptr %arrayidx6.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !15

for.end.i:                                        ; preds = %for.cond1.i
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1
  br label %for.cond.i

init_array.exit:                                  ; preds = %for.cond.i
  %call.i = tail call fastcc double @rtclock() #17
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i3

for.cond.i3:                                      ; preds = %for.inc12.i, %init_array.exit
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc12.i ], [ 0, %init_array.exit ]
  %exitcond19.not.i = icmp eq i64 %indvars.iv16.i, 1200
  br i1 %exitcond19.not.i, label %for.cond15.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i3
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv16.i
  br label %for.cond1.i4

for.cond1.i4:                                     ; preds = %for.inc.i7, %for.body.i
  %indvars.iv.i5 = phi i64 [ %indvars.iv.next.i9, %for.inc.i7 ], [ 0, %for.body.i ]
  %exitcond.not.i6 = icmp eq i64 %indvars.iv.i5, 1400
  br i1 %exitcond.not.i6, label %for.inc12.i, label %for.inc.i7

for.inc.i7:                                       ; preds = %for.cond1.i4
  %arrayidx7.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv.i5, i64 %indvars.iv16.i
  %3 = load double, ptr %arrayidx7.i, align 8, !tbaa !5, !invariant.load !17
  %add.i8 = fadd double %3, 0.000000e+00
  store double %add.i8, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i5, 1
  br label %for.cond1.i4, !llvm.loop !18

for.inc12.i:                                      ; preds = %for.cond1.i4
  store double 0.000000e+00, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  br label %for.cond.i3, !llvm.loop !19

for.cond15.i:                                     ; preds = %for.cond.i3, %for.inc55.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.inc55.i ], [ 0, %for.cond.i3 ]
  %exitcond27.not.i = icmp eq i64 %indvars.iv24.i, 1200
  br i1 %exitcond27.not.i, label %for.cond58.i, label %for.body17.i

for.body17.i:                                     ; preds = %for.cond15.i
  %arrayidx19.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv24.i
  %arrayidx28.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv24.i
  %4 = load double, ptr %arrayidx28.i, align 8, !tbaa !5, !invariant.load !17
  br label %for.cond20.i

for.cond20.i:                                     ; preds = %for.inc38.i, %for.body17.i
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %for.inc38.i ], [ 0, %for.body17.i ]
  %exitcond23.not.i = icmp eq i64 %indvars.iv20.i, 1400
  br i1 %exitcond23.not.i, label %for.inc55.i, label %for.inc38.i

for.inc38.i:                                      ; preds = %for.cond20.i
  %arrayidx26.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv20.i, i64 %indvars.iv24.i
  %5 = load double, ptr %arrayidx26.i, align 8, !tbaa !5, !invariant.load !17
  %sub.i = fsub double %5, %4
  %6 = tail call double @llvm.fmuladd.f64(double %sub.i, double %sub.i, double noundef 0.000000e+00) #22
  store double %6, ptr %arrayidx19.i, align 8, !tbaa !5
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1
  br label %for.cond20.i, !llvm.loop !20

for.inc55.i:                                      ; preds = %for.cond20.i
  store double 1.000000e+00, ptr %arrayidx19.i, align 8, !tbaa !5
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  br label %for.cond15.i, !llvm.loop !21

for.cond58.i:                                     ; preds = %for.cond15.i, %for.inc82.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.inc82.i ], [ 0, %for.cond15.i ]
  %exitcond35.not.i = icmp eq i64 %indvars.iv32.i, 1400
  br i1 %exitcond35.not.i, label %for.cond85.i, label %for.cond61.i

for.cond61.i:                                     ; preds = %for.cond58.i, %for.inc79.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %for.inc79.i ], [ 0, %for.cond58.i ]
  %exitcond31.not.i = icmp eq i64 %indvars.iv28.i, 1200
  br i1 %exitcond31.not.i, label %for.inc82.i, label %for.inc79.i

for.inc79.i:                                      ; preds = %for.cond61.i
  %arrayidx65.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv28.i
  %7 = load double, ptr %arrayidx65.i, align 8, !tbaa !5, !invariant.load !17
  %arrayidx69.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv32.i, i64 %indvars.iv28.i
  %8 = load double, ptr %arrayidx69.i, align 8, !tbaa !5, !invariant.load !17
  %sub70.i = fsub double %8, %7
  store double %sub70.i, ptr %arrayidx69.i, align 8, !tbaa !5
  %arrayidx73.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv28.i
  %9 = load double, ptr %arrayidx73.i, align 8, !tbaa !5, !invariant.load !17
  %mul.i = fmul double %9, 0x4042B5524AE1278E
  %div78.i = fdiv double %sub70.i, %mul.i
  store double %div78.i, ptr %arrayidx69.i, align 8, !tbaa !5
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  br label %for.cond61.i, !llvm.loop !22

for.inc82.i:                                      ; preds = %for.cond61.i
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  br label %for.cond58.i, !llvm.loop !23

for.cond85.loopexit.i:                            ; preds = %for.cond94.i
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  br label %for.cond85.i

for.cond85.i:                                     ; preds = %for.cond58.i, %for.cond85.loopexit.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %for.cond85.loopexit.i ], [ 0, %for.cond58.i ]
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %for.cond85.loopexit.i ], [ 1, %for.cond58.i ]
  %exitcond49.not.i = icmp eq i64 %indvars.iv46.i, 1199
  br i1 %exitcond49.not.i, label %kernel_correlation.exit, label %for.body88.i

for.body88.i:                                     ; preds = %for.cond85.i
  %arrayidx92.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv46.i, i64 %indvars.iv46.i
  store double 1.000000e+00, ptr %arrayidx92.i, align 8, !tbaa !5
  br label %for.cond94.i

for.cond94.i:                                     ; preds = %for.inc128.i, %for.body88.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %for.inc128.i ], [ %indvars.iv40.i, %for.body88.i ]
  %exitcond45.not.i = icmp eq i64 %indvars.iv42.i, 1200
  br i1 %exitcond45.not.i, label %for.cond85.loopexit.i, label %for.body96.i

for.body96.i:                                     ; preds = %for.cond94.i
  %arrayidx100.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv46.i, i64 %indvars.iv42.i
  store double 0.000000e+00, ptr %arrayidx100.i, align 8, !tbaa !5
  br label %for.cond101.i

for.cond101.i:                                    ; preds = %for.body103.i, %for.body96.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %for.body103.i ], [ 0, %for.body96.i ]
  %10 = phi double [ %13, %for.body103.i ], [ 0.000000e+00, %for.body96.i ]
  %exitcond39.not.i = icmp eq i64 %indvars.iv36.i, 1400
  br i1 %exitcond39.not.i, label %for.inc128.i, label %for.body103.i

for.body103.i:                                    ; preds = %for.cond101.i
  %arrayidx107.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv36.i, i64 %indvars.iv46.i
  %11 = load double, ptr %arrayidx107.i, align 8, !tbaa !5, !invariant.load !17
  %arrayidx111.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv36.i, i64 %indvars.iv42.i
  %12 = load double, ptr %arrayidx111.i, align 8, !tbaa !5, !invariant.load !17
  %13 = tail call double @llvm.fmuladd.f64(double %11, double %12, double %10) #19
  store double %13, ptr %arrayidx100.i, align 8, !tbaa !5
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  br label %for.cond101.i

for.inc128.i:                                     ; preds = %for.cond101.i
  %arrayidx127.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv42.i, i64 %indvars.iv46.i
  store double %10, ptr %arrayidx127.i, align 8, !tbaa !5
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1
  br label %for.cond94.i, !llvm.loop !24

kernel_correlation.exit:                          ; preds = %for.cond85.i
  %arrayidx139.i = getelementptr inbounds nuw i8, ptr %call1, i64 11519992
  store double 1.000000e+00, ptr %arrayidx139.i, align 8, !tbaa !5
  %call.i10 = tail call fastcc double @rtclock() #17
  store double %call.i10, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #17
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_correlation.exit
  %14 = load ptr, ptr %argv, align 8, !tbaa !25
  %strcmpload = load i8, ptr %14, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 1200, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(11520000) %call1) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_correlation.exit
  tail call void @free(ptr noundef nonnull %call) #23
  tail call void @free(ptr noundef nonnull align 8 dereferenceable(11520000) %call1) #23
  tail call void @free(ptr noundef nonnull %call2) #23
  tail call void @free(ptr noundef nonnull %call3) #23
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(i32 noundef %m, ptr noundef readonly captures(none) %corr) unnamed_addr #12 {
entry:
  tail call fastcc void @outlined_ir_func_0(ptr nonnull @.str.1.6)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #24
  %1 = zext i32 %m to i64
  %smax = call i32 @llvm.smax.i32(i32 %m, i32 0)
  %wide.trip.count10 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %m to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.end ], [ 0, %entry ]
  %exitcond11.not = icmp eq i64 %indvars.iv6, %wide.trip.count10
  br i1 %exitcond11.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %2 = mul i64 %indvars.iv6, %1
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %3 = add i64 %indvars.iv, %2
  %4 = trunc i64 %3 to i32
  %rem = srem i32 %4, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  tail call fastcc void @outlined_ir_func_0(ptr nonnull @.str.4.9)
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %5 = load ptr, ptr @stderr, align 8, !tbaa !27
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %corr, i64 %indvars.iv6, i64 %indvars.iv
  %6 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.5.10, double noundef %6) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !29

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  %7 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #24
  tail call fastcc void @outlined_ir_func_0(ptr nonnull @.str.7)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #13

; Function Attrs: cold minsize nofree nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr nofree noundef readonly captures(none) %0) unnamed_addr #14 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef readonly captures(none) %0) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold minsize nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind }
attributes #18 = { nofree nounwind willreturn memory(readwrite) }
attributes #19 = { nofree }
attributes #20 = { nounwind willreturn }
attributes #21 = { cold nofree noreturn nounwind }
attributes #22 = { nofree nosync }
attributes #23 = { nounwind }
attributes #24 = { cold nounwind }
attributes #25 = { cold nofree nounwind }

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
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!29 = distinct !{!29, !16}
