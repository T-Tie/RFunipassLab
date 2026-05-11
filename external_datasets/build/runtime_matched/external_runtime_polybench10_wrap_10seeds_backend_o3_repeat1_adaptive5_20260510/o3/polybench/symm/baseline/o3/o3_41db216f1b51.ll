; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench/symm.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
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
  %Tp.i.i33 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i19 = alloca ptr, align 8
  %ret.i.i12 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #12
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 9600000) #12
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %1 = ptrtoint ptr %0 to i64
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %3 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %2) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i12) #12
  store ptr null, ptr %ret.i.i12, align 8, !tbaa !13
  %call.i.i13 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i12, i64 noundef 4096, i64 noundef 8000000) #12
  %4 = load ptr, ptr %ret.i.i12, align 8, !tbaa !13
  %tobool.i.i14 = icmp eq ptr %4, null
  %tobool2.i.i15 = icmp ne i32 %call.i.i13, 0
  %or.cond.i.i16 = select i1 %tobool.i.i14, i1 true, i1 %tobool2.i.i15
  br i1 %or.cond.i.i16, label %if.then.i.i17, label %polybench_alloc_data.exit18

if.then.i.i17:                                    ; preds = %polybench_alloc_data.exit
  %5 = load ptr, ptr @stderr, align 8, !tbaa !15
  %6 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %5) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit18:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i12) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i19) #12
  store ptr null, ptr %ret.i.i19, align 8, !tbaa !13
  %call.i.i20 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i19, i64 noundef 4096, i64 noundef 9600000) #12
  %7 = load ptr, ptr %ret.i.i19, align 8, !tbaa !13
  %tobool.i.i21 = icmp eq ptr %7, null
  %tobool2.i.i22 = icmp ne i32 %call.i.i20, 0
  %or.cond.i.i23 = select i1 %tobool.i.i21, i1 true, i1 %tobool2.i.i22
  br i1 %or.cond.i.i23, label %if.then.i.i24, label %polybench_alloc_data.exit25

if.then.i.i24:                                    ; preds = %polybench_alloc_data.exit18
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %9 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %8) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit25:                      ; preds = %polybench_alloc_data.exit18
  %10 = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i19) #12
  %11 = sub i64 %10, %1
  %diff.check = icmp ult i64 %11, 16
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc16.i, %polybench_alloc_data.exit25
  %indvars.iv41.i = phi i64 [ 0, %polybench_alloc_data.exit25 ], [ %indvars.iv.next42.i, %for.inc16.i ]
  %12 = add nuw nsw i64 %indvars.iv41.i, 1200
  br i1 %diff.check, label %for.body3.i, label %vector.ph

vector.ph:                                        ; preds = %for.cond1.preheader.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv41.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert45 = insertelement <2 x i64> poison, i64 %12, i64 0
  %broadcast.splat46 = shufflevector <2 x i64> %broadcast.splatinsert45, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %13 = add nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %14 = trunc nuw nsw <2 x i64> %13 to <2 x i32>
  %15 = urem <2 x i32> %14, splat (i32 100)
  %16 = uitofp nneg <2 x i32> %15 to <2 x double>
  %17 = fdiv <2 x double> %16, splat (double 1.000000e+03)
  %18 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv41.i, i64 %index
  store <2 x double> %17, ptr %18, align 8, !tbaa !11
  %19 = sub nuw nsw <2 x i64> %broadcast.splat46, %vec.ind
  %20 = trunc nuw nsw <2 x i64> %19 to <2 x i32>
  %21 = urem <2 x i32> %20, splat (i32 100)
  %22 = uitofp nneg <2 x i32> %21 to <2 x double>
  %23 = fdiv <2 x double> %22, splat (double 1.000000e+03)
  %24 = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %indvars.iv41.i, i64 %index
  store <2 x double> %23, ptr %24, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %25 = icmp eq i64 %index.next, 1200
  br i1 %25, label %for.inc16.i, label %vector.body, !llvm.loop !17

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %26 = add nuw nsw i64 %indvars.iv.i, %indvars.iv41.i
  %27 = trunc nuw nsw i64 %26 to i32
  %rem.i = urem i32 %27, 100
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.000000e+03
  %arrayidx6.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv41.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx6.i, align 8, !tbaa !11
  %28 = sub nuw nsw i64 %12, %indvars.iv.i
  %29 = trunc nuw nsw i64 %28 to i32
  %rem8.i = urem i32 %29, 100
  %conv9.i = uitofp nneg i32 %rem8.i to double
  %div11.i = fdiv double %conv9.i, 1.000000e+03
  %arrayidx15.i = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %indvars.iv41.i, i64 %indvars.iv.i
  store double %div11.i, ptr %arrayidx15.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1200
  br i1 %exitcond.not.i, label %for.inc16.i, label %for.body3.i, !llvm.loop !21

