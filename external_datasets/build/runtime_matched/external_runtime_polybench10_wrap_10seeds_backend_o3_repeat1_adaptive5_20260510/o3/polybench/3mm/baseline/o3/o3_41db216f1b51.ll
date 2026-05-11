; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"G\00", align 1
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
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #11
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #11
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i)
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #11
  store double %2, ptr @polybench_t_start, align 8, !tbaa !11
  ret void
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
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #11
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #11
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i)
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #11
  store double %2, ptr @polybench_t_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #3 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
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
  %Tp.i.i76 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i55 = alloca ptr, align 8
  %ret.i.i48 = alloca ptr, align 8
  %ret.i.i41 = alloca ptr, align 8
  %ret.i.i34 = alloca ptr, align 8
  %ret.i.i27 = alloca ptr, align 8
  %ret.i.i20 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #11
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 5760000) #11
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i20) #11
  store ptr null, ptr %ret.i.i20, align 8, !tbaa !13
  %call.i.i21 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i20, i64 noundef 4096, i64 noundef 6400000) #11
  %3 = load ptr, ptr %ret.i.i20, align 8, !tbaa !13
  %tobool.i.i22 = icmp eq ptr %3, null
  %tobool2.i.i23 = icmp ne i32 %call.i.i21, 0
  %or.cond.i.i24 = select i1 %tobool.i.i22, i1 true, i1 %tobool2.i.i23
  br i1 %or.cond.i.i24, label %if.then.i.i25, label %polybench_alloc_data.exit26

if.then.i.i25:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit26:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i20) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i27) #11
  store ptr null, ptr %ret.i.i27, align 8, !tbaa !13
  %call.i.i28 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i27, i64 noundef 4096, i64 noundef 7200000) #11
  %6 = load ptr, ptr %ret.i.i27, align 8, !tbaa !13
  %tobool.i.i29 = icmp eq ptr %6, null
  %tobool2.i.i30 = icmp ne i32 %call.i.i28, 0
  %or.cond.i.i31 = select i1 %tobool.i.i29, i1 true, i1 %tobool2.i.i30
  br i1 %or.cond.i.i31, label %if.then.i.i32, label %polybench_alloc_data.exit33

if.then.i.i32:                                    ; preds = %polybench_alloc_data.exit26
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %7) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit33:                      ; preds = %polybench_alloc_data.exit26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i27) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i34) #11
  store ptr null, ptr %ret.i.i34, align 8, !tbaa !13
  %call.i.i35 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i34, i64 noundef 4096, i64 noundef 7920000) #11
  %9 = load ptr, ptr %ret.i.i34, align 8, !tbaa !13
  %tobool.i.i36 = icmp eq ptr %9, null
  %tobool2.i.i37 = icmp ne i32 %call.i.i35, 0
  %or.cond.i.i38 = select i1 %tobool.i.i36, i1 true, i1 %tobool2.i.i37
  br i1 %or.cond.i.i38, label %if.then.i.i39, label %polybench_alloc_data.exit40

if.then.i.i39:                                    ; preds = %polybench_alloc_data.exit33
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %10) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit40:                      ; preds = %polybench_alloc_data.exit33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i34) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i41) #11
  store ptr null, ptr %ret.i.i41, align 8, !tbaa !13
  %call.i.i42 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i41, i64 noundef 4096, i64 noundef 8640000) #11
  %12 = load ptr, ptr %ret.i.i41, align 8, !tbaa !13
  %tobool.i.i43 = icmp eq ptr %12, null
  %tobool2.i.i44 = icmp ne i32 %call.i.i42, 0
  %or.cond.i.i45 = select i1 %tobool.i.i43, i1 true, i1 %tobool2.i.i44
  br i1 %or.cond.i.i45, label %if.then.i.i46, label %polybench_alloc_data.exit47

if.then.i.i46:                                    ; preds = %polybench_alloc_data.exit40
  %13 = load ptr, ptr @stderr, align 8, !tbaa !15
  %14 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %13) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit47:                      ; preds = %polybench_alloc_data.exit40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i41) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i48) #11
  store ptr null, ptr %ret.i.i48, align 8, !tbaa !13
  %call.i.i49 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i48, i64 noundef 4096, i64 noundef 10560000) #11
  %15 = load ptr, ptr %ret.i.i48, align 8, !tbaa !13
  %tobool.i.i50 = icmp eq ptr %15, null
  %tobool2.i.i51 = icmp ne i32 %call.i.i49, 0
  %or.cond.i.i52 = select i1 %tobool.i.i50, i1 true, i1 %tobool2.i.i51
  br i1 %or.cond.i.i52, label %if.then.i.i53, label %polybench_alloc_data.exit54

