; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/cholesky.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"A\00", align 1
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #14
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #14
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #14
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #14
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #14
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #14
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
  tail call void @free(ptr noundef %ptr) #14
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #3 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i) #14
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i, i64 noundef 4096, i64 noundef %mul) #14
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #15
  call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i) #14
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
  %Tp.i.i14 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i.i = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #14
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 32000000) #14
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %1 = ptrtoint ptr %0 to i64
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %3 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %2) #15
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #14
  %invariant.gep.i = getelementptr i8, ptr %0, i64 8
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end18.i, %polybench_alloc_data.exit
  %indvars.iv70.i = phi i64 [ 1, %polybench_alloc_data.exit ], [ %indvars.iv.next71.i, %for.end18.i ]
  %indvar.i = phi i64 [ 0, %polybench_alloc_data.exit ], [ %indvar.next.i, %for.end18.i ]
  %min.iters.check = icmp samesign ult i64 %indvars.iv70.i, 2
  br i1 %min.iters.check, label %for.body3.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond1.preheader.i
  %n.vec = and i64 %indvars.iv70.i, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %4 = sub <2 x i32> zeroinitializer, %vec.ind
  %5 = sitofp <2 x i32> %4 to <2 x double>
  %6 = fdiv <2 x double> %5, splat (double 2.000000e+03)
  %7 = fadd <2 x double> %6, splat (double 1.000000e+00)
  %8 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvar.i, i64 %index
  store <2 x double> %7, ptr %8, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv70.i, %n.vec
  br i1 %cmp.n, label %for.end.i, label %for.body3.i.preheader

for.body3.i.preheader:                            ; preds = %for.cond1.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %for.cond1.preheader.i ], [ %n.vec, %middle.block ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.preheader, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ %indvars.iv.i.ph, %for.body3.i.preheader ]
  %10 = trunc i64 %indvars.iv.i to i32
  %11 = sub i32 0, %10
  %conv.i = sitofp i32 %11 to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %add.i = fadd double %div.i, 1.000000e+00
  %arrayidx6.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvar.i, i64 %indvars.iv.i
  store double %add.i, ptr %arrayidx6.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv70.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body3.i, !llvm.loop !21

for.end.i:                                        ; preds = %for.body3.i, %middle.block
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %cmp956.i = icmp samesign ult i64 %indvar.i, 1999
  br i1 %cmp956.i, label %for.body11.lr.ph.i, label %for.end18.i

for.body11.lr.ph.i:                               ; preds = %for.end.i
  %12 = shl nuw nsw i64 %indvar.i, 3
  %13 = sub nsw i64 15992, %12
  %14 = mul nuw nsw i64 %indvar.i, 16008
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %gep.i, i8 0, i64 %13, i1 false), !tbaa !11
  br label %for.end18.i

for.end18.i:                                      ; preds = %for.body11.lr.ph.i, %for.end.i
  %arrayidx22.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvar.i, i64 %indvar.i
  store double 1.000000e+00, ptr %arrayidx22.i, align 8, !tbaa !11
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1
  %exitcond78.not.i = icmp eq i64 %indvar.next.i, 2000
  br i1 %exitcond78.not.i, label %for.end25.i, label %for.cond1.preheader.i, !llvm.loop !22

for.end25.i:                                      ; preds = %for.end18.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i.i) #14
  store ptr null, ptr %ret.i.i.i, align 8, !tbaa !13
  %call.i.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i.i, i64 noundef 4096, i64 noundef 32000000) #14
  %15 = load ptr, ptr %ret.i.i.i, align 8, !tbaa !13
  %16 = ptrtoint ptr %15 to i64
  %tobool.i.i.i = icmp eq ptr %15, null
  %tobool2.i.i.i = icmp ne i32 %call.i.i.i, 0
  %or.cond.i.i.i = select i1 %tobool.i.i.i, i1 true, i1 %tobool2.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.i, label %polybench_alloc_data.exit.i

if.then.i.i.i:                                    ; preds = %for.end25.i
  %17 = load ptr, ptr @stderr, align 8, !tbaa !15
  %18 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %17) #15
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit.i:                      ; preds = %for.end25.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i.i) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %15, i8 0, i64 32000000, i1 false), !tbaa !11
  %scevgep = getelementptr i8, ptr %15, i64 32000000
  %invariant.gep = getelementptr i8, ptr %0, i64 31984008
  br label %for.cond48.preheader.i

