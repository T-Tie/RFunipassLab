; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll'
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp) #11
  %call = call i32 @gettimeofday(ptr noundef nonnull %Tp, ptr noundef null) #11
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp) #11
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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2000
  br i1 %exitcond.not.i, label %for.cond9.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv.i
  store double 0.000000e+00, ptr %arrayidx.i, align 8, !tbaa !5
  %arrayidx3.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv.i
  store double 0.000000e+00, ptr %arrayidx3.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %0 = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %conv4.i = uitofp nneg i32 %0 to double
  %div.i = fdiv double %conv4.i, 2.000000e+03
  %div5.i = fmul double %div.i, 5.000000e-01
  %add6.i = fadd double %div5.i, 4.000000e+00
  %arrayidx8.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv.i
  store double %add6.i, ptr %arrayidx8.i, align 8, !tbaa !5
  br label %for.cond.i, !llvm.loop !17

for.cond9.i:                                      ; preds = %for.cond.i, %for.end39.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i, %for.end39.i ], [ 0, %for.cond.i ]
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %for.end39.i ], [ 1, %for.cond.i ]
  %exitcond81.not.i = icmp eq i64 %indvars.iv76.i, 2000
  br i1 %exitcond81.not.i, label %for.end46.i, label %for.cond13.i

for.cond13.i:                                     ; preds = %for.cond9.i, %for.body16.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.body16.i ], [ 0, %for.cond9.i ]
  %exitcond69.i = icmp eq i64 %indvars.iv64.i, %indvars.iv70.i
  br i1 %exitcond69.i, label %for.cond29.i, label %for.body16.i

for.body16.i:                                     ; preds = %for.cond13.i
  %1 = trunc nuw nsw i64 %indvars.iv64.i to i32
  %2 = urem i32 %1, 2000
  %rem.i = sub nsw i32 0, %2
  %conv17.i = sitofp i32 %rem.i to double
  %div19.i = fdiv double %conv17.i, 2.000000e+03
  %add20.i = fadd double %div19.i, 1.000000e+00
  %arrayidx24.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv76.i, i64 %indvars.iv64.i
  store double %add20.i, ptr %arrayidx24.i, align 8, !tbaa !5
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  br label %for.cond13.i, !llvm.loop !19

for.cond29.i:                                     ; preds = %for.cond13.i, %for.body32.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %for.body32.i ], [ %indvars.iv70.i, %for.cond13.i ]
  %exitcond75.not.i = icmp eq i64 %indvars.iv72.i, 2000
  br i1 %exitcond75.not.i, label %for.end39.i, label %for.body32.i

for.body32.i:                                     ; preds = %for.cond29.i
  %arrayidx36.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv76.i, i64 %indvars.iv72.i
  store double 0.000000e+00, ptr %arrayidx36.i, align 8, !tbaa !5
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1
  br label %for.cond29.i, !llvm.loop !20

for.end39.i:                                      ; preds = %for.cond29.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1
  %arrayidx43.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv76.i, i64 %indvars.iv76.i
  store double 1.000000e+00, ptr %arrayidx43.i, align 8, !tbaa !5
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1
  br label %for.cond9.i, !llvm.loop !21

for.end46.i:                                      ; preds = %for.cond9.i
  %call.i = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8)
  br label %for.cond47.i

for.cond47.i:                                     ; preds = %for.inc62.i, %for.end46.i
  %indvars.iv86.i = phi i64 [ %indvars.iv.next87.i, %for.inc62.i ], [ 0, %for.end46.i ]
  %exitcond89.not.i = icmp eq i64 %indvars.iv86.i, 2000
  br i1 %exitcond89.not.i, label %for.cond65.i, label %for.cond51.i

for.cond51.i:                                     ; preds = %for.cond47.i, %for.body54.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %for.body54.i ], [ 0, %for.cond47.i ]
  %exitcond85.not.i = icmp eq i64 %indvars.iv82.i, 2000
  br i1 %exitcond85.not.i, label %for.inc62.i, label %for.body54.i

for.body54.i:                                     ; preds = %for.cond51.i
  %arrayidx58.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %call.i, i64 0, i64 %indvars.iv86.i, i64 %indvars.iv82.i
  store double 0.000000e+00, ptr %arrayidx58.i, align 8, !tbaa !5
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1
  br label %for.cond51.i, !llvm.loop !22