if.then.i.i53:                                    ; preds = %polybench_alloc_data.exit47
  %16 = load ptr, ptr @stderr, align 8, !tbaa !15
  %17 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %16) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit54:                      ; preds = %polybench_alloc_data.exit47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i48) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i55) #11
  store ptr null, ptr %ret.i.i55, align 8, !tbaa !13
  %call.i.i56 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i55, i64 noundef 4096, i64 noundef 7040000) #11
  %18 = load ptr, ptr %ret.i.i55, align 8, !tbaa !13
  %tobool.i.i57 = icmp eq ptr %18, null
  %tobool2.i.i58 = icmp ne i32 %call.i.i56, 0
  %or.cond.i.i59 = select i1 %tobool.i.i57, i1 true, i1 %tobool2.i.i58
  br i1 %or.cond.i.i59, label %if.then.i.i60, label %polybench_alloc_data.exit61

if.then.i.i60:                                    ; preds = %polybench_alloc_data.exit54
  %19 = load ptr, ptr @stderr, align 8, !tbaa !15
  %20 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %19) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit61:                      ; preds = %polybench_alloc_data.exit54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i55) #11
  br label %vector.ph

vector.ph:                                        ; preds = %polybench_alloc_data.exit61, %for.inc8.i
  %indvars.iv53.i = phi i64 [ 0, %polybench_alloc_data.exit61 ], [ %indvars.iv.next54.i, %for.inc8.i ]
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv53.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %21 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %22 = trunc <2 x i64> %21 to <2 x i32>
  %23 = add <2 x i32> %22, splat (i32 1)
  %24 = urem <2 x i32> %23, splat (i32 800)
  %25 = uitofp nneg <2 x i32> %24 to <2 x double>
  %26 = fdiv <2 x double> %25, splat (double 4.000000e+03)
  %27 = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %indvars.iv53.i, i64 %index
  store <2 x double> %26, ptr %27, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %28 = icmp eq i64 %index.next, 1000
  br i1 %28, label %for.inc8.i, label %vector.body, !llvm.loop !17

for.inc8.i:                                       ; preds = %vector.body
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, 800
  br i1 %exitcond56.not.i, label %vector.ph85, label %vector.ph, !llvm.loop !21

vector.ph85:                                      ; preds = %for.inc8.i, %for.inc34.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %for.inc34.i ], [ 0, %for.inc8.i ]
  %broadcast.splatinsert86 = insertelement <2 x i64> poison, i64 %indvars.iv63.i, i64 0
  %broadcast.splat87 = shufflevector <2 x i64> %broadcast.splatinsert86, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph85
  %index89 = phi i64 [ 0, %vector.ph85 ], [ %index.next91, %vector.body88 ]
  %vec.ind90 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph85 ], [ %vec.ind.next92, %vector.body88 ]
  %29 = add nuw nsw <2 x i64> %vec.ind90, splat (i64 1)
  %30 = mul nuw nsw <2 x i64> %29, %broadcast.splat87
  %31 = trunc <2 x i64> %30 to <2 x i32>
  %32 = add <2 x i32> %31, splat (i32 2)
  %33 = urem <2 x i32> %32, splat (i32 900)
  %34 = uitofp nneg <2 x i32> %33 to <2 x double>
  %35 = fdiv <2 x double> %34, splat (double 4.500000e+03)
  %36 = getelementptr inbounds nuw [900 x double], ptr %6, i64 %indvars.iv63.i, i64 %index89
  store <2 x double> %35, ptr %36, align 8, !tbaa !11
  %index.next91 = add nuw i64 %index89, 2
  %vec.ind.next92 = add <2 x i64> %vec.ind90, splat (i64 2)
  %37 = icmp eq i64 %index.next91, 900
  br i1 %37, label %for.inc34.i, label %vector.body88, !llvm.loop !22

for.inc34.i:                                      ; preds = %vector.body88
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next64.i, 1000
  br i1 %exitcond66.not.i, label %vector.ph96, label %vector.ph85, !llvm.loop !23

