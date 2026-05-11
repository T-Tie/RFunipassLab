; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/adi.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"u\00", align 1
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
  %Tp.i.i35 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i23 = alloca ptr, align 8
  %ret.i.i16 = alloca ptr, align 8
  %ret.i.i9 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #11
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 8000000) #11
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i9) #11
  store ptr null, ptr %ret.i.i9, align 8, !tbaa !13
  %call.i.i10 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i9, i64 noundef 4096, i64 noundef 8000000) #11
  %3 = load ptr, ptr %ret.i.i9, align 8, !tbaa !13
  %tobool.i.i11 = icmp eq ptr %3, null
  %tobool2.i.i12 = icmp ne i32 %call.i.i10, 0
  %or.cond.i.i13 = select i1 %tobool.i.i11, i1 true, i1 %tobool2.i.i12
  br i1 %or.cond.i.i13, label %if.then.i.i14, label %polybench_alloc_data.exit15

if.then.i.i14:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit15:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i16) #11
  store ptr null, ptr %ret.i.i16, align 8, !tbaa !13
  %call.i.i17 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i16, i64 noundef 4096, i64 noundef 8000000) #11
  %6 = load ptr, ptr %ret.i.i16, align 8, !tbaa !13
  %tobool.i.i18 = icmp eq ptr %6, null
  %tobool2.i.i19 = icmp ne i32 %call.i.i17, 0
  %or.cond.i.i20 = select i1 %tobool.i.i18, i1 true, i1 %tobool2.i.i19
  br i1 %or.cond.i.i20, label %if.then.i.i21, label %polybench_alloc_data.exit22

if.then.i.i21:                                    ; preds = %polybench_alloc_data.exit15
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %7) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit22:                      ; preds = %polybench_alloc_data.exit15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i16) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i23) #11
  store ptr null, ptr %ret.i.i23, align 8, !tbaa !13
  %call.i.i24 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i23, i64 noundef 4096, i64 noundef 8000000) #11
  %9 = load ptr, ptr %ret.i.i23, align 8, !tbaa !13
  %tobool.i.i25 = icmp eq ptr %9, null
  %tobool2.i.i26 = icmp ne i32 %call.i.i24, 0
  %or.cond.i.i27 = select i1 %tobool.i.i25, i1 true, i1 %tobool2.i.i26
  br i1 %or.cond.i.i27, label %if.then.i.i28, label %polybench_alloc_data.exit29

if.then.i.i28:                                    ; preds = %polybench_alloc_data.exit22
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %10) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit29:                      ; preds = %polybench_alloc_data.exit22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i23) #11
  br label %vector.ph

vector.ph:                                        ; preds = %polybench_alloc_data.exit29, %for.inc7.i
  %indvars.iv14.i = phi i64 [ 0, %polybench_alloc_data.exit29 ], [ %indvars.iv.next15.i, %for.inc7.i ]
  %12 = add nuw nsw i64 %indvars.iv14.i, 1000
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %12, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %13 = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %14 = trunc nuw nsw <2 x i64> %13 to <2 x i32>
  %15 = uitofp nneg <2 x i32> %14 to <2 x double>
  %16 = fdiv <2 x double> %15, splat (double 1.000000e+03)
  %17 = getelementptr inbounds nuw [1000 x double], ptr %0, i64 %indvars.iv14.i, i64 %index
  store <2 x double> %16, ptr %17, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %18 = icmp eq i64 %index.next, 1000
  br i1 %18, label %for.inc7.i, label %vector.body, !llvm.loop !17

for.inc7.i:                                       ; preds = %vector.body
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next15.i, 1000
  br i1 %exitcond18.not.i, label %init_array.exit, label %vector.ph, !llvm.loop !21

init_array.exit:                                  ; preds = %for.inc7.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #11
  %call.i.i30 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #11
  %cmp.not.i.i = icmp eq i32 %call.i.i30, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i31

