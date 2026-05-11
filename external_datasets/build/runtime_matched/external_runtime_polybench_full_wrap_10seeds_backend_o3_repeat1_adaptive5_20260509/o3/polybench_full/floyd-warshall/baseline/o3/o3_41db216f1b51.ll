; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll'
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
@.str.3.8 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.5.10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
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
  %Tp.i.i13 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #12
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 31360000) #12
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
  br label %vector.ph

vector.ph:                                        ; preds = %polybench_alloc_data.exit, %for.inc20.i
  %indvars.iv23.i = phi i64 [ 0, %polybench_alloc_data.exit ], [ %indvars.iv.next24.i, %for.inc20.i ]
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %indvars.iv23.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %3 = mul nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %4 = trunc nuw nsw <4 x i64> %3 to <4 x i32>
  %5 = urem <4 x i32> %4, splat (i32 7)
  %6 = add nuw nsw <4 x i32> %5, splat (i32 1)
  %7 = getelementptr inbounds nuw [2800 x i32], ptr %0, i64 %indvars.iv23.i, i64 %index
  %8 = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %9 = trunc nuw nsw <4 x i64> %8 to <4 x i32>
  %10 = urem <4 x i32> %9, splat (i32 13)
  %11 = icmp eq <4 x i32> %10, zeroinitializer
  %12 = urem <4 x i32> %9, splat (i32 7)
  %13 = icmp eq <4 x i32> %12, zeroinitializer
  %14 = or <4 x i1> %11, %13
  %15 = urem <4 x i32> %9, splat (i32 11)
  %16 = icmp eq <4 x i32> %15, zeroinitializer
  %17 = or <4 x i1> %16, %14
  %18 = select <4 x i1> %17, <4 x i32> splat (i32 999), <4 x i32> %6
  store <4 x i32> %18, ptr %7, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 4)
  %19 = icmp eq i64 %index.next, 2800
  br i1 %19, label %for.inc20.i, label %vector.body, !llvm.loop !19

for.inc20.i:                                      ; preds = %vector.body
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next24.i, 2800
  br i1 %exitcond26.not.i, label %init_array.exit, label %vector.ph, !llvm.loop !23

init_array.exit:                                  ; preds = %for.inc20.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #12
  %call.i.i6 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #12
  %cmp.not.i.i = icmp eq i32 %call.i.i6, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i7

if.then.i.i7:                                     ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i6)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i7
  %20 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %20 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %21 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %21 to double
  %22 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #12
  store double %22, ptr @polybench_t_start, align 8, !tbaa !11
  %scevgep = getelementptr i8, ptr %0, i64 31360000
  %invariant.gep = getelementptr i8, ptr %0, i64 31348804
  %invariant.gep39 = getelementptr i8, ptr %0, i64 11200
  br label %for.cond1.preheader.i8

for.cond1.preheader.i8:                           ; preds = %for.inc38.i, %polybench_timer_start.exit
  %indvars.iv34.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next35.i, %for.inc38.i ]
  %23 = shl nuw nsw i64 %indvars.iv34.i, 2
  %scevgep21 = getelementptr nuw i8, ptr %0, i64 %23
  %gep = getelementptr i8, ptr %invariant.gep, i64 %23
  %24 = mul nuw nsw i64 %indvars.iv34.i, 11200
  %scevgep23 = getelementptr i8, ptr %0, i64 %24
  %gep40 = getelementptr i8, ptr %invariant.gep39, i64 %24
  %bound0 = icmp ult ptr %0, %gep
  %bound1 = icmp ult ptr %scevgep21, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound025 = icmp ult ptr %0, %gep40
  %bound126 = icmp ult ptr %scevgep23, %scevgep
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx = or i1 %found.conflict, %found.conflict27
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc35.i, %for.cond1.preheader.i8
  %indvars.iv30.i = phi i64 [ 0, %for.cond1.preheader.i8 ], [ %indvars.iv.next31.i, %for.inc35.i ]
  %arrayidx12.i = getelementptr inbounds nuw [2800 x i32], ptr %0, i64 %indvars.iv30.i, i64 %indvars.iv34.i
  br i1 %conflict.rdx, label %for.body6.i, label %vector.body30.preheader

