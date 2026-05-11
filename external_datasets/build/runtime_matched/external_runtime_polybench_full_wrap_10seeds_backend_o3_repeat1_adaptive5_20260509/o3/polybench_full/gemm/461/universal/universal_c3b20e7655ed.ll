; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemm.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/root/exp/RFunipassLab/external_datasets/sources/polybench_full/utilities/polybench.c\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Error return from gettimeofday: %d\00", align 1
@polybench_inter_array_padding_sz = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.6 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
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

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #5 {
entry:
  %call = tail call fastcc double @rtclock() #14
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #5 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp) #17
  %call = call i32 @gettimeofday(ptr noundef nonnull align 8 captures(none) %Tp, ptr noundef null) #14
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !9
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !12
  %conv2 = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2, double noundef 0x3EB0C6F7A0B5ED8D, double %conv) #18
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp) #14
  ret double %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #5 {
entry:
  %call = tail call fastcc double @rtclock() #14
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #5 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #8 {
entry:
  tail call void @free(ptr noundef captures(none) %ptr) #19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #5 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #17
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #14
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr noundef nonnull @.str.4, i64 noundef 50, i64 noundef 1, ptr noundef %1) #20
  call void @exit(i32 noundef 1) #21
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #14
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #10 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1100000, i32 noundef 8) #14
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #14
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 1320000, i32 noundef 8) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc7.i, %entry
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %for.inc7.i ], [ 0, %entry ]
  %exitcond38.not.i = icmp eq i64 %indvars.iv35.i, 1000
  br i1 %exitcond38.not.i, label %for.cond10.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.cond.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1100
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond1.i
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv35.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 1000
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.000000e+03
  %arrayidx6.i = getelementptr inbounds nuw [1100 x double], ptr %call, i64 %indvars.iv35.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx6.i, align 8, !tbaa !5, !noalias !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !21

for.inc7.i:                                       ; preds = %for.cond1.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  br label %for.cond.i, !llvm.loop !23

for.cond10.i:                                     ; preds = %for.cond.i, %for.inc31.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %for.inc31.i ], [ 0, %for.cond.i ]
  %exitcond47.not.i = icmp eq i64 %indvars.iv44.i, 1000
  br i1 %exitcond47.not.i, label %for.cond34.i, label %for.cond14.i

for.cond14.i:                                     ; preds = %for.cond10.i, %for.inc28.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %for.inc28.i ], [ 0, %for.cond10.i ]
  %exitcond43.not.i = icmp eq i64 %indvars.iv39.i, 1200
  br i1 %exitcond43.not.i, label %for.inc31.i, label %for.inc28.i

for.inc28.i:                                      ; preds = %for.cond14.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1
  %3 = mul nuw nsw i64 %indvars.iv.next40.i, %indvars.iv44.i
  %4 = trunc nuw nsw i64 %3 to i32
  %rem20.i = urem i32 %4, 1200
  %conv21.i = uitofp nneg i32 %rem20.i to double
  %div23.i = fdiv double %conv21.i, 1.200000e+03
  %arrayidx27.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv44.i, i64 %indvars.iv39.i
  store double %div23.i, ptr %arrayidx27.i, align 8, !tbaa !5, !noalias !17
  br label %for.cond14.i, !llvm.loop !24

for.inc31.i:                                      ; preds = %for.cond14.i
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1
  br label %for.cond10.i, !llvm.loop !25

for.cond34.i:                                     ; preds = %for.cond10.i, %for.end54.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %for.end54.i ], [ 0, %for.cond10.i ]
  %exitcond57.not.i = icmp eq i64 %indvars.iv54.i, 1200
  br i1 %exitcond57.not.i, label %init_array.exit, label %for.cond38.i

for.cond38.i:                                     ; preds = %for.cond34.i, %for.inc52.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %for.inc52.i ], [ 0, %for.cond34.i ]
  %exitcond53.not.i = icmp eq i64 %indvars.iv48.i, 1100
  br i1 %exitcond53.not.i, label %for.end54.i, label %for.inc52.i

for.inc52.i:                                      ; preds = %for.cond38.i
  %5 = add nuw nsw i64 %indvars.iv48.i, 2
  %6 = mul nuw nsw i64 %5, %indvars.iv54.i
  %7 = trunc nuw nsw i64 %6 to i32
  %rem44.i = urem i32 %7, 1100
  %conv45.i = uitofp nneg i32 %rem44.i to double
  %div47.i = fdiv double %conv45.i, 1.100000e+03
  %arrayidx51.i = getelementptr inbounds nuw [1100 x double], ptr %call2, i64 %indvars.iv54.i, i64 %indvars.iv48.i
  store double %div47.i, ptr %arrayidx51.i, align 8, !tbaa !5, !noalias !17
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  br label %for.cond38.i, !llvm.loop !26

for.end54.i:                                      ; preds = %for.cond38.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1
  br label %for.cond34.i

init_array.exit:                                  ; preds = %for.cond34.i
  %call.i = tail call fastcc double @rtclock() #14
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i4

for.cond.i4:                                      ; preds = %for.end31.i, %init_array.exit
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %for.end31.i ], [ 0, %init_array.exit ]
  %exitcond26.not.i = icmp eq i64 %indvars.iv23.i, 1000
  br i1 %exitcond26.not.i, label %kernel_gemm.exit, label %for.cond1.i5

