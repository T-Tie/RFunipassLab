; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
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
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  %call4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  %call5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  %call6 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  %call7 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  %call8 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond35.i, %entry
  %indvars.iv31.i = phi i64 [ 0, %entry ], [ %indvars.iv.next32.i, %for.cond35.i ]
  %exitcond34.not.i = icmp eq i64 %indvars.iv31.i, 2000
  br i1 %exitcond34.not.i, label %init_array.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv31.i to i32
  %conv2.i = uitofp nneg i32 %0 to double
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv31.i
  store double %conv2.i, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %1 = trunc nuw nsw i64 %indvars.iv.next32.i to i32
  %conv3.i = uitofp nneg i32 %1 to double
  %div.i = fdiv double %conv3.i, 2.000000e+03
  %div4.i = fmul double %div.i, 5.000000e-01
  %arrayidx6.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv31.i
  store double %div4.i, ptr %arrayidx6.i, align 8, !tbaa !5
  %div10.i = fmul double %div.i, 2.500000e-01
  %arrayidx12.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv31.i
  store double %div10.i, ptr %arrayidx12.i, align 8, !tbaa !5
  %div16.i = fdiv double %div.i, 6.000000e+00
  %arrayidx18.i = getelementptr inbounds nuw double, ptr %call4, i64 %indvars.iv31.i
  store double %div16.i, ptr %arrayidx18.i, align 8, !tbaa !5
  %div22.i = fmul double %div.i, 1.250000e-01
  %arrayidx24.i = getelementptr inbounds nuw double, ptr %call7, i64 %indvars.iv31.i
  store double %div22.i, ptr %arrayidx24.i, align 8, !tbaa !5
  %div28.i = fdiv double %div.i, 9.000000e+00
  %arrayidx30.i = getelementptr inbounds nuw double, ptr %call8, i64 %indvars.iv31.i
  store double %div28.i, ptr %arrayidx30.i, align 8, !tbaa !5
  %arrayidx32.i = getelementptr inbounds nuw double, ptr %call6, i64 %indvars.iv31.i
  store double 0.000000e+00, ptr %arrayidx32.i, align 8, !tbaa !5
  %arrayidx34.i = getelementptr inbounds nuw double, ptr %call5, i64 %indvars.iv31.i
  store double 0.000000e+00, ptr %arrayidx34.i, align 8, !tbaa !5
  br label %for.cond35.i

for.cond35.i:                                     ; preds = %for.body38.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body38.i ], [ 0, %for.body.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2000
  br i1 %exitcond.not.i, label %for.cond.i, label %for.body38.i, !llvm.loop !17

for.body38.i:                                     ; preds = %for.cond35.i
  %2 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv31.i
  %3 = trunc nuw nsw i64 %2 to i32
  %rem.i = urem i32 %3, 2000
  %conv39.i = uitofp nneg i32 %rem.i to double
  %div41.i = fdiv double %conv39.i, 2.000000e+03
  %arrayidx45.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv31.i, i64 %indvars.iv.i
  store double %div41.i, ptr %arrayidx45.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond35.i, !llvm.loop !19

init_array.exit:                                  ; preds = %for.cond.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i22

for.cond.i22:                                     ; preds = %for.inc18.i, %init_array.exit
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %for.inc18.i ], [ 0, %init_array.exit ]
  %exitcond52.not.i = icmp eq i64 %indvars.iv49.i, 2000
  br i1 %exitcond52.not.i, label %for.cond21.i, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i22
  %arrayidx7.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv49.i
  %arrayidx11.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv49.i
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i23 = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i25, %for.body3.i ]
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.i23, 2000
  br i1 %exitcond.not.i24, label %for.inc18.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %arrayidx5.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv49.i, i64 %indvars.iv.i23
  %4 = load double, ptr %arrayidx5.i, align 8, !tbaa !5
  %5 = load double, ptr %arrayidx7.i, align 8, !tbaa !5
  %arrayidx9.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv.i23
  %6 = load double, ptr %arrayidx9.i, align 8, !tbaa !5
  %7 = tail call double @llvm.fmuladd.f64(double %5, double %6, double %4)
  %8 = load double, ptr %arrayidx11.i, align 8, !tbaa !5
  %arrayidx13.i = getelementptr inbounds nuw double, ptr %call4, i64 %indvars.iv.i23
  %9 = load double, ptr %arrayidx13.i, align 8, !tbaa !5
  %10 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %7)
  store double %10, ptr %arrayidx5.i, align 8, !tbaa !5
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 1
  br label %for.cond1.i, !llvm.loop !20

for.inc18.i:                                      ; preds = %for.cond1.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1
  br label %for.cond.i22, !llvm.loop !21

for.cond21.i:                                     ; preds = %for.cond.i22, %for.inc41.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %for.inc41.i ], [ 0, %for.cond.i22 ]
  %exitcond60.not.i = icmp eq i64 %indvars.iv57.i, 2000
  br i1 %exitcond60.not.i, label %for.cond44.i, label %for.cond24.preheader.i

for.cond24.preheader.i:                           ; preds = %for.cond21.i
  %arrayidx28.i = getelementptr inbounds nuw double, ptr %call6, i64 %indvars.iv57.i
  %arrayidx28.promoted.i = load double, ptr %arrayidx28.i, align 8, !tbaa !5
  br label %for.cond24.i

