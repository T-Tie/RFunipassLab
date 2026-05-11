; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"A\00", align 1
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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1728000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1728000, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc22.i, %entry
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.inc22.i ], [ 0, %entry ]
  %exitcond28.not.i = icmp eq i64 %indvars.iv24.i, 120
  br i1 %exitcond28.not.i, label %init_array.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = add nuw nsw i64 %indvars.iv24.i, 120
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.inc19.i, %for.cond1.preheader.i
  %indvars.iv19.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next20.i, %for.inc19.i ]
  %exitcond23.not.i = icmp eq i64 %indvars.iv19.i, 120
  br i1 %exitcond23.not.i, label %for.inc22.i, label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.cond1.i
  %1 = add nuw nsw i64 %0, %indvars.iv19.i
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body6.i, %for.cond4.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond4.preheader.i ], [ %indvars.iv.next.i, %for.body6.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 120
  br i1 %exitcond.not.i, label %for.inc19.i, label %for.body6.i

for.body6.i:                                      ; preds = %for.cond4.i
  %2 = sub nuw nsw i64 %1, %indvars.iv.i
  %3 = trunc nuw nsw i64 %2 to i32
  %conv.i = sitofp i32 %3 to double
  %mul.i = fmul double %conv.i, 1.000000e+01
  %div.i = fdiv double %mul.i, 1.200000e+02
  %arrayidx12.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call1, i64 %indvars.iv24.i, i64 %indvars.iv19.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx12.i, align 8, !tbaa !5
  %arrayidx18.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call, i64 %indvars.iv24.i, i64 %indvars.iv19.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx18.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond4.i, !llvm.loop !17

for.inc19.i:                                      ; preds = %for.cond4.i
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  br label %for.cond1.i, !llvm.loop !19

for.inc22.i:                                      ; preds = %for.cond1.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  br label %for.cond.i, !llvm.loop !20

init_array.exit:                                  ; preds = %for.cond.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i7

for.cond.i7:                                      ; preds = %for.inc192.i, %init_array.exit
  %t.0.i = phi i32 [ 1, %init_array.exit ], [ %inc193.i, %for.inc192.i ]
  %exitcond127.not.i = icmp eq i32 %t.0.i, 501
  br i1 %exitcond127.not.i, label %kernel_heat_3d.exit, label %for.cond1.i8

for.cond1.i8:                                     ; preds = %for.cond.i7, %for.inc90.i
  %indvars.iv109.i = phi i64 [ %indvars.iv.next110.i, %for.inc90.i ], [ 1, %for.cond.i7 ]
  %exitcond112.not.i = icmp eq i64 %indvars.iv109.i, 119
  br i1 %exitcond112.not.i, label %for.cond93.i, label %for.cond4.preheader.i9

for.cond4.preheader.i9:                           ; preds = %for.cond1.i8
  %4 = getelementptr inbounds nuw [120 x [120 x double]], ptr %call, i64 %indvars.iv109.i
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %4, i64 115200
  %arrayidx24.i = getelementptr i8, ptr %4, i64 -115200
  br label %for.cond4.i10

for.cond4.i10:                                    ; preds = %for.cond8.i, %for.cond4.preheader.i9
  %indvars.iv104.i = phi i64 [ 1, %for.cond4.preheader.i9 ], [ %indvars.iv.next105.i, %for.cond8.i ]
  %exitcond108.not.i = icmp eq i64 %indvars.iv104.i, 119
  br i1 %exitcond108.not.i, label %for.inc90.i, label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.cond4.i10
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1
  %5 = add nsw i64 %indvars.iv104.i, -1
  br label %for.cond8.i

for.cond8.i:                                      ; preds = %for.body11.i, %for.cond8.preheader.i
  %indvars.iv.i11 = phi i64 [ 1, %for.cond8.preheader.i ], [ %indvars.iv.next.i13, %for.body11.i ]
  %exitcond.not.i12 = icmp eq i64 %indvars.iv.i11, 119
  br i1 %exitcond.not.i12, label %for.cond4.i10, label %for.body11.i, !llvm.loop !21

for.body11.i:                                     ; preds = %for.cond8.i
  %arrayidx15.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %arrayidx.i, i64 0, i64 %indvars.iv104.i, i64 %indvars.iv.i11
  %6 = load double, ptr %arrayidx15.i, align 8, !tbaa !5
  %arrayidx21.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call, i64 %indvars.iv109.i, i64 %indvars.iv104.i, i64 %indvars.iv.i11
  %7 = load double, ptr %arrayidx21.i, align 8, !tbaa !5
  %8 = tail call double @llvm.fmuladd.f64(double %7, double -2.000000e+00, double %6)
  %arrayidx28.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %arrayidx24.i, i64 0, i64 %indvars.iv104.i, i64 %indvars.iv.i11
  %9 = load double, ptr %arrayidx28.i, align 8, !tbaa !5
  %add29.i = fadd double %8, %9
  %arrayidx36.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call, i64 %indvars.iv109.i, i64 %indvars.iv.next105.i, i64 %indvars.iv.i11
  %10 = load double, ptr %arrayidx36.i, align 8, !tbaa !5
  %11 = tail call double @llvm.fmuladd.f64(double %7, double -2.000000e+00, double %10)
  %arrayidx50.i = getelementptr inbounds [120 x [120 x double]], ptr %call, i64 %indvars.iv109.i, i64 %5, i64 %indvars.iv.i11
  %12 = load double, ptr %arrayidx50.i, align 8, !tbaa !5
  %add51.i = fadd double %11, %12
  %mul52.i = fmul double %add51.i, 1.250000e-01
  %13 = tail call double @llvm.fmuladd.f64(double %add29.i, double 1.250000e-01, double %mul52.i)
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i11, 1
  %arrayidx59.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call, i64 %indvars.iv109.i, i64 %indvars.iv104.i, i64 %indvars.iv.next.i13
  %14 = load double, ptr %arrayidx59.i, align 8, !tbaa !5
  %15 = tail call double @llvm.fmuladd.f64(double %7, double -2.000000e+00, double %14)
  %16 = add nsw i64 %indvars.iv.i11, -1
  %arrayidx72.i = getelementptr inbounds [120 x [120 x double]], ptr %call, i64 %indvars.iv109.i, i64 %indvars.iv104.i, i64 %16
  %17 = load double, ptr %arrayidx72.i, align 8, !tbaa !5
  %add73.i = fadd double %15, %17
  %18 = tail call double @llvm.fmuladd.f64(double %add73.i, double 1.250000e-01, double %13)
  %add80.i = fadd double %7, %18
  %arrayidx86.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call1, i64 %indvars.iv109.i, i64 %indvars.iv104.i, i64 %indvars.iv.i11
  store double %add80.i, ptr %arrayidx86.i, align 8, !tbaa !5
  br label %for.cond8.i, !llvm.loop !22

for.inc90.i:                                      ; preds = %for.cond4.i10
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1
  br label %for.cond1.i8, !llvm.loop !23

for.cond93.i:                                     ; preds = %for.cond1.i8, %for.inc189.i
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i, %for.inc189.i ], [ 1, %for.cond1.i8 ]
  %exitcond126.not.i = icmp eq i64 %indvars.iv123.i, 119
  br i1 %exitcond126.not.i, label %for.inc192.i, label %for.cond97.preheader.i