if.then.i.i31:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i30)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i31
  %19 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %19 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %20 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %20 to double
  %21 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #11
  store double %21, ptr @polybench_t_start, align 8, !tbaa !11
  %arrayidx85.i = getelementptr inbounds nuw i8, ptr %3, i64 7992000
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %3, i64 8000
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc225.i, %polybench_timer_start.exit
  %t.0137.i = phi i32 [ 1, %polybench_timer_start.exit ], [ %inc226.i, %for.inc225.i ]
  br label %for.body33.i.lver.check

for.body33.i.lver.check:                          ; preds = %for.inc113.i, %for.cond15.preheader.i
  %indvar = phi i64 [ %indvar.next, %for.inc113.i ], [ 0, %for.cond15.preheader.i ]
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %for.inc113.i ], [ 1, %for.cond15.preheader.i ]
  %22 = mul nuw nsw i64 %indvar, 8000
  %23 = add nuw i64 %22, 8000
  %scevgep = getelementptr nuw i8, ptr %6, i64 %23
  %24 = add nuw i64 %22, 15992
  %scevgep43 = getelementptr i8, ptr %6, i64 %24
  %scevgep44 = getelementptr nuw i8, ptr %9, i64 %23
  %scevgep45 = getelementptr i8, ptr %9, i64 %24
  %arrayidx19.i = getelementptr inbounds nuw [1000 x double], ptr %3, i64 0, i64 %indvars.iv143.i
  store double 1.000000e+00, ptr %arrayidx19.i, align 8, !tbaa !11
  %arrayidx21.i = getelementptr inbounds nuw [1000 x double], ptr %6, i64 %indvars.iv143.i
  store double 0.000000e+00, ptr %arrayidx21.i, align 8, !tbaa !11
  %25 = load double, ptr %arrayidx19.i, align 8, !tbaa !11
  %arrayidx27.i = getelementptr inbounds nuw [1000 x double], ptr %9, i64 %indvars.iv143.i
  store double %25, ptr %arrayidx27.i, align 8, !tbaa !11
  %26 = add nsw i64 %indvars.iv143.i, -1
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1
  %bound0 = icmp ult ptr %scevgep, %scevgep45
  %bound1 = icmp ult ptr %scevgep44, %scevgep43
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body33.i.lver.orig, label %for.body33.i.ph

