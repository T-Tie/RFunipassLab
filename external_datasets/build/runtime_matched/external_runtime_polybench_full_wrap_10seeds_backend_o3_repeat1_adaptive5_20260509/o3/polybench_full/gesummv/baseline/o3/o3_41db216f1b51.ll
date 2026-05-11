; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gesummv.ll'
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
  %Tp.i.i48 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i33 = alloca ptr, align 8
  %ret.i.i26 = alloca ptr, align 8
  %ret.i.i19 = alloca ptr, align 8
  %ret.i.i12 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #11
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 13520000) #11
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %1 = ptrtoint ptr %0 to i64
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %3 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %2) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i12) #11
  store ptr null, ptr %ret.i.i12, align 8, !tbaa !13
  %call.i.i13 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i12, i64 noundef 4096, i64 noundef 13520000) #11
  %4 = load ptr, ptr %ret.i.i12, align 8, !tbaa !13
  %5 = ptrtoint ptr %4 to i64
  %tobool.i.i14 = icmp eq ptr %4, null
  %tobool2.i.i15 = icmp ne i32 %call.i.i13, 0
  %or.cond.i.i16 = select i1 %tobool.i.i14, i1 true, i1 %tobool2.i.i15
  br i1 %or.cond.i.i16, label %if.then.i.i17, label %polybench_alloc_data.exit18

if.then.i.i17:                                    ; preds = %polybench_alloc_data.exit
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %7 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %6) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit18:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i12) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i19) #11
  store ptr null, ptr %ret.i.i19, align 8, !tbaa !13
  %call.i.i20 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i19, i64 noundef 4096, i64 noundef 10400) #11
  %8 = load ptr, ptr %ret.i.i19, align 8, !tbaa !13
  %tobool.i.i21 = icmp eq ptr %8, null
  %tobool2.i.i22 = icmp ne i32 %call.i.i20, 0
  %or.cond.i.i23 = select i1 %tobool.i.i21, i1 true, i1 %tobool2.i.i22
  br i1 %or.cond.i.i23, label %if.then.i.i24, label %polybench_alloc_data.exit25

if.then.i.i24:                                    ; preds = %polybench_alloc_data.exit18
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %10 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %9) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit25:                      ; preds = %polybench_alloc_data.exit18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i19) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i26) #11
  store ptr null, ptr %ret.i.i26, align 8, !tbaa !13
  %call.i.i27 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i26, i64 noundef 4096, i64 noundef 10400) #11
  %11 = load ptr, ptr %ret.i.i26, align 8, !tbaa !13
  %tobool.i.i28 = icmp eq ptr %11, null
  %tobool2.i.i29 = icmp ne i32 %call.i.i27, 0
  %or.cond.i.i30 = select i1 %tobool.i.i28, i1 true, i1 %tobool2.i.i29
  br i1 %or.cond.i.i30, label %if.then.i.i31, label %polybench_alloc_data.exit32

if.then.i.i31:                                    ; preds = %polybench_alloc_data.exit25
  %12 = load ptr, ptr @stderr, align 8, !tbaa !15
  %13 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %12) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit32:                      ; preds = %polybench_alloc_data.exit25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i26) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i33) #11
  store ptr null, ptr %ret.i.i33, align 8, !tbaa !13
  %call.i.i34 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i33, i64 noundef 4096, i64 noundef 10400) #11
  %14 = load ptr, ptr %ret.i.i33, align 8, !tbaa !13
  %tobool.i.i35 = icmp eq ptr %14, null
  %tobool2.i.i36 = icmp ne i32 %call.i.i34, 0
  %or.cond.i.i37 = select i1 %tobool.i.i35, i1 true, i1 %tobool2.i.i36
  br i1 %or.cond.i.i37, label %if.then.i.i38, label %polybench_alloc_data.exit39