for.inc62.i:                                      ; preds = %for.cond51.i
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1
  br label %for.cond47.i, !llvm.loop !23

for.cond65.i:                                     ; preds = %for.cond47.i, %for.inc95.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %for.inc95.i ], [ 0, %for.cond47.i ]
  %exitcond101.not.i = icmp eq i64 %indvars.iv98.i, 2000
  br i1 %exitcond101.not.i, label %for.cond98.i, label %for.cond69.i

for.cond69.i:                                     ; preds = %for.cond65.i, %for.inc92.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %for.inc92.i ], [ 0, %for.cond65.i ]
  %exitcond97.not.i = icmp eq i64 %indvars.iv94.i, 2000
  br i1 %exitcond97.not.i, label %for.inc95.i, label %for.cond73.preheader.i

for.cond73.preheader.i:                           ; preds = %for.cond69.i
  %arrayidx80.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv94.i, i64 %indvars.iv98.i
  br label %for.cond73.i

for.cond73.i:                                     ; preds = %for.body76.i, %for.cond73.preheader.i
  %indvars.iv90.i = phi i64 [ 0, %for.cond73.preheader.i ], [ %indvars.iv.next91.i, %for.body76.i ]
  %exitcond93.not.i = icmp eq i64 %indvars.iv90.i, 2000
  br i1 %exitcond93.not.i, label %for.inc92.i, label %for.body76.i

for.body76.i:                                     ; preds = %for.cond73.i
  %3 = load double, ptr %arrayidx80.i, align 8, !tbaa !5
  %arrayidx84.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv90.i, i64 %indvars.iv98.i
  %4 = load double, ptr %arrayidx84.i, align 8, !tbaa !5
  %arrayidx88.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %call.i, i64 0, i64 %indvars.iv94.i, i64 %indvars.iv90.i
  %5 = load double, ptr %arrayidx88.i, align 8, !tbaa !5
  %6 = tail call double @llvm.fmuladd.f64(double %3, double %4, double %5)
  store double %6, ptr %arrayidx88.i, align 8, !tbaa !5
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1
  br label %for.cond73.i, !llvm.loop !24

for.inc92.i:                                      ; preds = %for.cond73.i
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1
  br label %for.cond69.i, !llvm.loop !25

for.inc95.i:                                      ; preds = %for.cond69.i
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1
  br label %for.cond65.i, !llvm.loop !26

for.cond98.i:                                     ; preds = %for.cond65.i, %for.inc117.i
  %indvars.iv106.i = phi i64 [ %indvars.iv.next107.i, %for.inc117.i ], [ 0, %for.cond65.i ]
  %exitcond109.not.i = icmp eq i64 %indvars.iv106.i, 2000
  br i1 %exitcond109.not.i, label %init_array.exit, label %for.cond102.i

for.cond102.i:                                    ; preds = %for.cond98.i, %for.body105.i
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %for.body105.i ], [ 0, %for.cond98.i ]
  %exitcond105.not.i = icmp eq i64 %indvars.iv102.i, 2000
  br i1 %exitcond105.not.i, label %for.inc117.i, label %for.body105.i

for.body105.i:                                    ; preds = %for.cond102.i
  %arrayidx109.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %call.i, i64 0, i64 %indvars.iv106.i, i64 %indvars.iv102.i
  %7 = load double, ptr %arrayidx109.i, align 8, !tbaa !5
  %arrayidx113.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv106.i, i64 %indvars.iv102.i
  store double %7, ptr %arrayidx113.i, align 8, !tbaa !5
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1
  br label %for.cond102.i, !llvm.loop !27

for.inc117.i:                                     ; preds = %for.cond102.i
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1
  br label %for.cond98.i, !llvm.loop !28

init_array.exit:                                  ; preds = %for.cond98.i
  tail call void @free(ptr noundef nonnull %call.i) #11
  %call.i12 = tail call fastcc double @rtclock()
  store double %call.i12, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i13