for.body33.i.lver.orig:                           ; preds = %for.body33.i.lver.check, %for.body33.i.lver.orig
  %indvars.iv.i32.lver.orig = phi i64 [ %indvars.iv.next.i33.lver.orig, %for.body33.i.lver.orig ], [ 1, %for.body33.i.lver.check ]
  %27 = add nsw i64 %indvars.iv.i32.lver.orig, -1
  %arrayidx39.i.lver.orig = getelementptr inbounds [1000 x double], ptr %6, i64 %indvars.iv143.i, i64 %27
  %28 = load double, ptr %arrayidx39.i.lver.orig, align 8, !tbaa !11
  %29 = call double @llvm.fmuladd.f64(double %28, double 0xC09F400000000001, double 0x40AF420000000001)
  %div41.i.lver.orig = fdiv double 0x409F400000000001, %29
  %arrayidx45.i.lver.orig = getelementptr inbounds nuw [1000 x double], ptr %6, i64 %indvars.iv143.i, i64 %indvars.iv.i32.lver.orig
  store double %div41.i.lver.orig, ptr %arrayidx45.i.lver.orig, align 8, !tbaa !11
  %arrayidx51.i.lver.orig = getelementptr inbounds [1000 x double], ptr %0, i64 %indvars.iv.i32.lver.orig, i64 %26
  %30 = load double, ptr %arrayidx51.i.lver.orig, align 8, !tbaa !11
  %arrayidx57.i.lver.orig = getelementptr inbounds nuw [1000 x double], ptr %0, i64 %indvars.iv.i32.lver.orig, i64 %indvars.iv143.i
  %31 = load double, ptr %arrayidx57.i.lver.orig, align 8, !tbaa !11
  %mul58.i.lver.orig = fmul double %31, 0xC09F3C0000000001
  %32 = call double @llvm.fmuladd.f64(double %30, double 0x408F400000000001, double %mul58.i.lver.orig)
  %arrayidx63.i.lver.orig = getelementptr inbounds nuw [1000 x double], ptr %0, i64 %indvars.iv.i32.lver.orig, i64 %indvars.iv.next144.i
  %33 = load double, ptr %arrayidx63.i.lver.orig, align 8, !tbaa !11
  %34 = call double @llvm.fmuladd.f64(double %33, double 0x408F400000000001, double %32)
  %arrayidx69.i.lver.orig = getelementptr inbounds [1000 x double], ptr %9, i64 %indvars.iv143.i, i64 %27
  %35 = load double, ptr %arrayidx69.i.lver.orig, align 8, !tbaa !11
  %36 = call double @llvm.fmuladd.f64(double %35, double 0x409F400000000001, double %34)
  %div78.i.lver.orig = fdiv double %36, %29
  %arrayidx82.i.lver.orig = getelementptr inbounds nuw [1000 x double], ptr %9, i64 %indvars.iv143.i, i64 %indvars.iv.i32.lver.orig
  store double %div78.i.lver.orig, ptr %arrayidx82.i.lver.orig, align 8, !tbaa !11
  %indvars.iv.next.i33.lver.orig = add nuw nsw i64 %indvars.iv.i32.lver.orig, 1
  %exitcond.not.i34.lver.orig = icmp eq i64 %indvars.iv.next.i33.lver.orig, 999
  br i1 %exitcond.not.i34.lver.orig, label %for.end.i, label %for.body33.i.lver.orig, !llvm.loop !22

for.body33.i.ph:                                  ; preds = %for.body33.i.lver.check
  %37 = mul nuw nsw i64 %indvar, 8000
  %38 = add nuw i64 %37, 8000
  %scevgep48 = getelementptr nuw i8, ptr %9, i64 %38
  %scevgep47 = getelementptr nuw i8, ptr %6, i64 %38
  %load_initial = load double, ptr %scevgep47, align 8
  %load_initial49 = load double, ptr %scevgep48, align 8
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.body33.i, %for.body33.i.ph
  %store_forwarded50 = phi double [ %load_initial49, %for.body33.i.ph ], [ %div78.i, %for.body33.i ]
  %store_forwarded = phi double [ %load_initial, %for.body33.i.ph ], [ %div41.i, %for.body33.i ]
  %indvars.iv.i32 = phi i64 [ 1, %for.body33.i.ph ], [ %indvars.iv.next.i33, %for.body33.i ]
  %39 = call double @llvm.fmuladd.f64(double %store_forwarded, double 0xC09F400000000001, double 0x40AF420000000001)
  %div41.i = fdiv double 0x409F400000000001, %39
  %arrayidx45.i = getelementptr inbounds nuw [1000 x double], ptr %6, i64 %indvars.iv143.i, i64 %indvars.iv.i32
  store double %div41.i, ptr %arrayidx45.i, align 8, !tbaa !11
  %arrayidx51.i = getelementptr inbounds [1000 x double], ptr %0, i64 %indvars.iv.i32, i64 %26
  %40 = load double, ptr %arrayidx51.i, align 8, !tbaa !11
  %arrayidx57.i = getelementptr inbounds nuw [1000 x double], ptr %0, i64 %indvars.iv.i32, i64 %indvars.iv143.i
  %41 = load double, ptr %arrayidx57.i, align 8, !tbaa !11
  %mul58.i = fmul double %41, 0xC09F3C0000000001
  %42 = call double @llvm.fmuladd.f64(double %40, double 0x408F400000000001, double %mul58.i)
  %arrayidx63.i = getelementptr inbounds nuw [1000 x double], ptr %0, i64 %indvars.iv.i32, i64 %indvars.iv.next144.i
  %43 = load double, ptr %arrayidx63.i, align 8, !tbaa !11
  %44 = call double @llvm.fmuladd.f64(double %43, double 0x408F400000000001, double %42)
  %45 = call double @llvm.fmuladd.f64(double %store_forwarded50, double 0x409F400000000001, double %44)
  %div78.i = fdiv double %45, %39
  %arrayidx82.i = getelementptr inbounds nuw [1000 x double], ptr %9, i64 %indvars.iv143.i, i64 %indvars.iv.i32
  store double %div78.i, ptr %arrayidx82.i, align 8, !tbaa !11
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, 999
  br i1 %exitcond.not.i34, label %for.end.i, label %for.body33.i, !llvm.loop !22