for.cond97.preheader.i:                           ; preds = %for.cond93.i
  %19 = getelementptr inbounds nuw [120 x [120 x double]], ptr %call1, i64 %indvars.iv123.i
  %arrayidx107.i = getelementptr inbounds nuw i8, ptr %19, i64 115200
  %arrayidx120.i = getelementptr i8, ptr %19, i64 -115200
  br label %for.cond97.i

for.cond97.i:                                     ; preds = %for.cond101.i, %for.cond97.preheader.i
  %indvars.iv118.i = phi i64 [ 1, %for.cond97.preheader.i ], [ %indvars.iv.next119.i, %for.cond101.i ]
  %exitcond122.not.i = icmp eq i64 %indvars.iv118.i, 119
  br i1 %exitcond122.not.i, label %for.inc189.i, label %for.cond101.preheader.i

for.cond101.preheader.i:                          ; preds = %for.cond97.i
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1
  %20 = add nsw i64 %indvars.iv118.i, -1
  br label %for.cond101.i

for.cond101.i:                                    ; preds = %for.body104.i, %for.cond101.preheader.i
  %indvars.iv113.i = phi i64 [ 1, %for.cond101.preheader.i ], [ %indvars.iv.next114.i, %for.body104.i ]
  %exitcond117.not.i = icmp eq i64 %indvars.iv113.i, 119
  br i1 %exitcond117.not.i, label %for.cond97.i, label %for.body104.i, !llvm.loop !24

