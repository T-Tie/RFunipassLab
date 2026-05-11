; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll'
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
@.str.3.8 = private unnamed_addr constant [7 x i8] c"imgOut\00", align 1
@.str.5.10 = private unnamed_addr constant [7 x i8] c"%0.2f \00", align 1
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
  %Tp.i.i39 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i26 = alloca ptr, align 8
  %ret.i.i19 = alloca ptr, align 8
  %ret.i.i12 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #11
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 35389440) #11
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i12) #11
  store ptr null, ptr %ret.i.i12, align 8, !tbaa !13
  %call.i.i13 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i12, i64 noundef 4096, i64 noundef 35389440) #11
  %3 = load ptr, ptr %ret.i.i12, align 8, !tbaa !13
  %4 = ptrtoint ptr %3 to i64
  %tobool.i.i14 = icmp eq ptr %3, null
  %tobool2.i.i15 = icmp ne i32 %call.i.i13, 0
  %or.cond.i.i16 = select i1 %tobool.i.i14, i1 true, i1 %tobool2.i.i15
  br i1 %or.cond.i.i16, label %if.then.i.i17, label %polybench_alloc_data.exit18

if.then.i.i17:                                    ; preds = %polybench_alloc_data.exit
  %5 = load ptr, ptr @stderr, align 8, !tbaa !15
  %6 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %5) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit18:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i12) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i19) #11
  store ptr null, ptr %ret.i.i19, align 8, !tbaa !13
  %call.i.i20 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i19, i64 noundef 4096, i64 noundef 35389440) #11
  %7 = load ptr, ptr %ret.i.i19, align 8, !tbaa !13
  %8 = ptrtoint ptr %7 to i64
  %tobool.i.i21 = icmp eq ptr %7, null
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
  %call.i.i27 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i26, i64 noundef 4096, i64 noundef 35389440) #11
  %11 = load ptr, ptr %ret.i.i26, align 8, !tbaa !13
  %12 = ptrtoint ptr %11 to i64
  %tobool.i.i28 = icmp eq ptr %11, null
  %tobool2.i.i29 = icmp ne i32 %call.i.i27, 0
  %or.cond.i.i30 = select i1 %tobool.i.i28, i1 true, i1 %tobool2.i.i29
  br i1 %or.cond.i.i30, label %if.then.i.i31, label %polybench_alloc_data.exit32

if.then.i.i31:                                    ; preds = %polybench_alloc_data.exit25
  %13 = load ptr, ptr @stderr, align 8, !tbaa !15
  %14 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %13) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit32:                      ; preds = %polybench_alloc_data.exit25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i26) #11
  br label %vector.ph

vector.ph:                                        ; preds = %polybench_alloc_data.exit32, %for.inc7.i
  %indvars.iv6.i = phi i64 [ 0, %polybench_alloc_data.exit32 ], [ %indvars.iv.next7.i, %for.inc7.i ]
  %15 = mul nuw nsw i64 %indvars.iv6.i, 313
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %15, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %16 = mul nuw nsw <4 x i64> %vec.ind, splat (i64 991)
  %17 = add nuw nsw <4 x i64> %16, %broadcast.splat
  %18 = trunc nuw nsw <4 x i64> %17 to <4 x i32>
  %19 = and <4 x i32> %18, splat (i32 65535)
  %20 = uitofp nneg <4 x i32> %19 to <4 x float>
  %21 = fdiv <4 x float> %20, splat (float 6.553500e+04)
  %22 = getelementptr inbounds nuw [2160 x float], ptr %0, i64 %indvars.iv6.i, i64 %index
  store <4 x float> %21, ptr %22, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 4)
  %23 = icmp eq i64 %index.next, 2160
  br i1 %23, label %for.inc7.i, label %vector.body, !llvm.loop !19

for.inc7.i:                                       ; preds = %vector.body
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next7.i, 4096
  br i1 %exitcond10.not.i, label %init_array.exit, label %vector.ph, !llvm.loop !23