vector.body30.preheader:                          ; preds = %for.cond4.preheader.i
  %25 = load i32, ptr %arrayidx12.i, align 4, !tbaa !17, !alias.scope !24
  %broadcast.splatinsert33 = insertelement <4 x i32> poison, i32 %25, i64 0
  %broadcast.splat34 = shufflevector <4 x i32> %broadcast.splatinsert33, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30.preheader, %vector.body30
  %index31 = phi i64 [ %index.next35, %vector.body30 ], [ 0, %vector.body30.preheader ]
  %26 = getelementptr inbounds nuw [2800 x i32], ptr %0, i64 %indvars.iv30.i, i64 %index31
  %wide.load = load <4 x i32>, ptr %26, align 4, !tbaa !17, !alias.scope !27, !noalias !29
  %27 = getelementptr inbounds nuw [2800 x i32], ptr %0, i64 %indvars.iv34.i, i64 %index31
  %wide.load32 = load <4 x i32>, ptr %27, align 4, !tbaa !17, !alias.scope !31
  %28 = add nsw <4 x i32> %wide.load32, %broadcast.splat34
  %29 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %28)
  store <4 x i32> %29, ptr %26, align 4, !tbaa !17, !alias.scope !27, !noalias !29
  %index.next35 = add nuw i64 %index31, 4
  %30 = icmp eq i64 %index.next35, 2800
  br i1 %30, label %for.inc35.i, label %vector.body30, !llvm.loop !32

for.body6.i:                                      ; preds = %for.cond4.preheader.i, %for.body6.i
  %indvars.iv.i9 = phi i64 [ %indvars.iv.next.i11, %for.body6.i ], [ 0, %for.cond4.preheader.i ]
  %arrayidx8.i = getelementptr inbounds nuw [2800 x i32], ptr %0, i64 %indvars.iv30.i, i64 %indvars.iv.i9
  %31 = load i32, ptr %arrayidx8.i, align 4, !tbaa !17
  %32 = load i32, ptr %arrayidx12.i, align 4, !tbaa !17
  %arrayidx16.i = getelementptr inbounds nuw [2800 x i32], ptr %0, i64 %indvars.iv34.i, i64 %indvars.iv.i9
  %33 = load i32, ptr %arrayidx16.i, align 4, !tbaa !17
  %add.i10 = add nsw i32 %33, %32
  %.add.i = call i32 @llvm.smin.i32(i32 %31, i32 %add.i10)
  store i32 %.add.i, ptr %arrayidx8.i, align 4, !tbaa !17
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i9, 1
  %exitcond.not.i12 = icmp eq i64 %indvars.iv.next.i11, 2800
  br i1 %exitcond.not.i12, label %for.inc35.i, label %for.body6.i, !llvm.loop !33

for.inc35.i:                                      ; preds = %vector.body30, %for.body6.i
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next31.i, 2800
  br i1 %exitcond33.not.i, label %for.inc38.i, label %for.cond4.preheader.i, !llvm.loop !34

for.inc38.i:                                      ; preds = %for.inc35.i
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next35.i, 2800
  br i1 %exitcond37.not.i, label %kernel_floyd_warshall.exit, label %for.cond1.preheader.i8, !llvm.loop !35

kernel_floyd_warshall.exit:                       ; preds = %for.inc38.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i13) #12
  %call.i.i14 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i13, ptr noundef null) #12
  %cmp.not.i.i15 = icmp eq i32 %call.i.i14, 0
  br i1 %cmp.not.i.i15, label %polybench_timer_stop.exit, label %if.then.i.i16

if.then.i.i16:                                    ; preds = %kernel_floyd_warshall.exit
  %call1.i.i17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i14)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_floyd_warshall.exit, %if.then.i.i16
  %34 = load i64, ptr %Tp.i.i13, align 8, !tbaa !5
  %conv.i.i18 = sitofp i64 %34 to double
  %tv_usec.i.i19 = getelementptr inbounds nuw i8, ptr %Tp.i.i13, i64 8
  %35 = load i64, ptr %tv_usec.i.i19, align 8, !tbaa !10
  %conv2.i.i20 = sitofp i64 %35 to double
  %36 = call double @llvm.fmuladd.f64(double %conv2.i.i20, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i18)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i13) #12
  store double %36, ptr @polybench_t_end, align 8, !tbaa !11
  %37 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %36, %37
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %38 = load ptr, ptr %argv, align 8, !tbaa !36
  %strcmpload = load i8, ptr %38, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #12
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %path) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv13 = phi i64 [ 0, %entry ], [ %indvars.iv.next14, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv13, 2800
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
  %arrayidx8 = getelementptr inbounds nuw [2800 x i32], ptr %path, i64 %indvars.iv13, i64 %indvars.iv
  %8 = load i32, ptr %arrayidx8, align 4, !tbaa !17
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, i32 noundef %8) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2800
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !38

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next14, 2800
  br i1 %exitcond17.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !39

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
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #11

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
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !8, i64 0}
!19 = distinct !{!19, !20, !21, !22}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !20}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = !{!25, !30}
!30 = distinct !{!30, !26}
!31 = !{!30}
!32 = distinct !{!32, !20, !21, !22}
!33 = distinct !{!33, !20, !21}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 omnipotent char", !14, i64 0}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20}
