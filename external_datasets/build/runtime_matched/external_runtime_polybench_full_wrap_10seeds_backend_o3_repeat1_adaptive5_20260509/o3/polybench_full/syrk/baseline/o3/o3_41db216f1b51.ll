; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll'
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
  %Tp.i.i24 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i9 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #12
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 11520000) #12
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i9) #12
  store ptr null, ptr %ret.i.i9, align 8, !tbaa !13
  %call.i.i10 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i9, i64 noundef 4096, i64 noundef 9600000) #12
  %3 = load ptr, ptr %ret.i.i9, align 8, !tbaa !13
  %tobool.i.i11 = icmp eq ptr %3, null
  %tobool2.i.i12 = icmp ne i32 %call.i.i10, 0
  %or.cond.i.i13 = select i1 %tobool.i.i11, i1 true, i1 %tobool2.i.i12
  br i1 %or.cond.i.i13, label %if.then.i.i14, label %polybench_alloc_data.exit15

if.then.i.i14:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit15:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i9) #12
  br label %vector.ph

vector.ph:                                        ; preds = %polybench_alloc_data.exit15, %for.inc7.i
  %indvars.iv28.i = phi i64 [ 0, %polybench_alloc_data.exit15 ], [ %indvars.iv.next29.i, %for.inc7.i ]
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv28.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %6 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %7 = trunc <2 x i64> %6 to <2 x i32>
  %8 = add <2 x i32> %7, splat (i32 1)
  %9 = urem <2 x i32> %8, splat (i32 1200)
  %10 = uitofp nneg <2 x i32> %9 to <2 x double>
  %11 = fdiv <2 x double> %10, splat (double 1.200000e+03)
  %12 = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %indvars.iv28.i, i64 %index
  store <2 x double> %11, ptr %12, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %13 = icmp eq i64 %index.next, 1000
  br i1 %13, label %for.inc7.i, label %vector.body, !llvm.loop !17

for.inc7.i:                                       ; preds = %vector.body
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next29.i, 1200
  br i1 %exitcond31.not.i, label %vector.ph33, label %vector.ph, !llvm.loop !21

vector.ph33:                                      ; preds = %for.inc7.i, %for.inc31.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %for.inc31.i ], [ 0, %for.inc7.i ]
  %broadcast.splatinsert34 = insertelement <2 x i64> poison, i64 %indvars.iv38.i, i64 0
  %broadcast.splat35 = shufflevector <2 x i64> %broadcast.splatinsert34, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph33
  %index37 = phi i64 [ 0, %vector.ph33 ], [ %index.next39, %vector.body36 ]
  %vec.ind38 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph33 ], [ %vec.ind.next40, %vector.body36 ]
  %14 = mul nuw nsw <2 x i64> %vec.ind38, %broadcast.splat35
  %15 = trunc <2 x i64> %14 to <2 x i32>
  %16 = add <2 x i32> %15, splat (i32 2)
  %17 = urem <2 x i32> %16, splat (i32 1000)
  %18 = uitofp nneg <2 x i32> %17 to <2 x double>
  %19 = fdiv <2 x double> %18, splat (double 1.000000e+03)
  %20 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv38.i, i64 %index37
  store <2 x double> %19, ptr %20, align 8, !tbaa !11
  %index.next39 = add nuw i64 %index37, 2
  %vec.ind.next40 = add <2 x i64> %vec.ind38, splat (i64 2)
  %21 = icmp eq i64 %index.next39, 1200
  br i1 %21, label %for.inc31.i, label %vector.body36, !llvm.loop !22

for.inc31.i:                                      ; preds = %vector.body36
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next39.i, 1200
  br i1 %exitcond41.not.i, label %init_array.exit, label %vector.ph33, !llvm.loop !23

init_array.exit:                                  ; preds = %for.inc31.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #12
  %call.i.i16 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #12
  %cmp.not.i.i = icmp eq i32 %call.i.i16, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i17

if.then.i.i17:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i16)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i17
  %22 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %22 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %23 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %23 to double
  %24 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #12
  store double %24, ptr @polybench_t_start, align 8, !tbaa !11
  %invariant.gep = getelementptr i8, ptr %0, i64 8
  %invariant.gep70 = getelementptr i8, ptr %3, i64 8000
  br label %for.cond1.preheader.i18