init_array.exit:                                  ; preds = %for.inc7.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #11
  %call.i.i33 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #11
  %cmp.not.i.i = icmp eq i32 %call.i.i33, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i34

if.then.i.i34:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i33)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i34
  %24 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %24 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %25 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %25 to double
  %26 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #11
  store double %26, ptr @polybench_t_start, align 8, !tbaa !11
  br label %for.cond29.preheader.i

for.cond29.preheader.i:                           ; preds = %for.inc50.i, %polybench_timer_start.exit
  %indvars.iv147.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next148.i, %for.inc50.i ]
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.body31.i, %for.cond29.preheader.i
  %indvars.iv.i36 = phi i64 [ 0, %for.cond29.preheader.i ], [ %indvars.iv.next.i37, %for.body31.i ]
  %xm1.0122.i = phi float [ 0.000000e+00, %for.cond29.preheader.i ], [ %31, %for.body31.i ]
  %ym1.0121.i = phi float [ 0.000000e+00, %for.cond29.preheader.i ], [ %30, %for.body31.i ]
  %ym2.0120.i = phi float [ 0.000000e+00, %for.cond29.preheader.i ], [ %ym1.0121.i, %for.body31.i ]
  %arrayidx33.i = getelementptr inbounds nuw [2160 x float], ptr %0, i64 %indvars.iv147.i, i64 %indvars.iv.i36
  %27 = load float, ptr %arrayidx33.i, align 4, !tbaa !17
  %mul35.i = fmul float %xm1.0122.i, 0x3FBC36A980000000
  %28 = call float @llvm.fmuladd.f32(float %27, float 0xBFC826B880000000, float %mul35.i)
  %29 = call float @llvm.fmuladd.f32(float %ym1.0121.i, float 0x3FEAE89FA0000000, float %28)
  %30 = call float @llvm.fmuladd.f32(float %ym2.0120.i, float 0xBFE368B300000000, float %29)
  %arrayidx41.i = getelementptr inbounds nuw [2160 x float], ptr %7, i64 %indvars.iv147.i, i64 %indvars.iv.i36
  store float %30, ptr %arrayidx41.i, align 4, !tbaa !17
  %31 = load float, ptr %arrayidx33.i, align 4, !tbaa !17
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, 2160
  br i1 %exitcond.not.i38, label %for.inc50.i, label %for.body31.i, !llvm.loop !24

for.inc50.i:                                      ; preds = %for.body31.i
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 1
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next148.i, 4096
  br i1 %exitcond150.not.i, label %for.cond57.preheader.i, label %for.cond29.preheader.i, !llvm.loop !25

for.cond57.preheader.i:                           ; preds = %for.inc50.i, %for.inc78.i
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %for.inc78.i ], [ 0, %for.inc50.i ]
  br label %for.body59.i

for.body59.i:                                     ; preds = %for.body59.i, %for.cond57.preheader.i
  %indvars.iv151.i = phi i64 [ 2159, %for.cond57.preheader.i ], [ %indvars.iv.next152.i, %for.body59.i ]
  %xp1.0128.i = phi float [ 0.000000e+00, %for.cond57.preheader.i ], [ %35, %for.body59.i ]
  %xp2.0127.i = phi float [ 0.000000e+00, %for.cond57.preheader.i ], [ %xp1.0128.i, %for.body59.i ]
  %yp1.0126.i = phi float [ 0.000000e+00, %for.cond57.preheader.i ], [ %34, %for.body59.i ]
  %yp2.0125.i = phi float [ 0.000000e+00, %for.cond57.preheader.i ], [ %yp1.0126.i, %for.body59.i ]
  %mul61.i = fmul float %xp2.0127.i, 0x3FBD4C0500000000
  %32 = call float @llvm.fmuladd.f32(float %xp1.0128.i, float 0xBFC782E280000000, float %mul61.i)
  %33 = call float @llvm.fmuladd.f32(float %yp1.0126.i, float 0x3FEAE89FA0000000, float %32)
  %34 = call float @llvm.fmuladd.f32(float %yp2.0125.i, float 0xBFE368B300000000, float %33)
  %arrayidx67.i = getelementptr inbounds nuw [2160 x float], ptr %11, i64 %indvars.iv154.i, i64 %indvars.iv151.i
  store float %34, ptr %arrayidx67.i, align 4, !tbaa !17
  %arrayidx71.i = getelementptr inbounds nuw [2160 x float], ptr %0, i64 %indvars.iv154.i, i64 %indvars.iv151.i
  %35 = load float, ptr %arrayidx71.i, align 4, !tbaa !17
  %indvars.iv.next152.i = add nsw i64 %indvars.iv151.i, -1
  %cmp58.not.i = icmp eq i64 %indvars.iv151.i, 0
  br i1 %cmp58.not.i, label %for.inc78.i, label %for.body59.i, !llvm.loop !26

