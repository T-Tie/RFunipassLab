; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll'
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_doitgen(i32 noundef %nr, i32 noundef %nq, i32 noundef %np, ptr noundef captures(none) %A, ptr noundef readonly captures(none) %C4, ptr noundef captures(none) %sum) local_unnamed_addr #8 {
entry:
  %cmp46 = icmp sgt i32 %nr, 0
  %cmp229 = icmp sgt i32 %nq, 0
  %or.cond = and i1 %cmp46, %cmp229
  %cmp525 = icmp sgt i32 %np, 0
  %or.cond86 = and i1 %or.cond, %cmp525
  br i1 %or.cond86, label %for.cond1.preheader.us.us.us.preheader, label %for.end44

for.cond1.preheader.us.us.us.preheader:           ; preds = %entry
  %A87 = ptrtoint ptr %A to i64
  %sum88 = ptrtoint ptr %sum to i64
  %wide.trip.count84 = zext nneg i32 %nr to i64
  %wide.trip.count79 = zext nneg i32 %nq to i64
  %wide.trip.count67 = zext nneg i32 %np to i64
  %0 = sub i64 %A87, %sum88
  %min.iters.check = icmp ult i32 %np, 4
  %n.vec = and i64 %wide.trip.count67, 2147483646
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count67
  br label %for.cond1.preheader.us.us.us

for.cond1.preheader.us.us.us:                     ; preds = %for.cond1.preheader.us.us.us.preheader, %for.cond1.for.inc42_crit_edge.split.us.us.us.split.us.us
  %indvars.iv81 = phi i64 [ 0, %for.cond1.preheader.us.us.us.preheader ], [ %indvars.iv.next82, %for.cond1.for.inc42_crit_edge.split.us.us.us.split.us.us ]
  %1 = mul nuw nsw i64 %indvars.iv81, 179200
  %2 = add i64 %0, %1
  br label %for.cond4.preheader.us.us.us.us.us

for.cond4.preheader.us.us.us.us.us:               ; preds = %for.cond25.for.inc39_crit_edge.us.us.us.us.us, %for.cond1.preheader.us.us.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.cond25.for.inc39_crit_edge.us.us.us.us.us ], [ 0, %for.cond1.preheader.us.us.us ]
  %3 = mul nuw nsw i64 %indvars.iv76, 1280
  %4 = add i64 %2, %3
  br label %for.body6.us.us.us.us.us.us

for.body27.us.us.us.us.us:                        ; preds = %for.body27.us.us.us.us.us.preheader90, %for.body27.us.us.us.us.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body27.us.us.us.us.us ], [ %indvars.iv71.ph, %for.body27.us.us.us.us.us.preheader90 ]
  %arrayidx29.us.us.us.us.us = getelementptr inbounds nuw double, ptr %sum, i64 %indvars.iv71
  %5 = load double, ptr %arrayidx29.us.us.us.us.us, align 8, !tbaa !11
  %arrayidx35.us.us.us.us.us = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv81, i64 %indvars.iv76, i64 %indvars.iv71
  store double %5, ptr %arrayidx35.us.us.us.us.us, align 8, !tbaa !11
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count67
  br i1 %exitcond75.not, label %for.cond25.for.inc39_crit_edge.us.us.us.us.us, label %for.body27.us.us.us.us.us, !llvm.loop !17

for.body6.us.us.us.us.us.us:                      ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us, %for.cond4.preheader.us.us.us.us.us
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us ], [ 0, %for.cond4.preheader.us.us.us.us.us ]
  %arrayidx.us.us.us.us.us.us = getelementptr inbounds nuw double, ptr %sum, i64 %indvars.iv64
  store double 0.000000e+00, ptr %arrayidx.us.us.us.us.us.us, align 8, !tbaa !11
  br label %for.body9.us.us.us.us.us.us

