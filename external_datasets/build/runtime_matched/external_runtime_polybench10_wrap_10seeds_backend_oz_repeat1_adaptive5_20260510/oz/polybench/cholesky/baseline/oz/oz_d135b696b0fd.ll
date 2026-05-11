; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll'
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
  %call = tail call fastcc double @rtclock()
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #3 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp) #12
  %call = call i32 @gettimeofday(ptr noundef nonnull %Tp, ptr noundef null) #12
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !9
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !12
  %conv2 = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2, double 0x3EB0C6F7A0B5ED8D, double %conv)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp) #12
  ret double %2
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
  %call = tail call fastcc double @rtclock()
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #3 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.end18.i, %entry
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.end18.i ], [ 0, %entry ]
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %for.end18.i ], [ 1, %entry ]
  %exitcond69.not.i = icmp eq i64 %indvars.iv64.i, 2000
  br i1 %exitcond69.not.i, label %for.end25.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %for.cond.i ]
  %exitcond.i = icmp eq i64 %indvars.iv.i, %indvars.iv58.i
  br i1 %exitcond.i, label %for.cond8.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %0 = trunc nuw nsw i64 %indvars.iv.i to i32
  %1 = urem i32 %0, 2000
  %rem.i = sub nsw i32 0, %1
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %add.i = fadd double %div.i, 1.000000e+00
  %arrayidx6.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv64.i, i64 %indvars.iv.i
  store double %add.i, ptr %arrayidx6.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !17

for.cond8.i:                                      ; preds = %for.cond1.i, %for.body11.i
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %for.body11.i ], [ %indvars.iv58.i, %for.cond1.i ]
  %exitcond63.not.i = icmp eq i64 %indvars.iv60.i, 2000
  br i1 %exitcond63.not.i, label %for.end18.i, label %for.body11.i

for.body11.i:                                     ; preds = %for.cond8.i
  %arrayidx15.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv64.i, i64 %indvars.iv60.i
  store double 0.000000e+00, ptr %arrayidx15.i, align 8, !tbaa !5
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1
  br label %for.cond8.i, !llvm.loop !19

for.end18.i:                                      ; preds = %for.cond8.i
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  %arrayidx22.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv64.i, i64 %indvars.iv64.i
  store double 1.000000e+00, ptr %arrayidx22.i, align 8, !tbaa !5
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1
  br label %for.cond.i, !llvm.loop !20

for.end25.i:                                      ; preds = %for.cond.i
  %call.i = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8)
  br label %for.cond26.i

for.cond26.i:                                     ; preds = %for.inc41.i, %for.end25.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %for.inc41.i ], [ 0, %for.end25.i ]
  %exitcond77.not.i = icmp eq i64 %indvars.iv74.i, 2000
  br i1 %exitcond77.not.i, label %for.cond44.i, label %for.cond30.i

for.cond30.i:                                     ; preds = %for.cond26.i, %for.body33.i
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %for.body33.i ], [ 0, %for.cond26.i ]
  %exitcond73.not.i = icmp eq i64 %indvars.iv70.i, 2000
  br i1 %exitcond73.not.i, label %for.inc41.i, label %for.body33.i

for.body33.i:                                     ; preds = %for.cond30.i
  %arrayidx37.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %call.i, i64 0, i64 %indvars.iv74.i, i64 %indvars.iv70.i
  store double 0.000000e+00, ptr %arrayidx37.i, align 8, !tbaa !5
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1
  br label %for.cond30.i, !llvm.loop !21

for.inc41.i:                                      ; preds = %for.cond30.i
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1
  br label %for.cond26.i, !llvm.loop !22

for.cond44.i:                                     ; preds = %for.cond26.i, %for.inc74.i
  %indvars.iv86.i = phi i64 [ %indvars.iv.next87.i, %for.inc74.i ], [ 0, %for.cond26.i ]
  %exitcond89.not.i = icmp eq i64 %indvars.iv86.i, 2000
  br i1 %exitcond89.not.i, label %for.cond77.i, label %for.cond48.i

