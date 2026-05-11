; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemm.ll'
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
  %Tp.i.i34 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i20 = alloca ptr, align 8
  %ret.i.i13 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #12
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 8800000) #12
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i13) #12
  store ptr null, ptr %ret.i.i13, align 8, !tbaa !13
  %call.i.i14 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i13, i64 noundef 4096, i64 noundef 9600000) #12
  %3 = load ptr, ptr %ret.i.i13, align 8, !tbaa !13
  %tobool.i.i15 = icmp eq ptr %3, null
  %tobool2.i.i16 = icmp ne i32 %call.i.i14, 0
  %or.cond.i.i17 = select i1 %tobool.i.i15, i1 true, i1 %tobool2.i.i16
  br i1 %or.cond.i.i17, label %if.then.i.i18, label %polybench_alloc_data.exit19

if.then.i.i18:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit19:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i13) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i20) #12
  store ptr null, ptr %ret.i.i20, align 8, !tbaa !13
  %call.i.i21 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i20, i64 noundef 4096, i64 noundef 10560000) #12
  %6 = load ptr, ptr %ret.i.i20, align 8, !tbaa !13
  %tobool.i.i22 = icmp eq ptr %6, null
  %tobool2.i.i23 = icmp ne i32 %call.i.i21, 0
  %or.cond.i.i24 = select i1 %tobool.i.i22, i1 true, i1 %tobool2.i.i23
  br i1 %or.cond.i.i24, label %if.then.i.i25, label %polybench_alloc_data.exit26

if.then.i.i25:                                    ; preds = %polybench_alloc_data.exit19
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %7) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit26:                      ; preds = %polybench_alloc_data.exit19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i20) #12
  br label %vector.ph

vector.ph:                                        ; preds = %polybench_alloc_data.exit26, %for.inc7.i
  %indvars.iv41.i = phi i64 [ 0, %polybench_alloc_data.exit26 ], [ %indvars.iv.next42.i, %for.inc7.i ]
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv41.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %9 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %10 = trunc <2 x i64> %9 to <2 x i32>
  %11 = add <2 x i32> %10, splat (i32 1)
  %12 = urem <2 x i32> %11, splat (i32 1000)
  %13 = uitofp nneg <2 x i32> %12 to <2 x double>
  %14 = fdiv <2 x double> %13, splat (double 1.000000e+03)
  %15 = getelementptr inbounds nuw [1100 x double], ptr %0, i64 %indvars.iv41.i, i64 %index
  store <2 x double> %14, ptr %15, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %16 = icmp eq i64 %index.next, 1100
  br i1 %16, label %for.inc7.i, label %vector.body, !llvm.loop !17

for.inc7.i:                                       ; preds = %vector.body
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next42.i, 1000
  br i1 %exitcond44.not.i, label %vector.ph43, label %vector.ph, !llvm.loop !21

vector.ph43:                                      ; preds = %for.inc7.i, %for.inc31.i
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i, %for.inc31.i ], [ 0, %for.inc7.i ]
  %broadcast.splatinsert44 = insertelement <2 x i64> poison, i64 %indvars.iv50.i, i64 0
  %broadcast.splat45 = shufflevector <2 x i64> %broadcast.splatinsert44, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph43
  %index47 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body46 ]
  %vec.ind48 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph43 ], [ %vec.ind.next50, %vector.body46 ]
  %17 = add nuw nsw <2 x i64> %vec.ind48, splat (i64 1)
  %18 = mul nuw nsw <2 x i64> %17, %broadcast.splat45
  %19 = trunc nuw nsw <2 x i64> %18 to <2 x i32>
  %20 = urem <2 x i32> %19, splat (i32 1200)
  %21 = uitofp nneg <2 x i32> %20 to <2 x double>
  %22 = fdiv <2 x double> %21, splat (double 1.200000e+03)
  %23 = getelementptr inbounds nuw [1200 x double], ptr %3, i64 %indvars.iv50.i, i64 %index47
  store <2 x double> %22, ptr %23, align 8, !tbaa !11
  %index.next49 = add nuw i64 %index47, 2
  %vec.ind.next50 = add <2 x i64> %vec.ind48, splat (i64 2)
  %24 = icmp eq i64 %index.next49, 1200
  br i1 %24, label %for.inc31.i, label %vector.body46, !llvm.loop !22

for.inc31.i:                                      ; preds = %vector.body46
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next51.i, 1000
  br i1 %exitcond53.not.i, label %vector.ph54, label %vector.ph43, !llvm.loop !23

