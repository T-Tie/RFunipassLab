; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"y\00", align 1
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #13
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #13
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #13
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #13
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #13
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
  tail call void @free(ptr noundef %ptr) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #3 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i) #13
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i, i64 noundef 4096, i64 noundef %mul) #13
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #14
  call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i) #13
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
  %Tp.i.i37 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i25 = alloca ptr, align 8
  %ret.i.i18 = alloca ptr, align 8
  %ret.i.i11 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #13
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 31920000) #13
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #14
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i11) #13
  store ptr null, ptr %ret.i.i11, align 8, !tbaa !13
  %call.i.i12 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i11, i64 noundef 4096, i64 noundef 16800) #13
  %3 = load ptr, ptr %ret.i.i11, align 8, !tbaa !13
  %tobool.i.i13 = icmp eq ptr %3, null
  %tobool2.i.i14 = icmp ne i32 %call.i.i12, 0
  %or.cond.i.i15 = select i1 %tobool.i.i13, i1 true, i1 %tobool2.i.i14
  br i1 %or.cond.i.i15, label %if.then.i.i16, label %polybench_alloc_data.exit17

if.then.i.i16:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #14
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit17:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i11) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i18) #13
  store ptr null, ptr %ret.i.i18, align 8, !tbaa !13
  %call.i.i19 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i18, i64 noundef 4096, i64 noundef 16800) #13
  %6 = load ptr, ptr %ret.i.i18, align 8, !tbaa !13
  %tobool.i.i20 = icmp eq ptr %6, null
  %tobool2.i.i21 = icmp ne i32 %call.i.i19, 0
  %or.cond.i.i22 = select i1 %tobool.i.i20, i1 true, i1 %tobool2.i.i21
  br i1 %or.cond.i.i22, label %if.then.i.i23, label %polybench_alloc_data.exit24

if.then.i.i23:                                    ; preds = %polybench_alloc_data.exit17
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %7) #14
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit24:                      ; preds = %polybench_alloc_data.exit17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i18) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i25) #13
  store ptr null, ptr %ret.i.i25, align 8, !tbaa !13
  %call.i.i26 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i25, i64 noundef 4096, i64 noundef 15200) #13
  %9 = load ptr, ptr %ret.i.i25, align 8, !tbaa !13
  %tobool.i.i27 = icmp eq ptr %9, null
  %tobool2.i.i28 = icmp ne i32 %call.i.i26, 0
  %or.cond.i.i29 = select i1 %tobool.i.i27, i1 true, i1 %tobool2.i.i28
  br i1 %or.cond.i.i29, label %if.then.i.i30, label %polybench_alloc_data.exit31

if.then.i.i30:                                    ; preds = %polybench_alloc_data.exit24
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %10) #14
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit31:                      ; preds = %polybench_alloc_data.exit24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i25) #13
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %polybench_alloc_data.exit31
  %index = phi i64 [ 0, %polybench_alloc_data.exit31 ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %polybench_alloc_data.exit31 ], [ %vec.ind.next, %vector.body ]
  %12 = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %13 = fdiv <2 x double> %12, splat (double 2.100000e+03)
  %14 = fadd <2 x double> %13, splat (double 1.000000e+00)
  %15 = getelementptr inbounds nuw double, ptr %3, i64 %index
  store <2 x double> %14, ptr %15, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %16 = icmp eq i64 %index.next, 2100
  br i1 %16, label %vector.ph46, label %vector.body, !llvm.loop !17