for.cond1.i5:                                     ; preds = %for.cond.i4, %for.inc.i8
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i9, %for.inc.i8 ], [ 0, %for.cond.i4 ]
  %exitcond.not.i7 = icmp eq i64 %indvars.iv.i6, 1100
  br i1 %exitcond.not.i7, label %for.cond6.i, label %for.inc.i8

for.inc.i8:                                       ; preds = %for.cond1.i5
  %arrayidx5.i = getelementptr inbounds nuw [1100 x double], ptr %call, i64 %indvars.iv23.i, i64 %indvars.iv.i6
  %8 = load double, ptr %arrayidx5.i, align 8, !tbaa !5, !invariant.load !27
  %mul.i = fmul double %8, 1.200000e+00
  store double %mul.i, ptr %arrayidx5.i, align 8, !tbaa !5
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i6, 1
  br label %for.cond1.i5, !llvm.loop !28

for.cond6.i:                                      ; preds = %for.cond1.i5, %for.inc29.i
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i, %for.inc29.i ], [ 0, %for.cond1.i5 ]
  %exitcond22.not.i = icmp eq i64 %indvars.iv19.i, 1200
  br i1 %exitcond22.not.i, label %for.end31.i, label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.cond6.i
  %arrayidx15.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv23.i, i64 %indvars.iv19.i
  %9 = load double, ptr %arrayidx15.i, align 8, !tbaa !5, !invariant.load !27
  %mul16.i = fmul double %9, 1.500000e+00
  br label %for.cond9.i

for.cond9.i:                                      ; preds = %for.inc26.i, %for.cond9.preheader.i
  %indvars.iv15.i = phi i64 [ 0, %for.cond9.preheader.i ], [ %indvars.iv.next16.i, %for.inc26.i ]
  %exitcond18.not.i = icmp eq i64 %indvars.iv15.i, 1100
  br i1 %exitcond18.not.i, label %for.inc29.i, label %for.inc26.i

for.inc26.i:                                      ; preds = %for.cond9.i
  %arrayidx20.i = getelementptr inbounds nuw [1100 x double], ptr %call2, i64 %indvars.iv19.i, i64 %indvars.iv15.i
  %10 = load double, ptr %arrayidx20.i, align 8, !tbaa !5, !invariant.load !27
  %arrayidx25.i = getelementptr inbounds nuw [1100 x double], ptr %call, i64 %indvars.iv23.i, i64 %indvars.iv15.i
  %11 = load double, ptr %arrayidx25.i, align 8, !tbaa !5, !invariant.load !27
  %12 = tail call double @llvm.fmuladd.f64(double %mul16.i, double %10, double %11) #22
  store double %12, ptr %arrayidx25.i, align 8, !tbaa !5
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  br label %for.cond9.i, !llvm.loop !29

for.inc29.i:                                      ; preds = %for.cond9.i
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  br label %for.cond6.i, !llvm.loop !30

for.end31.i:                                      ; preds = %for.cond6.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  br label %for.cond.i4

kernel_gemm.exit:                                 ; preds = %for.cond.i4
  %call.i17 = tail call fastcc double @rtclock() #14
  store double %call.i17, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #14
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gemm.exit
  %13 = load ptr, ptr %argv, align 8, !tbaa !31, !invariant.load !27
  %strcmpload = load i8, ptr %13, align 1, !invariant.load !27
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 1000, i32 noundef 1100, ptr nofree noundef readonly captures(none) %call) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_gemm.exit
  tail call void @free(ptr noundef %call) #23
  tail call void @free(ptr noundef %call1) #23
  tail call void @free(ptr noundef %call2) #23
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(i32 noundef %ni, i32 noundef %nj, ptr nofree noundef readonly captures(none) %C) unnamed_addr #12 {
entry:
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.1.6) #14
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #24
  %smax = tail call i32 @llvm.smax.i32(i32 %nj, i32 0)
  %1 = zext i32 %ni to i64
  %smax14 = tail call i32 @llvm.smax.i32(i32 %ni, i32 0)
  %wide.trip.count15 = zext nneg i32 %smax14 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.end ], [ 0, %entry ]
  %exitcond16.not = icmp eq i64 %indvars.iv10, %wide.trip.count15
  br i1 %exitcond16.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %2 = mul nuw nsw i64 %indvars.iv10, %1
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %3 = add nuw nsw i64 %indvars.iv, %2
  %4 = trunc i64 %3 to i32
  %rem = srem i32 %4, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.4.9) #14
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %5 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx8 = getelementptr inbounds nuw [1100 x double], ptr %C, i64 %indvars.iv10, i64 %indvars.iv
  %6 = load double, ptr %arrayidx8, align 8, !tbaa !5, !invariant.load !27
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.5.10, double noundef %6) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !33

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #24
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.7) #14
  ret void
}

; Function Attrs: cold minsize nofree nounwind optsize uwtable
define internal void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) %0) #13 {
entry_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull readonly captures(none) dereferenceable(2) %0) #24
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold minsize nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind willreturn memory(readwrite) }
attributes #18 = { nofree }
attributes #19 = { nounwind willreturn }
attributes #20 = { cold nounwind }
attributes #21 = { cold nofree noreturn nounwind }
attributes #22 = { nofree nosync }
attributes #23 = { nounwind }
attributes #24 = { cold nofree nounwind }

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
!17 = !{!18, !20}
!18 = distinct !{!18, !19, !"init_array: %alpha"}
!19 = distinct !{!19, !"init_array"}
!20 = distinct !{!20, !19, !"init_array: %beta"}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = !{}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 omnipotent char", !14, i64 0}
!33 = distinct !{!33, !22}
