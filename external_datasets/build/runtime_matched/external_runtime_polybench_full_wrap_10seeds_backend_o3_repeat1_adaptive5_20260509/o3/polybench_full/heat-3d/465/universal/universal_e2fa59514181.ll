; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/root/exp/RFunipassLab/external_datasets/sources/polybench_full/utilities/polybench.c\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Error return from gettimeofday: %d\00", align 1
@polybench_inter_array_padding_sz = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.6 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3.8 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond
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

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #5 {
entry:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #5 {
entry:
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #8 {
entry:
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp.i) #17
  %call.i = call i32 @gettimeofday(ptr noundef nonnull align 8 captures(none) %Tp.i, ptr noundef null) #18
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i) #18
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2.i, double noundef 0x3EB0C6F7A0B5ED8D, double %conv.i) #19
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp.i) #18
  store double %2, ptr @polybench_t_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #8 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #9 {
entry:
  tail call void @free(ptr noundef captures(none) %ptr) #20
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #8 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #17
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #18
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(51) @.str.4) #18
  call void @exit(i32 noundef 1) #21
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #18
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #11 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1728000, i32 noundef 8) #18
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1728000, i32 noundef 8) #18
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.end21.i, %entry
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.end21.i ], [ 0, %entry ]
  %exitcond28.not.i = icmp eq i64 %indvars.iv24.i, 120
  br i1 %exitcond28.not.i, label %init_array.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = add nuw nsw i64 %indvars.iv24.i, 120
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.end.i, %for.cond1.preheader.i
  %indvars.iv19.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next20.i, %for.end.i ]
  %exitcond23.not.i = icmp eq i64 %indvars.iv19.i, 120
  br i1 %exitcond23.not.i, label %for.end21.i, label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.cond1.i
  %1 = add nuw nsw i64 %0, %indvars.iv19.i
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body6.i, %for.cond4.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond4.preheader.i ], [ %indvars.iv.next.i, %for.body6.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 120
  br i1 %exitcond.not.i, label %for.end.i, label %for.body6.i

for.body6.i:                                      ; preds = %for.cond4.i
  %2 = sub nuw nsw i64 %1, %indvars.iv.i
  %3 = trunc nuw nsw i64 %2 to i32
  %conv.i = sitofp i32 %3 to double
  %mul.i = fmul double %conv.i, 1.000000e+01
  %div.i = fdiv double %mul.i, 1.200000e+02
  %arrayidx12.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call1, i64 %indvars.iv24.i, i64 %indvars.iv19.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx12.i, align 8, !tbaa !11
  %arrayidx18.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call, i64 %indvars.iv24.i, i64 %indvars.iv19.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx18.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond4.i, !llvm.loop !15

for.end.i:                                        ; preds = %for.cond4.i
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  br label %for.cond1.i, !llvm.loop !17

for.end21.i:                                      ; preds = %for.cond1.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  br label %for.cond.i

init_array.exit:                                  ; preds = %for.cond.i
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %call, i64 115200
  %invariant.gep83.i = getelementptr i8, ptr %call, i64 -115200
  %invariant.gep85.i = getelementptr inbounds nuw i8, ptr %call1, i64 115200
  %invariant.gep87.i = getelementptr i8, ptr %call1, i64 -115200
  br label %for.cond.i4

for.cond.i4:                                      ; preds = %for.end191.i, %init_array.exit
  %t.0.i = phi i32 [ 1, %init_array.exit ], [ %inc.i1.i, %for.end191.i ]
  %exitcond114.not.i = icmp eq i32 %t.0.i, 501
  br i1 %exitcond114.not.i, label %kernel_heat_3d.exit, label %for.cond1.i5

for.cond1.i5:                                     ; preds = %for.cond.i4, %for.end89.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %for.end89.i ], [ 1, %for.cond.i4 ]
  %exitcond99.not.i = icmp eq i64 %indvars.iv96.i, 119
  br i1 %exitcond99.not.i, label %for.cond93.i, label %for.cond4.i6

