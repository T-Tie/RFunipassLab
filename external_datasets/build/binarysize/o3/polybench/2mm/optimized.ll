; ModuleID = '<stdin>'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"D\00", align 1
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
  %Tp.i.i56 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i38 = alloca ptr, align 8
  %ret.i.i31 = alloca ptr, align 8
  %ret.i.i24 = alloca ptr, align 8
  %ret.i.i17 = alloca ptr, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i17) #11
  store ptr null, ptr %ret.i.i17, align 8, !tbaa !13
  %call.i.i18 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i17, i64 noundef 4096, i64 noundef 7040000) #11
  %3 = load ptr, ptr %ret.i.i17, align 8, !tbaa !13
  %tobool.i.i19 = icmp eq ptr %3, null
  %tobool2.i.i20 = icmp ne i32 %call.i.i18, 0
  %or.cond.i.i21 = select i1 %tobool.i.i19, i1 true, i1 %tobool2.i.i20
  br i1 %or.cond.i.i21, label %if.then.i.i22, label %polybench_alloc_data.exit23

if.then.i.i22:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit23:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i17) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i24) #11
  store ptr null, ptr %ret.i.i24, align 8, !tbaa !13
  %call.i.i25 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i24, i64 noundef 4096, i64 noundef 7920000) #11
  %6 = load ptr, ptr %ret.i.i24, align 8, !tbaa !13
  %tobool.i.i26 = icmp eq ptr %6, null
  %tobool2.i.i27 = icmp ne i32 %call.i.i25, 0
  %or.cond.i.i28 = select i1 %tobool.i.i26, i1 true, i1 %tobool2.i.i27
  br i1 %or.cond.i.i28, label %if.then.i.i29, label %polybench_alloc_data.exit30

if.then.i.i29:                                    ; preds = %polybench_alloc_data.exit23
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %7) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit30:                      ; preds = %polybench_alloc_data.exit23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i31) #11
  store ptr null, ptr %ret.i.i31, align 8, !tbaa !13
  %call.i.i32 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i31, i64 noundef 4096, i64 noundef 8640000) #11
  %9 = load ptr, ptr %ret.i.i31, align 8, !tbaa !13
  %tobool.i.i33 = icmp eq ptr %9, null
  %tobool2.i.i34 = icmp ne i32 %call.i.i32, 0
  %or.cond.i.i35 = select i1 %tobool.i.i33, i1 true, i1 %tobool2.i.i34
  br i1 %or.cond.i.i35, label %if.then.i.i36, label %polybench_alloc_data.exit37

if.then.i.i36:                                    ; preds = %polybench_alloc_data.exit30
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %10) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit37:                      ; preds = %polybench_alloc_data.exit30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i31) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i38) #11
  store ptr null, ptr %ret.i.i38, align 8, !tbaa !13
  %call.i.i39 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i38, i64 noundef 4096, i64 noundef 7680000) #11
  %12 = load ptr, ptr %ret.i.i38, align 8, !tbaa !13
  %tobool.i.i40 = icmp eq ptr %12, null
  %tobool2.i.i41 = icmp ne i32 %call.i.i39, 0
  %or.cond.i.i42 = select i1 %tobool.i.i40, i1 true, i1 %tobool2.i.i41
  br i1 %or.cond.i.i42, label %if.then.i.i43, label %polybench_alloc_data.exit44

if.then.i.i43:                                    ; preds = %polybench_alloc_data.exit37
  %13 = load ptr, ptr @stderr, align 8, !tbaa !15
  %14 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %13) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit44:                      ; preds = %polybench_alloc_data.exit37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i38) #11
  br label %vector.ph

vector.ph:                                        ; preds = %polybench_alloc_data.exit44, %for.inc7.i
  %indvars.iv54.i = phi i64 [ 0, %polybench_alloc_data.exit44 ], [ %indvars.iv.next55.i, %for.inc7.i ]
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv54.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %15 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %16 = trunc <2 x i64> %15 to <2 x i32>
  %17 = add <2 x i32> %16, splat (i32 1)
  %18 = urem <2 x i32> %17, splat (i32 800)
  %19 = uitofp nneg <2 x i32> %18 to <2 x double>
  %20 = fdiv <2 x double> %19, splat (double 8.000000e+02)
  %21 = getelementptr inbounds nuw [1100 x double], ptr %3, i64 %indvars.iv54.i, i64 %index
  store <2 x double> %20, ptr %21, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %22 = icmp eq i64 %index.next, 1100
  br i1 %22, label %for.inc7.i, label %vector.body, !llvm.loop !17