for.body9.us.us.us.us.us.us:                      ; preds = %for.body9.us.us.us.us.us.us, %for.body6.us.us.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9.us.us.us.us.us.us ], [ 0, %for.body6.us.us.us.us.us.us ]
  %6 = phi double [ %9, %for.body9.us.us.us.us.us.us ], [ 0.000000e+00, %for.body6.us.us.us.us.us.us ]
  %arrayidx15.us.us.us.us.us.us = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv81, i64 %indvars.iv76, i64 %indvars.iv
  %7 = load double, ptr %arrayidx15.us.us.us.us.us.us, align 8, !tbaa !11
  %arrayidx19.us.us.us.us.us.us = getelementptr inbounds nuw [160 x double], ptr %C4, i64 %indvars.iv, i64 %indvars.iv64
  %8 = load double, ptr %arrayidx19.us.us.us.us.us.us, align 8, !tbaa !11
  %9 = tail call double @llvm.fmuladd.f64(double %7, double %8, double %6)
  store double %9, ptr %arrayidx.us.us.us.us.us.us, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count67
  br i1 %exitcond.not, label %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us, label %for.body9.us.us.us.us.us.us, !llvm.loop !20

for.cond7.for.inc22_crit_edge.us.us.us.us.us.us:  ; preds = %for.body9.us.us.us.us.us.us
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %for.body27.us.us.us.us.us.preheader, label %for.body6.us.us.us.us.us.us, !llvm.loop !21

for.body27.us.us.us.us.us.preheader:              ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us
  %diff.check = icmp ult i64 %4, 32
  %or.cond89 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond89, label %for.body27.us.us.us.us.us.preheader90, label %vector.body

vector.body:                                      ; preds = %for.body27.us.us.us.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body27.us.us.us.us.us.preheader ]
  %10 = getelementptr inbounds nuw double, ptr %sum, i64 %index
  %wide.load = load <2 x double>, ptr %10, align 8, !tbaa !11
  %11 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv81, i64 %indvars.iv76, i64 %index
  store <2 x double> %wide.load, ptr %11, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond25.for.inc39_crit_edge.us.us.us.us.us, label %for.body27.us.us.us.us.us.preheader90

for.body27.us.us.us.us.us.preheader90:            ; preds = %for.body27.us.us.us.us.us.preheader, %middle.block
  %indvars.iv71.ph = phi i64 [ 0, %for.body27.us.us.us.us.us.preheader ], [ %n.vec, %middle.block ]
  br label %for.body27.us.us.us.us.us

for.cond25.for.inc39_crit_edge.us.us.us.us.us:    ; preds = %for.body27.us.us.us.us.us, %middle.block
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %for.cond1.for.inc42_crit_edge.split.us.us.us.split.us.us, label %for.cond4.preheader.us.us.us.us.us, !llvm.loop !24

for.cond1.for.inc42_crit_edge.split.us.us.us.split.us.us: ; preds = %for.cond25.for.inc39_crit_edge.us.us.us.us.us
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %for.end44, label %for.cond1.preheader.us.us.us, !llvm.loop !25

for.end44:                                        ; preds = %for.cond1.for.inc42_crit_edge.split.us.us.us.split.us.us, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #9 {
entry:
  %Tp.i.i32 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i20 = alloca ptr, align 8
  %ret.i.i13 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #12
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 26880000) #12
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i13) #12
  store ptr null, ptr %ret.i.i13, align 8, !tbaa !13
  %call.i.i14 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i13, i64 noundef 4096, i64 noundef 1280) #12
  %4 = load ptr, ptr %ret.i.i13, align 8, !tbaa !13
  %5 = ptrtoint ptr %4 to i64
  %tobool.i.i15 = icmp eq ptr %4, null
  %tobool2.i.i16 = icmp ne i32 %call.i.i14, 0
  %or.cond.i.i17 = select i1 %tobool.i.i15, i1 true, i1 %tobool2.i.i16
  br i1 %or.cond.i.i17, label %if.then.i.i18, label %polybench_alloc_data.exit19

if.then.i.i18:                                    ; preds = %polybench_alloc_data.exit
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %7 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %6) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit19:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i13) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i20) #12
  store ptr null, ptr %ret.i.i20, align 8, !tbaa !13
  %call.i.i21 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i20, i64 noundef 4096, i64 noundef 204800) #12
  %8 = load ptr, ptr %ret.i.i20, align 8, !tbaa !13
  %tobool.i.i22 = icmp eq ptr %8, null
  %tobool2.i.i23 = icmp ne i32 %call.i.i21, 0
  %or.cond.i.i24 = select i1 %tobool.i.i22, i1 true, i1 %tobool2.i.i23
  br i1 %or.cond.i.i24, label %if.then.i.i25, label %polybench_alloc_data.exit26