for.cond48.i:                                     ; preds = %for.cond44.i, %for.inc71.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %for.inc71.i ], [ 0, %for.cond44.i ]
  %exitcond85.not.i = icmp eq i64 %indvars.iv82.i, 2000
  br i1 %exitcond85.not.i, label %for.inc74.i, label %for.cond52.preheader.i

for.cond52.preheader.i:                           ; preds = %for.cond48.i
  %arrayidx59.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv82.i, i64 %indvars.iv86.i
  br label %for.cond52.i

for.cond52.i:                                     ; preds = %for.body55.i, %for.cond52.preheader.i
  %indvars.iv78.i = phi i64 [ 0, %for.cond52.preheader.i ], [ %indvars.iv.next79.i, %for.body55.i ]
  %exitcond81.not.i = icmp eq i64 %indvars.iv78.i, 2000
  br i1 %exitcond81.not.i, label %for.inc71.i, label %for.body55.i

for.body55.i:                                     ; preds = %for.cond52.i
  %2 = load double, ptr %arrayidx59.i, align 8, !tbaa !5
  %arrayidx63.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv78.i, i64 %indvars.iv86.i
  %3 = load double, ptr %arrayidx63.i, align 8, !tbaa !5
  %arrayidx67.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %call.i, i64 0, i64 %indvars.iv82.i, i64 %indvars.iv78.i
  %4 = load double, ptr %arrayidx67.i, align 8, !tbaa !5
  %5 = tail call double @llvm.fmuladd.f64(double %2, double %3, double %4)
  store double %5, ptr %arrayidx67.i, align 8, !tbaa !5
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1
  br label %for.cond52.i, !llvm.loop !23

for.inc71.i:                                      ; preds = %for.cond52.i
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1
  br label %for.cond48.i, !llvm.loop !24

for.inc74.i:                                      ; preds = %for.cond48.i
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1
  br label %for.cond44.i, !llvm.loop !25

for.cond77.i:                                     ; preds = %for.cond44.i, %for.inc96.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %for.inc96.i ], [ 0, %for.cond44.i ]
  %exitcond97.not.i = icmp eq i64 %indvars.iv94.i, 2000
  br i1 %exitcond97.not.i, label %init_array.exit, label %for.cond81.i

for.cond81.i:                                     ; preds = %for.cond77.i, %for.body84.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %for.body84.i ], [ 0, %for.cond77.i ]
  %exitcond93.not.i = icmp eq i64 %indvars.iv90.i, 2000
  br i1 %exitcond93.not.i, label %for.inc96.i, label %for.body84.i

for.body84.i:                                     ; preds = %for.cond81.i
  %arrayidx88.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %call.i, i64 0, i64 %indvars.iv94.i, i64 %indvars.iv90.i
  %6 = load double, ptr %arrayidx88.i, align 8, !tbaa !5
  %arrayidx92.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv94.i, i64 %indvars.iv90.i
  store double %6, ptr %arrayidx92.i, align 8, !tbaa !5
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1
  br label %for.cond81.i, !llvm.loop !26

for.inc96.i:                                      ; preds = %for.cond81.i
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1
  br label %for.cond77.i, !llvm.loop !27

init_array.exit:                                  ; preds = %for.cond77.i
  tail call void @free(ptr noundef nonnull %call.i) #12
  %call.i6 = tail call fastcc double @rtclock()
  store double %call.i6, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i7

for.cond.i7:                                      ; preds = %for.end46.i, %init_array.exit
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %for.end46.i ], [ 0, %init_array.exit ]
  %exitcond51.not.i = icmp eq i64 %indvars.iv48.i, 2000
  br i1 %exitcond51.not.i, label %kernel_cholesky.exit, label %for.cond1.i8

for.cond1.i8:                                     ; preds = %for.cond.i7, %for.end.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %for.end.i ], [ 0, %for.cond.i7 ]
  %exitcond43.not.i = icmp eq i64 %indvars.iv39.i, %indvars.iv48.i
  br i1 %exitcond43.not.i, label %for.cond28.preheader.i, label %for.cond4.preheader.i

for.cond28.preheader.i:                           ; preds = %for.cond1.i8
  %arrayidx42.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv48.i, i64 %indvars.iv48.i
  br label %for.cond28.i