vector.ph96:                                      ; preds = %for.inc34.i, %for.inc59.i
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i, %for.inc59.i ], [ 0, %for.inc34.i ]
  %broadcast.splatinsert97 = insertelement <2 x i64> poison, i64 %indvars.iv73.i, i64 0
  %broadcast.splat98 = shufflevector <2 x i64> %broadcast.splatinsert97, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph96
  %index100 = phi i64 [ 0, %vector.ph96 ], [ %index.next102, %vector.body99 ]
  %vec.ind101 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph96 ], [ %vec.ind.next103, %vector.body99 ]
  %38 = add nuw nsw <2 x i64> %vec.ind101, splat (i64 3)
  %39 = mul nuw nsw <2 x i64> %38, %broadcast.splat98
  %40 = trunc nuw nsw <2 x i64> %39 to <2 x i32>
  %41 = urem <2 x i32> %40, splat (i32 1100)
  %42 = uitofp nneg <2 x i32> %41 to <2 x double>
  %43 = fdiv <2 x double> %42, splat (double 5.500000e+03)
  %44 = getelementptr inbounds nuw [1200 x double], ptr %12, i64 %indvars.iv73.i, i64 %index100
  store <2 x double> %43, ptr %44, align 8, !tbaa !11
  %index.next102 = add nuw i64 %index100, 2
  %vec.ind.next103 = add <2 x i64> %vec.ind101, splat (i64 2)
  %45 = icmp eq i64 %index.next102, 1200
  br i1 %45, label %for.inc59.i, label %vector.body99, !llvm.loop !24

for.inc59.i:                                      ; preds = %vector.body99
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next74.i, 900
  br i1 %exitcond76.not.i, label %vector.ph107, label %vector.ph96, !llvm.loop !25

vector.ph107:                                     ; preds = %for.inc59.i, %for.inc85.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %for.inc85.i ], [ 0, %for.inc59.i ]
  %broadcast.splatinsert108 = insertelement <2 x i64> poison, i64 %indvars.iv84.i, i64 0
  %broadcast.splat109 = shufflevector <2 x i64> %broadcast.splatinsert108, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next113, %vector.body110 ]
  %vec.ind112 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph107 ], [ %vec.ind.next114, %vector.body110 ]
  %46 = add nuw nsw <2 x i64> %vec.ind112, splat (i64 2)
  %47 = mul nuw nsw <2 x i64> %46, %broadcast.splat109
  %48 = trunc <2 x i64> %47 to <2 x i32>
  %49 = add <2 x i32> %48, splat (i32 2)
  %50 = urem <2 x i32> %49, splat (i32 1000)
  %51 = uitofp nneg <2 x i32> %50 to <2 x double>
  %52 = fdiv <2 x double> %51, splat (double 5.000000e+03)
  %53 = getelementptr inbounds nuw [1100 x double], ptr %15, i64 %indvars.iv84.i, i64 %index111
  store <2 x double> %52, ptr %53, align 8, !tbaa !11
  %index.next113 = add nuw i64 %index111, 2
  %vec.ind.next114 = add <2 x i64> %vec.ind112, splat (i64 2)
  %54 = icmp eq i64 %index.next113, 1100
  br i1 %54, label %for.inc85.i, label %vector.body110, !llvm.loop !26

for.inc85.i:                                      ; preds = %vector.body110
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1
  %exitcond87.not.i = icmp eq i64 %indvars.iv.next85.i, 1200
  br i1 %exitcond87.not.i, label %init_array.exit, label %vector.ph107, !llvm.loop !27

init_array.exit:                                  ; preds = %for.inc85.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #11
  %call.i.i62 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #11
  %cmp.not.i.i = icmp eq i32 %call.i.i62, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i63

if.then.i.i63:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i62)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i63
  %55 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %55 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %56 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %56 to double
  %57 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #11
  store double %57, ptr @polybench_t_start, align 8, !tbaa !11
  br label %for.cond1.preheader.i64

for.cond1.preheader.i64:                          ; preds = %for.inc24.i, %polybench_timer_start.exit
  %indvars.iv63.i65 = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next64.i71, %for.inc24.i ]
  br label %for.body3.i66