for.cond1.preheader.i18:                          ; preds = %for.inc32.i, %polybench_timer_start.exit
  %indvars.iv36.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next37.i, %for.inc32.i ]
  %indvars.iv34.i = phi i64 [ 1, %polybench_timer_start.exit ], [ %indvars.iv.next35.i, %for.inc32.i ]
  %25 = mul nuw nsw i64 %indvars.iv36.i, 9600
  %scevgep = getelementptr i8, ptr %0, i64 %25
  %26 = mul nuw nsw i64 %indvars.iv36.i, 9608
  %gep = getelementptr i8, ptr %invariant.gep, i64 %26
  %27 = mul nuw nsw i64 %indvars.iv36.i, 8000
  %gep71 = getelementptr i8, ptr %invariant.gep70, i64 %27
  %scevgep45 = getelementptr i8, ptr %3, i64 %27
  %min.iters.check59 = icmp samesign ult i64 %indvars.iv34.i, 2
  br i1 %min.iters.check59, label %for.body3.i19.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %for.cond1.preheader.i18
  %n.vec62 = and i64 %indvars.iv34.i, 9223372036854775806
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph60
  %index64 = phi i64 [ 0, %vector.ph60 ], [ %index.next66, %vector.body63 ]
  %28 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv36.i, i64 %index64
  %wide.load65 = load <2 x double>, ptr %28, align 8, !tbaa !11
  %29 = fmul <2 x double> %wide.load65, splat (double 1.200000e+00)
  store <2 x double> %29, ptr %28, align 8, !tbaa !11
  %index.next66 = add nuw i64 %index64, 2
  %30 = icmp eq i64 %index.next66, %n.vec62
  br i1 %30, label %middle.block67, label %vector.body63, !llvm.loop !24

middle.block67:                                   ; preds = %vector.body63
  %cmp.n68 = icmp eq i64 %indvars.iv34.i, %n.vec62
  br i1 %cmp.n68, label %for.cond9.preheader.i.preheader, label %for.body3.i19.preheader

for.body3.i19.preheader:                          ; preds = %for.cond1.preheader.i18, %middle.block67
  %indvars.iv.i20.ph = phi i64 [ 0, %for.cond1.preheader.i18 ], [ %n.vec62, %middle.block67 ]
  br label %for.body3.i19

for.body3.i19:                                    ; preds = %for.body3.i19.preheader, %for.body3.i19
  %indvars.iv.i20 = phi i64 [ %indvars.iv.next.i21, %for.body3.i19 ], [ %indvars.iv.i20.ph, %for.body3.i19.preheader ]
  %arrayidx5.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv36.i, i64 %indvars.iv.i20
  %31 = load double, ptr %arrayidx5.i, align 8, !tbaa !11
  %mul.i = fmul double %31, 1.200000e+00
  store double %mul.i, ptr %arrayidx5.i, align 8, !tbaa !11
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i20, 1
  %exitcond.not.i22 = icmp eq i64 %indvars.iv.next.i21, %indvars.iv34.i
  br i1 %exitcond.not.i22, label %for.cond9.preheader.i.preheader, label %for.body3.i19, !llvm.loop !25

for.cond9.preheader.i.preheader:                  ; preds = %for.body3.i19, %middle.block67
  %min.iters.check = icmp samesign ult i64 %indvars.iv34.i, 2
  %bound0 = icmp ult ptr %scevgep, %gep71
  %bound1 = icmp ult ptr %3, %gep
  %found.conflict = and i1 %bound0, %bound1
  %bound046 = icmp ult ptr %scevgep, %gep71
  %bound147 = icmp ult ptr %scevgep45, %gep
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx = or i1 %found.conflict, %found.conflict48
  %n.vec = and i64 %indvars.iv34.i, 9223372036854775806
  %cmp.n = icmp eq i64 %indvars.iv34.i, %n.vec
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.cond9.preheader.i.preheader, %for.inc29.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %for.inc29.i ], [ 0, %for.cond9.preheader.i.preheader ]
  %arrayidx15.i = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %indvars.iv36.i, i64 %indvars.iv30.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %for.body11.i.preheader, label %vector.ph50

