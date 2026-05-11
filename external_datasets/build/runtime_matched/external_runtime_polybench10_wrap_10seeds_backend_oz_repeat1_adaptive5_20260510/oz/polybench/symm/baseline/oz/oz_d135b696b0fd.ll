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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc16.i, %entry
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %for.inc16.i ], [ 0, %entry ]
  %exitcond39.not.i = icmp eq i64 %indvars.iv35.i, 1000
  br i1 %exitcond39.not.i, label %for.cond19.i, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = add nuw nsw i64 %indvars.iv35.i, 1200
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1200
  br i1 %exitcond.not.i, label %for.inc16.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %1 = add nuw nsw i64 %indvars.iv.i, %indvars.iv35.i
  %2 = trunc nuw nsw i64 %1 to i32
  %rem.i = urem i32 %2, 100
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.000000e+03
  %arrayidx6.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv35.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx6.i, align 8, !tbaa !5
  %3 = sub nuw nsw i64 %0, %indvars.iv.i
  %4 = trunc nuw nsw i64 %3 to i32
  %rem8.i = urem i32 %4, 100
  %conv9.i = uitofp nneg i32 %rem8.i to double
  %div11.i = fdiv double %conv9.i, 1.000000e+03
  %arrayidx15.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv35.i, i64 %indvars.iv.i
  store double %div11.i, ptr %arrayidx15.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !17

for.inc16.i:                                      ; preds = %for.cond1.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  br label %for.cond.i, !llvm.loop !19

for.cond19.loopexit.i:                            ; preds = %for.cond40.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  br label %for.cond19.i, !llvm.loop !20

for.cond19.i:                                     ; preds = %for.cond.i, %for.cond19.loopexit.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %for.cond19.loopexit.i ], [ 0, %for.cond.i ]
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %for.cond19.loopexit.i ], [ 1, %for.cond.i ]
  %exitcond58.not.i = icmp eq i64 %indvars.iv53.i, 1000
  br i1 %exitcond58.not.i, label %init_array.exit, label %for.cond23.i

for.cond23.i:                                     ; preds = %for.cond19.i, %for.body26.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %for.body26.i ], [ 0, %for.cond19.i ]
  %exitcond46.i = icmp eq i64 %indvars.iv40.i, %indvars.iv47.i
  br i1 %exitcond46.i, label %for.cond40.i, label %for.body26.i

for.body26.i:                                     ; preds = %for.cond23.i
  %5 = add nuw nsw i64 %indvars.iv40.i, %indvars.iv53.i
  %6 = trunc nuw nsw i64 %5 to i32
  %rem28.i = urem i32 %6, 100
  %conv29.i = uitofp nneg i32 %rem28.i to double
  %div31.i = fdiv double %conv29.i, 1.000000e+03
  %arrayidx35.i = getelementptr inbounds nuw [1000 x double], ptr %call1, i64 %indvars.iv53.i, i64 %indvars.iv40.i
  store double %div31.i, ptr %arrayidx35.i, align 8, !tbaa !5
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  br label %for.cond23.i, !llvm.loop !21

for.cond40.i:                                     ; preds = %for.cond23.i, %for.body43.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %for.body43.i ], [ %indvars.iv47.i, %for.cond23.i ]
  %exitcond52.not.i = icmp eq i64 %indvars.iv49.i, 1000
  br i1 %exitcond52.not.i, label %for.cond19.loopexit.i, label %for.body43.i

for.body43.i:                                     ; preds = %for.cond40.i
  %arrayidx47.i = getelementptr inbounds nuw [1000 x double], ptr %call1, i64 %indvars.iv53.i, i64 %indvars.iv49.i
  store double -9.990000e+02, ptr %arrayidx47.i, align 8, !tbaa !5
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1
  br label %for.cond40.i, !llvm.loop !22

init_array.exit:                                  ; preds = %for.cond19.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i12

for.cond.i12:                                     ; preds = %for.inc50.i, %init_array.exit
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %for.inc50.i ], [ 0, %init_array.exit ]
  %exitcond40.not.i = icmp eq i64 %indvars.iv37.i, 1000
  br i1 %exitcond40.not.i, label %kernel_symm.exit, label %for.cond1.preheader.i13

for.cond1.preheader.i13:                          ; preds = %for.cond.i12
  %arrayidx40.i = getelementptr inbounds nuw [1000 x double], ptr %call1, i64 %indvars.iv37.i, i64 %indvars.iv37.i
  br label %for.cond1.i14