for.body3.i66:                                    ; preds = %for.inc21.i, %for.cond1.preheader.i64
  %indvars.iv59.i = phi i64 [ 0, %for.cond1.preheader.i64 ], [ %indvars.iv.next60.i, %for.inc21.i ]
  %arrayidx5.i = getelementptr inbounds nuw [900 x double], ptr %0, i64 %indvars.iv63.i65, i64 %indvars.iv59.i
  store double 0.000000e+00, ptr %arrayidx5.i, align 8, !tbaa !11
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i, %for.body3.i66
  %indvars.iv.i67 = phi i64 [ 0, %for.body3.i66 ], [ %indvars.iv.next.i68, %for.body8.i ]
  %58 = phi double [ 0.000000e+00, %for.body3.i66 ], [ %61, %for.body8.i ]
  %arrayidx12.i = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %indvars.iv63.i65, i64 %indvars.iv.i67
  %59 = load double, ptr %arrayidx12.i, align 8, !tbaa !11
  %arrayidx16.i = getelementptr inbounds nuw [900 x double], ptr %6, i64 %indvars.iv.i67, i64 %indvars.iv59.i
  %60 = load double, ptr %arrayidx16.i, align 8, !tbaa !11
  %61 = call double @llvm.fmuladd.f64(double %59, double %60, double %58)
  store double %61, ptr %arrayidx5.i, align 8, !tbaa !11
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i67, 1
  %exitcond.not.i69 = icmp eq i64 %indvars.iv.next.i68, 1000
  br i1 %exitcond.not.i69, label %for.inc21.i, label %for.body8.i, !llvm.loop !28

for.inc21.i:                                      ; preds = %for.body8.i
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1
  %exitcond62.not.i70 = icmp eq i64 %indvars.iv.next60.i, 900
  br i1 %exitcond62.not.i70, label %for.inc24.i, label %for.body3.i66, !llvm.loop !29

for.inc24.i:                                      ; preds = %for.inc21.i
  %indvars.iv.next64.i71 = add nuw nsw i64 %indvars.iv63.i65, 1
  %exitcond66.not.i72 = icmp eq i64 %indvars.iv.next64.i71, 800
  br i1 %exitcond66.not.i72, label %for.cond30.preheader.i, label %for.cond1.preheader.i64, !llvm.loop !30

for.cond30.preheader.i:                           ; preds = %for.inc24.i, %for.inc58.i
  %indvars.iv75.i = phi i64 [ %indvars.iv.next76.i, %for.inc58.i ], [ 0, %for.inc24.i ]
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.inc55.i, %for.cond30.preheader.i
  %indvars.iv71.i = phi i64 [ 0, %for.cond30.preheader.i ], [ %indvars.iv.next72.i, %for.inc55.i ]
  %arrayidx36.i = getelementptr inbounds nuw [1100 x double], ptr %9, i64 %indvars.iv75.i, i64 %indvars.iv71.i
  store double 0.000000e+00, ptr %arrayidx36.i, align 8, !tbaa !11
  br label %for.body39.i

for.body39.i:                                     ; preds = %for.body39.i, %for.body32.i
  %indvars.iv67.i73 = phi i64 [ 0, %for.body32.i ], [ %indvars.iv.next68.i74, %for.body39.i ]
  %62 = phi double [ 0.000000e+00, %for.body32.i ], [ %65, %for.body39.i ]
  %arrayidx43.i = getelementptr inbounds nuw [1200 x double], ptr %12, i64 %indvars.iv75.i, i64 %indvars.iv67.i73
  %63 = load double, ptr %arrayidx43.i, align 8, !tbaa !11
  %arrayidx47.i = getelementptr inbounds nuw [1100 x double], ptr %15, i64 %indvars.iv67.i73, i64 %indvars.iv71.i
  %64 = load double, ptr %arrayidx47.i, align 8, !tbaa !11
  %65 = call double @llvm.fmuladd.f64(double %63, double %64, double %62)
  store double %65, ptr %arrayidx36.i, align 8, !tbaa !11
  %indvars.iv.next68.i74 = add nuw nsw i64 %indvars.iv67.i73, 1
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next68.i74, 1200
  br i1 %exitcond70.not.i, label %for.inc55.i, label %for.body39.i, !llvm.loop !31

for.inc55.i:                                      ; preds = %for.body39.i
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next72.i, 1100
  br i1 %exitcond74.not.i, label %for.inc58.i, label %for.body32.i, !llvm.loop !32

for.inc58.i:                                      ; preds = %for.inc55.i
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next76.i, 900
  br i1 %exitcond78.not.i, label %for.cond64.preheader.i, label %for.cond30.preheader.i, !llvm.loop !33