for.cond4.i6:                                     ; preds = %for.cond8.i, %for.cond1.i5
  %indvars.iv91.i = phi i64 [ 1, %for.cond1.i5 ], [ %indvars.iv.next92.i, %for.cond8.i ]
  %exitcond95.not.i = icmp eq i64 %indvars.iv91.i, 119
  br i1 %exitcond95.not.i, label %for.end89.i, label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.cond4.i6
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 1
  %4 = add nsw i64 %indvars.iv91.i, -1
  br label %for.cond8.i

for.cond8.i:                                      ; preds = %for.body11.i, %for.cond8.preheader.i
  %indvars.iv.i7 = phi i64 [ 1, %for.cond8.preheader.i ], [ %indvars.iv.next.i9, %for.body11.i ]
  %exitcond.not.i8 = icmp eq i64 %indvars.iv.i7, 119
  br i1 %exitcond.not.i8, label %for.cond4.i6, label %for.body11.i, !llvm.loop !18

for.body11.i:                                     ; preds = %for.cond8.i
  %arrayidx15.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %invariant.gep.i, i64 %indvars.iv96.i, i64 %indvars.iv91.i, i64 %indvars.iv.i7
  %5 = load double, ptr %arrayidx15.i, align 8, !tbaa !11, !invariant.load !19
  %arrayidx21.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call, i64 %indvars.iv96.i, i64 %indvars.iv91.i, i64 %indvars.iv.i7
  %6 = load double, ptr %arrayidx21.i, align 8, !tbaa !11, !invariant.load !19
  %7 = tail call double @llvm.fmuladd.f64(double noundef %6, double -2.000000e+00, double %5) #22
  %arrayidx28.i = getelementptr [120 x [120 x double]], ptr %invariant.gep83.i, i64 %indvars.iv96.i, i64 %indvars.iv91.i, i64 %indvars.iv.i7
  %8 = load double, ptr %arrayidx28.i, align 8, !tbaa !11, !invariant.load !19
  %add29.i = fadd double %7, %8
  %arrayidx36.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call, i64 %indvars.iv96.i, i64 %indvars.iv.next92.i, i64 %indvars.iv.i7
  %9 = load double, ptr %arrayidx36.i, align 8, !tbaa !11, !invariant.load !19
  %10 = tail call double @llvm.fmuladd.f64(double noundef %6, double -2.000000e+00, double %9) #22
  %arrayidx50.i = getelementptr inbounds [120 x [120 x double]], ptr %call, i64 %indvars.iv96.i, i64 %4, i64 %indvars.iv.i7
  %11 = load double, ptr %arrayidx50.i, align 8, !tbaa !11, !invariant.load !19
  %add51.i = fadd double %10, %11
  %mul52.i = fmul double %add51.i, 1.250000e-01
  %12 = tail call double @llvm.fmuladd.f64(double noundef %add29.i, double 1.250000e-01, double %mul52.i) #22
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i7, 1
  %arrayidx59.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call, i64 %indvars.iv96.i, i64 %indvars.iv91.i, i64 %indvars.iv.next.i9
  %13 = load double, ptr %arrayidx59.i, align 8, !tbaa !11, !invariant.load !19
  %14 = tail call double @llvm.fmuladd.f64(double noundef %6, double -2.000000e+00, double %13) #22
  %15 = add nsw i64 %indvars.iv.i7, -1
  %arrayidx72.i = getelementptr inbounds [120 x [120 x double]], ptr %call, i64 %indvars.iv96.i, i64 %indvars.iv91.i, i64 %15
  %16 = load double, ptr %arrayidx72.i, align 8, !tbaa !11, !invariant.load !19
  %add73.i = fadd double %14, %16
  %17 = tail call double @llvm.fmuladd.f64(double noundef %add73.i, double 1.250000e-01, double %12) #22
  %add80.i = fadd double %6, %17
  %arrayidx86.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call1, i64 %indvars.iv96.i, i64 %indvars.iv91.i, i64 %indvars.iv.i7
  store double %add80.i, ptr %arrayidx86.i, align 8, !tbaa !11
  br label %for.cond8.i, !llvm.loop !20