for.cond.i13:                                     ; preds = %for.inc57.i, %init_array.exit
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %for.inc57.i ], [ 0, %init_array.exit ]
  %exitcond94.not.i = icmp eq i64 %indvars.iv87.i, 2000
  br i1 %exitcond94.not.i, label %for.cond60.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i13, %for.end.i
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i, %for.end.i ], [ 0, %for.cond.i13 ]
  %exitcond82.not.i = icmp eq i64 %indvars.iv78.i, %indvars.iv87.i
  br i1 %exitcond82.not.i, label %for.cond28.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %arrayidx5.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv87.i, i64 %indvars.iv78.i
  %8 = load double, ptr %arrayidx5.i, align 8, !tbaa !5
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body8.i, %for.body3.i
  %indvars.iv.i14 = phi i64 [ %indvars.iv.next.i16, %for.body8.i ], [ 0, %for.body3.i ]
  %w.0.i = phi double [ %11, %for.body8.i ], [ %8, %for.body3.i ]
  %exitcond.not.i15 = icmp eq i64 %indvars.iv.i14, %indvars.iv78.i
  br i1 %exitcond.not.i15, label %for.end.i, label %for.body8.i

for.body8.i:                                      ; preds = %for.cond6.i
  %arrayidx12.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv87.i, i64 %indvars.iv.i14
  %9 = load double, ptr %arrayidx12.i, align 8, !tbaa !5
  %arrayidx16.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv.i14, i64 %indvars.iv78.i
  %10 = load double, ptr %arrayidx16.i, align 8, !tbaa !5
  %neg.i = fneg double %9
  %11 = tail call double @llvm.fmuladd.f64(double %neg.i, double %10, double %w.0.i)
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i14, 1
  br label %for.cond6.i, !llvm.loop !29

for.end.i:                                        ; preds = %for.cond6.i
  %arrayidx20.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv78.i, i64 %indvars.iv78.i
  %12 = load double, ptr %arrayidx20.i, align 8, !tbaa !5
  %div.i17 = fdiv double %w.0.i, %12
  store double %div.i17, ptr %arrayidx5.i, align 8, !tbaa !5
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1
  br label %for.cond1.i, !llvm.loop !30

for.cond28.i:                                     ; preds = %for.cond1.i, %for.end49.i
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i, %for.end49.i ], [ %indvars.iv87.i, %for.cond1.i ]
  %exitcond92.not.i = icmp eq i64 %indvars.iv89.i, 2000
  br i1 %exitcond92.not.i, label %for.inc57.i, label %for.body30.i

for.body30.i:                                     ; preds = %for.cond28.i
  %arrayidx34.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv87.i, i64 %indvars.iv89.i
  %13 = load double, ptr %arrayidx34.i, align 8, !tbaa !5
  br label %for.cond35.i

for.cond35.i:                                     ; preds = %for.body37.i, %for.body30.i
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i, %for.body37.i ], [ 0, %for.body30.i ]
  %w.1.i = phi double [ %16, %for.body37.i ], [ %13, %for.body30.i ]
  %exitcond86.not.i = icmp eq i64 %indvars.iv83.i, %indvars.iv87.i
  br i1 %exitcond86.not.i, label %for.end49.i, label %for.body37.i

for.body37.i:                                     ; preds = %for.cond35.i
  %arrayidx41.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv87.i, i64 %indvars.iv83.i
  %14 = load double, ptr %arrayidx41.i, align 8, !tbaa !5
  %arrayidx45.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv83.i, i64 %indvars.iv89.i
  %15 = load double, ptr %arrayidx45.i, align 8, !tbaa !5
  %neg46.i = fneg double %14
  %16 = tail call double @llvm.fmuladd.f64(double %neg46.i, double %15, double %w.1.i)
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1
  br label %for.cond35.i, !llvm.loop !31

for.end49.i:                                      ; preds = %for.cond35.i
  store double %w.1.i, ptr %arrayidx34.i, align 8, !tbaa !5
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1
  br label %for.cond28.i, !llvm.loop !32

for.inc57.i:                                      ; preds = %for.cond28.i
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1
  br label %for.cond.i13, !llvm.loop !33

for.cond60.i:                                     ; preds = %for.cond.i13, %for.end77.i
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %for.end77.i ], [ 0, %for.cond.i13 ]
  %exitcond102.not.i = icmp eq i64 %indvars.iv99.i, 2000
  br i1 %exitcond102.not.i, label %for.cond83.i, label %for.body62.i

for.body62.i:                                     ; preds = %for.cond60.i
  %arrayidx64.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv99.i
  %17 = load double, ptr %arrayidx64.i, align 8, !tbaa !5
  br label %for.cond65.i18