for.inc16.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, 1000
  br i1 %exitcond45.not.i, label %for.cond23.preheader.i, label %for.cond1.preheader.i, !llvm.loop !22

for.cond19.loopexit.i:                            ; preds = %for.body43.i, %middle.block52, %for.end38.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next60.i, 1000
  br i1 %exitcond64.not.i, label %init_array.exit, label %for.cond23.preheader.i, !llvm.loop !23

for.cond23.preheader.i:                           ; preds = %for.inc16.i, %for.cond19.loopexit.i
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %for.cond19.loopexit.i ], [ 0, %for.inc16.i ]
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %for.cond19.loopexit.i ], [ 1, %for.inc16.i ]
  %30 = sub nsw i64 999, %indvars.iv59.i
  %min.iters.check55 = icmp samesign ult i64 %indvars.iv53.i, 2
  br i1 %min.iters.check55, label %for.body26.i.preheader, label %vector.ph56

vector.ph56:                                      ; preds = %for.cond23.preheader.i
  %n.vec58 = and i64 %indvars.iv53.i, 9223372036854775806
  %broadcast.splatinsert59 = insertelement <2 x i64> poison, i64 %indvars.iv59.i, i64 0
  %broadcast.splat60 = shufflevector <2 x i64> %broadcast.splatinsert59, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph56
  %index62 = phi i64 [ 0, %vector.ph56 ], [ %index.next64, %vector.body61 ]
  %vec.ind63 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph56 ], [ %vec.ind.next65, %vector.body61 ]
  %31 = add nuw nsw <2 x i64> %vec.ind63, %broadcast.splat60
  %32 = trunc nuw nsw <2 x i64> %31 to <2 x i32>
  %33 = urem <2 x i32> %32, splat (i32 100)
  %34 = uitofp nneg <2 x i32> %33 to <2 x double>
  %35 = fdiv <2 x double> %34, splat (double 1.000000e+03)
  %36 = getelementptr inbounds nuw [1000 x double], ptr %4, i64 %indvars.iv59.i, i64 %index62
  store <2 x double> %35, ptr %36, align 8, !tbaa !11
  %index.next64 = add nuw i64 %index62, 2
  %vec.ind.next65 = add <2 x i64> %vec.ind63, splat (i64 2)
  %37 = icmp eq i64 %index.next64, %n.vec58
  br i1 %37, label %middle.block66, label %vector.body61, !llvm.loop !24

middle.block66:                                   ; preds = %vector.body61
  %cmp.n67 = icmp eq i64 %indvars.iv53.i, %n.vec58
  br i1 %cmp.n67, label %for.end38.i, label %for.body26.i.preheader

for.body26.i.preheader:                           ; preds = %for.cond23.preheader.i, %middle.block66
  %indvars.iv46.i.ph = phi i64 [ 0, %for.cond23.preheader.i ], [ %n.vec58, %middle.block66 ]
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.body26.i.preheader, %for.body26.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %for.body26.i ], [ %indvars.iv46.i.ph, %for.body26.i.preheader ]
  %38 = add nuw nsw i64 %indvars.iv46.i, %indvars.iv59.i
  %39 = trunc nuw nsw i64 %38 to i32
  %rem28.i = urem i32 %39, 100
  %conv29.i = uitofp nneg i32 %rem28.i to double
  %div31.i = fdiv double %conv29.i, 1.000000e+03
  %arrayidx35.i = getelementptr inbounds nuw [1000 x double], ptr %4, i64 %indvars.iv59.i, i64 %indvars.iv46.i
  store double %div31.i, ptr %arrayidx35.i, align 8, !tbaa !11
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next47.i, %indvars.iv53.i
  br i1 %exitcond52.not.i, label %for.end38.i, label %for.body26.i, !llvm.loop !25

