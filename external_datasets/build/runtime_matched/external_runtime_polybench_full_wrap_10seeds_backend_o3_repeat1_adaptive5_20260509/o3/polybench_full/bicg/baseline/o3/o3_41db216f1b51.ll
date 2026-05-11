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
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #12
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #12
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #12
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #12
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #12
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #12
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
  %Tp.i.i48 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i36 = alloca ptr, align 8
  %ret.i.i29 = alloca ptr, align 8
  %ret.i.i22 = alloca ptr, align 8
  %ret.i.i15 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #12
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 31920000) #12
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i15) #12
  store ptr null, ptr %ret.i.i15, align 8, !tbaa !13
  %call.i.i16 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i15, i64 noundef 4096, i64 noundef 15200) #12
  %3 = load ptr, ptr %ret.i.i15, align 8, !tbaa !13
  %tobool.i.i17 = icmp eq ptr %3, null
  %tobool2.i.i18 = icmp ne i32 %call.i.i16, 0
  %or.cond.i.i19 = select i1 %tobool.i.i17, i1 true, i1 %tobool2.i.i18
  br i1 %or.cond.i.i19, label %if.then.i.i20, label %polybench_alloc_data.exit21

if.then.i.i20:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit21:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i15) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i22) #12
  store ptr null, ptr %ret.i.i22, align 8, !tbaa !13
  %call.i.i23 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i22, i64 noundef 4096, i64 noundef 16800) #12
  %6 = load ptr, ptr %ret.i.i22, align 8, !tbaa !13
  %tobool.i.i24 = icmp eq ptr %6, null
  %tobool2.i.i25 = icmp ne i32 %call.i.i23, 0
  %or.cond.i.i26 = select i1 %tobool.i.i24, i1 true, i1 %tobool2.i.i25
  br i1 %or.cond.i.i26, label %if.then.i.i27, label %polybench_alloc_data.exit28

if.then.i.i27:                                    ; preds = %polybench_alloc_data.exit21
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %7) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit28:                      ; preds = %polybench_alloc_data.exit21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i22) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i29) #12
  store ptr null, ptr %ret.i.i29, align 8, !tbaa !13
  %call.i.i30 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i29, i64 noundef 4096, i64 noundef 15200) #12
  %9 = load ptr, ptr %ret.i.i29, align 8, !tbaa !13
  %tobool.i.i31 = icmp eq ptr %9, null
  %tobool2.i.i32 = icmp ne i32 %call.i.i30, 0
  %or.cond.i.i33 = select i1 %tobool.i.i31, i1 true, i1 %tobool2.i.i32
  br i1 %or.cond.i.i33, label %if.then.i.i34, label %polybench_alloc_data.exit35

if.then.i.i34:                                    ; preds = %polybench_alloc_data.exit28
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %10) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit35:                      ; preds = %polybench_alloc_data.exit28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i29) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i36) #12
  store ptr null, ptr %ret.i.i36, align 8, !tbaa !13
  %call.i.i37 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i36, i64 noundef 4096, i64 noundef 16800) #12
  %12 = load ptr, ptr %ret.i.i36, align 8, !tbaa !13
  %tobool.i.i38 = icmp eq ptr %12, null
  %tobool2.i.i39 = icmp ne i32 %call.i.i37, 0
  %or.cond.i.i40 = select i1 %tobool.i.i38, i1 true, i1 %tobool2.i.i39
  br i1 %or.cond.i.i40, label %if.then.i.i41, label %polybench_alloc_data.exit42