vector.ph54:                                      ; preds = %for.inc31.i, %for.inc55.i
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %for.inc55.i ], [ 0, %for.inc31.i ]
  %broadcast.splatinsert55 = insertelement <2 x i64> poison, i64 %indvars.iv60.i, i64 0
  %broadcast.splat56 = shufflevector <2 x i64> %broadcast.splatinsert55, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph54
  %index58 = phi i64 [ 0, %vector.ph54 ], [ %index.next60, %vector.body57 ]
  %vec.ind59 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph54 ], [ %vec.ind.next61, %vector.body57 ]
  %25 = add nuw nsw <2 x i64> %vec.ind59, splat (i64 2)
  %26 = mul nuw nsw <2 x i64> %25, %broadcast.splat56
  %27 = trunc nuw nsw <2 x i64> %26 to <2 x i32>
  %28 = urem <2 x i32> %27, splat (i32 1100)
  %29 = uitofp nneg <2 x i32> %28 to <2 x double>
  %30 = fdiv <2 x double> %29, splat (double 1.100000e+03)
  %31 = getelementptr inbounds nuw [1100 x double], ptr %6, i64 %indvars.iv60.i, i64 %index58
  store <2 x double> %30, ptr %31, align 8, !tbaa !11
  %index.next60 = add nuw i64 %index58, 2
  %vec.ind.next61 = add <2 x i64> %vec.ind59, splat (i64 2)
  %32 = icmp eq i64 %index.next60, 1100
  br i1 %32, label %for.inc55.i, label %vector.body57, !llvm.loop !24

for.inc55.i:                                      ; preds = %vector.body57
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next61.i, 1200
  br i1 %exitcond63.not.i, label %init_array.exit, label %vector.ph54, !llvm.loop !25

init_array.exit:                                  ; preds = %for.inc55.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #12
  %call.i.i27 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #12
  %cmp.not.i.i = icmp eq i32 %call.i.i27, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i28

if.then.i.i28:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i27)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i28
  %33 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %33 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %34 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %34 to double
  %35 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #12
  store double %35, ptr @polybench_t_start, align 8, !tbaa !11
  %scevgep67 = getelementptr i8, ptr %6, i64 10560000
  %invariant.gep = getelementptr i8, ptr %0, i64 8800
  %invariant.gep90 = getelementptr i8, ptr %3, i64 9600
  br label %for.cond1.preheader.i29

for.cond1.preheader.i29:                          ; preds = %for.inc32.i, %polybench_timer_start.exit
  %indvars.iv29.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next30.i, %for.inc32.i ]
  %36 = mul nuw nsw i64 %indvars.iv29.i, 8800
  %scevgep = getelementptr i8, ptr %0, i64 %36
  %gep = getelementptr i8, ptr %invariant.gep, i64 %36
  %37 = mul nuw nsw i64 %indvars.iv29.i, 9600
  %scevgep65 = getelementptr i8, ptr %3, i64 %37
  %gep91 = getelementptr i8, ptr %invariant.gep90, i64 %37
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %for.cond1.preheader.i29
  %index84 = phi i64 [ 0, %for.cond1.preheader.i29 ], [ %index.next86, %vector.body83 ]
  %38 = getelementptr inbounds nuw [1100 x double], ptr %0, i64 %indvars.iv29.i, i64 %index84
  %wide.load85 = load <2 x double>, ptr %38, align 8, !tbaa !11
  %39 = fmul <2 x double> %wide.load85, splat (double 1.200000e+00)
  store <2 x double> %39, ptr %38, align 8, !tbaa !11
  %index.next86 = add nuw i64 %index84, 2
  %40 = icmp eq i64 %index.next86, 1100
  br i1 %40, label %for.cond9.preheader.i.preheader, label %vector.body83, !llvm.loop !26

for.cond9.preheader.i.preheader:                  ; preds = %vector.body83
  %bound0 = icmp ult ptr %scevgep, %gep91
  %bound1 = icmp ult ptr %scevgep65, %gep
  %found.conflict = and i1 %bound0, %bound1
  %bound068 = icmp ult ptr %scevgep, %scevgep67
  %bound169 = icmp ult ptr %6, %gep
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %found.conflict, %found.conflict70
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.cond9.preheader.i.preheader, %for.inc29.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %for.inc29.i ], [ 0, %for.cond9.preheader.i.preheader ]
  %arrayidx15.i = getelementptr inbounds nuw [1200 x double], ptr %3, i64 %indvars.iv29.i, i64 %indvars.iv25.i
  br i1 %conflict.rdx, label %for.body11.i, label %vector.body73.preheader