for.end.i:                                        ; preds = %for.body33.i, %for.body33.i.lver.orig
  %arrayidx87.i = getelementptr inbounds nuw [1000 x double], ptr %arrayidx85.i, i64 0, i64 %indvars.iv143.i
  store double 1.000000e+00, ptr %arrayidx87.i, align 8, !tbaa !11
  %invariant.gep130.i = getelementptr inbounds nuw [1000 x double], ptr %invariant.gep.i, i64 0, i64 %indvars.iv143.i
  br label %for.body92.i

for.body92.i:                                     ; preds = %for.body92.i, %for.end.i
  %indvars.iv140.i = phi i64 [ 998, %for.end.i ], [ %indvars.iv.next141.i, %for.body92.i ]
  %arrayidx96.i = getelementptr inbounds nuw [1000 x double], ptr %6, i64 %indvars.iv143.i, i64 %indvars.iv140.i
  %46 = load double, ptr %arrayidx96.i, align 8, !tbaa !11
  %gep131.i = getelementptr inbounds nuw [1000 x double], ptr %invariant.gep130.i, i64 %indvars.iv140.i
  %47 = load double, ptr %gep131.i, align 8, !tbaa !11
  %arrayidx106.i = getelementptr inbounds nuw [1000 x double], ptr %9, i64 %indvars.iv143.i, i64 %indvars.iv140.i
  %48 = load double, ptr %arrayidx106.i, align 8, !tbaa !11
  %49 = call double @llvm.fmuladd.f64(double %46, double %47, double %48)
  %arrayidx110.i = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %indvars.iv140.i, i64 %indvars.iv143.i
  store double %49, ptr %arrayidx110.i, align 8, !tbaa !11
  %indvars.iv.next141.i = add nsw i64 %indvars.iv140.i, -1
  %cmp90.i = icmp samesign ugt i64 %indvars.iv140.i, 1
  br i1 %cmp90.i, label %for.body92.i, label %for.inc113.i, !llvm.loop !23

for.inc113.i:                                     ; preds = %for.body92.i
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next144.i, 999
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond147.not.i, label %for.body137.i.lver.check, label %for.body33.i.lver.check, !llvm.loop !24