for.inc78.i:                                      ; preds = %for.body59.i
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1
  %exitcond157.not.i = icmp eq i64 %indvars.iv.next155.i, 4096
  br i1 %exitcond157.not.i, label %for.cond84.preheader.i.preheader, label %for.cond57.preheader.i, !llvm.loop !27

for.cond84.preheader.i.preheader:                 ; preds = %for.inc78.i
  %36 = sub i64 %4, %8
  %37 = sub i64 %4, %12
  %diff.check = icmp ult i64 %36, 32
  %diff.check49 = icmp ult i64 %37, 32
  %conflict.rdx = or i1 %diff.check, %diff.check49
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %for.inc104.i, %for.cond84.preheader.i.preheader
  %indvars.iv162.i = phi i64 [ %indvars.iv.next163.i, %for.inc104.i ], [ 0, %for.cond84.preheader.i.preheader ]
  br i1 %conflict.rdx, label %for.body86.i, label %vector.body52

vector.body52:                                    ; preds = %vector.memcheck, %vector.body52
  %index53 = phi i64 [ %index.next55, %vector.body52 ], [ 0, %vector.memcheck ]
  %38 = getelementptr inbounds nuw [2160 x float], ptr %7, i64 %indvars.iv162.i, i64 %index53
  %wide.load = load <4 x float>, ptr %38, align 4, !tbaa !17
  %39 = getelementptr inbounds nuw [2160 x float], ptr %11, i64 %indvars.iv162.i, i64 %index53
  %wide.load54 = load <4 x float>, ptr %39, align 4, !tbaa !17
  %40 = fadd <4 x float> %wide.load, %wide.load54
  %41 = getelementptr inbounds nuw [2160 x float], ptr %3, i64 %indvars.iv162.i, i64 %index53
  store <4 x float> %40, ptr %41, align 4, !tbaa !17
  %index.next55 = add nuw i64 %index53, 4
  %42 = icmp eq i64 %index.next55, 2160
  br i1 %42, label %for.inc104.i, label %vector.body52, !llvm.loop !28

for.body86.i:                                     ; preds = %vector.memcheck, %for.body86.i
  %indvars.iv158.i = phi i64 [ %indvars.iv.next159.i, %for.body86.i ], [ 0, %vector.memcheck ]
  %arrayidx90.i = getelementptr inbounds nuw [2160 x float], ptr %7, i64 %indvars.iv162.i, i64 %indvars.iv158.i
  %43 = load float, ptr %arrayidx90.i, align 4, !tbaa !17
  %arrayidx94.i = getelementptr inbounds nuw [2160 x float], ptr %11, i64 %indvars.iv162.i, i64 %indvars.iv158.i
  %44 = load float, ptr %arrayidx94.i, align 4, !tbaa !17
  %add95.i = fadd float %43, %44
  %arrayidx100.i = getelementptr inbounds nuw [2160 x float], ptr %3, i64 %indvars.iv162.i, i64 %indvars.iv158.i
  store float %add95.i, ptr %arrayidx100.i, align 4, !tbaa !17
  %indvars.iv.next159.i = add nuw nsw i64 %indvars.iv158.i, 1
  %exitcond161.not.i = icmp eq i64 %indvars.iv.next159.i, 2160
  br i1 %exitcond161.not.i, label %for.inc104.i, label %for.body86.i, !llvm.loop !29