if.then.i.i25:                                    ; preds = %polybench_alloc_data.exit19
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %10 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %9) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit26:                      ; preds = %polybench_alloc_data.exit19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i20) #12
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc15.i, %polybench_alloc_data.exit26
  %indvars.iv36.i = phi i64 [ 0, %polybench_alloc_data.exit26 ], [ %indvars.iv.next37.i, %for.inc15.i ]
  br label %vector.ph

vector.ph:                                        ; preds = %for.cond1.preheader.i, %for.inc12.i
  %indvars.iv31.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next32.i, %for.inc12.i ]
  %11 = mul nuw nsw i64 %indvars.iv31.i, %indvars.iv36.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %11, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %12 = add nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %13 = trunc nuw nsw <2 x i64> %12 to <2 x i32>
  %14 = urem <2 x i32> %13, splat (i32 160)
  %15 = uitofp nneg <2 x i32> %14 to <2 x double>
  %16 = fdiv <2 x double> %15, splat (double 1.600000e+02)
  %17 = getelementptr inbounds nuw [140 x [160 x double]], ptr %0, i64 %indvars.iv36.i, i64 %indvars.iv31.i, i64 %index
  store <2 x double> %16, ptr %17, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %18 = icmp eq i64 %index.next, 160
  br i1 %18, label %for.inc12.i, label %vector.body, !llvm.loop !26

for.inc12.i:                                      ; preds = %vector.body
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, 140
  br i1 %exitcond35.not.i, label %for.inc15.i, label %vector.ph, !llvm.loop !27

for.inc15.i:                                      ; preds = %for.inc12.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next37.i, 150
  br i1 %exitcond39.not.i, label %vector.ph41, label %for.cond1.preheader.i, !llvm.loop !28

vector.ph41:                                      ; preds = %for.inc15.i, %for.inc38.i
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %for.inc38.i ], [ 0, %for.inc15.i ]
  %broadcast.splatinsert42 = insertelement <2 x i64> poison, i64 %indvars.iv45.i, i64 0
  %broadcast.splat43 = shufflevector <2 x i64> %broadcast.splatinsert42, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph41
  %index45 = phi i64 [ 0, %vector.ph41 ], [ %index.next47, %vector.body44 ]
  %vec.ind46 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph41 ], [ %vec.ind.next48, %vector.body44 ]
  %19 = mul nuw nsw <2 x i64> %vec.ind46, %broadcast.splat43
  %20 = trunc nuw nsw <2 x i64> %19 to <2 x i32>
  %21 = urem <2 x i32> %20, splat (i32 160)
  %22 = uitofp nneg <2 x i32> %21 to <2 x double>
  %23 = fdiv <2 x double> %22, splat (double 1.600000e+02)
  %24 = getelementptr inbounds nuw [160 x double], ptr %8, i64 %indvars.iv45.i, i64 %index45
  store <2 x double> %23, ptr %24, align 8, !tbaa !11
  %index.next47 = add nuw i64 %index45, 2
  %vec.ind.next48 = add <2 x i64> %vec.ind46, splat (i64 2)
  %25 = icmp eq i64 %index.next47, 160
  br i1 %25, label %for.inc38.i, label %vector.body44, !llvm.loop !29

for.inc38.i:                                      ; preds = %vector.body44
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, 160
  br i1 %exitcond48.not.i, label %init_array.exit, label %vector.ph41, !llvm.loop !30

init_array.exit:                                  ; preds = %for.inc38.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #12
  %call.i.i27 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #12
  %cmp.not.i.i = icmp eq i32 %call.i.i27, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i28

if.then.i.i28:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i27)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i28
  %26 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %26 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %27 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %27 to double
  %28 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #12
  store double %28, ptr @polybench_t_start, align 8, !tbaa !11
  %29 = sub i64 %1, %5
  br label %for.cond1.preheader.us.us.us.i

for.cond1.preheader.us.us.us.i:                   ; preds = %for.cond1.for.inc42_crit_edge.split.us.us.us.split.us.us.i, %polybench_timer_start.exit
  %indvars.iv81.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next82.i, %for.cond1.for.inc42_crit_edge.split.us.us.us.split.us.us.i ]
  %30 = mul nuw nsw i64 %indvars.iv81.i, 179200
  %31 = add i64 %29, %30
  br label %for.cond4.preheader.us.us.us.us.us.i