for.cond48.preheader.i:                           ; preds = %for.inc74.i, %polybench_alloc_data.exit.i
  %indvars.iv94.i = phi i64 [ 0, %polybench_alloc_data.exit.i ], [ %indvars.iv.next95.i, %for.inc74.i ]
  %19 = shl nuw nsw i64 %indvars.iv94.i, 3
  %scevgep28 = getelementptr nuw i8, ptr %0, i64 %19
  %gep = getelementptr i8, ptr %invariant.gep, i64 %19
  %bound0 = icmp ult ptr %15, %gep
  %bound1 = icmp ult ptr %scevgep28, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %for.cond52.preheader.i

for.cond52.preheader.i:                           ; preds = %for.inc71.i, %for.cond48.preheader.i
  %indvars.iv90.i = phi i64 [ 0, %for.cond48.preheader.i ], [ %indvars.iv.next91.i, %for.inc71.i ]
  %arrayidx59.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv90.i, i64 %indvars.iv94.i
  br i1 %found.conflict, label %for.body55.i, label %vector.body35.preheader

vector.body35.preheader:                          ; preds = %for.cond52.preheader.i
  %20 = load double, ptr %arrayidx59.i, align 8, !tbaa !11, !alias.scope !23
  %broadcast.splatinsert = insertelement <2 x double> poison, double %20, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35.preheader, %vector.body35
  %index36 = phi i64 [ %index.next37, %vector.body35 ], [ 0, %vector.body35.preheader ]
  %21 = or disjoint i64 %index36, 1
  %22 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %index36, i64 %indvars.iv94.i
  %23 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %21, i64 %indvars.iv94.i
  %24 = load double, ptr %22, align 8, !tbaa !11, !alias.scope !26
  %25 = load double, ptr %23, align 8, !tbaa !11, !alias.scope !26
  %26 = insertelement <2 x double> poison, double %24, i64 0
  %27 = insertelement <2 x double> %26, double %25, i64 1
  %28 = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %15, i64 0, i64 %indvars.iv90.i, i64 %index36
  %wide.load = load <2 x double>, ptr %28, align 8, !tbaa !11, !alias.scope !28, !noalias !30
  %29 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %27, <2 x double> %wide.load)
  store <2 x double> %29, ptr %28, align 8, !tbaa !11, !alias.scope !28, !noalias !30
  %index.next37 = add nuw i64 %index36, 2
  %30 = icmp eq i64 %index.next37, 2000
  br i1 %30, label %for.inc71.i, label %vector.body35, !llvm.loop !31

for.body55.i:                                     ; preds = %for.cond52.preheader.i, %for.body55.i
  %indvars.iv86.i = phi i64 [ %indvars.iv.next87.i, %for.body55.i ], [ 0, %for.cond52.preheader.i ]
  %31 = load double, ptr %arrayidx59.i, align 8, !tbaa !11
  %arrayidx63.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv86.i, i64 %indvars.iv94.i
  %32 = load double, ptr %arrayidx63.i, align 8, !tbaa !11
  %arrayidx67.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %15, i64 0, i64 %indvars.iv90.i, i64 %indvars.iv86.i
  %33 = load double, ptr %arrayidx67.i, align 8, !tbaa !11
  %34 = call double @llvm.fmuladd.f64(double %31, double %32, double %33)
  store double %34, ptr %arrayidx67.i, align 8, !tbaa !11
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next87.i, 2000
  br i1 %exitcond89.not.i, label %for.inc71.i, label %for.body55.i, !llvm.loop !32

for.inc71.i:                                      ; preds = %vector.body35, %for.body55.i
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1
  %exitcond93.not.i = icmp eq i64 %indvars.iv.next91.i, 2000
  br i1 %exitcond93.not.i, label %for.inc74.i, label %for.cond52.preheader.i, !llvm.loop !33

for.inc74.i:                                      ; preds = %for.inc71.i
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next95.i, 2000
  br i1 %exitcond97.not.i, label %for.cond81.preheader.i.preheader, label %for.cond48.preheader.i, !llvm.loop !34

for.cond81.preheader.i.preheader:                 ; preds = %for.inc74.i
  %35 = sub i64 %1, %16
  %diff.check = icmp ult i64 %35, 32
  br label %vector.memcheck40

vector.memcheck40:                                ; preds = %for.inc96.i, %for.cond81.preheader.i.preheader
  %indvars.iv106.i = phi i64 [ %indvars.iv.next107.i, %for.inc96.i ], [ 0, %for.cond81.preheader.i.preheader ]
  br i1 %diff.check, label %for.body84.i, label %vector.body43