vector.body73.preheader:                          ; preds = %for.cond9.preheader.i
  %41 = load double, ptr %arrayidx15.i, align 8, !tbaa !11, !alias.scope !27
  %.scalar = fmul double %41, 1.500000e+00
  %42 = insertelement <2 x double> poison, double %.scalar, i64 0
  %43 = shufflevector <2 x double> %42, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73.preheader, %vector.body73
  %index74 = phi i64 [ %index.next78, %vector.body73 ], [ 0, %vector.body73.preheader ]
  %44 = getelementptr inbounds nuw [1100 x double], ptr %6, i64 %indvars.iv25.i, i64 %index74
  %wide.load = load <2 x double>, ptr %44, align 8, !tbaa !11, !alias.scope !30
  %45 = getelementptr inbounds nuw [1100 x double], ptr %0, i64 %indvars.iv29.i, i64 %index74
  %wide.load77 = load <2 x double>, ptr %45, align 8, !tbaa !11, !alias.scope !32, !noalias !34
  %46 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %43, <2 x double> %wide.load, <2 x double> %wide.load77)
  store <2 x double> %46, ptr %45, align 8, !tbaa !11, !alias.scope !32, !noalias !34
  %index.next78 = add nuw i64 %index74, 2
  %47 = icmp eq i64 %index.next78, 1100
  br i1 %47, label %for.inc29.i, label %vector.body73, !llvm.loop !35

for.body11.i:                                     ; preds = %for.cond9.preheader.i, %for.body11.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.body11.i ], [ 0, %for.cond9.preheader.i ]
  %48 = load double, ptr %arrayidx15.i, align 8, !tbaa !11
  %mul16.i = fmul double %48, 1.500000e+00
  %arrayidx20.i = getelementptr inbounds nuw [1100 x double], ptr %6, i64 %indvars.iv25.i, i64 %indvars.iv21.i
  %49 = load double, ptr %arrayidx20.i, align 8, !tbaa !11
  %arrayidx25.i = getelementptr inbounds nuw [1100 x double], ptr %0, i64 %indvars.iv29.i, i64 %indvars.iv21.i
  %50 = load double, ptr %arrayidx25.i, align 8, !tbaa !11
  %51 = call double @llvm.fmuladd.f64(double %mul16.i, double %49, double %50)
  store double %51, ptr %arrayidx25.i, align 8, !tbaa !11
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next22.i, 1100
  br i1 %exitcond24.not.i, label %for.inc29.i, label %for.body11.i, !llvm.loop !36

for.inc29.i:                                      ; preds = %vector.body73, %for.body11.i
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next26.i, 1200
  br i1 %exitcond28.not.i, label %for.inc32.i, label %for.cond9.preheader.i, !llvm.loop !37

for.inc32.i:                                      ; preds = %for.inc29.i
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next30.i, 1000
  br i1 %exitcond32.not.i, label %kernel_gemm.exit, label %for.cond1.preheader.i29, !llvm.loop !38

kernel_gemm.exit:                                 ; preds = %for.inc32.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i34) #12
  %call.i.i35 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i34, ptr noundef null) #12
  %cmp.not.i.i36 = icmp eq i32 %call.i.i35, 0
  br i1 %cmp.not.i.i36, label %polybench_timer_stop.exit, label %if.then.i.i37

if.then.i.i37:                                    ; preds = %kernel_gemm.exit
  %call1.i.i38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i35)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_gemm.exit, %if.then.i.i37
  %52 = load i64, ptr %Tp.i.i34, align 8, !tbaa !5
  %conv.i.i39 = sitofp i64 %52 to double
  %tv_usec.i.i40 = getelementptr inbounds nuw i8, ptr %Tp.i.i34, i64 8
  %53 = load i64, ptr %tv_usec.i.i40, align 8, !tbaa !10
  %conv2.i.i41 = sitofp i64 %53 to double
  %54 = call double @llvm.fmuladd.f64(double %conv2.i.i41, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i39)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i34) #12
  store double %54, ptr @polybench_t_end, align 8, !tbaa !11
  %55 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %54, %55
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %56 = load ptr, ptr %argv, align 8, !tbaa !39
  %strcmpload = load i8, ptr %56, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #12
  call void @free(ptr noundef nonnull %3) #12
  call void @free(ptr noundef nonnull %6) #12
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
  %arrayidx8 = getelementptr inbounds nuw [1100 x double], ptr %C, i64 %indvars.iv12, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1100
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !41

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond16.not = icmp eq i64 %indvars.iv.next13, 1000
  br i1 %exitcond16.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !42

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
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18, !19, !20}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18, !19, !20}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18, !19, !20}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = !{!33}
!33 = distinct !{!33, !29}
!34 = !{!28, !31}
!35 = distinct !{!35, !18, !19, !20}
!36 = distinct !{!36, !18, !19}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 omnipotent char", !14, i64 0}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