for.inc104.i:                                     ; preds = %vector.body52, %for.body86.i
  %indvars.iv.next163.i = add nuw nsw i64 %indvars.iv162.i, 1
  %exitcond165.not.i = icmp eq i64 %indvars.iv.next163.i, 4096
  br i1 %exitcond165.not.i, label %for.cond110.preheader.i, label %vector.memcheck, !llvm.loop !30

for.cond110.preheader.i:                          ; preds = %for.inc104.i, %for.inc136.i
  %indvars.iv170.i = phi i64 [ %indvars.iv.next171.i, %for.inc136.i ], [ 0, %for.inc104.i ]
  br label %for.body112.i

for.body112.i:                                    ; preds = %for.body112.i, %for.cond110.preheader.i
  %indvars.iv166.i = phi i64 [ 0, %for.cond110.preheader.i ], [ %indvars.iv.next167.i, %for.body112.i ]
  %tm1.0135.i = phi float [ 0.000000e+00, %for.cond110.preheader.i ], [ %49, %for.body112.i ]
  %ym1.1134.i = phi float [ 0.000000e+00, %for.cond110.preheader.i ], [ %48, %for.body112.i ]
  %ym2.1133.i = phi float [ 0.000000e+00, %for.cond110.preheader.i ], [ %ym1.1134.i, %for.body112.i ]
  %arrayidx116.i = getelementptr inbounds nuw [2160 x float], ptr %3, i64 %indvars.iv166.i, i64 %indvars.iv170.i
  %45 = load float, ptr %arrayidx116.i, align 4, !tbaa !17
  %mul118.i = fmul float %tm1.0135.i, 0x3FBC36A980000000
  %46 = call float @llvm.fmuladd.f32(float %45, float 0xBFC826B880000000, float %mul118.i)
  %47 = call float @llvm.fmuladd.f32(float %ym1.1134.i, float 0x3FEAE89FA0000000, float %46)
  %48 = call float @llvm.fmuladd.f32(float %ym2.1133.i, float 0xBFE368B300000000, float %47)
  %arrayidx124.i = getelementptr inbounds nuw [2160 x float], ptr %7, i64 %indvars.iv166.i, i64 %indvars.iv170.i
  store float %48, ptr %arrayidx124.i, align 4, !tbaa !17
  %49 = load float, ptr %arrayidx116.i, align 4, !tbaa !17
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1
  %exitcond169.not.i = icmp eq i64 %indvars.iv.next167.i, 4096
  br i1 %exitcond169.not.i, label %for.inc136.i, label %for.body112.i, !llvm.loop !31

for.inc136.i:                                     ; preds = %for.body112.i
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next171.i, 2160
  br i1 %exitcond173.not.i, label %for.cond143.preheader.i, label %for.cond110.preheader.i, !llvm.loop !32

for.cond143.preheader.i:                          ; preds = %for.inc136.i, %for.inc165.i
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i, %for.inc165.i ], [ 0, %for.inc136.i ]
  br label %for.body145.i

