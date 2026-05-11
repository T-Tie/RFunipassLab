; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll'
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
@.str.3.8 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ey\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"hz\00", align 1

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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 500, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 500
  br i1 %exitcond.not.i, label %for.cond1.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv.i to i32
  %conv.i = uitofp nneg i32 %0 to double
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv.i
  store double %conv.i, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !17

for.cond1.i:                                      ; preds = %for.cond.i, %for.inc39.i
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %for.inc39.i ], [ 0, %for.cond.i ]
  %exitcond32.not.i = icmp eq i64 %indvars.iv29.i, 1000
  br i1 %exitcond32.not.i, label %init_array.exit, label %for.cond5.i

for.cond5.i:                                      ; preds = %for.cond1.i, %for.body8.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %for.body8.i ], [ 0, %for.cond1.i ]
  %exitcond28.not.i = icmp eq i64 %indvars.iv23.i, 1200
  br i1 %exitcond28.not.i, label %for.inc39.i, label %for.body8.i

for.body8.i:                                      ; preds = %for.cond5.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  %1 = mul nuw nsw i64 %indvars.iv.next24.i, %indvars.iv29.i
  %2 = trunc nuw nsw i64 %1 to i32
  %mul.i = uitofp nneg i32 %2 to double
  %div.i = fdiv double %mul.i, 1.000000e+03
  %arrayidx15.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv29.i, i64 %indvars.iv23.i
  store double %div.i, ptr %arrayidx15.i, align 8, !tbaa !5
  %3 = add nuw nsw i64 %indvars.iv23.i, 2
  %4 = mul nuw nsw i64 %3, %indvars.iv29.i
  %5 = trunc nuw nsw i64 %4 to i32
  %mul19.i = uitofp nneg i32 %5 to double
  %div21.i = fdiv double %mul19.i, 1.200000e+03
  %arrayidx25.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv29.i, i64 %indvars.iv23.i
  store double %div21.i, ptr %arrayidx25.i, align 8, !tbaa !5
  %6 = add nuw nsw i64 %indvars.iv23.i, 3
  %7 = mul nuw nsw i64 %6, %indvars.iv29.i
  %8 = trunc nuw nsw i64 %7 to i32
  %mul29.i = uitofp nneg i32 %8 to double
  %div31.i = fdiv double %mul29.i, 1.000000e+03
  %arrayidx35.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv29.i, i64 %indvars.iv23.i
  store double %div31.i, ptr %arrayidx35.i, align 8, !tbaa !5
  br label %for.cond5.i, !llvm.loop !19

for.inc39.i:                                      ; preds = %for.cond5.i
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1
  br label %for.cond1.i, !llvm.loop !20

init_array.exit:                                  ; preds = %for.cond1.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  %invariant.gep.i = getelementptr i8, ptr %call2, i64 -9600
  %invariant.gep61.i = getelementptr inbounds nuw i8, ptr %call1, i64 9600
  br label %for.cond.i17

for.cond.i17:                                     ; preds = %for.inc108.i, %init_array.exit
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i, %for.inc108.i ], [ 0, %init_array.exit ]
  %exitcond92.not.i = icmp eq i64 %indvars.iv89.i, 500
  br i1 %exitcond92.not.i, label %kernel_fdtd_2d.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i17
  %arrayidx.i18 = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv89.i
  br label %for.cond1.i19

for.cond1.i19:                                    ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i20 = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i22, %for.body3.i ]
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.i20, 1200
  br i1 %exitcond.not.i21, label %for.cond7.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i19
  %9 = load double, ptr %arrayidx.i18, align 8, !tbaa !5
  %arrayidx6.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 0, i64 %indvars.iv.i20
  store double %9, ptr %arrayidx6.i, align 8, !tbaa !5
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i20, 1
  br label %for.cond1.i19, !llvm.loop !21

for.cond7.i:                                      ; preds = %for.cond1.i19, %for.inc33.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %for.inc33.i ], [ 1, %for.cond1.i19 ]
  %exitcond71.not.i = icmp eq i64 %indvars.iv68.i, 1000
  br i1 %exitcond71.not.i, label %for.cond36.i, label %for.cond10.i

for.cond10.i:                                     ; preds = %for.cond7.i, %for.body12.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.body12.i ], [ 0, %for.cond7.i ]
  %exitcond67.not.i = icmp eq i64 %indvars.iv64.i, 1200
  br i1 %exitcond67.not.i, label %for.inc33.i, label %for.body12.i