for.cond65.i18:                                   ; preds = %for.body67.i, %for.body62.i
  %indvars.iv95.i = phi i64 [ %indvars.iv.next96.i, %for.body67.i ], [ 0, %for.body62.i ]
  %w.2.i = phi double [ %20, %for.body67.i ], [ %17, %for.body62.i ]
  %exitcond98.not.i = icmp eq i64 %indvars.iv95.i, %indvars.iv99.i
  br i1 %exitcond98.not.i, label %for.end77.i, label %for.body67.i

for.body67.i:                                     ; preds = %for.cond65.i18
  %arrayidx71.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv99.i, i64 %indvars.iv95.i
  %18 = load double, ptr %arrayidx71.i, align 8, !tbaa !5
  %arrayidx73.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv95.i
  %19 = load double, ptr %arrayidx73.i, align 8, !tbaa !5
  %neg74.i = fneg double %18
  %20 = tail call double @llvm.fmuladd.f64(double %neg74.i, double %19, double %w.2.i)
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1
  br label %for.cond65.i18, !llvm.loop !34

for.end77.i:                                      ; preds = %for.cond65.i18
  %arrayidx79.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv99.i
  store double %w.2.i, ptr %arrayidx79.i, align 8, !tbaa !5
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1
  br label %for.cond60.i, !llvm.loop !35

for.cond83.i:                                     ; preds = %for.cond60.i, %for.end100.i
  %i.2.i = phi i32 [ %dec.i, %for.end100.i ], [ 1999, %for.cond60.i ]
  %21 = zext i32 %i.2.i to i64
  %cmp84.i = icmp sgt i32 %i.2.i, -1
  br i1 %cmp84.i, label %for.body85.i, label %kernel_ludcmp.exit

for.body85.i:                                     ; preds = %for.cond83.i
  %arrayidx87.i = getelementptr inbounds nuw double, ptr %call3, i64 %21
  %22 = load double, ptr %arrayidx87.i, align 8, !tbaa !5
  br label %for.cond88.i

for.cond88.i:                                     ; preds = %for.body90.i, %for.body85.i
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i, %for.body90.i ], [ %21, %for.body85.i ]
  %w.3.i = phi double [ %25, %for.body90.i ], [ %22, %for.body85.i ]
  %exitcond106.not.i = icmp eq i64 %indvars.iv103.i, 1999
  br i1 %exitcond106.not.i, label %for.end100.i, label %for.body90.i

for.body90.i:                                     ; preds = %for.cond88.i
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1
  %arrayidx94.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %21, i64 %indvars.iv.next104.i
  %23 = load double, ptr %arrayidx94.i, align 8, !tbaa !5
  %arrayidx96.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv.next104.i
  %24 = load double, ptr %arrayidx96.i, align 8, !tbaa !5
  %neg97.i = fneg double %23
  %25 = tail call double @llvm.fmuladd.f64(double %neg97.i, double %24, double %w.3.i)
  br label %for.cond88.i, !llvm.loop !36

for.end100.i:                                     ; preds = %for.cond88.i
  %arrayidx104.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %21, i64 %21
  %26 = load double, ptr %arrayidx104.i, align 8, !tbaa !5
  %div105.i = fdiv double %w.3.i, %26
  %arrayidx107.i = getelementptr inbounds nuw double, ptr %call2, i64 %21
  store double %div105.i, ptr %arrayidx107.i, align 8, !tbaa !5
  %dec.i = add nsw i32 %i.2.i, -1
  br label %for.cond83.i, !llvm.loop !37

kernel_ludcmp.exit:                               ; preds = %for.cond83.i
  %call.i19 = tail call fastcc double @rtclock()
  store double %call.i19, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_ludcmp.exit
  %27 = load ptr, ptr %argv, align 8, !tbaa !38
  %strcmpload = load i8, ptr %27, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_ludcmp.exit
  tail call void @free(ptr noundef nonnull %call) #11
  tail call void @free(ptr noundef nonnull %call1) #11
  tail call void @free(ptr noundef nonnull %call2) #11
  tail call void @free(ptr noundef nonnull %call3) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %x) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 2000
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16
  %rem4 = urem i16 %rem.lhs.trunc, 20
  %cmp2 = icmp eq i16 %rem4, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds nuw double, ptr %x, i64 %indvars.iv
  %5 = load double, ptr %arrayidx, align 8, !tbaa !5
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, double noundef %5) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
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
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 omnipotent char", !14, i64 0}
!40 = distinct !{!40, !18}