for.end38.i:                                      ; preds = %for.body26.i, %middle.block66
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1
  %cmp4135.i = icmp samesign ult i64 %indvars.iv59.i, 999
  br i1 %cmp4135.i, label %for.body43.i.preheader, label %for.cond19.loopexit.i

for.body43.i.preheader:                           ; preds = %for.end38.i
  %min.iters.check = icmp ult i64 %30, 2
  br i1 %min.iters.check, label %for.body43.i.preheader87, label %vector.ph48

vector.ph48:                                      ; preds = %for.body43.i.preheader
  %n.vec = and i64 %30, -2
  %40 = add i64 %indvars.iv53.i, %n.vec
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph48
  %index50 = phi i64 [ 0, %vector.ph48 ], [ %index.next51, %vector.body49 ]
  %offset.idx = add i64 %indvars.iv53.i, %index50
  %41 = getelementptr inbounds nuw [1000 x double], ptr %4, i64 %indvars.iv59.i, i64 %offset.idx
  store <2 x double> splat (double -9.990000e+02), ptr %41, align 8, !tbaa !11
  %index.next51 = add nuw i64 %index50, 2
  %42 = icmp eq i64 %index.next51, %n.vec
  br i1 %42, label %middle.block52, label %vector.body49, !llvm.loop !26

middle.block52:                                   ; preds = %vector.body49
  %cmp.n = icmp eq i64 %30, %n.vec
  br i1 %cmp.n, label %for.cond19.loopexit.i, label %for.body43.i.preheader87

for.body43.i.preheader87:                         ; preds = %for.body43.i.preheader, %middle.block52
  %indvars.iv55.i.ph = phi i64 [ %indvars.iv53.i, %for.body43.i.preheader ], [ %40, %middle.block52 ]
  br label %for.body43.i

for.body43.i:                                     ; preds = %for.body43.i.preheader87, %for.body43.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %for.body43.i ], [ %indvars.iv55.i.ph, %for.body43.i.preheader87 ]
  %arrayidx47.i = getelementptr inbounds nuw [1000 x double], ptr %4, i64 %indvars.iv59.i, i64 %indvars.iv55.i
  store double -9.990000e+02, ptr %arrayidx47.i, align 8, !tbaa !11
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next56.i, 1000
  br i1 %exitcond58.not.i, label %for.cond19.loopexit.i, label %for.body43.i, !llvm.loop !27

init_array.exit:                                  ; preds = %for.cond19.loopexit.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #12
  %call.i.i26 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #12
  %cmp.not.i.i = icmp eq i32 %call.i.i26, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i27

if.then.i.i27:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i26)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i27
  %43 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %43 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %44 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %44 to double
  %45 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #12
  store double %45, ptr @polybench_t_start, align 8, !tbaa !11
  %scevgep = getelementptr i8, ptr %0, i64 9600
  %scevgep70 = getelementptr i8, ptr %7, i64 9600
  %scevgep71 = getelementptr i8, ptr %4, i64 8000000
  %bound0 = icmp ult ptr %0, %scevgep70
  %bound1 = icmp ult ptr %7, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound072 = icmp ult ptr %0, %scevgep71
  %bound173 = icmp ult ptr %4, %scevgep
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx = or i1 %found.conflict, %found.conflict74
  br label %for.cond1.preheader.i28

for.cond1.preheader.i28:                          ; preds = %for.inc50.i, %polybench_timer_start.exit
  %indvars.iv47.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next48.i, %for.inc50.i ]
  %cmp532.not.i = icmp eq i64 %indvars.iv47.i, 0
  %arrayidx40.i = getelementptr inbounds nuw [1000 x double], ptr %4, i64 %indvars.iv47.i, i64 %indvars.iv47.i
  br i1 %cmp532.not.i, label %vector.memcheck69, label %for.cond4.preheader.us.i