for.body12.i:                                     ; preds = %for.cond10.i
  %arrayidx16.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv68.i, i64 %indvars.iv64.i
  %10 = load double, ptr %arrayidx16.i, align 8, !tbaa !5
  %arrayidx20.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv68.i, i64 %indvars.iv64.i
  %11 = load double, ptr %arrayidx20.i, align 8, !tbaa !5
  %arrayidx24.i = getelementptr [1200 x double], ptr %invariant.gep.i, i64 %indvars.iv68.i, i64 %indvars.iv64.i
  %12 = load double, ptr %arrayidx24.i, align 8, !tbaa !5
  %sub25.i = fsub double %11, %12
  %13 = tail call double @llvm.fmuladd.f64(double %sub25.i, double -5.000000e-01, double %10)
  store double %13, ptr %arrayidx16.i, align 8, !tbaa !5
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  br label %for.cond10.i, !llvm.loop !22

for.inc33.i:                                      ; preds = %for.cond10.i
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1
  br label %for.cond7.i, !llvm.loop !23

for.cond36.i:                                     ; preds = %for.cond7.i, %for.inc63.i
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %for.inc63.i ], [ 0, %for.cond7.i ]
  %exitcond80.not.i = icmp eq i64 %indvars.iv77.i, 1000
  br i1 %exitcond80.not.i, label %for.cond66.i, label %for.cond39.i

for.cond39.i:                                     ; preds = %for.cond36.i, %for.body41.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %for.body41.i ], [ 1, %for.cond36.i ]
  %exitcond76.not.i = icmp eq i64 %indvars.iv72.i, 1200
  br i1 %exitcond76.not.i, label %for.inc63.i, label %for.body41.i

for.body41.i:                                     ; preds = %for.cond39.i
  %arrayidx45.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv77.i, i64 %indvars.iv72.i
  %14 = load double, ptr %arrayidx45.i, align 8, !tbaa !5
  %arrayidx49.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv77.i, i64 %indvars.iv72.i
  %15 = load double, ptr %arrayidx49.i, align 8, !tbaa !5
  %16 = add nsw i64 %indvars.iv72.i, -1
  %arrayidx54.i = getelementptr inbounds [1200 x double], ptr %call2, i64 %indvars.iv77.i, i64 %16
  %17 = load double, ptr %arrayidx54.i, align 8, !tbaa !5
  %sub55.i = fsub double %15, %17
  %18 = tail call double @llvm.fmuladd.f64(double %sub55.i, double -5.000000e-01, double %14)
  store double %18, ptr %arrayidx45.i, align 8, !tbaa !5
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1
  br label %for.cond39.i, !llvm.loop !24

for.inc63.i:                                      ; preds = %for.cond39.i
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1
  br label %for.cond36.i, !llvm.loop !25

for.cond66.i:                                     ; preds = %for.cond36.i, %for.inc105.i
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %for.inc105.i ], [ 0, %for.cond36.i ]
  %exitcond88.not.i = icmp eq i64 %indvars.iv85.i, 999
  br i1 %exitcond88.not.i, label %for.inc108.i, label %for.cond70.i

for.cond70.i:                                     ; preds = %for.cond66.i, %for.body73.i
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %for.body73.i ], [ 0, %for.cond66.i ]
  %exitcond84.not.i = icmp eq i64 %indvars.iv81.i, 1199
  br i1 %exitcond84.not.i, label %for.inc105.i, label %for.body73.i

for.body73.i:                                     ; preds = %for.cond70.i
  %arrayidx77.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv85.i, i64 %indvars.iv81.i
  %19 = load double, ptr %arrayidx77.i, align 8, !tbaa !5
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1
  %arrayidx81.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv85.i, i64 %indvars.iv.next82.i
  %20 = load double, ptr %arrayidx81.i, align 8, !tbaa !5
  %arrayidx85.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv85.i, i64 %indvars.iv81.i
  %21 = load double, ptr %arrayidx85.i, align 8, !tbaa !5
  %sub86.i = fsub double %20, %21
  %arrayidx91.i = getelementptr inbounds nuw [1200 x double], ptr %invariant.gep61.i, i64 %indvars.iv85.i, i64 %indvars.iv81.i
  %22 = load double, ptr %arrayidx91.i, align 8, !tbaa !5
  %add92.i = fadd double %sub86.i, %22
  %arrayidx96.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv85.i, i64 %indvars.iv81.i
  %23 = load double, ptr %arrayidx96.i, align 8, !tbaa !5
  %sub97.i = fsub double %add92.i, %23
  %24 = tail call double @llvm.fmuladd.f64(double %sub97.i, double 0xBFE6666666666666, double %19)
  store double %24, ptr %arrayidx77.i, align 8, !tbaa !5
  br label %for.cond70.i, !llvm.loop !26