for.cond24.i:                                     ; preds = %for.body26.i, %for.cond24.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %for.cond24.preheader.i ], [ %indvars.iv.next54.i, %for.body26.i ]
  %11 = phi double [ %arrayidx28.promoted.i, %for.cond24.preheader.i ], [ %14, %for.body26.i ]
  %exitcond56.not.i = icmp eq i64 %indvars.iv53.i, 2000
  br i1 %exitcond56.not.i, label %for.inc41.i, label %for.body26.i

for.body26.i:                                     ; preds = %for.cond24.i
  %arrayidx32.i26 = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv53.i, i64 %indvars.iv57.i
  %12 = load double, ptr %arrayidx32.i26, align 8, !tbaa !5
  %mul.i = fmul double %12, 1.200000e+00
  %arrayidx34.i27 = getelementptr inbounds nuw double, ptr %call7, i64 %indvars.iv53.i
  %13 = load double, ptr %arrayidx34.i27, align 8, !tbaa !5
  %14 = tail call double @llvm.fmuladd.f64(double %mul.i, double %13, double %11)
  store double %14, ptr %arrayidx28.i, align 8, !tbaa !5
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  br label %for.cond24.i, !llvm.loop !22

for.inc41.i:                                      ; preds = %for.cond24.i
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1
  br label %for.cond21.i, !llvm.loop !23

for.cond44.i:                                     ; preds = %for.cond21.i, %for.body46.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %for.body46.i ], [ 0, %for.cond21.i ]
  %exitcond64.not.i = icmp eq i64 %indvars.iv61.i, 2000
  br i1 %exitcond64.not.i, label %for.cond56.i, label %for.body46.i

for.body46.i:                                     ; preds = %for.cond44.i
  %arrayidx48.i = getelementptr inbounds nuw double, ptr %call6, i64 %indvars.iv61.i
  %15 = load double, ptr %arrayidx48.i, align 8, !tbaa !5
  %arrayidx50.i = getelementptr inbounds nuw double, ptr %call8, i64 %indvars.iv61.i
  %16 = load double, ptr %arrayidx50.i, align 8, !tbaa !5
  %add.i = fadd double %15, %16
  store double %add.i, ptr %arrayidx48.i, align 8, !tbaa !5
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1
  br label %for.cond44.i, !llvm.loop !24

for.cond56.i:                                     ; preds = %for.cond44.i, %for.inc77.i
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %for.inc77.i ], [ 0, %for.cond44.i ]
  %exitcond72.not.i = icmp eq i64 %indvars.iv69.i, 2000
  br i1 %exitcond72.not.i, label %kernel_gemver.exit, label %for.cond59.preheader.i

for.cond59.preheader.i:                           ; preds = %for.cond56.i
  %arrayidx63.i = getelementptr inbounds nuw double, ptr %call5, i64 %indvars.iv69.i
  %arrayidx63.promoted.i = load double, ptr %arrayidx63.i, align 8, !tbaa !5
  br label %for.cond59.i

for.cond59.i:                                     ; preds = %for.body61.i, %for.cond59.preheader.i
  %indvars.iv65.i = phi i64 [ 0, %for.cond59.preheader.i ], [ %indvars.iv.next66.i, %for.body61.i ]
  %17 = phi double [ %arrayidx63.promoted.i, %for.cond59.preheader.i ], [ %20, %for.body61.i ]
  %exitcond68.not.i = icmp eq i64 %indvars.iv65.i, 2000
  br i1 %exitcond68.not.i, label %for.inc77.i, label %for.body61.i

for.body61.i:                                     ; preds = %for.cond59.i
  %arrayidx67.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv69.i, i64 %indvars.iv65.i
  %18 = load double, ptr %arrayidx67.i, align 8, !tbaa !5
  %mul68.i = fmul double %18, 1.500000e+00
  %arrayidx70.i = getelementptr inbounds nuw double, ptr %call6, i64 %indvars.iv65.i
  %19 = load double, ptr %arrayidx70.i, align 8, !tbaa !5
  %20 = tail call double @llvm.fmuladd.f64(double %mul68.i, double %19, double %17)
  store double %20, ptr %arrayidx63.i, align 8, !tbaa !5
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1
  br label %for.cond59.i, !llvm.loop !25

for.inc77.i:                                      ; preds = %for.cond59.i
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1
  br label %for.cond56.i, !llvm.loop !26

kernel_gemver.exit:                               ; preds = %for.cond56.i
  %call.i28 = tail call fastcc double @rtclock()
  store double %call.i28, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gemver.exit
  %21 = load ptr, ptr %argv, align 8, !tbaa !27
  %strcmpload = load i8, ptr %21, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_gemver.exit
  tail call void @free(ptr noundef nonnull %call) #11
  tail call void @free(ptr noundef nonnull %call1) #11
  tail call void @free(ptr noundef nonnull %call2) #11
  tail call void @free(ptr noundef nonnull %call3) #11
  tail call void @free(ptr noundef nonnull %call4) #11
  tail call void @free(ptr noundef nonnull %call5) #11
  tail call void @free(ptr noundef nonnull %call6) #11
  tail call void @free(ptr noundef nonnull %call7) #11
  tail call void @free(ptr noundef nonnull %call8) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %w) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 2000
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16
  %rem4 = urem i16 %rem.lhs.trunc, 20
  %cmp2 = icmp eq i16 %rem4, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds nuw double, ptr %w, i64 %indvars.iv
  %5 = load double, ptr %arrayidx, align 8, !tbaa !5
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, double noundef %5) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %7) #12
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
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 omnipotent char", !14, i64 0}
!29 = distinct !{!29, !18}