for.body145.i:                                    ; preds = %for.body145.i, %for.cond143.preheader.i
  %indvars.iv174.i = phi i64 [ 4095, %for.cond143.preheader.i ], [ %indvars.iv.next175.i, %for.body145.i ]
  %tp1.0141.i = phi float [ 0.000000e+00, %for.cond143.preheader.i ], [ %53, %for.body145.i ]
  %tp2.0140.i = phi float [ 0.000000e+00, %for.cond143.preheader.i ], [ %tp1.0141.i, %for.body145.i ]
  %yp1.1139.i = phi float [ 0.000000e+00, %for.cond143.preheader.i ], [ %52, %for.body145.i ]
  %yp2.1138.i = phi float [ 0.000000e+00, %for.cond143.preheader.i ], [ %yp1.1139.i, %for.body145.i ]
  %mul147.i = fmul float %tp2.0140.i, 0x3FBD4C0500000000
  %50 = call float @llvm.fmuladd.f32(float %tp1.0141.i, float 0xBFC782E280000000, float %mul147.i)
  %51 = call float @llvm.fmuladd.f32(float %yp1.1139.i, float 0x3FEAE89FA0000000, float %50)
  %52 = call float @llvm.fmuladd.f32(float %yp2.1138.i, float 0xBFE368B300000000, float %51)
  %arrayidx153.i = getelementptr inbounds nuw [2160 x float], ptr %11, i64 %indvars.iv174.i, i64 %indvars.iv177.i
  store float %52, ptr %arrayidx153.i, align 4, !tbaa !17
  %arrayidx157.i = getelementptr inbounds nuw [2160 x float], ptr %3, i64 %indvars.iv174.i, i64 %indvars.iv177.i
  %53 = load float, ptr %arrayidx157.i, align 4, !tbaa !17
  %indvars.iv.next175.i = add nsw i64 %indvars.iv174.i, -1
  %cmp144.not.i = icmp eq i64 %indvars.iv174.i, 0
  br i1 %cmp144.not.i, label %for.inc165.i, label %for.body145.i, !llvm.loop !33

for.inc165.i:                                     ; preds = %for.body145.i
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1
  %exitcond180.not.i = icmp eq i64 %indvars.iv.next178.i, 2160
  br i1 %exitcond180.not.i, label %for.cond171.preheader.i.preheader, label %for.cond143.preheader.i, !llvm.loop !34

for.cond171.preheader.i.preheader:                ; preds = %for.inc165.i
  %54 = sub i64 %4, %8
  %55 = sub i64 %4, %12
  %diff.check59 = icmp ult i64 %54, 32
  %diff.check60 = icmp ult i64 %55, 32
  %conflict.rdx61 = or i1 %diff.check59, %diff.check60
  br label %vector.memcheck58

vector.memcheck58:                                ; preds = %for.inc191.i, %for.cond171.preheader.i.preheader
  %indvars.iv185.i = phi i64 [ %indvars.iv.next186.i, %for.inc191.i ], [ 0, %for.cond171.preheader.i.preheader ]
  br i1 %conflict.rdx61, label %for.body173.i, label %vector.body64

vector.body64:                                    ; preds = %vector.memcheck58, %vector.body64
  %index65 = phi i64 [ %index.next68, %vector.body64 ], [ 0, %vector.memcheck58 ]
  %56 = getelementptr inbounds nuw [2160 x float], ptr %7, i64 %indvars.iv185.i, i64 %index65
  %wide.load66 = load <4 x float>, ptr %56, align 4, !tbaa !17
  %57 = getelementptr inbounds nuw [2160 x float], ptr %11, i64 %indvars.iv185.i, i64 %index65
  %wide.load67 = load <4 x float>, ptr %57, align 4, !tbaa !17
  %58 = fadd <4 x float> %wide.load66, %wide.load67
  %59 = getelementptr inbounds nuw [2160 x float], ptr %3, i64 %indvars.iv185.i, i64 %index65
  store <4 x float> %58, ptr %59, align 4, !tbaa !17
  %index.next68 = add nuw i64 %index65, 4
  %60 = icmp eq i64 %index.next68, 2160
  br i1 %60, label %for.inc191.i, label %vector.body64, !llvm.loop !35

