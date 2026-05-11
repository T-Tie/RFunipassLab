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
  %call = tail call fastcc double @rtclock()
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #3 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp) #13
  %call = call i32 @gettimeofday(ptr noundef nonnull %Tp, ptr noundef null) #13
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp) #13
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
  tail call void @free(ptr noundef %ptr) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #3 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i) #13
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i, i64 noundef 4096, i64 noundef %mul) #13
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #14
  call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i) #13
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
  %smax = tail call i32 @llvm.smax.i32(i32 %np, i32 0)
  %smax37 = tail call i32 @llvm.smax.i32(i32 %nq, i32 0)
  %smax43 = tail call i32 @llvm.smax.i32(i32 %nr, i32 0)
  %wide.trip.count44 = zext nneg i32 %smax43 to i64
  %wide.trip.count38 = zext nneg i32 %smax37 to i64
  %wide.trip.count27 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %np to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.inc42 ], [ 0, %entry ]
  %exitcond45.not = icmp eq i64 %indvars.iv40, %wide.trip.count44
  br i1 %exitcond45.not, label %for.end44, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc39
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc39 ], [ 0, %for.cond ]
  %exitcond39.not = icmp eq i64 %indvars.iv34, %wide.trip.count38
  br i1 %exitcond39.not, label %for.inc42, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.inc22
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc22 ], [ 0, %for.cond1 ]
  %exitcond28.not = icmp eq i64 %indvars.iv24, %wide.trip.count27
  br i1 %exitcond28.not, label %for.cond25, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds nuw double, ptr %sum, i64 %indvars.iv24
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.body9, %for.body6
  %0 = phi double [ %3, %for.body9 ], [ 0.000000e+00, %for.body6 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc22, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %arrayidx15 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv40, i64 %indvars.iv34, i64 %indvars.iv
  %1 = load double, ptr %arrayidx15, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds nuw [160 x double], ptr %C4, i64 %indvars.iv, i64 %indvars.iv24
  %2 = load double, ptr %arrayidx19, align 8, !tbaa !5
  %3 = tail call double @llvm.fmuladd.f64(double %1, double %2, double %0)
  store double %3, ptr %arrayidx, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond7, !llvm.loop !17

for.inc22:                                        ; preds = %for.cond7
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond4, !llvm.loop !19

for.cond25:                                       ; preds = %for.cond4, %for.body27
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body27 ], [ 0, %for.cond4 ]
  %exitcond33.not = icmp eq i64 %indvars.iv29, %wide.trip.count27
  br i1 %exitcond33.not, label %for.inc39, label %for.body27

for.body27:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw double, ptr %sum, i64 %indvars.iv29
  %4 = load double, ptr %arrayidx29, align 8, !tbaa !5
  %arrayidx35 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv40, i64 %indvars.iv34, i64 %indvars.iv29
  store double %4, ptr %arrayidx35, align 8, !tbaa !5
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond25, !llvm.loop !20

for.inc39:                                        ; preds = %for.cond25
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond1, !llvm.loop !21

for.inc42:                                        ; preds = %for.cond1
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond, !llvm.loop !22

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #9 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 3360000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 160, i32 noundef 8)
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 25600, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc15.i, %entry
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %for.inc15.i ], [ 0, %entry ]
  %exitcond34.not.i = icmp eq i64 %indvars.iv31.i, 150
  br i1 %exitcond34.not.i, label %for.cond18.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i, %for.inc12.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %for.inc12.i ], [ 0, %for.cond.i ]
  %exitcond30.not.i = icmp eq i64 %indvars.iv26.i, 140
  br i1 %exitcond30.not.i, label %for.inc15.i, label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.cond1.i
  %0 = mul nuw nsw i64 %indvars.iv26.i, %indvars.iv31.i
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body6.i, %for.cond4.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond4.preheader.i ], [ %indvars.iv.next.i, %for.body6.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 160
  br i1 %exitcond.not.i, label %for.inc12.i, label %for.body6.i

for.body6.i:                                      ; preds = %for.cond4.i
  %1 = add nuw nsw i64 %indvars.iv.i, %0
  %2 = trunc nuw nsw i64 %1 to i32
  %rem.i = urem i32 %2, 160
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.600000e+02
  %arrayidx11.i = getelementptr inbounds nuw [140 x [160 x double]], ptr %call, i64 %indvars.iv31.i, i64 %indvars.iv26.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx11.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond4.i, !llvm.loop !23

for.inc12.i:                                      ; preds = %for.cond4.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  br label %for.cond1.i, !llvm.loop !24

for.inc15.i:                                      ; preds = %for.cond1.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  br label %for.cond.i, !llvm.loop !25

for.cond18.i:                                     ; preds = %for.cond.i, %for.inc38.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %for.inc38.i ], [ 0, %for.cond.i ]
  %exitcond43.not.i = icmp eq i64 %indvars.iv40.i, 160
  br i1 %exitcond43.not.i, label %init_array.exit, label %for.cond22.i