for.inc105.i:                                     ; preds = %for.cond70.i
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1
  br label %for.cond66.i, !llvm.loop !27

for.inc108.i:                                     ; preds = %for.cond66.i
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1
  br label %for.cond.i17, !llvm.loop !28

kernel_fdtd_2d.exit:                              ; preds = %for.cond.i17
  %call.i23 = tail call fastcc double @rtclock()
  store double %call.i23, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_fdtd_2d.exit
  %25 = load ptr, ptr %argv, align 8, !tbaa !29
  %strcmpload = load i8, ptr %25, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call, ptr noundef %call1, ptr noundef %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_fdtd_2d.exit
  tail call void @free(ptr noundef nonnull %call) #11
  tail call void @free(ptr noundef nonnull %call1) #11
  tail call void @free(ptr noundef nonnull %call2) #11
  tail call void @free(ptr noundef nonnull %call3) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %ex, ptr noundef nonnull readonly captures(none) %ey, ptr noundef nonnull readonly captures(none) %hz) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc10 ], [ 0, %entry ]
  %exitcond38.not = icmp eq i64 %indvars.iv34, 1000
  br i1 %exitcond38.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %3 = mul nuw nsw i64 %indvars.iv34, 1000
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
  %fputc31 = tail call i32 @fputc(i32 10, ptr %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %ex, i64 %indvars.iv34, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !31

for.inc10:                                        ; preds = %for.cond2
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond, !llvm.loop !32

for.end12:                                        ; preds = %for.cond
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #12
  %12 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.8) #14
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc37, %for.end12
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc37 ], [ 0, %for.end12 ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, 1000
  br i1 %exitcond48.not, label %for.end39, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond16
  %13 = mul nuw nsw i64 %indvars.iv44, 1000
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %if.end28
  %indvars.iv39 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next40, %if.end28 ]
  %exitcond43.not = icmp eq i64 %indvars.iv39, 1200
  br i1 %exitcond43.not, label %for.inc37, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %14 = add nuw nsw i64 %indvars.iv39, %13
  %15 = trunc nuw nsw i64 %14 to i32
  %rem24 = urem i32 %15, 20
  %cmp25 = icmp eq i32 %rem24, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.body21
  %16 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc30 = tail call i32 @fputc(i32 10, ptr %16)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.body21
  %17 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx32 = getelementptr inbounds nuw [1200 x double], ptr %ey, i64 %indvars.iv44, i64 %indvars.iv39
  %18 = load double, ptr %arrayidx32, align 8, !tbaa !5
  %call33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.5.10, double noundef %18) #14
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond19, !llvm.loop !33

for.inc37:                                        ; preds = %for.cond19
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond16, !llvm.loop !34

for.end39:                                        ; preds = %for.cond16
  %19 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #14
  %20 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.9) #14
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc63, %for.end39
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.inc63 ], [ 0, %for.end39 ]
  %exitcond58.not = icmp eq i64 %indvars.iv54, 1000
  br i1 %exitcond58.not, label %for.end65, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond42
  %21 = mul nuw nsw i64 %indvars.iv54, 1000
  br label %for.cond45

for.cond45:                                       ; preds = %for.cond45.preheader, %if.end54
  %indvars.iv49 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next50, %if.end54 ]
  %exitcond53.not = icmp eq i64 %indvars.iv49, 1200
  br i1 %exitcond53.not, label %for.inc63, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %22 = add nuw nsw i64 %indvars.iv49, %21
  %23 = trunc nuw nsw i64 %22 to i32
  %rem50 = urem i32 %23, 20
  %cmp51 = icmp eq i32 %rem50, 0
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %for.body47
  %24 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %24)
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %for.body47
  %25 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx58 = getelementptr inbounds nuw [1200 x double], ptr %hz, i64 %indvars.iv54, i64 %indvars.iv49
  %26 = load double, ptr %arrayidx58, align 8, !tbaa !5
  %call59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.5.10, double noundef %26) #14
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond45, !llvm.loop !35

for.inc63:                                        ; preds = %for.cond45
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond42, !llvm.loop !36

for.end65:                                        ; preds = %for.cond42
  %27 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9) #14
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
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 omnipotent char", !14, i64 0}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