for.cond64.preheader.i:                           ; preds = %for.inc58.i, %for.inc92.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %for.inc92.i ], [ 0, %for.inc58.i ]
  br label %for.body66.i

for.body66.i:                                     ; preds = %for.inc89.i, %for.cond64.preheader.i
  %indvars.iv83.i = phi i64 [ 0, %for.cond64.preheader.i ], [ %indvars.iv.next84.i, %for.inc89.i ]
  %arrayidx70.i = getelementptr inbounds nuw [1100 x double], ptr %18, i64 %indvars.iv87.i, i64 %indvars.iv83.i
  store double 0.000000e+00, ptr %arrayidx70.i, align 8, !tbaa !11
  br label %for.body73.i

for.body73.i:                                     ; preds = %for.body73.i, %for.body66.i
  %indvars.iv79.i = phi i64 [ 0, %for.body66.i ], [ %indvars.iv.next80.i, %for.body73.i ]
  %66 = phi double [ 0.000000e+00, %for.body66.i ], [ %69, %for.body73.i ]
  %arrayidx77.i = getelementptr inbounds nuw [900 x double], ptr %0, i64 %indvars.iv87.i, i64 %indvars.iv79.i
  %67 = load double, ptr %arrayidx77.i, align 8, !tbaa !11
  %arrayidx81.i75 = getelementptr inbounds nuw [1100 x double], ptr %9, i64 %indvars.iv79.i, i64 %indvars.iv83.i
  %68 = load double, ptr %arrayidx81.i75, align 8, !tbaa !11
  %69 = call double @llvm.fmuladd.f64(double %67, double %68, double %66)
  store double %69, ptr %arrayidx70.i, align 8, !tbaa !11
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next80.i, 900
  br i1 %exitcond82.not.i, label %for.inc89.i, label %for.body73.i, !llvm.loop !34

for.inc89.i:                                      ; preds = %for.body73.i
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next84.i, 1100
  br i1 %exitcond86.not.i, label %for.inc92.i, label %for.body66.i, !llvm.loop !35

for.inc92.i:                                      ; preds = %for.inc89.i
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1
  %exitcond90.not.i = icmp eq i64 %indvars.iv.next88.i, 800
  br i1 %exitcond90.not.i, label %kernel_3mm.exit, label %for.cond64.preheader.i, !llvm.loop !36

kernel_3mm.exit:                                  ; preds = %for.inc92.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i76) #11
  %call.i.i77 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i76, ptr noundef null) #11
  %cmp.not.i.i78 = icmp eq i32 %call.i.i77, 0
  br i1 %cmp.not.i.i78, label %polybench_timer_stop.exit, label %if.then.i.i79

if.then.i.i79:                                    ; preds = %kernel_3mm.exit
  %call1.i.i80 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i77)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_3mm.exit, %if.then.i.i79
  %70 = load i64, ptr %Tp.i.i76, align 8, !tbaa !5
  %conv.i.i81 = sitofp i64 %70 to double
  %tv_usec.i.i82 = getelementptr inbounds nuw i8, ptr %Tp.i.i76, i64 8
  %71 = load i64, ptr %tv_usec.i.i82, align 8, !tbaa !10
  %conv2.i.i83 = sitofp i64 %71 to double
  %72 = call double @llvm.fmuladd.f64(double %conv2.i.i83, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i81)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i76) #11
  store double %72, ptr @polybench_t_end, align 8, !tbaa !11
  %73 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %72, %73
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %74 = load ptr, ptr %argv, align 8, !tbaa !37
  %strcmpload = load i8, ptr %74, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #11
  call void @free(ptr noundef %3) #11
  call void @free(ptr noundef %6) #11
  call void @free(ptr noundef nonnull %9) #11
  call void @free(ptr noundef %12) #11
  call void @free(ptr noundef %15) #11
  call void @free(ptr noundef nonnull %18) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %G) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv12 = phi i64 [ 0, %entry ], [ %indvars.iv.next13, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv12, 800
  br label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ]
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
  %arrayidx8 = getelementptr inbounds nuw [1100 x double], ptr %G, i64 %indvars.iv12, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1100
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !39

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond16.not = icmp eq i64 %indvars.iv.next13, 800
  br i1 %exitcond16.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !40

for.end12:                                        ; preds = %for.inc10
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #12
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
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!17 = distinct !{!17, !18, !19, !20}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18, !19, !20}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18, !19, !20}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18, !19, !20}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 omnipotent char", !14, i64 0}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