if.then.i.i38:                                    ; preds = %polybench_alloc_data.exit32
  %15 = load ptr, ptr @stderr, align 8, !tbaa !15
  %16 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %15) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit39:                      ; preds = %polybench_alloc_data.exit32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i33) #11
  %17 = sub i64 %5, %1
  %diff.check = icmp ult i64 %17, 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc24.i, %polybench_alloc_data.exit39
  %indvars.iv26.i = phi i64 [ 0, %polybench_alloc_data.exit39 ], [ %indvars.iv.next27.i, %for.inc24.i ]
  %18 = trunc nuw nsw i64 %indvars.iv26.i to i32
  %conv.i = uitofp nneg i32 %18 to double
  %div.i = fdiv double %conv.i, 1.300000e+03
  %arrayidx.i = getelementptr inbounds nuw double, ptr %11, i64 %indvars.iv26.i
  store double %div.i, ptr %arrayidx.i, align 8, !tbaa !11
  br i1 %diff.check, label %for.body5.i, label %vector.ph

vector.ph:                                        ; preds = %for.body.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv26.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %19 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %20 = trunc <2 x i64> %19 to <2 x i32>
  %21 = add <2 x i32> %20, splat (i32 1)
  %22 = urem <2 x i32> %21, splat (i32 1300)
  %23 = uitofp nneg <2 x i32> %22 to <2 x double>
  %24 = fdiv <2 x double> %23, splat (double 1.300000e+03)
  %25 = getelementptr inbounds nuw [1300 x double], ptr %0, i64 %indvars.iv26.i, i64 %index
  store <2 x double> %24, ptr %25, align 8, !tbaa !11
  %26 = add <2 x i32> %20, splat (i32 2)
  %27 = urem <2 x i32> %26, splat (i32 1300)
  %28 = uitofp nneg <2 x i32> %27 to <2 x double>
  %29 = fdiv <2 x double> %28, splat (double 1.300000e+03)
  %30 = getelementptr inbounds nuw [1300 x double], ptr %4, i64 %indvars.iv26.i, i64 %index
  store <2 x double> %29, ptr %30, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %31 = icmp eq i64 %index.next, 1300
  br i1 %31, label %for.inc24.i, label %vector.body, !llvm.loop !17

for.body5.i:                                      ; preds = %for.body.i, %for.body5.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body5.i ], [ 0, %for.body.i ]
  %32 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv26.i
  %33 = trunc i64 %32 to i32
  %34 = add i32 %33, 1
  %rem6.i = urem i32 %34, 1300
  %conv7.i = uitofp nneg i32 %rem6.i to double
  %div9.i = fdiv double %conv7.i, 1.300000e+03
  %arrayidx13.i = getelementptr inbounds nuw [1300 x double], ptr %0, i64 %indvars.iv26.i, i64 %indvars.iv.i
  store double %div9.i, ptr %arrayidx13.i, align 8, !tbaa !11
  %35 = add i32 %33, 2
  %rem16.i = urem i32 %35, 1300
  %conv17.i = uitofp nneg i32 %rem16.i to double
  %div19.i = fdiv double %conv17.i, 1.300000e+03
  %arrayidx23.i = getelementptr inbounds nuw [1300 x double], ptr %4, i64 %indvars.iv26.i, i64 %indvars.iv.i
  store double %div19.i, ptr %arrayidx23.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1300
  br i1 %exitcond.not.i, label %for.inc24.i, label %for.body5.i, !llvm.loop !21

for.inc24.i:                                      ; preds = %vector.body, %for.body5.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next27.i, 1300
  br i1 %exitcond29.not.i, label %init_array.exit, label %for.body.i, !llvm.loop !22

init_array.exit:                                  ; preds = %for.inc24.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #11
  %call.i.i40 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #11
  %cmp.not.i.i = icmp eq i32 %call.i.i40, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i41

if.then.i.i41:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i40)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i41
  %36 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %36 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %37 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %37 to double
  %38 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #11
  store double %38, ptr @polybench_t_start, align 8, !tbaa !11
  br label %for.body.i42

for.body.i42:                                     ; preds = %for.end.i, %polybench_timer_start.exit
  %indvars.iv30.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next31.i, %for.end.i ]
  %arrayidx.i43 = getelementptr inbounds nuw double, ptr %8, i64 %indvars.iv30.i
  store double 0.000000e+00, ptr %arrayidx.i43, align 8, !tbaa !11
  %arrayidx2.i = getelementptr inbounds nuw double, ptr %14, i64 %indvars.iv30.i
  store double 0.000000e+00, ptr %arrayidx2.i, align 8, !tbaa !11
  br label %for.body5.i44