for.inc7.i:                                       ; preds = %vector.body
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next55.i, 800
  br i1 %exitcond57.not.i, label %vector.ph65, label %vector.ph, !llvm.loop !21

vector.ph65:                                      ; preds = %for.inc7.i, %for.inc31.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %for.inc31.i ], [ 0, %for.inc7.i ]
  %broadcast.splatinsert66 = insertelement <2 x i64> poison, i64 %indvars.iv63.i, i64 0
  %broadcast.splat67 = shufflevector <2 x i64> %broadcast.splatinsert66, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next71, %vector.body68 ]
  %vec.ind70 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph65 ], [ %vec.ind.next72, %vector.body68 ]
  %23 = add nuw nsw <2 x i64> %vec.ind70, splat (i64 1)
  %24 = mul nuw nsw <2 x i64> %23, %broadcast.splat67
  %25 = trunc nuw nsw <2 x i64> %24 to <2 x i32>
  %26 = urem <2 x i32> %25, splat (i32 900)
  %27 = uitofp nneg <2 x i32> %26 to <2 x double>
  %28 = fdiv <2 x double> %27, splat (double 9.000000e+02)
  %29 = getelementptr inbounds nuw [900 x double], ptr %6, i64 %indvars.iv63.i, i64 %index69
  store <2 x double> %28, ptr %29, align 8, !tbaa !11
  %index.next71 = add nuw i64 %index69, 2
  %vec.ind.next72 = add <2 x i64> %vec.ind70, splat (i64 2)
  %30 = icmp eq i64 %index.next71, 900
  br i1 %30, label %for.inc31.i, label %vector.body68, !llvm.loop !22

for.inc31.i:                                      ; preds = %vector.body68
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next64.i, 1100
  br i1 %exitcond66.not.i, label %vector.ph76, label %vector.ph65, !llvm.loop !23

vector.ph76:                                      ; preds = %for.inc31.i, %for.inc56.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %for.inc56.i ], [ 0, %for.inc31.i ]
  %broadcast.splatinsert77 = insertelement <2 x i64> poison, i64 %indvars.iv74.i, i64 0
  %broadcast.splat78 = shufflevector <2 x i64> %broadcast.splatinsert77, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph76
  %index80 = phi i64 [ 0, %vector.ph76 ], [ %index.next82, %vector.body79 ]
  %vec.ind81 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph76 ], [ %vec.ind.next83, %vector.body79 ]
  %31 = add nuw nsw <2 x i64> %vec.ind81, splat (i64 3)
  %32 = mul nuw nsw <2 x i64> %31, %broadcast.splat78
  %33 = trunc <2 x i64> %32 to <2 x i32>
  %34 = add <2 x i32> %33, splat (i32 1)
  %35 = urem <2 x i32> %34, splat (i32 1200)
  %36 = uitofp nneg <2 x i32> %35 to <2 x double>
  %37 = fdiv <2 x double> %36, splat (double 1.200000e+03)
  %38 = getelementptr inbounds nuw [1200 x double], ptr %9, i64 %indvars.iv74.i, i64 %index80
  store <2 x double> %37, ptr %38, align 8, !tbaa !11
  %index.next82 = add nuw i64 %index80, 2
  %vec.ind.next83 = add <2 x i64> %vec.ind81, splat (i64 2)
  %39 = icmp eq i64 %index.next82, 1200
  br i1 %39, label %for.inc56.i, label %vector.body79, !llvm.loop !24

for.inc56.i:                                      ; preds = %vector.body79
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next75.i, 900
  br i1 %exitcond77.not.i, label %vector.ph87, label %vector.ph76, !llvm.loop !25