for.cond4.preheader.i:                            ; preds = %for.cond1.i8
  %arrayidx16.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv48.i, i64 %indvars.iv39.i
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body6.i, %for.cond4.preheader.i
  %indvars.iv.i9 = phi i64 [ 0, %for.cond4.preheader.i ], [ %indvars.iv.next.i10, %for.body6.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i9, %indvars.iv39.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body6.i

for.body6.i:                                      ; preds = %for.cond4.i
  %arrayidx8.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv48.i, i64 %indvars.iv.i9
  %7 = load double, ptr %arrayidx8.i, align 8, !tbaa !5
  %arrayidx12.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv39.i, i64 %indvars.iv.i9
  %8 = load double, ptr %arrayidx12.i, align 8, !tbaa !5
  %9 = load double, ptr %arrayidx16.i, align 8, !tbaa !5
  %neg.i = fneg double %7
  %10 = tail call double @llvm.fmuladd.f64(double %neg.i, double %8, double %9)
  store double %10, ptr %arrayidx16.i, align 8, !tbaa !5
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1
  br label %for.cond4.i, !llvm.loop !28

for.end.i:                                        ; preds = %for.cond4.i
  %arrayidx20.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv39.i, i64 %indvars.iv39.i
  %11 = load double, ptr %arrayidx20.i, align 8, !tbaa !5
  %12 = load double, ptr %arrayidx16.i, align 8, !tbaa !5
  %div.i11 = fdiv double %12, %11
  store double %div.i11, ptr %arrayidx16.i, align 8, !tbaa !5
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1
  br label %for.cond1.i8, !llvm.loop !29

for.cond28.i:                                     ; preds = %for.body30.i, %for.cond28.preheader.i
  %indvars.iv44.i = phi i64 [ 0, %for.cond28.preheader.i ], [ %indvars.iv.next45.i, %for.body30.i ]
  %exitcond47.not.i = icmp eq i64 %indvars.iv44.i, %indvars.iv48.i
  br i1 %exitcond47.not.i, label %for.end46.i, label %for.body30.i

for.body30.i:                                     ; preds = %for.cond28.i
  %arrayidx34.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv48.i, i64 %indvars.iv44.i
  %13 = load double, ptr %arrayidx34.i, align 8, !tbaa !5
  %14 = load double, ptr %arrayidx42.i, align 8, !tbaa !5
  %neg43.i = fneg double %13
  %15 = tail call double @llvm.fmuladd.f64(double %neg43.i, double %13, double %14)
  store double %15, ptr %arrayidx42.i, align 8, !tbaa !5
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1
  br label %for.cond28.i, !llvm.loop !30

for.end46.i:                                      ; preds = %for.cond28.i
  %16 = load double, ptr %arrayidx42.i, align 8, !tbaa !5
  %call.i12 = tail call double @sqrt(double noundef %16) #12, !tbaa !31
  store double %call.i12, ptr %arrayidx42.i, align 8, !tbaa !5
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  br label %for.cond.i7, !llvm.loop !33

kernel_cholesky.exit:                             ; preds = %for.cond.i7
  %call.i13 = tail call fastcc double @rtclock()
  store double %call.i13, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_cholesky.exit
  %17 = load ptr, ptr %argv, align 8, !tbaa !34
  %strcmpload = load i8, ptr %17, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_cholesky.exit
  tail call void @free(ptr noundef nonnull %call) #12
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %A) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc10 ], [ 0, %entry ]
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc10 ], [ 1, %entry ]
  %exitcond21.not = icmp eq i64 %indvars.iv15, 2000
  br i1 %exitcond21.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %3 = mul nuw nsw i64 %indvars.iv15, 2000
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond = icmp eq i64 %indvars.iv, %indvars.iv13
  br i1 %exitcond, label %for.inc10, label %for.body4

for.body4:                                        ; preds = %for.cond2
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
  %arrayidx8 = getelementptr inbounds nuw [2000 x double], ptr %A, i64 %indvars.iv15, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !36

for.inc10:                                        ; preds = %for.cond2
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond, !llvm.loop !37

for.end12:                                        ; preds = %for.cond
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #15
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

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
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"timeval", !11, i64 0, !11, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !7, i64 0}
!33 = distinct !{!33, !18}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 omnipotent char", !14, i64 0}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