for.end89.i:                                      ; preds = %for.cond4.i6
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1
  br label %for.cond1.i5

for.cond93.i:                                     ; preds = %for.cond1.i5, %for.end188.i
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %for.end188.i ], [ 1, %for.cond1.i5 ]
  %exitcond113.not.i = icmp eq i64 %indvars.iv110.i, 119
  br i1 %exitcond113.not.i, label %for.end191.i, label %for.cond97.i

for.cond97.i:                                     ; preds = %for.cond101.i, %for.cond93.i
  %indvars.iv105.i = phi i64 [ 1, %for.cond93.i ], [ %indvars.iv.next106.i, %for.cond101.i ]
  %exitcond109.not.i = icmp eq i64 %indvars.iv105.i, 119
  br i1 %exitcond109.not.i, label %for.end188.i, label %for.cond101.preheader.i

for.cond101.preheader.i:                          ; preds = %for.cond97.i
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1
  %18 = add nsw i64 %indvars.iv105.i, -1
  br label %for.cond101.i

for.cond101.i:                                    ; preds = %for.body104.i, %for.cond101.preheader.i
  %indvars.iv100.i = phi i64 [ 1, %for.cond101.preheader.i ], [ %indvars.iv.next101.i, %for.body104.i ]
  %exitcond104.not.i = icmp eq i64 %indvars.iv100.i, 119
  br i1 %exitcond104.not.i, label %for.cond97.i, label %for.body104.i, !llvm.loop !21

for.body104.i:                                    ; preds = %for.cond101.i
  %arrayidx111.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %invariant.gep85.i, i64 %indvars.iv110.i, i64 %indvars.iv105.i, i64 %indvars.iv100.i
  %19 = load double, ptr %arrayidx111.i, align 8, !tbaa !11, !invariant.load !19
  %arrayidx117.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call1, i64 %indvars.iv110.i, i64 %indvars.iv105.i, i64 %indvars.iv100.i
  %20 = load double, ptr %arrayidx117.i, align 8, !tbaa !11, !invariant.load !19
  %21 = tail call double @llvm.fmuladd.f64(double noundef %20, double -2.000000e+00, double %19) #22
  %arrayidx124.i = getelementptr [120 x [120 x double]], ptr %invariant.gep87.i, i64 %indvars.iv110.i, i64 %indvars.iv105.i, i64 %indvars.iv100.i
  %22 = load double, ptr %arrayidx124.i, align 8, !tbaa !11, !invariant.load !19
  %add125.i = fadd double %21, %22
  %arrayidx132.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call1, i64 %indvars.iv110.i, i64 %indvars.iv.next106.i, i64 %indvars.iv100.i
  %23 = load double, ptr %arrayidx132.i, align 8, !tbaa !11, !invariant.load !19
  %24 = tail call double @llvm.fmuladd.f64(double noundef %20, double -2.000000e+00, double %23) #22
  %arrayidx146.i = getelementptr inbounds [120 x [120 x double]], ptr %call1, i64 %indvars.iv110.i, i64 %18, i64 %indvars.iv100.i
  %25 = load double, ptr %arrayidx146.i, align 8, !tbaa !11, !invariant.load !19
  %add147.i = fadd double %24, %25
  %mul148.i = fmul double %add147.i, 1.250000e-01
  %26 = tail call double @llvm.fmuladd.f64(double noundef %add125.i, double 1.250000e-01, double %mul148.i) #22
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1
  %arrayidx155.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call1, i64 %indvars.iv110.i, i64 %indvars.iv105.i, i64 %indvars.iv.next101.i
  %27 = load double, ptr %arrayidx155.i, align 8, !tbaa !11, !invariant.load !19
  %28 = tail call double @llvm.fmuladd.f64(double noundef %20, double -2.000000e+00, double %27) #22
  %29 = add nsw i64 %indvars.iv100.i, -1
  %arrayidx168.i = getelementptr inbounds [120 x [120 x double]], ptr %call1, i64 %indvars.iv110.i, i64 %indvars.iv105.i, i64 %29
  %30 = load double, ptr %arrayidx168.i, align 8, !tbaa !11, !invariant.load !19
  %add169.i = fadd double %28, %30
  %31 = tail call double @llvm.fmuladd.f64(double noundef %add169.i, double 1.250000e-01, double %26) #22
  %add176.i = fadd double %20, %31
  %arrayidx182.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %call, i64 %indvars.iv110.i, i64 %indvars.iv105.i, i64 %indvars.iv100.i
  store double %add176.i, ptr %arrayidx182.i, align 8, !tbaa !11
  br label %for.cond101.i, !llvm.loop !22