for.body137.i.lver.check:                         ; preds = %for.inc113.i, %for.inc222.i
  %indvar51 = phi i64 [ %indvar.next52, %for.inc222.i ], [ 0, %for.inc113.i ]
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i, %for.inc222.i ], [ 1, %for.inc113.i ]
  %50 = mul nuw nsw i64 %indvar51, 8000
  %51 = add nuw i64 %50, 8000
  %scevgep53 = getelementptr nuw i8, ptr %6, i64 %51
  %52 = add nuw i64 %50, 15992
  %scevgep54 = getelementptr i8, ptr %6, i64 %52
  %scevgep55 = getelementptr nuw i8, ptr %9, i64 %51
  %scevgep56 = getelementptr i8, ptr %9, i64 %52
  %arrayidx122.i = getelementptr inbounds nuw [1000 x double], ptr %0, i64 %indvars.iv157.i
  store double 1.000000e+00, ptr %arrayidx122.i, align 8, !tbaa !11
  %arrayidx125.i = getelementptr inbounds nuw [1000 x double], ptr %6, i64 %indvars.iv157.i
  store double 0.000000e+00, ptr %arrayidx125.i, align 8, !tbaa !11
  %53 = load double, ptr %arrayidx122.i, align 8, !tbaa !11
  %arrayidx131.i = getelementptr inbounds nuw [1000 x double], ptr %9, i64 %indvars.iv157.i
  store double %53, ptr %arrayidx131.i, align 8, !tbaa !11
  %54 = getelementptr [1000 x double], ptr %3, i64 %indvars.iv157.i
  %arrayidx153.i = getelementptr i8, ptr %54, i64 -8000
  %arrayidx165.i = getelementptr inbounds nuw i8, ptr %54, i64 8000
  %bound057 = icmp ult ptr %scevgep53, %scevgep56
  %bound158 = icmp ult ptr %scevgep55, %scevgep54
  %found.conflict59 = and i1 %bound057, %bound158
  br i1 %found.conflict59, label %for.body137.i.lver.orig, label %for.body137.i.ph

for.body137.i.lver.orig:                          ; preds = %for.body137.i.lver.check, %for.body137.i.lver.orig
  %indvars.iv148.i.lver.orig = phi i64 [ %indvars.iv.next149.i.lver.orig, %for.body137.i.lver.orig ], [ 1, %for.body137.i.lver.check ]
  %55 = add nsw i64 %indvars.iv148.i.lver.orig, -1
  %arrayidx143.i.lver.orig = getelementptr inbounds [1000 x double], ptr %6, i64 %indvars.iv157.i, i64 %55
  %56 = load double, ptr %arrayidx143.i.lver.orig, align 8, !tbaa !11
  %57 = call double @llvm.fmuladd.f64(double %56, double 0xC08F400000000001, double 0x409F440000000001)
  %div145.i.lver.orig = fdiv double 0x408F400000000001, %57
  %arrayidx149.i.lver.orig = getelementptr inbounds nuw [1000 x double], ptr %6, i64 %indvars.iv157.i, i64 %indvars.iv148.i.lver.orig
  store double %div145.i.lver.orig, ptr %arrayidx149.i.lver.orig, align 8, !tbaa !11
  %arrayidx155.i.lver.orig = getelementptr inbounds nuw [1000 x double], ptr %arrayidx153.i, i64 0, i64 %indvars.iv148.i.lver.orig
  %58 = load double, ptr %arrayidx155.i.lver.orig, align 8, !tbaa !11
  %arrayidx161.i.lver.orig = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %indvars.iv157.i, i64 %indvars.iv148.i.lver.orig
  %59 = load double, ptr %arrayidx161.i.lver.orig, align 8, !tbaa !11
  %mul162.i.lver.orig = fmul double %59, 0xC0AF3E0000000001
  %60 = call double @llvm.fmuladd.f64(double %58, double 0x409F400000000001, double %mul162.i.lver.orig)
  %arrayidx167.i.lver.orig = getelementptr inbounds nuw [1000 x double], ptr %arrayidx165.i, i64 0, i64 %indvars.iv148.i.lver.orig
  %61 = load double, ptr %arrayidx167.i.lver.orig, align 8, !tbaa !11
  %62 = call double @llvm.fmuladd.f64(double %61, double 0x409F400000000001, double %60)
  %arrayidx174.i.lver.orig = getelementptr inbounds [1000 x double], ptr %9, i64 %indvars.iv157.i, i64 %55
  %63 = load double, ptr %arrayidx174.i.lver.orig, align 8, !tbaa !11
  %64 = call double @llvm.fmuladd.f64(double %63, double 0x408F400000000001, double %62)
  %div183.i.lver.orig = fdiv double %64, %57
  %arrayidx187.i.lver.orig = getelementptr inbounds nuw [1000 x double], ptr %9, i64 %indvars.iv157.i, i64 %indvars.iv148.i.lver.orig
  store double %div183.i.lver.orig, ptr %arrayidx187.i.lver.orig, align 8, !tbaa !11
  %indvars.iv.next149.i.lver.orig = add nuw nsw i64 %indvars.iv148.i.lver.orig, 1
  %exitcond152.not.i.lver.orig = icmp eq i64 %indvars.iv.next149.i.lver.orig, 999
  br i1 %exitcond152.not.i.lver.orig, label %for.end190.i, label %for.body137.i.lver.orig, !llvm.loop !25

