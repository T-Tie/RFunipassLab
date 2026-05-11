; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4.9 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
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
  %Tp.i.i33 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i17 = alloca ptr, align 8
  %ret.i.i10 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #11
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 32000000) #11
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i10) #11
  store ptr null, ptr %ret.i.i10, align 8, !tbaa !13
  %call.i.i11 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i10, i64 noundef 4096, i64 noundef 16000) #11
  %3 = load ptr, ptr %ret.i.i10, align 8, !tbaa !13
  %tobool.i.i12 = icmp eq ptr %3, null
  %tobool2.i.i13 = icmp ne i32 %call.i.i11, 0
  %or.cond.i.i14 = select i1 %tobool.i.i12, i1 true, i1 %tobool2.i.i13
  br i1 %or.cond.i.i14, label %if.then.i.i15, label %polybench_alloc_data.exit16

if.then.i.i15:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit16:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i10) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i17) #11
  store ptr null, ptr %ret.i.i17, align 8, !tbaa !13
  %call.i.i18 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i17, i64 noundef 4096, i64 noundef 16000) #11
  %6 = load ptr, ptr %ret.i.i17, align 8, !tbaa !13
  %tobool.i.i19 = icmp eq ptr %6, null
  %tobool2.i.i20 = icmp ne i32 %call.i.i18, 0
  %or.cond.i.i21 = select i1 %tobool.i.i19, i1 true, i1 %tobool2.i.i20
  br i1 %or.cond.i.i21, label %if.then.i.i22, label %polybench_alloc_data.exit23

if.then.i.i22:                                    ; preds = %polybench_alloc_data.exit16
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %7) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit23:                      ; preds = %polybench_alloc_data.exit16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i17) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc14.i, %polybench_alloc_data.exit23
  %indvars.iv22.i = phi i64 [ 0, %polybench_alloc_data.exit23 ], [ %indvars.iv.next23.i, %for.inc14.i ]
  %indvars.iv20.i = phi i64 [ 1, %polybench_alloc_data.exit23 ], [ %indvars.iv.next21.i, %for.inc14.i ]
  %arrayidx.i = getelementptr inbounds nuw double, ptr %3, i64 %indvars.iv22.i
  store double -9.990000e+02, ptr %arrayidx.i, align 8, !tbaa !11
  %9 = trunc nuw nsw i64 %indvars.iv22.i to i32
  %conv.i = uitofp nneg i32 %9 to double
  %arrayidx2.i = getelementptr inbounds nuw double, ptr %6, i64 %indvars.iv22.i
  store double %conv.i, ptr %arrayidx2.i, align 8, !tbaa !11
  %10 = add nuw nsw i64 %indvars.iv22.i, 2000
  %min.iters.check = icmp samesign ult i64 %indvars.iv20.i, 2
  br i1 %min.iters.check, label %for.body6.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.i
  %n.vec = and i64 %indvars.iv20.i, 9223372036854775806
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %10, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %11 = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %12 = trunc <2 x i64> %11 to <2 x i32>
  %13 = shl <2 x i32> %12, splat (i32 1)
  %14 = add <2 x i32> %13, splat (i32 2)
  %15 = uitofp nneg <2 x i32> %14 to <2 x double>
  %16 = fdiv <2 x double> %15, splat (double 2.000000e+03)
  %17 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv22.i, i64 %index
  store <2 x double> %16, ptr %17, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv20.i, %n.vec
  br i1 %cmp.n, label %for.inc14.i, label %for.body6.i.preheader

for.body6.i.preheader:                            ; preds = %for.body.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %for.body.i ], [ %n.vec, %middle.block ]
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.preheader, %for.body6.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body6.i ], [ %indvars.iv.i.ph, %for.body6.i.preheader ]
  %19 = sub nuw nsw i64 %10, %indvars.iv.i
  %.tr.i = trunc i64 %19 to i32
  %20 = shl i32 %.tr.i, 1
  %21 = add i32 %20, 2
  %mul.i = uitofp nneg i32 %21 to double
  %div.i = fdiv double %mul.i, 2.000000e+03
  %arrayidx13.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv22.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx13.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv20.i
  br i1 %exitcond.not.i, label %for.inc14.i, label %for.body6.i, !llvm.loop !21

for.inc14.i:                                      ; preds = %for.body6.i, %middle.block
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next23.i, 2000
  br i1 %exitcond28.not.i, label %init_array.exit, label %for.body.i, !llvm.loop !22