vector.ph50:                                      ; preds = %for.cond9.preheader.i
  %32 = load double, ptr %arrayidx15.i, align 8, !tbaa !11, !alias.scope !26
  %.scalar = fmul double %32, 1.500000e+00
  %33 = insertelement <2 x double> poison, double %.scalar, i64 0
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph50
  %index52 = phi i64 [ 0, %vector.ph50 ], [ %index.next55, %vector.body51 ]
  %35 = or disjoint i64 %index52, 1
  %36 = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %index52, i64 %indvars.iv30.i
  %37 = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %35, i64 %indvars.iv30.i
  %38 = load double, ptr %36, align 8, !tbaa !11, !alias.scope !29
  %39 = load double, ptr %37, align 8, !tbaa !11, !alias.scope !29
  %40 = insertelement <2 x double> poison, double %38, i64 0
  %41 = insertelement <2 x double> %40, double %39, i64 1
  %42 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv36.i, i64 %index52
  %wide.load = load <2 x double>, ptr %42, align 8, !tbaa !11, !alias.scope !31, !noalias !33
  %43 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %41, <2 x double> %wide.load)
  store <2 x double> %43, ptr %42, align 8, !tbaa !11, !alias.scope !31, !noalias !33
  %index.next55 = add nuw i64 %index52, 2
  %44 = icmp eq i64 %index.next55, %n.vec
  br i1 %44, label %middle.block56, label %vector.body51, !llvm.loop !34

middle.block56:                                   ; preds = %vector.body51
  br i1 %cmp.n, label %for.inc29.i, label %for.body11.i.preheader

for.body11.i.preheader:                           ; preds = %for.cond9.preheader.i, %middle.block56
  %indvars.iv25.i.ph = phi i64 [ 0, %for.cond9.preheader.i ], [ %n.vec, %middle.block56 ]
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.preheader, %for.body11.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %for.body11.i ], [ %indvars.iv25.i.ph, %for.body11.i.preheader ]
  %45 = load double, ptr %arrayidx15.i, align 8, !tbaa !11
  %mul16.i = fmul double %45, 1.500000e+00
  %arrayidx20.i = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %indvars.iv25.i, i64 %indvars.iv30.i
  %46 = load double, ptr %arrayidx20.i, align 8, !tbaa !11
  %arrayidx25.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv36.i, i64 %indvars.iv25.i
  %47 = load double, ptr %arrayidx25.i, align 8, !tbaa !11
  %48 = call double @llvm.fmuladd.f64(double %mul16.i, double %46, double %47)
  store double %48, ptr %arrayidx25.i, align 8, !tbaa !11
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %indvars.iv34.i
  br i1 %exitcond29.not.i, label %for.inc29.i, label %for.body11.i, !llvm.loop !35

for.inc29.i:                                      ; preds = %for.body11.i, %middle.block56
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next31.i, 1000
  br i1 %exitcond33.not.i, label %for.inc32.i, label %for.cond9.preheader.i, !llvm.loop !36

for.inc32.i:                                      ; preds = %for.inc29.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1
  %exitcond41.not.i23 = icmp eq i64 %indvars.iv.next37.i, 1200
  br i1 %exitcond41.not.i23, label %kernel_syrk.exit, label %for.cond1.preheader.i18, !llvm.loop !37

kernel_syrk.exit:                                 ; preds = %for.inc32.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i24) #12
  %call.i.i25 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i24, ptr noundef null) #12
  %cmp.not.i.i26 = icmp eq i32 %call.i.i25, 0
  br i1 %cmp.not.i.i26, label %polybench_timer_stop.exit, label %if.then.i.i27

if.then.i.i27:                                    ; preds = %kernel_syrk.exit
  %call1.i.i28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i25)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_syrk.exit, %if.then.i.i27
  %49 = load i64, ptr %Tp.i.i24, align 8, !tbaa !5
  %conv.i.i29 = sitofp i64 %49 to double
  %tv_usec.i.i30 = getelementptr inbounds nuw i8, ptr %Tp.i.i24, i64 8
  %50 = load i64, ptr %tv_usec.i.i30, align 8, !tbaa !10
  %conv2.i.i31 = sitofp i64 %50 to double
  %51 = call double @llvm.fmuladd.f64(double %conv2.i.i31, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i29)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i24) #12
  store double %51, ptr @polybench_t_end, align 8, !tbaa !11
  %52 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %51, %52
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %53 = load ptr, ptr %argv, align 8, !tbaa !38
  %strcmpload = load i8, ptr %53, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #12
  call void @free(ptr noundef nonnull %3) #12
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
  %indvars.iv13 = phi i64 [ 0, %entry ], [ %indvars.iv.next14, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv13, 1200
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
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %C, i64 %indvars.iv13, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1200
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !40

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next14, 1200
  br i1 %exitcond17.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !41

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
!25 = distinct !{!25, !18, !19}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !{!30}
!30 = distinct !{!30, !28}
!31 = !{!32}
!32 = distinct !{!32, !28}
!33 = !{!30, !27}
!34 = distinct !{!34, !18, !19, !20}
!35 = distinct !{!35, !18, !19}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 omnipotent char", !14, i64 0}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