for.end188.i:                                     ; preds = %for.cond97.i
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1
  br label %for.cond93.i, !llvm.loop !23

for.end191.i:                                     ; preds = %for.cond93.i
  %inc.i1.i = add nuw nsw i32 %t.0.i, 1
  br label %for.cond.i4

kernel_heat_3d.exit:                              ; preds = %for.cond.i4
  tail call void @polybench_timer_stop() #18
  tail call void @polybench_timer_print() #18
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_heat_3d.exit
  %32 = load ptr, ptr %argv, align 8, !tbaa !24, !invariant.load !19
  %strcmpload = load i8, ptr %32, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 120, ptr nofree noundef readonly captures(none) %call) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_heat_3d.exit
  tail call void @free(ptr noundef %call) #23
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(i32 noundef %n, ptr nofree noundef readonly captures(none) %A) unnamed_addr #13 {
entry:
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.1.6) #18
  %0 = load ptr, ptr @stderr, align 8, !tbaa !26
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #24
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count27 = zext nneg i32 %smax to i64
  %wide.trip.count21 = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end20, %entry
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.end20 ], [ 0, %entry ]
  %exitcond28.not = icmp eq i64 %indvars.iv23, %wide.trip.count27
  br i1 %exitcond28.not, label %for.end23, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %1 = trunc i64 %indvars.iv23 to i32
  %2 = mul i32 %n, %1
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.end
  %indvars.iv18 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next19, %for.end ]
  %exitcond22.not = icmp eq i64 %indvars.iv18, %wide.trip.count21
  br i1 %exitcond22.not, label %for.end20, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %3 = trunc nuw nsw i64 %indvars.iv18 to i32
  %mul815 = add i32 %2, %3
  %add = mul i32 %mul815, %n
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count21
  br i1 %exitcond.not, label %for.end, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %4 = trunc i64 %indvars.iv to i32
  %5 = add i32 %add, %4
  %rem = srem i32 %5, 20
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.4.9) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %6 = load ptr, ptr @stderr, align 8, !tbaa !26
  %arrayidx16 = getelementptr inbounds nuw [120 x [120 x double]], ptr %A, i64 %indvars.iv23, i64 %indvars.iv18, i64 %indvars.iv
  %7 = load double, ptr %arrayidx16, align 8, !tbaa !11, !invariant.load !19
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.5.10, double noundef %7) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !28

for.end:                                          ; preds = %for.cond5
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond2, !llvm.loop !29

for.end20:                                        ; preds = %for.cond2
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond

for.end23:                                        ; preds = %for.cond
  %8 = load ptr, ptr @stderr, align 8, !tbaa !26
  %call24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #24
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.7) #18
  ret void
}

; Function Attrs: cold minsize nofree nounwind optsize uwtable
define internal void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) %0) #14 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !26
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull readonly captures(none) dereferenceable(2) %0) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold minsize nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind willreturn memory(readwrite) }
attributes #18 = { nofree nounwind }
attributes #19 = { nofree }
attributes #20 = { nounwind willreturn }
attributes #21 = { cold nofree noreturn nounwind }
attributes #22 = { nofree nosync }
attributes #23 = { nounwind }
attributes #24 = { cold nofree nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !7, i64 0}
!6 = !{!"timeval", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = !{}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 omnipotent char", !14, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