for.body173.i:                                    ; preds = %vector.memcheck58, %for.body173.i
  %indvars.iv181.i = phi i64 [ %indvars.iv.next182.i, %for.body173.i ], [ 0, %vector.memcheck58 ]
  %arrayidx177.i = getelementptr inbounds nuw [2160 x float], ptr %7, i64 %indvars.iv185.i, i64 %indvars.iv181.i
  %61 = load float, ptr %arrayidx177.i, align 4, !tbaa !17
  %arrayidx181.i = getelementptr inbounds nuw [2160 x float], ptr %11, i64 %indvars.iv185.i, i64 %indvars.iv181.i
  %62 = load float, ptr %arrayidx181.i, align 4, !tbaa !17
  %add182.i = fadd float %61, %62
  %arrayidx187.i = getelementptr inbounds nuw [2160 x float], ptr %3, i64 %indvars.iv185.i, i64 %indvars.iv181.i
  store float %add182.i, ptr %arrayidx187.i, align 4, !tbaa !17
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1
  %exitcond184.not.i = icmp eq i64 %indvars.iv.next182.i, 2160
  br i1 %exitcond184.not.i, label %for.inc191.i, label %for.body173.i, !llvm.loop !36

for.inc191.i:                                     ; preds = %vector.body64, %for.body173.i
  %indvars.iv.next186.i = add nuw nsw i64 %indvars.iv185.i, 1
  %exitcond188.not.i = icmp eq i64 %indvars.iv.next186.i, 4096
  br i1 %exitcond188.not.i, label %kernel_deriche.exit, label %vector.memcheck58, !llvm.loop !37

kernel_deriche.exit:                              ; preds = %for.inc191.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i39) #11
  %call.i.i40 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i39, ptr noundef null) #11
  %cmp.not.i.i41 = icmp eq i32 %call.i.i40, 0
  br i1 %cmp.not.i.i41, label %polybench_timer_stop.exit, label %if.then.i.i42

if.then.i.i42:                                    ; preds = %kernel_deriche.exit
  %call1.i.i43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i40)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_deriche.exit, %if.then.i.i42
  %63 = load i64, ptr %Tp.i.i39, align 8, !tbaa !5
  %conv.i.i44 = sitofp i64 %63 to double
  %tv_usec.i.i45 = getelementptr inbounds nuw i8, ptr %Tp.i.i39, i64 8
  %64 = load i64, ptr %tv_usec.i.i45, align 8, !tbaa !10
  %conv2.i.i46 = sitofp i64 %64 to double
  %65 = call double @llvm.fmuladd.f64(double %conv2.i.i46, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i44)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i39) #11
  store double %65, ptr @polybench_t_end, align 8, !tbaa !11
  %66 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i47 = fsub double %65, %66
  %call.i48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i47)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %67 = load ptr, ptr %argv, align 8, !tbaa !38
  %strcmpload = load i8, ptr %67, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef %0) #11
  call void @free(ptr noundef nonnull %3) #11
  call void @free(ptr noundef nonnull %7) #11
  call void @free(ptr noundef nonnull %11) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %imgOut) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv12 = phi i64 [ 0, %entry ], [ %indvars.iv.next13, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv12, 2160
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
  %arrayidx8 = getelementptr inbounds nuw [2160 x float], ptr %imgOut, i64 %indvars.iv12, i64 %indvars.iv
  %8 = load float, ptr %arrayidx8, align 4, !tbaa !17
  %conv = fpext float %8 to double
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %conv) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2160
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !40

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond16.not = icmp eq i64 %indvars.iv.next13, 4096
  br i1 %exitcond16.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !41

for.end12:                                        ; preds = %for.inc10
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

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
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !8, i64 0}
!19 = distinct !{!19, !20, !21, !22}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20, !21, !22}
!29 = distinct !{!29, !20, !21}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20, !21, !22}
!36 = distinct !{!36, !20, !21}
!37 = distinct !{!37, !20}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 omnipotent char", !14, i64 0}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !20}