vector.body43:                                    ; preds = %vector.memcheck40, %vector.body43
  %index44 = phi i64 [ %index.next46, %vector.body43 ], [ 0, %vector.memcheck40 ]
  %36 = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %15, i64 0, i64 %indvars.iv106.i, i64 %index44
  %wide.load45 = load <2 x double>, ptr %36, align 8, !tbaa !11
  %37 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv106.i, i64 %index44
  store <2 x double> %wide.load45, ptr %37, align 8, !tbaa !11
  %index.next46 = add nuw i64 %index44, 2
  %38 = icmp eq i64 %index.next46, 2000
  br i1 %38, label %for.inc96.i, label %vector.body43, !llvm.loop !35

for.body84.i:                                     ; preds = %vector.memcheck40, %for.body84.i
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %for.body84.i ], [ 0, %vector.memcheck40 ]
  %arrayidx88.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %15, i64 0, i64 %indvars.iv106.i, i64 %indvars.iv102.i
  %39 = load double, ptr %arrayidx88.i, align 8, !tbaa !11
  %arrayidx92.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv106.i, i64 %indvars.iv102.i
  store double %39, ptr %arrayidx92.i, align 8, !tbaa !11
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next103.i, 2000
  br i1 %exitcond105.not.i, label %for.inc96.i, label %for.body84.i, !llvm.loop !36

for.inc96.i:                                      ; preds = %vector.body43, %for.body84.i
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 2000
  br i1 %exitcond109.not.i, label %init_array.exit, label %vector.memcheck40, !llvm.loop !37

init_array.exit:                                  ; preds = %for.inc96.i
  call void @free(ptr noundef nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #14
  %call.i.i6 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #14
  %cmp.not.i.i = icmp eq i32 %call.i.i6, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i7

if.then.i.i7:                                     ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i6)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i7
  %40 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %40 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %41 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %41 to double
  %42 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #14
  store double %42, ptr @polybench_t_start, align 8, !tbaa !11
  br label %for.cond1.preheader.i8

for.cond1.preheader.i8:                           ; preds = %for.end46.i, %polybench_timer_start.exit
  %indvars.iv55.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next56.i, %for.end46.i ]
  %cmp240.not.i = icmp eq i64 %indvars.iv55.i, 0
  br i1 %cmp240.not.i, label %for.cond28.preheader.for.end46_crit_edge.i, label %for.cond4.preheader.lr.ph.i

for.cond4.preheader.lr.ph.i:                      ; preds = %for.cond1.preheader.i8
  %arrayidx24.phi.trans.insert.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv55.i, i64 0
  br label %for.cond4.preheader.i

for.cond28.preheader.for.end46_crit_edge.i:       ; preds = %for.cond1.preheader.i8
  %.pre59.i = load double, ptr %0, align 8, !tbaa !11
  br label %for.end46.i

for.body30.lr.ph.i:                               ; preds = %for.end.i12
  %arrayidx42.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv55.i, i64 %indvars.iv55.i
  %arrayidx42.promoted.i = load double, ptr %arrayidx42.i, align 8, !tbaa !11
  br label %for.body30.i

for.cond4.preheader.i:                            ; preds = %for.end.i12, %for.cond4.preheader.lr.ph.i
  %indvars.iv46.i = phi i64 [ 0, %for.cond4.preheader.lr.ph.i ], [ %indvars.iv.next47.i, %for.end.i12 ]
  %cmp538.not.i = icmp eq i64 %indvars.iv46.i, 0
  br i1 %cmp538.not.i, label %for.cond4.preheader.for.end_crit_edge.i, label %for.body6.lr.ph.i

for.cond4.preheader.for.end_crit_edge.i:          ; preds = %for.cond4.preheader.i
  %.pre.i = load double, ptr %arrayidx24.phi.trans.insert.i, align 8, !tbaa !11
  br label %for.end.i12

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %arrayidx16.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv55.i, i64 %indvars.iv46.i
  %arrayidx16.promoted.i = load double, ptr %arrayidx16.i, align 8, !tbaa !11
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i, %for.body6.lr.ph.i
  %indvars.iv.i9 = phi i64 [ 0, %for.body6.lr.ph.i ], [ %indvars.iv.next.i10, %for.body6.i ]
  %43 = phi double [ %arrayidx16.promoted.i, %for.body6.lr.ph.i ], [ %46, %for.body6.i ]
  %arrayidx8.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv55.i, i64 %indvars.iv.i9
  %44 = load double, ptr %arrayidx8.i, align 8, !tbaa !11
  %arrayidx12.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv46.i, i64 %indvars.iv.i9
  %45 = load double, ptr %arrayidx12.i, align 8, !tbaa !11
  %neg.i = fneg double %44
  %46 = call double @llvm.fmuladd.f64(double %neg.i, double %45, double %43)
  store double %46, ptr %arrayidx16.i, align 8, !tbaa !11
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1
  %exitcond.not.i11 = icmp eq i64 %indvars.iv.next.i10, %indvars.iv46.i
  br i1 %exitcond.not.i11, label %for.end.i12, label %for.body6.i, !llvm.loop !38