for.body137.i.ph:                                 ; preds = %for.body137.i.lver.check
  %65 = mul nuw nsw i64 %indvar51, 8000
  %66 = add nuw i64 %65, 8000
  %scevgep64 = getelementptr nuw i8, ptr %9, i64 %66
  %scevgep61 = getelementptr nuw i8, ptr %6, i64 %66
  %load_initial62 = load double, ptr %scevgep61, align 8
  %load_initial65 = load double, ptr %scevgep64, align 8
  br label %for.body137.i

for.body137.i:                                    ; preds = %for.body137.i, %for.body137.i.ph
  %store_forwarded66 = phi double [ %load_initial65, %for.body137.i.ph ], [ %div183.i, %for.body137.i ]
  %store_forwarded63 = phi double [ %load_initial62, %for.body137.i.ph ], [ %div145.i, %for.body137.i ]
  %indvars.iv148.i = phi i64 [ 1, %for.body137.i.ph ], [ %indvars.iv.next149.i, %for.body137.i ]
  %67 = call double @llvm.fmuladd.f64(double %store_forwarded63, double 0xC08F400000000001, double 0x409F440000000001)
  %div145.i = fdiv double 0x408F400000000001, %67
  %arrayidx149.i = getelementptr inbounds nuw [1000 x double], ptr %6, i64 %indvars.iv157.i, i64 %indvars.iv148.i
  store double %div145.i, ptr %arrayidx149.i, align 8, !tbaa !11
  %arrayidx155.i = getelementptr inbounds nuw [1000 x double], ptr %arrayidx153.i, i64 0, i64 %indvars.iv148.i
  %68 = load double, ptr %arrayidx155.i, align 8, !tbaa !11
  %arrayidx161.i = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %indvars.iv157.i, i64 %indvars.iv148.i
  %69 = load double, ptr %arrayidx161.i, align 8, !tbaa !11
  %mul162.i = fmul double %69, 0xC0AF3E0000000001
  %70 = call double @llvm.fmuladd.f64(double %68, double 0x409F400000000001, double %mul162.i)
  %arrayidx167.i = getelementptr inbounds nuw [1000 x double], ptr %arrayidx165.i, i64 0, i64 %indvars.iv148.i
  %71 = load double, ptr %arrayidx167.i, align 8, !tbaa !11
  %72 = call double @llvm.fmuladd.f64(double %71, double 0x409F400000000001, double %70)
  %73 = call double @llvm.fmuladd.f64(double %store_forwarded66, double 0x408F400000000001, double %72)
  %div183.i = fdiv double %73, %67
  %arrayidx187.i = getelementptr inbounds nuw [1000 x double], ptr %9, i64 %indvars.iv157.i, i64 %indvars.iv148.i
  store double %div183.i, ptr %arrayidx187.i, align 8, !tbaa !11
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, 999
  br i1 %exitcond152.not.i, label %for.end190.i, label %for.body137.i, !llvm.loop !25

for.end190.i:                                     ; preds = %for.body137.i, %for.body137.i.lver.orig
  %arrayidx195.i = getelementptr inbounds nuw i8, ptr %arrayidx122.i, i64 7992
  store double 1.000000e+00, ptr %arrayidx195.i, align 8, !tbaa !11
  br label %for.body200.i