init_array.exit:                                  ; preds = %for.inc14.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #11
  %call.i.i24 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #11
  %cmp.not.i.i = icmp eq i32 %call.i.i24, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i25

if.then.i.i25:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i24)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i25
  %22 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %22 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %23 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %23 to double
  %24 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #11
  store double %24, ptr @polybench_t_start, align 8, !tbaa !11
  br label %for.body.i26

for.body.i26:                                     ; preds = %for.end.i, %polybench_timer_start.exit
  %indvars.iv23.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next24.i, %for.end.i ]
  %arrayidx.i27 = getelementptr inbounds nuw double, ptr %6, i64 %indvars.iv23.i
  %25 = load double, ptr %arrayidx.i27, align 8, !tbaa !11
  %arrayidx2.i28 = getelementptr inbounds nuw double, ptr %3, i64 %indvars.iv23.i
  store double %25, ptr %arrayidx2.i28, align 8, !tbaa !11
  %cmp419.not.i = icmp eq i64 %indvars.iv23.i, 0
  br i1 %cmp419.not.i, label %for.end.i, label %for.body5.i

for.body5.i:                                      ; preds = %for.body.i26, %for.body5.i
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30, %for.body5.i ], [ 0, %for.body.i26 ]
  %26 = phi double [ %29, %for.body5.i ], [ %25, %for.body.i26 ]
  %arrayidx9.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv23.i, i64 %indvars.iv.i29
  %27 = load double, ptr %arrayidx9.i, align 8, !tbaa !11
  %arrayidx11.i = getelementptr inbounds nuw double, ptr %3, i64 %indvars.iv.i29
  %28 = load double, ptr %arrayidx11.i, align 8, !tbaa !11
  %neg.i = fneg double %27
  %29 = call double @llvm.fmuladd.f64(double %neg.i, double %28, double %26)
  store double %29, ptr %arrayidx2.i28, align 8, !tbaa !11
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, %indvars.iv23.i
  br i1 %exitcond.not.i31, label %for.end.i, label %for.body5.i, !llvm.loop !23

for.end.i:                                        ; preds = %for.body5.i, %for.body.i26
  %30 = phi double [ %25, %for.body.i26 ], [ %29, %for.body5.i ]
  %arrayidx19.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv23.i, i64 %indvars.iv23.i
  %31 = load double, ptr %arrayidx19.i, align 8, !tbaa !11
  %div.i32 = fdiv double %30, %31
  store double %div.i32, ptr %arrayidx2.i28, align 8, !tbaa !11
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next24.i, 2000
  br i1 %exitcond26.not.i, label %kernel_trisolv.exit, label %for.body.i26, !llvm.loop !24

kernel_trisolv.exit:                              ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i33) #11
  %call.i.i34 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i33, ptr noundef null) #11
  %cmp.not.i.i35 = icmp eq i32 %call.i.i34, 0
  br i1 %cmp.not.i.i35, label %polybench_timer_stop.exit, label %if.then.i.i36

if.then.i.i36:                                    ; preds = %kernel_trisolv.exit
  %call1.i.i37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i34)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_trisolv.exit, %if.then.i.i36
  %32 = load i64, ptr %Tp.i.i33, align 8, !tbaa !5
  %conv.i.i38 = sitofp i64 %32 to double
  %tv_usec.i.i39 = getelementptr inbounds nuw i8, ptr %Tp.i.i33, i64 8
  %33 = load i64, ptr %tv_usec.i.i39, align 8, !tbaa !10
  %conv2.i.i40 = sitofp i64 %33 to double
  %34 = call double @llvm.fmuladd.f64(double %conv2.i.i40, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i38)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i33) #11
  store double %34, ptr @polybench_t_end, align 8, !tbaa !11
  %35 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %34, %35
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %36 = load ptr, ptr %argv, align 8, !tbaa !25
  %strcmpload = load i8, ptr %36, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #11
  call void @free(ptr noundef nonnull %3) #11
  call void @free(ptr noundef nonnull %6) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %x) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %3 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds nuw double, ptr %x, i64 %indvars.iv
  %4 = load double, ptr %arrayidx, align 8, !tbaa !11
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.4.9, double noundef %4) #14
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16
  %rem4 = urem i16 %rem.lhs.trunc, 20
  %cmp3 = icmp eq i16 %rem4, 0
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !27

for.end:                                          ; preds = %for.inc
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