for.cond1.i14:                                    ; preds = %for.end.i, %for.cond1.preheader.i13
  %indvars.iv33.i = phi i64 [ 0, %for.cond1.preheader.i13 ], [ %indvars.iv.next34.i, %for.end.i ]
  %exitcond36.not.i = icmp eq i64 %indvars.iv33.i, 1200
  br i1 %exitcond36.not.i, label %for.inc50.i, label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.cond1.i14
  %arrayidx8.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv37.i, i64 %indvars.iv33.i
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body6.i, %for.cond4.preheader.i
  %indvars.iv.i15 = phi i64 [ 0, %for.cond4.preheader.i ], [ %indvars.iv.next.i17, %for.body6.i ]
  %temp2.0.i = phi double [ 0.000000e+00, %for.cond4.preheader.i ], [ %13, %for.body6.i ]
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.i15, %indvars.iv37.i
  br i1 %exitcond.not.i16, label %for.end.i, label %for.body6.i

for.body6.i:                                      ; preds = %for.cond4.i
  %7 = load double, ptr %arrayidx8.i, align 8, !tbaa !5
  %mul.i = fmul double %7, 1.500000e+00
  %arrayidx12.i = getelementptr inbounds nuw [1000 x double], ptr %call1, i64 %indvars.iv37.i, i64 %indvars.iv.i15
  %8 = load double, ptr %arrayidx12.i, align 8, !tbaa !5
  %arrayidx17.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv.i15, i64 %indvars.iv33.i
  %9 = load double, ptr %arrayidx17.i, align 8, !tbaa !5
  %10 = tail call double @llvm.fmuladd.f64(double %mul.i, double %8, double %9)
  store double %10, ptr %arrayidx17.i, align 8, !tbaa !5
  %arrayidx21.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv.i15, i64 %indvars.iv33.i
  %11 = load double, ptr %arrayidx21.i, align 8, !tbaa !5
  %12 = load double, ptr %arrayidx12.i, align 8, !tbaa !5
  %13 = tail call double @llvm.fmuladd.f64(double %11, double %12, double %temp2.0.i)
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1
  br label %for.cond4.i, !llvm.loop !23

for.end.i:                                        ; preds = %for.cond4.i
  %arrayidx30.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv37.i, i64 %indvars.iv33.i
  %14 = load double, ptr %arrayidx30.i, align 8, !tbaa !5
  %15 = load double, ptr %arrayidx8.i, align 8, !tbaa !5
  %mul36.i = fmul double %15, 1.500000e+00
  %16 = load double, ptr %arrayidx40.i, align 8, !tbaa !5
  %mul41.i = fmul double %mul36.i, %16
  %17 = tail call double @llvm.fmuladd.f64(double %14, double 1.200000e+00, double %mul41.i)
  %18 = tail call double @llvm.fmuladd.f64(double %temp2.0.i, double 1.500000e+00, double %17)
  store double %18, ptr %arrayidx30.i, align 8, !tbaa !5
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1
  br label %for.cond1.i14, !llvm.loop !24

for.inc50.i:                                      ; preds = %for.cond1.i14
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1
  br label %for.cond.i12, !llvm.loop !25

kernel_symm.exit:                                 ; preds = %for.cond.i12
  %call.i18 = tail call fastcc double @rtclock()
  store double %call.i18, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_symm.exit
  %19 = load ptr, ptr %argv, align 8, !tbaa !26
  %strcmpload = load i8, ptr %19, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_symm.exit
  tail call void @free(ptr noundef nonnull %call) #11
  tail call void @free(ptr noundef nonnull %call1) #11
  tail call void @free(ptr noundef nonnull %call2) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %C) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc10 ], [ 0, %entry ]
  %exitcond14.not = icmp eq i64 %indvars.iv10, 1000
  br i1 %exitcond14.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %3 = mul nuw nsw i64 %indvars.iv10, 1000
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1200
  br i1 %exitcond.not, label %for.inc10, label %for.body4

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
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %C, i64 %indvars.iv10, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !28

for.inc10:                                        ; preds = %for.cond2
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond, !llvm.loop !29

for.end12:                                        ; preds = %for.cond
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #12
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
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 omnipotent char", !14, i64 0}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