vector.ph46:                                      ; preds = %vector.body, %for.inc22.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.inc22.i ], [ 0, %vector.body ]
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv24.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph46
  %index48 = phi i64 [ 0, %vector.ph46 ], [ %index.next50, %vector.body47 ]
  %vec.ind49 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph46 ], [ %vec.ind.next51, %vector.body47 ]
  %17 = add nuw nsw <2 x i64> %vec.ind49, %broadcast.splat
  %18 = trunc nuw nsw <2 x i64> %17 to <2 x i32>
  %19 = urem <2 x i32> %18, splat (i32 2100)
  %20 = uitofp nneg <2 x i32> %19 to <2 x double>
  %21 = fdiv <2 x double> %20, splat (double 9.500000e+03)
  %22 = getelementptr inbounds nuw [2100 x double], ptr %0, i64 %indvars.iv24.i, i64 %index48
  store <2 x double> %21, ptr %22, align 8, !tbaa !11
  %index.next50 = add nuw i64 %index48, 2
  %vec.ind.next51 = add <2 x i64> %vec.ind49, splat (i64 2)
  %23 = icmp eq i64 %index.next50, 2100
  br i1 %23, label %for.inc22.i, label %vector.body47, !llvm.loop !21

for.inc22.i:                                      ; preds = %vector.body47
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next25.i, 1900
  br i1 %exitcond27.not.i, label %init_array.exit, label %vector.ph46, !llvm.loop !22

init_array.exit:                                  ; preds = %for.inc22.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #13
  %call.i.i32 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #13
  %cmp.not.i.i = icmp eq i32 %call.i.i32, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i33

if.then.i.i33:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i32)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i33
  %24 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %24 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %25 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %25 to double
  %26 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #13
  store double %26, ptr @polybench_t_start, align 8, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16800) %6, i8 0, i64 16800, i1 false), !tbaa !11
  %scevgep = getelementptr i8, ptr %6, i64 16800
  %scevgep54 = getelementptr i8, ptr %0, i64 31920000
  %scevgep55 = getelementptr i8, ptr %9, i64 15200
  %bound0 = icmp ult ptr %6, %scevgep54
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound056 = icmp ult ptr %6, %scevgep55
  %bound157 = icmp ult ptr %9, %scevgep
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx = or i1 %found.conflict, %found.conflict58
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc38.i, %polybench_timer_start.exit
  %indvars.iv37.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next38.i, %for.inc38.i ]
  %arrayidx5.i = getelementptr inbounds nuw double, ptr %9, i64 %indvars.iv37.i
  store double 0.000000e+00, ptr %arrayidx5.i, align 8, !tbaa !11
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i, %for.body3.i
  %indvars.iv.i34 = phi i64 [ 0, %for.body3.i ], [ %indvars.iv.next.i35, %for.body8.i ]
  %27 = phi double [ 0.000000e+00, %for.body3.i ], [ %30, %for.body8.i ]
  %arrayidx14.i = getelementptr inbounds nuw [2100 x double], ptr %0, i64 %indvars.iv37.i, i64 %indvars.iv.i34
  %28 = load double, ptr %arrayidx14.i, align 8, !tbaa !11
  %arrayidx16.i = getelementptr inbounds nuw double, ptr %3, i64 %indvars.iv.i34
  %29 = load double, ptr %arrayidx16.i, align 8, !tbaa !11
  %30 = call double @llvm.fmuladd.f64(double %28, double %29, double %27)
  store double %30, ptr %arrayidx5.i, align 8, !tbaa !11
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i34, 1
  %exitcond.not.i36 = icmp eq i64 %indvars.iv.next.i35, 2100
  br i1 %exitcond.not.i36, label %vector.memcheck, label %for.body8.i, !llvm.loop !23

vector.memcheck:                                  ; preds = %for.body8.i
  br i1 %conflict.rdx, label %for.body24.i, label %vector.body61.preheader