vector.ph87:                                      ; preds = %for.inc56.i, %for.inc80.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %for.inc80.i ], [ 0, %for.inc56.i ]
  %broadcast.splatinsert88 = insertelement <2 x i64> poison, i64 %indvars.iv84.i, i64 0
  %broadcast.splat89 = shufflevector <2 x i64> %broadcast.splatinsert88, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph87
  %index91 = phi i64 [ 0, %vector.ph87 ], [ %index.next93, %vector.body90 ]
  %vec.ind92 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph87 ], [ %vec.ind.next94, %vector.body90 ]
  %40 = add nuw nsw <2 x i64> %vec.ind92, splat (i64 2)
  %41 = mul nuw nsw <2 x i64> %40, %broadcast.splat89
  %42 = trunc nuw nsw <2 x i64> %41 to <2 x i32>
  %43 = urem <2 x i32> %42, splat (i32 1100)
  %44 = uitofp nneg <2 x i32> %43 to <2 x double>
  %45 = fdiv <2 x double> %44, splat (double 1.100000e+03)
  %46 = getelementptr inbounds nuw [1200 x double], ptr %12, i64 %indvars.iv84.i, i64 %index91
  store <2 x double> %45, ptr %46, align 8, !tbaa !11
  %index.next93 = add nuw i64 %index91, 2
  %vec.ind.next94 = add <2 x i64> %vec.ind92, splat (i64 2)
  %47 = icmp eq i64 %index.next93, 1200
  br i1 %47, label %for.inc80.i, label %vector.body90, !llvm.loop !26

for.inc80.i:                                      ; preds = %vector.body90
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1
  %exitcond87.not.i = icmp eq i64 %indvars.iv.next85.i, 800
  br i1 %exitcond87.not.i, label %init_array.exit, label %vector.ph87, !llvm.loop !27

init_array.exit:                                  ; preds = %for.inc80.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #11
  %call.i.i45 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #11
  %cmp.not.i.i = icmp eq i32 %call.i.i45, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i46

if.then.i.i46:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i45)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i46
  %48 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %48 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %49 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %49 to double
  %50 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #11
  store double %50, ptr @polybench_t_start, align 8, !tbaa !11
  br label %for.cond1.preheader.i47

for.cond1.preheader.i47:                          ; preds = %for.inc25.i, %polybench_timer_start.exit
  %indvars.iv42.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next43.i, %for.inc25.i ]
  br label %for.body3.i48

for.body3.i48:                                    ; preds = %for.inc22.i, %for.cond1.preheader.i47
  %indvars.iv38.i = phi i64 [ 0, %for.cond1.preheader.i47 ], [ %indvars.iv.next39.i, %for.inc22.i ]
  %arrayidx5.i = getelementptr inbounds nuw [900 x double], ptr %0, i64 %indvars.iv42.i, i64 %indvars.iv38.i
  store double 0.000000e+00, ptr %arrayidx5.i, align 8, !tbaa !11
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i, %for.body3.i48
  %indvars.iv.i49 = phi i64 [ 0, %for.body3.i48 ], [ %indvars.iv.next.i50, %for.body8.i ]
  %51 = phi double [ 0.000000e+00, %for.body3.i48 ], [ %54, %for.body8.i ]
  %arrayidx12.i = getelementptr inbounds nuw [1100 x double], ptr %3, i64 %indvars.iv42.i, i64 %indvars.iv.i49
  %52 = load double, ptr %arrayidx12.i, align 8, !tbaa !11
  %mul.i = fmul double %52, 1.500000e+00
  %arrayidx16.i = getelementptr inbounds nuw [900 x double], ptr %6, i64 %indvars.iv.i49, i64 %indvars.iv38.i
  %53 = load double, ptr %arrayidx16.i, align 8, !tbaa !11
  %54 = call double @llvm.fmuladd.f64(double %mul.i, double %53, double %51)
  store double %54, ptr %arrayidx5.i, align 8, !tbaa !11
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i49, 1
  %exitcond.not.i51 = icmp eq i64 %indvars.iv.next.i50, 1100
  br i1 %exitcond.not.i51, label %for.inc22.i, label %for.body8.i, !llvm.loop !28

for.inc22.i:                                      ; preds = %for.body8.i
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next39.i, 900
  br i1 %exitcond41.not.i, label %for.inc25.i, label %for.body3.i48, !llvm.loop !29

for.inc25.i:                                      ; preds = %for.inc22.i
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next43.i, 800
  br i1 %exitcond45.not.i, label %for.cond31.preheader.i, label %for.cond1.preheader.i47, !llvm.loop !30