vector.memcheck69:                                ; preds = %for.cond1.preheader.i28
  br i1 %conflict.rdx, label %for.cond4.preheader.i, label %vector.body77.preheader

vector.body77.preheader:                          ; preds = %vector.memcheck69
  %46 = load double, ptr %arrayidx40.i, align 8, !tbaa !11, !alias.scope !28
  %broadcast.splatinsert80 = insertelement <2 x double> poison, double %46, i64 0
  %broadcast.splat81 = shufflevector <2 x double> %broadcast.splatinsert80, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77.preheader, %vector.body77
  %index78 = phi i64 [ %index.next82, %vector.body77 ], [ 0, %vector.body77.preheader ]
  %47 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 0, i64 %index78
  %wide.load = load <2 x double>, ptr %47, align 8, !tbaa !11, !alias.scope !31, !noalias !33
  %48 = getelementptr inbounds nuw [1200 x double], ptr %7, i64 0, i64 %index78
  %wide.load79 = load <2 x double>, ptr %48, align 8, !tbaa !11, !alias.scope !35
  %49 = fmul <2 x double> %wide.load79, splat (double 1.500000e+00)
  %50 = fmul <2 x double> %49, %broadcast.splat81
  %51 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> splat (double 1.200000e+00), <2 x double> %50)
  %52 = fadd <2 x double> %51, zeroinitializer
  store <2 x double> %52, ptr %47, align 8, !tbaa !11, !alias.scope !31, !noalias !33
  %index.next82 = add nuw i64 %index78, 2
  %53 = icmp eq i64 %index.next82, 1200
  br i1 %53, label %for.inc50.i, label %vector.body77, !llvm.loop !36

for.cond4.preheader.us.i:                         ; preds = %for.cond1.preheader.i28, %for.cond4.for.end_crit_edge.us.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %for.cond4.for.end_crit_edge.us.i ], [ 0, %for.cond1.preheader.i28 ]
  %arrayidx8.us.i = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %indvars.iv47.i, i64 %indvars.iv39.i
  br label %for.body6.us.i

for.body6.us.i:                                   ; preds = %for.body6.us.i, %for.cond4.preheader.us.i
  %indvars.iv.i29 = phi i64 [ 0, %for.cond4.preheader.us.i ], [ %indvars.iv.next.i30, %for.body6.us.i ]
  %temp2.034.us.i = phi double [ 0.000000e+00, %for.cond4.preheader.us.i ], [ %60, %for.body6.us.i ]
  %54 = load double, ptr %arrayidx8.us.i, align 8, !tbaa !11
  %mul.us.i = fmul double %54, 1.500000e+00
  %arrayidx12.us.i = getelementptr inbounds nuw [1000 x double], ptr %4, i64 %indvars.iv47.i, i64 %indvars.iv.i29
  %55 = load double, ptr %arrayidx12.us.i, align 8, !tbaa !11
  %arrayidx17.us.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv.i29, i64 %indvars.iv39.i
  %56 = load double, ptr %arrayidx17.us.i, align 8, !tbaa !11
  %57 = call double @llvm.fmuladd.f64(double %mul.us.i, double %55, double %56)
  store double %57, ptr %arrayidx17.us.i, align 8, !tbaa !11
  %arrayidx21.us.i = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %indvars.iv.i29, i64 %indvars.iv39.i
  %58 = load double, ptr %arrayidx21.us.i, align 8, !tbaa !11
  %59 = load double, ptr %arrayidx12.us.i, align 8, !tbaa !11
  %60 = call double @llvm.fmuladd.f64(double %58, double %59, double %temp2.034.us.i)
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, %indvars.iv47.i
  br i1 %exitcond.not.i31, label %for.cond4.for.end_crit_edge.us.i, label %for.body6.us.i, !llvm.loop !37