for.body104.i:                                    ; preds = %for.cond101.i
  %arrayidx111.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %arrayidx107.i, i64 0, i64 %indvars.iv118.i, i64 %indvars.iv113.i
  %21 = load double, ptr %arrayidx111.i, align 8, !tbaa !5
  %arrayidx117.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call1, i64 %indvars.iv123.i, i64 %indvars.iv118.i, i64 %indvars.iv113.i
  %22 = load double, ptr %arrayidx117.i, align 8, !tbaa !5
  %23 = tail call double @llvm.fmuladd.f64(double %22, double -2.000000e+00, double %21)
  %arrayidx124.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %arrayidx120.i, i64 0, i64 %indvars.iv118.i, i64 %indvars.iv113.i
  %24 = load double, ptr %arrayidx124.i, align 8, !tbaa !5
  %add125.i = fadd double %23, %24
  %arrayidx132.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call1, i64 %indvars.iv123.i, i64 %indvars.iv.next119.i, i64 %indvars.iv113.i
  %25 = load double, ptr %arrayidx132.i, align 8, !tbaa !5
  %26 = tail call double @llvm.fmuladd.f64(double %22, double -2.000000e+00, double %25)
  %arrayidx146.i = getelementptr inbounds [120 x [120 x double]], ptr %call1, i64 %indvars.iv123.i, i64 %20, i64 %indvars.iv113.i
  %27 = load double, ptr %arrayidx146.i, align 8, !tbaa !5
  %add147.i = fadd double %26, %27
  %mul148.i = fmul double %add147.i, 1.250000e-01
  %28 = tail call double @llvm.fmuladd.f64(double %add125.i, double 1.250000e-01, double %mul148.i)
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1
  %arrayidx155.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call1, i64 %indvars.iv123.i, i64 %indvars.iv118.i, i64 %indvars.iv.next114.i
  %29 = load double, ptr %arrayidx155.i, align 8, !tbaa !5
  %30 = tail call double @llvm.fmuladd.f64(double %22, double -2.000000e+00, double %29)
  %31 = add nsw i64 %indvars.iv113.i, -1
  %arrayidx168.i = getelementptr inbounds [120 x [120 x double]], ptr %call1, i64 %indvars.iv123.i, i64 %indvars.iv118.i, i64 %31
  %32 = load double, ptr %arrayidx168.i, align 8, !tbaa !5
  %add169.i = fadd double %30, %32
  %33 = tail call double @llvm.fmuladd.f64(double %add169.i, double 1.250000e-01, double %28)
  %add176.i = fadd double %22, %33
  %arrayidx182.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call, i64 %indvars.iv123.i, i64 %indvars.iv118.i, i64 %indvars.iv113.i
  store double %add176.i, ptr %arrayidx182.i, align 8, !tbaa !5
  br label %for.cond101.i, !llvm.loop !25

for.inc189.i:                                     ; preds = %for.cond97.i
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1
  br label %for.cond93.i, !llvm.loop !26

for.inc192.i:                                     ; preds = %for.cond93.i
  %inc193.i = add nuw nsw i32 %t.0.i, 1
  br label %for.cond.i7, !llvm.loop !27

kernel_heat_3d.exit:                              ; preds = %for.cond.i7
  %call.i14 = tail call fastcc double @rtclock()
  store double %call.i14, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_heat_3d.exit
  %34 = load ptr, ptr %argv, align 8, !tbaa !28
  %strcmpload = load i8, ptr %34, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_heat_3d.exit
  tail call void @free(ptr noundef nonnull %call) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %A) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc21 ], [ 0, %entry ]
  %exitcond27.not = icmp eq i64 %indvars.iv23, 120
  br i1 %exitcond27.not, label %for.end23, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %3 = mul nuw nsw i64 %indvars.iv23, 14400
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc18
  %indvars.iv17 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next18, %for.inc18 ]
  %exitcond22.not = icmp eq i64 %indvars.iv17, 120
  br i1 %exitcond22.not, label %for.inc21, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %4 = mul nuw nsw i64 %indvars.iv17, 120
  %5 = add nuw nsw i64 %4, %3
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, 120
  br i1 %exitcond.not, label %for.inc18, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %6 = add nuw nsw i64 %5, %indvars.iv
  %7 = trunc nuw nsw i64 %6 to i32
  %rem = urem i32 %7, 20
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx16 = getelementptr inbounds nuw [120 x [120 x double]], ptr %A, i64 %indvars.iv23, i64 %indvars.iv17, i64 %indvars.iv
  %10 = load double, ptr %arrayidx16, align 8, !tbaa !5
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5.10, double noundef %10) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !30

for.inc18:                                        ; preds = %for.cond5
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond2, !llvm.loop !31

for.inc21:                                        ; preds = %for.cond2
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond, !llvm.loop !32

for.end23:                                        ; preds = %for.cond
  %11 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %12 = load ptr, ptr @stderr, align 8, !tbaa !15
  %13 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %12) #12
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
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