for.cond31.preheader.i:                           ; preds = %for.inc25.i, %for.inc61.i
  %indvars.iv54.i52 = phi i64 [ %indvars.iv.next55.i54, %for.inc61.i ], [ 0, %for.inc25.i ]
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.inc58.i, %for.cond31.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %for.cond31.preheader.i ], [ %indvars.iv.next51.i, %for.inc58.i ]
  %arrayidx37.i = getelementptr inbounds nuw [1200 x double], ptr %12, i64 %indvars.iv54.i52, i64 %indvars.iv50.i
  %55 = load double, ptr %arrayidx37.i, align 8, !tbaa !11
  %mul38.i = fmul double %55, 1.200000e+00
  store double %mul38.i, ptr %arrayidx37.i, align 8, !tbaa !11
  br label %for.body41.i53

for.body41.i53:                                   ; preds = %for.body41.i53, %for.body33.i
  %indvars.iv46.i = phi i64 [ 0, %for.body33.i ], [ %indvars.iv.next47.i, %for.body41.i53 ]
  %56 = phi double [ %mul38.i, %for.body33.i ], [ %59, %for.body41.i53 ]
  %arrayidx45.i = getelementptr inbounds nuw [900 x double], ptr %0, i64 %indvars.iv54.i52, i64 %indvars.iv46.i
  %57 = load double, ptr %arrayidx45.i, align 8, !tbaa !11
  %arrayidx49.i = getelementptr inbounds nuw [1200 x double], ptr %9, i64 %indvars.iv46.i, i64 %indvars.iv50.i
  %58 = load double, ptr %arrayidx49.i, align 8, !tbaa !11
  %59 = call double @llvm.fmuladd.f64(double %57, double %58, double %56)
  store double %59, ptr %arrayidx37.i, align 8, !tbaa !11
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %exitcond49.not.i = icmp eq i64 %indvars.iv.next47.i, 900
  br i1 %exitcond49.not.i, label %for.inc58.i, label %for.body41.i53, !llvm.loop !31

for.inc58.i:                                      ; preds = %for.body41.i53
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next51.i, 1200
  br i1 %exitcond53.not.i, label %for.inc61.i, label %for.body33.i, !llvm.loop !32

for.inc61.i:                                      ; preds = %for.inc58.i
  %indvars.iv.next55.i54 = add nuw nsw i64 %indvars.iv54.i52, 1
  %exitcond57.not.i55 = icmp eq i64 %indvars.iv.next55.i54, 800
  br i1 %exitcond57.not.i55, label %kernel_2mm.exit, label %for.cond31.preheader.i, !llvm.loop !33

kernel_2mm.exit:                                  ; preds = %for.inc61.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i56) #11
  %call.i.i57 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i56, ptr noundef null) #11
  %cmp.not.i.i58 = icmp eq i32 %call.i.i57, 0
  br i1 %cmp.not.i.i58, label %polybench_timer_stop.exit, label %if.then.i.i59

if.then.i.i59:                                    ; preds = %kernel_2mm.exit
  %call1.i.i60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i57)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_2mm.exit, %if.then.i.i59
  %60 = load i64, ptr %Tp.i.i56, align 8, !tbaa !5
  %conv.i.i61 = sitofp i64 %60 to double
  %tv_usec.i.i62 = getelementptr inbounds nuw i8, ptr %Tp.i.i56, i64 8
  %61 = load i64, ptr %tv_usec.i.i62, align 8, !tbaa !10
  %conv2.i.i63 = sitofp i64 %61 to double
  %62 = call double @llvm.fmuladd.f64(double %conv2.i.i63, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i61)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i56) #11
  store double %62, ptr @polybench_t_end, align 8, !tbaa !11
  %63 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %62, %63
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %64 = load ptr, ptr %argv, align 8, !tbaa !34
  %strcmpload = load i8, ptr %64, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #11
  call void @free(ptr noundef %3) #11
  call void @free(ptr noundef %6) #11
  call void @free(ptr noundef nonnull %9) #11
  call void @free(ptr noundef nonnull %12) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %D) unnamed_addr #9 {
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
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %D, i64 %indvars.iv12, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1200
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !36

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond16.not = icmp eq i64 %indvars.iv.next13, 800
  br i1 %exitcond16.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !37

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
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 omnipotent char", !14, i64 0}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