for.end.i12:                                      ; preds = %for.body6.i, %for.cond4.preheader.for.end_crit_edge.i
  %47 = phi double [ %.pre.i, %for.cond4.preheader.for.end_crit_edge.i ], [ %46, %for.body6.i ]
  %arrayidx20.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv46.i, i64 %indvars.iv46.i
  %48 = load double, ptr %arrayidx20.i, align 8, !tbaa !11
  %arrayidx24.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv55.i, i64 %indvars.iv46.i
  %div.i13 = fdiv double %47, %48
  store double %div.i13, ptr %arrayidx24.i, align 8, !tbaa !11
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next47.i, %indvars.iv55.i
  br i1 %exitcond50.not.i, label %for.body30.lr.ph.i, label %for.cond4.preheader.i, !llvm.loop !39

for.body30.i:                                     ; preds = %for.body30.i, %for.body30.lr.ph.i
  %indvars.iv51.i = phi i64 [ 0, %for.body30.lr.ph.i ], [ %indvars.iv.next52.i, %for.body30.i ]
  %49 = phi double [ %arrayidx42.promoted.i, %for.body30.lr.ph.i ], [ %51, %for.body30.i ]
  %arrayidx34.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv55.i, i64 %indvars.iv51.i
  %50 = load double, ptr %arrayidx34.i, align 8, !tbaa !11
  %neg43.i = fneg double %50
  %51 = call double @llvm.fmuladd.f64(double %neg43.i, double %50, double %49)
  store double %51, ptr %arrayidx42.i, align 8, !tbaa !11
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next52.i, %indvars.iv55.i
  br i1 %exitcond54.not.i, label %for.end46.i, label %for.body30.i, !llvm.loop !40

for.end46.i:                                      ; preds = %for.body30.i, %for.cond28.preheader.for.end46_crit_edge.i
  %52 = phi double [ %.pre59.i, %for.cond28.preheader.for.end46_crit_edge.i ], [ %51, %for.body30.i ]
  %arrayidx50.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv55.i, i64 %indvars.iv55.i
  %call.i = call double @sqrt(double noundef %52) #14, !tbaa !41
  store double %call.i, ptr %arrayidx50.i, align 8, !tbaa !11
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next56.i, 2000
  br i1 %exitcond58.not.i, label %kernel_cholesky.exit, label %for.cond1.preheader.i8, !llvm.loop !43

kernel_cholesky.exit:                             ; preds = %for.end46.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i14) #14
  %call.i.i15 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i14, ptr noundef null) #14
  %cmp.not.i.i16 = icmp eq i32 %call.i.i15, 0
  br i1 %cmp.not.i.i16, label %polybench_timer_stop.exit, label %if.then.i.i17

if.then.i.i17:                                    ; preds = %kernel_cholesky.exit
  %call1.i.i18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i15)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_cholesky.exit, %if.then.i.i17
  %53 = load i64, ptr %Tp.i.i14, align 8, !tbaa !5
  %conv.i.i19 = sitofp i64 %53 to double
  %tv_usec.i.i20 = getelementptr inbounds nuw i8, ptr %Tp.i.i14, i64 8
  %54 = load i64, ptr %tv_usec.i.i20, align 8, !tbaa !10
  %conv2.i.i21 = sitofp i64 %54 to double
  %55 = call double @llvm.fmuladd.f64(double %conv2.i.i21, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i19)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i14) #14
  store double %55, ptr @polybench_t_end, align 8, !tbaa !11
  %56 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %55, %56
  %call.i22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %57 = load ptr, ptr %argv, align 8, !tbaa !44
  %strcmpload = load i8, ptr %57, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #14
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %A) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #15
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #17
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv17 = phi i64 [ 0, %entry ], [ %indvars.iv.next18, %for.inc10 ]
  %indvars.iv15 = phi i64 [ 1, %entry ], [ %indvars.iv.next16, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv17, 2000
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
  %arrayidx8 = getelementptr inbounds nuw [2000 x double], ptr %A, i64 %indvars.iv17, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv15
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !46

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.next18, 2000
  br i1 %exitcond23.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !47

for.end12:                                        ; preds = %for.inc10
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #17
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #13

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { cold nounwind }

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
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = !{!29}
!29 = distinct !{!29, !25}
!30 = !{!27, !24}
!31 = distinct !{!31, !18, !19, !20}
!32 = distinct !{!32, !18, !19}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18, !19, !20}
!36 = distinct !{!36, !18, !19}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !8, i64 0}
!43 = distinct !{!43, !18}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 omnipotent char", !14, i64 0}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