for.cond4.preheader.us.us.us.us.us.i:             ; preds = %for.cond25.for.inc39_crit_edge.us.us.us.us.us.i, %for.cond1.preheader.us.us.us.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i, %for.cond25.for.inc39_crit_edge.us.us.us.us.us.i ], [ 0, %for.cond1.preheader.us.us.us.i ]
  %32 = mul nuw nsw i64 %indvars.iv76.i, 1280
  %33 = add i64 %31, %32
  br label %for.body6.us.us.us.us.us.us.i

for.body27.us.us.us.us.us.i:                      ; preds = %vector.memcheck, %for.body27.us.us.us.us.us.i
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i, %for.body27.us.us.us.us.us.i ], [ 0, %vector.memcheck ]
  %arrayidx29.us.us.us.us.us.i = getelementptr inbounds nuw double, ptr %4, i64 %indvars.iv71.i
  %34 = load double, ptr %arrayidx29.us.us.us.us.us.i, align 8, !tbaa !11
  %arrayidx35.us.us.us.us.us.i = getelementptr inbounds nuw [140 x [160 x double]], ptr %0, i64 %indvars.iv81.i, i64 %indvars.iv76.i, i64 %indvars.iv71.i
  store double %34, ptr %arrayidx35.us.us.us.us.us.i, align 8, !tbaa !11
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, 160
  br i1 %exitcond75.not.i, label %for.cond25.for.inc39_crit_edge.us.us.us.us.us.i, label %for.body27.us.us.us.us.us.i, !llvm.loop !31

for.body6.us.us.us.us.us.us.i:                    ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.i, %for.cond4.preheader.us.us.us.us.us.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.i ], [ 0, %for.cond4.preheader.us.us.us.us.us.i ]
  %arrayidx.us.us.us.us.us.us.i = getelementptr inbounds nuw double, ptr %4, i64 %indvars.iv64.i
  store double 0.000000e+00, ptr %arrayidx.us.us.us.us.us.us.i, align 8, !tbaa !11
  br label %for.body9.us.us.us.us.us.us.i

for.body9.us.us.us.us.us.us.i:                    ; preds = %for.body9.us.us.us.us.us.us.i, %for.body6.us.us.us.us.us.us.i
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30, %for.body9.us.us.us.us.us.us.i ], [ 0, %for.body6.us.us.us.us.us.us.i ]
  %35 = phi double [ %38, %for.body9.us.us.us.us.us.us.i ], [ 0.000000e+00, %for.body6.us.us.us.us.us.us.i ]
  %arrayidx15.us.us.us.us.us.us.i = getelementptr inbounds nuw [140 x [160 x double]], ptr %0, i64 %indvars.iv81.i, i64 %indvars.iv76.i, i64 %indvars.iv.i29
  %36 = load double, ptr %arrayidx15.us.us.us.us.us.us.i, align 8, !tbaa !11
  %arrayidx19.us.us.us.us.us.us.i = getelementptr inbounds nuw [160 x double], ptr %8, i64 %indvars.iv.i29, i64 %indvars.iv64.i
  %37 = load double, ptr %arrayidx19.us.us.us.us.us.us.i, align 8, !tbaa !11
  %38 = call double @llvm.fmuladd.f64(double %36, double %37, double %35)
  store double %38, ptr %arrayidx.us.us.us.us.us.us.i, align 8, !tbaa !11
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, 160
  br i1 %exitcond.not.i31, label %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.i, label %for.body9.us.us.us.us.us.us.i, !llvm.loop !20

for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.i: ; preds = %for.body9.us.us.us.us.us.us.i
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, 160
  br i1 %exitcond68.not.i, label %vector.memcheck, label %for.body6.us.us.us.us.us.us.i, !llvm.loop !21

vector.memcheck:                                  ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.i
  %diff.check = icmp ult i64 %33, 32
  br i1 %diff.check, label %for.body27.us.us.us.us.us.i, label %vector.body53

vector.body53:                                    ; preds = %vector.memcheck, %vector.body53
  %index54 = phi i64 [ %index.next55, %vector.body53 ], [ 0, %vector.memcheck ]
  %39 = getelementptr inbounds nuw double, ptr %4, i64 %index54
  %wide.load = load <2 x double>, ptr %39, align 8, !tbaa !11
  %40 = getelementptr inbounds nuw [140 x [160 x double]], ptr %0, i64 %indvars.iv81.i, i64 %indvars.iv76.i, i64 %index54
  store <2 x double> %wide.load, ptr %40, align 8, !tbaa !11
  %index.next55 = add nuw i64 %index54, 2
  %41 = icmp eq i64 %index.next55, 160
  br i1 %41, label %for.cond25.for.inc39_crit_edge.us.us.us.us.us.i, label %vector.body53, !llvm.loop !32