vector.body61.preheader:                          ; preds = %vector.memcheck
  %31 = load double, ptr %arrayidx5.i, align 8, !tbaa !11, !alias.scope !24
  %broadcast.splatinsert64 = insertelement <2 x double> poison, double %31, i64 0
  %broadcast.splat65 = shufflevector <2 x double> %broadcast.splatinsert64, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61.preheader, %vector.body61
  %index62 = phi i64 [ %index.next66, %vector.body61 ], [ 0, %vector.body61.preheader ]
  %32 = getelementptr inbounds nuw double, ptr %6, i64 %index62
  %wide.load = load <2 x double>, ptr %32, align 8, !tbaa !11, !alias.scope !27, !noalias !29
  %33 = getelementptr inbounds nuw [2100 x double], ptr %0, i64 %indvars.iv37.i, i64 %index62
  %wide.load63 = load <2 x double>, ptr %33, align 8, !tbaa !11, !alias.scope !31
  %34 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load63, <2 x double> %broadcast.splat65, <2 x double> %wide.load)
  store <2 x double> %34, ptr %32, align 8, !tbaa !11, !alias.scope !27, !noalias !29
  %index.next66 = add nuw i64 %index62, 2
  %35 = icmp eq i64 %index.next66, 2100
  br i1 %35, label %for.inc38.i, label %vector.body61, !llvm.loop !32

for.body24.i:                                     ; preds = %vector.memcheck, %for.body24.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %for.body24.i ], [ 0, %vector.memcheck ]
  %arrayidx26.i = getelementptr inbounds nuw double, ptr %6, i64 %indvars.iv33.i
  %36 = load double, ptr %arrayidx26.i, align 8, !tbaa !11
  %arrayidx30.i = getelementptr inbounds nuw [2100 x double], ptr %0, i64 %indvars.iv37.i, i64 %indvars.iv33.i
  %37 = load double, ptr %arrayidx30.i, align 8, !tbaa !11
  %38 = load double, ptr %arrayidx5.i, align 8, !tbaa !11
  %39 = call double @llvm.fmuladd.f64(double %37, double %38, double %36)
  store double %39, ptr %arrayidx26.i, align 8, !tbaa !11
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next34.i, 2100
  br i1 %exitcond36.not.i, label %for.inc38.i, label %for.body24.i, !llvm.loop !33

for.inc38.i:                                      ; preds = %vector.body61, %for.body24.i
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next38.i, 1900
  br i1 %exitcond40.not.i, label %kernel_atax.exit, label %for.body3.i, !llvm.loop !34

kernel_atax.exit:                                 ; preds = %for.inc38.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i37) #13
  %call.i.i38 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i37, ptr noundef null) #13
  %cmp.not.i.i39 = icmp eq i32 %call.i.i38, 0
  br i1 %cmp.not.i.i39, label %polybench_timer_stop.exit, label %if.then.i.i40

if.then.i.i40:                                    ; preds = %kernel_atax.exit
  %call1.i.i41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i38)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_atax.exit, %if.then.i.i40
  %40 = load i64, ptr %Tp.i.i37, align 8, !tbaa !5
  %conv.i.i42 = sitofp i64 %40 to double
  %tv_usec.i.i43 = getelementptr inbounds nuw i8, ptr %Tp.i.i37, i64 8
  %41 = load i64, ptr %tv_usec.i.i43, align 8, !tbaa !10
  %conv2.i.i44 = sitofp i64 %41 to double
  %42 = call double @llvm.fmuladd.f64(double %conv2.i.i44, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i42)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i37) #13
  store double %42, ptr @polybench_t_end, align 8, !tbaa !11
  %43 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %42, %43
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %44 = load ptr, ptr %argv, align 8, !tbaa !35
  %strcmpload = load i8, ptr %44, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #13
  call void @free(ptr noundef nonnull %3) #13
  call void @free(ptr noundef nonnull %6) #13
  call void @free(ptr noundef nonnull %9) #13
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %y) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #14
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #16
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
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
  %arrayidx = getelementptr inbounds nuw double, ptr %y, i64 %indvars.iv
  %5 = load double, ptr %arrayidx, align 8, !tbaa !11
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, double noundef %5) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2100
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !37

for.end:                                          ; preds = %if.end
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #16
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %7) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }

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
!21 = distinct !{!21, !18, !19, !20}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = !{!30, !25}
!30 = distinct !{!30, !26}
!31 = !{!30}
!32 = distinct !{!32, !18, !19, !20}
!33 = distinct !{!33, !18, !19}
!34 = distinct !{!34, !18}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 omnipotent char", !14, i64 0}
!37 = distinct !{!37, !18}