for.cond22.i:                                     ; preds = %for.cond18.i, %for.body25.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %for.body25.i ], [ 0, %for.cond18.i ]
  %exitcond39.not.i = icmp eq i64 %indvars.iv35.i, 160
  br i1 %exitcond39.not.i, label %for.inc38.i, label %for.body25.i

for.body25.i:                                     ; preds = %for.cond22.i
  %3 = mul nuw nsw i64 %indvars.iv35.i, %indvars.iv40.i
  %4 = trunc nuw nsw i64 %3 to i32
  %rem27.i = urem i32 %4, 160
  %conv28.i = uitofp nneg i32 %rem27.i to double
  %div30.i = fdiv double %conv28.i, 1.600000e+02
  %arrayidx34.i = getelementptr inbounds nuw [160 x double], ptr %call2, i64 %indvars.iv40.i, i64 %indvars.iv35.i
  store double %div30.i, ptr %arrayidx34.i, align 8, !tbaa !5
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  br label %for.cond22.i, !llvm.loop !26

for.inc38.i:                                      ; preds = %for.cond22.i
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  br label %for.cond18.i, !llvm.loop !27

init_array.exit:                                  ; preds = %for.cond18.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  tail call void @kernel_doitgen(i32 noundef 150, i32 noundef 140, i32 noundef 160, ptr noundef nonnull %call, ptr noundef nonnull %call2, ptr noundef nonnull %call1)
  %call.i13 = tail call fastcc double @rtclock()
  store double %call.i13, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %init_array.exit
  %5 = load ptr, ptr %argv, align 8, !tbaa !28
  %strcmpload = load i8, ptr %5, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %init_array.exit
  tail call void @free(ptr noundef nonnull %call) #13
  tail call void @free(ptr noundef nonnull %call1) #13
  tail call void @free(ptr noundef nonnull %call2) #13
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %A) unnamed_addr #10 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #14
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #16
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc21 ], [ 0, %entry ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, 150
  br i1 %exitcond25.not, label %for.end23, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %3 = mul nuw nsw i64 %indvars.iv21, 22400
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc18
  %indvars.iv15 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next16, %for.inc18 ]
  %exitcond20.not = icmp eq i64 %indvars.iv15, 140
  br i1 %exitcond20.not, label %for.inc21, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %4 = mul nuw nsw i64 %indvars.iv15, 160
  %5 = add nuw nsw i64 %4, %3
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, 160
  br i1 %exitcond.not, label %for.inc18, label %for.body7

for.body7:                                        ; preds = %for.cond5
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
  %arrayidx16 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv21, i64 %indvars.iv15, i64 %indvars.iv
  %10 = load double, ptr %arrayidx16, align 8, !tbaa !5
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5.10, double noundef %10) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !30

for.inc18:                                        ; preds = %for.cond5
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond2, !llvm.loop !31

for.inc21:                                        ; preds = %for.cond2
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond, !llvm.loop !32

for.end23:                                        ; preds = %for.cond
  %11 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #16
  %12 = load ptr, ptr @stderr, align 8, !tbaa !15
  %13 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %12) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

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
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }

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
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