for.cond25.for.inc39_crit_edge.us.us.us.us.us.i:  ; preds = %vector.body53, %for.body27.us.us.us.us.us.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, 140
  br i1 %exitcond80.not.i, label %for.cond1.for.inc42_crit_edge.split.us.us.us.split.us.us.i, label %for.cond4.preheader.us.us.us.us.us.i, !llvm.loop !24

for.cond1.for.inc42_crit_edge.split.us.us.us.split.us.us.i: ; preds = %for.cond25.for.inc39_crit_edge.us.us.us.us.us.i
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1
  %exitcond85.not.i = icmp eq i64 %indvars.iv.next82.i, 150
  br i1 %exitcond85.not.i, label %kernel_doitgen.exit, label %for.cond1.preheader.us.us.us.i, !llvm.loop !25

kernel_doitgen.exit:                              ; preds = %for.cond1.for.inc42_crit_edge.split.us.us.us.split.us.us.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i32) #12
  %call.i.i33 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i32, ptr noundef null) #12
  %cmp.not.i.i34 = icmp eq i32 %call.i.i33, 0
  br i1 %cmp.not.i.i34, label %polybench_timer_stop.exit, label %if.then.i.i35

if.then.i.i35:                                    ; preds = %kernel_doitgen.exit
  %call1.i.i36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i33)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_doitgen.exit, %if.then.i.i35
  %42 = load i64, ptr %Tp.i.i32, align 8, !tbaa !5
  %conv.i.i37 = sitofp i64 %42 to double
  %tv_usec.i.i38 = getelementptr inbounds nuw i8, ptr %Tp.i.i32, i64 8
  %43 = load i64, ptr %tv_usec.i.i38, align 8, !tbaa !10
  %conv2.i.i39 = sitofp i64 %43 to double
  %44 = call double @llvm.fmuladd.f64(double %conv2.i.i39, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i37)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i32) #12
  store double %44, ptr @polybench_t_end, align 8, !tbaa !11
  %45 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %44, %45
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %46 = load ptr, ptr %argv, align 8, !tbaa !33
  %strcmpload = load i8, ptr %46, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #12
  call void @free(ptr noundef nonnull %4) #12
  call void @free(ptr noundef nonnull %8) #12
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %A) unnamed_addr #10 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc21
  %indvars.iv24 = phi i64 [ 0, %entry ], [ %indvars.iv.next25, %for.inc21 ]
  %3 = mul nuw nsw i64 %indvars.iv24, 22400
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2.preheader, %for.inc18
  %indvars.iv18 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next19, %for.inc18 ]
  %4 = mul nuw nsw i64 %indvars.iv18, 160
  %5 = add nuw nsw i64 %4, %3
  br label %for.body7

for.body7:                                        ; preds = %for.cond5.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %if.end ]
  %6 = add nuw nsw i64 %5, %indvars.iv
  %7 = trunc nuw nsw i64 %6 to i32
  %rem = urem i32 %7, 20
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx16 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv24, i64 %indvars.iv18, i64 %indvars.iv
  %10 = load double, ptr %arrayidx16, align 8, !tbaa !11
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5.10, double noundef %10) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 160
  br i1 %exitcond.not, label %for.inc18, label %for.body7, !llvm.loop !35

for.inc18:                                        ; preds = %if.end
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.next19, 140
  br i1 %exitcond23.not, label %for.inc21, label %for.cond5.preheader, !llvm.loop !36

for.inc21:                                        ; preds = %for.inc18
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, 150
  br i1 %exitcond28.not, label %for.end23, label %for.cond2.preheader, !llvm.loop !37

for.end23:                                        ; preds = %for.inc21
  %11 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #15
  %12 = load ptr, ptr @stderr, align 8, !tbaa !15
  %13 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %12) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
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
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18, !19, !23}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18, !19, !23}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18, !19, !23}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18, !19}
!32 = distinct !{!32, !18, !19, !23}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 omnipotent char", !14, i64 0}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