if.then.i.i41:                                    ; preds = %polybench_alloc_data.exit35
  %13 = load ptr, ptr @stderr, align 8, !tbaa !15
  %14 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %13) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit42:                      ; preds = %polybench_alloc_data.exit35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i36) #12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %polybench_alloc_data.exit42
  %index = phi i64 [ 0, %polybench_alloc_data.exit42 ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %polybench_alloc_data.exit42 ], [ %vec.ind.next, %vector.body ]
  %15 = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %16 = fdiv <2 x double> %15, splat (double 1.900000e+03)
  %17 = getelementptr inbounds nuw double, ptr %9, i64 %index
  store <2 x double> %16, ptr %17, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %18 = icmp eq i64 %index.next, 1900
  br i1 %18, label %for.body5.i, label %vector.body, !llvm.loop !17

for.body5.i:                                      ; preds = %vector.body, %for.inc27.i
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %for.inc27.i ], [ 0, %vector.body ]
  %19 = trunc nuw nsw i64 %indvars.iv29.i to i32
  %conv7.i = uitofp nneg i32 %19 to double
  %div9.i = fdiv double %conv7.i, 2.100000e+03
  %arrayidx11.i = getelementptr inbounds nuw double, ptr %12, i64 %indvars.iv29.i
  store double %div9.i, ptr %arrayidx11.i, align 8, !tbaa !11
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv29.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %for.body5.i
  %index59 = phi i64 [ 0, %for.body5.i ], [ %index.next61, %vector.body58 ]
  %vec.ind60 = phi <2 x i64> [ <i64 0, i64 1>, %for.body5.i ], [ %vec.ind.next62, %vector.body58 ]
  %20 = add nuw nsw <2 x i64> %vec.ind60, splat (i64 1)
  %21 = mul nuw nsw <2 x i64> %20, %broadcast.splat
  %22 = trunc nuw nsw <2 x i64> %21 to <2 x i32>
  %23 = urem <2 x i32> %22, splat (i32 2100)
  %24 = uitofp nneg <2 x i32> %23 to <2 x double>
  %25 = fdiv <2 x double> %24, splat (double 2.100000e+03)
  %26 = getelementptr inbounds nuw [1900 x double], ptr %0, i64 %indvars.iv29.i, i64 %index59
  store <2 x double> %25, ptr %26, align 8, !tbaa !11
  %index.next61 = add nuw i64 %index59, 2
  %vec.ind.next62 = add <2 x i64> %vec.ind60, splat (i64 2)
  %27 = icmp eq i64 %index.next61, 1900
  br i1 %27, label %for.inc27.i, label %vector.body58, !llvm.loop !21

for.inc27.i:                                      ; preds = %vector.body58
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next30.i, 2100
  br i1 %exitcond32.not.i, label %init_array.exit, label %for.body5.i, !llvm.loop !22

init_array.exit:                                  ; preds = %for.inc27.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #12
  %call.i.i43 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #12
  %cmp.not.i.i = icmp eq i32 %call.i.i43, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i44

if.then.i.i44:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i43)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i44
  %28 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %28 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %29 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %29 to double
  %30 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #12
  store double %30, ptr @polybench_t_start, align 8, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15200) %3, i8 0, i64 15200, i1 false), !tbaa !11
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc32.i, %polybench_timer_start.exit
  %indvars.iv28.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next29.i, %for.inc32.i ]
  %arrayidx5.i = getelementptr inbounds nuw double, ptr %6, i64 %indvars.iv28.i
  store double 0.000000e+00, ptr %arrayidx5.i, align 8, !tbaa !11
  %arrayidx12.i = getelementptr inbounds nuw double, ptr %12, i64 %indvars.iv28.i
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i, %for.body3.i
  %indvars.iv.i45 = phi i64 [ 0, %for.body3.i ], [ %indvars.iv.next.i46, %for.body8.i ]
  %arrayidx10.i = getelementptr inbounds nuw double, ptr %3, i64 %indvars.iv.i45
  %31 = load double, ptr %arrayidx10.i, align 8, !tbaa !11
  %32 = load double, ptr %arrayidx12.i, align 8, !tbaa !11
  %arrayidx16.i = getelementptr inbounds nuw [1900 x double], ptr %0, i64 %indvars.iv28.i, i64 %indvars.iv.i45
  %33 = load double, ptr %arrayidx16.i, align 8, !tbaa !11
  %34 = call double @llvm.fmuladd.f64(double %32, double %33, double %31)
  store double %34, ptr %arrayidx10.i, align 8, !tbaa !11
  %35 = load double, ptr %arrayidx5.i, align 8, !tbaa !11
  %36 = load double, ptr %arrayidx16.i, align 8, !tbaa !11
  %arrayidx26.i = getelementptr inbounds nuw double, ptr %9, i64 %indvars.iv.i45
  %37 = load double, ptr %arrayidx26.i, align 8, !tbaa !11
  %38 = call double @llvm.fmuladd.f64(double %36, double %37, double %35)
  store double %38, ptr %arrayidx5.i, align 8, !tbaa !11
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i45, 1
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, 1900
  br i1 %exitcond.not.i47, label %for.inc32.i, label %for.body8.i, !llvm.loop !23