for.body200.i:                                    ; preds = %for.body200.i, %for.end190.i
  %74 = phi double [ 1.000000e+00, %for.end190.i ], [ %77, %for.body200.i ]
  %indvars.iv153.i = phi i64 [ 998, %for.end190.i ], [ %indvars.iv.next154.i, %for.body200.i ]
  %arrayidx204.i = getelementptr inbounds nuw [1000 x double], ptr %6, i64 %indvars.iv157.i, i64 %indvars.iv153.i
  %75 = load double, ptr %arrayidx204.i, align 8, !tbaa !11
  %arrayidx214.i = getelementptr inbounds nuw [1000 x double], ptr %9, i64 %indvars.iv157.i, i64 %indvars.iv153.i
  %76 = load double, ptr %arrayidx214.i, align 8, !tbaa !11
  %77 = call double @llvm.fmuladd.f64(double %75, double %74, double %76)
  %arrayidx218.i = getelementptr inbounds nuw [1000 x double], ptr %0, i64 %indvars.iv157.i, i64 %indvars.iv153.i
  store double %77, ptr %arrayidx218.i, align 8, !tbaa !11
  %indvars.iv.next154.i = add nsw i64 %indvars.iv153.i, -1
  %cmp198.i = icmp samesign ugt i64 %indvars.iv153.i, 1
  br i1 %cmp198.i, label %for.body200.i, label %for.inc222.i, !llvm.loop !26

for.inc222.i:                                     ; preds = %for.body200.i
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1
  %exitcond160.not.i = icmp eq i64 %indvars.iv.next158.i, 999
  %indvar.next52 = add i64 %indvar51, 1
  br i1 %exitcond160.not.i, label %for.inc225.i, label %for.body137.i.lver.check, !llvm.loop !27

for.inc225.i:                                     ; preds = %for.inc222.i
  %inc226.i = add nuw nsw i32 %t.0137.i, 1
  %exitcond161.not.i = icmp eq i32 %inc226.i, 501
  br i1 %exitcond161.not.i, label %kernel_adi.exit, label %for.cond15.preheader.i, !llvm.loop !28

kernel_adi.exit:                                  ; preds = %for.inc225.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i35) #11
  %call.i.i36 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i35, ptr noundef null) #11
  %cmp.not.i.i37 = icmp eq i32 %call.i.i36, 0
  br i1 %cmp.not.i.i37, label %polybench_timer_stop.exit, label %if.then.i.i38

if.then.i.i38:                                    ; preds = %kernel_adi.exit
  %call1.i.i39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i36)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_adi.exit, %if.then.i.i38
  %78 = load i64, ptr %Tp.i.i35, align 8, !tbaa !5
  %conv.i.i40 = sitofp i64 %78 to double
  %tv_usec.i.i41 = getelementptr inbounds nuw i8, ptr %Tp.i.i35, i64 8
  %79 = load i64, ptr %tv_usec.i.i41, align 8, !tbaa !10
  %conv2.i.i42 = sitofp i64 %79 to double
  %80 = call double @llvm.fmuladd.f64(double %conv2.i.i42, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i40)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i35) #11
  store double %80, ptr @polybench_t_end, align 8, !tbaa !11
  %81 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %80, %81
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %82 = load ptr, ptr %argv, align 8, !tbaa !29
  %strcmpload = load i8, ptr %82, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #11
  call void @free(ptr noundef nonnull %3) #11
  call void @free(ptr noundef nonnull %6) #11
  call void @free(ptr noundef nonnull %9) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %u) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv13 = phi i64 [ 0, %entry ], [ %indvars.iv.next14, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv13, 1000
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
  %arrayidx8 = getelementptr inbounds nuw [1000 x double], ptr %u, i64 %indvars.iv13, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1000
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !31

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next14, 1000
  br i1 %exitcond17.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !32

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