for.body5.i44:                                    ; preds = %for.body5.i44, %for.body.i42
  %indvars.iv.i45 = phi i64 [ 0, %for.body.i42 ], [ %indvars.iv.next.i46, %for.body5.i44 ]
  %arrayidx9.i = getelementptr inbounds nuw [1300 x double], ptr %0, i64 %indvars.iv30.i, i64 %indvars.iv.i45
  %39 = load double, ptr %arrayidx9.i, align 8, !tbaa !11
  %arrayidx11.i = getelementptr inbounds nuw double, ptr %11, i64 %indvars.iv.i45
  %40 = load double, ptr %arrayidx11.i, align 8, !tbaa !11
  %41 = load double, ptr %arrayidx.i43, align 8, !tbaa !11
  %42 = call double @llvm.fmuladd.f64(double %39, double %40, double %41)
  store double %42, ptr %arrayidx.i43, align 8, !tbaa !11
  %arrayidx19.i = getelementptr inbounds nuw [1300 x double], ptr %4, i64 %indvars.iv30.i, i64 %indvars.iv.i45
  %43 = load double, ptr %arrayidx19.i, align 8, !tbaa !11
  %44 = load double, ptr %arrayidx11.i, align 8, !tbaa !11
  %45 = load double, ptr %arrayidx2.i, align 8, !tbaa !11
  %46 = call double @llvm.fmuladd.f64(double %43, double %44, double %45)
  store double %46, ptr %arrayidx2.i, align 8, !tbaa !11
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i45, 1
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, 1300
  br i1 %exitcond.not.i47, label %for.end.i, label %for.body5.i44, !llvm.loop !23

for.end.i:                                        ; preds = %for.body5.i44
  %47 = load double, ptr %arrayidx.i43, align 8, !tbaa !11
  %mul30.i = fmul double %46, 1.200000e+00
  %48 = call double @llvm.fmuladd.f64(double %47, double 1.500000e+00, double %mul30.i)
  store double %48, ptr %arrayidx2.i, align 8, !tbaa !11
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next31.i, 1300
  br i1 %exitcond33.not.i, label %kernel_gesummv.exit, label %for.body.i42, !llvm.loop !24

kernel_gesummv.exit:                              ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i48) #11
  %call.i.i49 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i48, ptr noundef null) #11
  %cmp.not.i.i50 = icmp eq i32 %call.i.i49, 0
  br i1 %cmp.not.i.i50, label %polybench_timer_stop.exit, label %if.then.i.i51

if.then.i.i51:                                    ; preds = %kernel_gesummv.exit
  %call1.i.i52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i49)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_gesummv.exit, %if.then.i.i51
  %49 = load i64, ptr %Tp.i.i48, align 8, !tbaa !5
  %conv.i.i53 = sitofp i64 %49 to double
  %tv_usec.i.i54 = getelementptr inbounds nuw i8, ptr %Tp.i.i48, i64 8
  %50 = load i64, ptr %tv_usec.i.i54, align 8, !tbaa !10
  %conv2.i.i55 = sitofp i64 %50 to double
  %51 = call double @llvm.fmuladd.f64(double %conv2.i.i55, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i53)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i48) #11
  store double %51, ptr @polybench_t_end, align 8, !tbaa !11
  %52 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %51, %52
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %53 = load ptr, ptr %argv, align 8, !tbaa !25
  %strcmpload = load i8, ptr %53, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #11
  call void @free(ptr noundef nonnull %4) #11
  call void @free(ptr noundef nonnull %8) #11
  call void @free(ptr noundef nonnull %11) #11
  call void @free(ptr noundef nonnull %14) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %y) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
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
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, double noundef %5) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1300
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !27

for.end:                                          ; preds = %if.end
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
!21 = distinct !{!21, !18, !19}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = distinct !{!27, !18}