for.cond4.for.end_crit_edge.us.i:                 ; preds = %for.body6.us.i
  %arrayidx30.us.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv47.i, i64 %indvars.iv39.i
  %61 = load double, ptr %arrayidx30.us.i, align 8, !tbaa !11
  %62 = load double, ptr %arrayidx8.us.i, align 8, !tbaa !11
  %mul36.us.i = fmul double %62, 1.500000e+00
  %63 = load double, ptr %arrayidx40.i, align 8, !tbaa !11
  %mul41.us.i = fmul double %mul36.us.i, %63
  %64 = call double @llvm.fmuladd.f64(double %61, double 1.200000e+00, double %mul41.us.i)
  %65 = call double @llvm.fmuladd.f64(double %60, double 1.500000e+00, double %64)
  store double %65, ptr %arrayidx30.us.i, align 8, !tbaa !11
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 1200
  br i1 %exitcond42.not.i, label %for.inc50.i, label %for.cond4.preheader.us.i, !llvm.loop !38

for.cond4.preheader.i:                            ; preds = %vector.memcheck69, %for.cond4.preheader.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %for.cond4.preheader.i ], [ 0, %vector.memcheck69 ]
  %arrayidx30.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 0, i64 %indvars.iv43.i
  %66 = load double, ptr %arrayidx30.i, align 8, !tbaa !11
  %arrayidx35.i32 = getelementptr inbounds nuw [1200 x double], ptr %7, i64 0, i64 %indvars.iv43.i
  %67 = load double, ptr %arrayidx35.i32, align 8, !tbaa !11
  %mul36.i = fmul double %67, 1.500000e+00
  %68 = load double, ptr %arrayidx40.i, align 8, !tbaa !11
  %mul41.i = fmul double %mul36.i, %68
  %69 = call double @llvm.fmuladd.f64(double %66, double 1.200000e+00, double %mul41.i)
  %70 = fadd double %69, 0.000000e+00
  store double %70, ptr %arrayidx30.i, align 8, !tbaa !11
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next44.i, 1200
  br i1 %exitcond46.not.i, label %for.inc50.i, label %for.cond4.preheader.i, !llvm.loop !39

for.inc50.i:                                      ; preds = %for.cond4.for.end_crit_edge.us.i, %vector.body77, %for.cond4.preheader.i
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next48.i, 1000
  br i1 %exitcond50.not.i, label %kernel_symm.exit, label %for.cond1.preheader.i28, !llvm.loop !40

kernel_symm.exit:                                 ; preds = %for.inc50.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i33) #12
  %call.i.i34 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i33, ptr noundef null) #12
  %cmp.not.i.i35 = icmp eq i32 %call.i.i34, 0
  br i1 %cmp.not.i.i35, label %polybench_timer_stop.exit, label %if.then.i.i36

if.then.i.i36:                                    ; preds = %kernel_symm.exit
  %call1.i.i37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i34)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_symm.exit, %if.then.i.i36
  %71 = load i64, ptr %Tp.i.i33, align 8, !tbaa !5
  %conv.i.i38 = sitofp i64 %71 to double
  %tv_usec.i.i39 = getelementptr inbounds nuw i8, ptr %Tp.i.i33, i64 8
  %72 = load i64, ptr %tv_usec.i.i39, align 8, !tbaa !10
  %conv2.i.i40 = sitofp i64 %72 to double
  %73 = call double @llvm.fmuladd.f64(double %conv2.i.i40, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i38)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i33) #12
  store double %73, ptr @polybench_t_end, align 8, !tbaa !11
  %74 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %73, %74
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %75 = load ptr, ptr %argv, align 8, !tbaa !41
  %strcmpload = load i8, ptr %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #12
  call void @free(ptr noundef nonnull %4) #12
  call void @free(ptr noundef nonnull %7) #12
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %C) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv12 = phi i64 [ 0, %entry ], [ %indvars.iv.next13, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv12, 1000
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
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %C, i64 %indvars.iv12, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1200
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !43

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond16.not = icmp eq i64 %indvars.iv.next13, 1000
  br i1 %exitcond16.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !44

for.end12:                                        ; preds = %for.inc10
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #15
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #11

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
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!21 = distinct !{!21, !18, !19}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18, !19, !20}
!25 = distinct !{!25, !18, !19}
!26 = distinct !{!26, !18, !19, !20}
!27 = distinct !{!27, !18, !19}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = !{!34, !29}
!34 = distinct !{!34, !30}
!35 = !{!34}
!36 = distinct !{!36, !18, !19, !20}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18, !19}
!40 = distinct !{!40, !18}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 omnipotent char", !14, i64 0}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