for.inc32.i:                                      ; preds = %for.body8.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next29.i, 2100
  br i1 %exitcond31.not.i, label %kernel_bicg.exit, label %for.body3.i, !llvm.loop !24

kernel_bicg.exit:                                 ; preds = %for.inc32.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i48) #12
  %call.i.i49 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i48, ptr noundef null) #12
  %cmp.not.i.i50 = icmp eq i32 %call.i.i49, 0
  br i1 %cmp.not.i.i50, label %polybench_timer_stop.exit, label %if.then.i.i51

if.then.i.i51:                                    ; preds = %kernel_bicg.exit
  %call1.i.i52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i49)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_bicg.exit, %if.then.i.i51
  %39 = load i64, ptr %Tp.i.i48, align 8, !tbaa !5
  %conv.i.i53 = sitofp i64 %39 to double
  %tv_usec.i.i54 = getelementptr inbounds nuw i8, ptr %Tp.i.i48, i64 8
  %40 = load i64, ptr %tv_usec.i.i54, align 8, !tbaa !10
  %conv2.i.i55 = sitofp i64 %40 to double
  %41 = call double @llvm.fmuladd.f64(double %conv2.i.i55, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i53)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i48) #12
  store double %41, ptr @polybench_t_end, align 8, !tbaa !11
  %42 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %41, %42
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %43 = load ptr, ptr %argv, align 8, !tbaa !25
  %strcmpload = load i8, ptr %43, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %3, ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #12
  call void @free(ptr noundef nonnull %3) #12
  call void @free(ptr noundef nonnull %6) #12
  call void @free(ptr noundef nonnull %9) #12
  call void @free(ptr noundef nonnull %12) #12
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %s, ptr noundef nonnull readonly captures(none) %q) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
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
  %5 = load double, ptr %arrayidx, align 8, !tbaa !11
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, double noundef %5) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1900
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !27

for.end:                                          ; preds = %if.end
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #15
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.7) #15
  br label %for.body9

for.body9:                                        ; preds = %for.end, %if.end14
  %indvars.iv14 = phi i64 [ 0, %for.end ], [ %indvars.iv.next15, %if.end14 ]
  %rem10.lhs.trunc = trunc i64 %indvars.iv14 to i16
  %rem1010 = urem i16 %rem10.lhs.trunc, 20
  %cmp11 = icmp eq i16 %rem1010, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.body9
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %8)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.body9
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx16 = getelementptr inbounds nuw double, ptr %q, i64 %indvars.iv14
  %10 = load double, ptr %arrayidx16, align 8, !tbaa !11
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5.10, double noundef %10) #15
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next15, 2100
  br i1 %exitcond17.not, label %for.end20, label %for.body9, !llvm.loop !28

for.end20:                                        ; preds = %if.end14
  %11 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #15
  %12 = load ptr, ptr @stderr, align 8, !tbaa !15
  %13 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %12) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

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
!24 = distinct !{!24, !18}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
