; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/correlation.ll'
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
@.str.3.8 = private unnamed_addr constant [5 x i8] c"corr\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(33556480) ptr @calloc(i64 noundef 4194560, i64 noundef 8) #11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %tmp.0 = phi double [ %add, %for.inc ], [ 0.000000e+00, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 4194560
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw double, ptr %call, i64 %indvars.iv
  %0 = load double, ptr %arrayidx, align 8, !tbaa !5, !invariant.load !9
  %add = fadd double %tmp.0, %0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %cmp2 = fcmp ugt double %tmp.0, 1.000000e+01
  br i1 %cmp2, label %if.else, label %if.end

if.else:                                          ; preds = %for.end
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, ptr noundef nonnull @__PRETTY_FUNCTION__.polybench_flush_cache) #12
  unreachable

if.end:                                           ; preds = %for.end
  tail call void @free(ptr noundef %call) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #13
  %call = tail call fastcc double @rtclock() #13
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #0 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp) #14
  %call = call i32 @gettimeofday(ptr noundef nonnull align 8 %Tp, ptr noundef null) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !12
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !15
  %conv2 = sitofp i64 %1 to double
  %2 = call double @llvm.fmuladd.f64(double %conv2, double noundef 0x3EB0C6F7A0B5ED8D, double %conv)
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp) #13
  ret double %2
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc double @rtclock() #13
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #0 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) local_unnamed_addr #0 {
entry:
  tail call void @free(ptr noundef %ptr) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #0 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #14
  store ptr null, ptr %ret.i, align 8, !tbaa !16
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #13
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !16
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(51) @.str.4) #13
  call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #13
  ret ptr %0
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1680000, i32 noundef 8) #13
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #13
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8) #13
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc7.i, %entry
  %indvars.iv3.i = phi i64 [ %indvars.iv.next4.i, %for.inc7.i ], [ 0, %entry ]
  %exitcond6.not.i = icmp eq i64 %indvars.iv3.i, 1400
  br i1 %exitcond6.not.i, label %init_array.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv3.i to i32
  %conv4.i = uitofp nneg i32 %0 to double
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.inc.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1200
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond1.i
  %1 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv3.i
  %2 = trunc nuw nsw i64 %1 to i32
  %conv.i = uitofp nneg i32 %2 to double
  %div.i = fdiv double %conv.i, 1.200000e+03
  %add.i = fadd double %div.i, %conv4.i
  %arrayidx6.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv3.i, i64 %indvars.iv.i
  store double %add.i, ptr %arrayidx6.i, align 8, !tbaa !5, !noalias !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !21

for.inc7.i:                                       ; preds = %for.cond1.i
  %indvars.iv.next4.i = add nuw nsw i64 %indvars.iv3.i, 1
  br label %for.cond.i, !llvm.loop !22

init_array.exit:                                  ; preds = %for.cond.i
  tail call void @polybench_timer_start() #13
  br label %for.cond.i4

for.cond.i4:                                      ; preds = %for.inc12.i, %init_array.exit
  %indvars.iv2.i = phi i64 [ %indvars.iv.next3.i, %for.inc12.i ], [ 0, %init_array.exit ]
  %exitcond5.not.i = icmp eq i64 %indvars.iv2.i, 1200
  br i1 %exitcond5.not.i, label %for.cond15.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i4
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv2.i
  br label %for.cond1.i5

for.cond1.i5:                                     ; preds = %for.inc.i8, %for.body.i
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i10, %for.inc.i8 ], [ 0, %for.body.i ]
  %exitcond.not.i7 = icmp eq i64 %indvars.iv.i6, 1400
  br i1 %exitcond.not.i7, label %for.inc12.i, label %for.inc.i8

for.inc.i8:                                       ; preds = %for.cond1.i5
  %arrayidx7.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv.i6, i64 %indvars.iv2.i
  %3 = load double, ptr %arrayidx7.i, align 8, !tbaa !5, !invariant.load !9
  %add.i9 = fadd double %3, 0.000000e+00
  store double %add.i9, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i6, 1
  br label %for.cond1.i5, !llvm.loop !23

for.inc12.i:                                      ; preds = %for.cond1.i5
  store double 0.000000e+00, ptr %arrayidx.i, align 8, !tbaa !5
  %indvars.iv.next3.i = add nuw nsw i64 %indvars.iv2.i, 1
  br label %for.cond.i4, !llvm.loop !24

for.cond15.i:                                     ; preds = %for.cond.i4, %for.end40.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.end40.i ], [ 0, %for.cond.i4 ]
  %exitcond13.not.i = icmp eq i64 %indvars.iv10.i, 1200
  br i1 %exitcond13.not.i, label %for.cond58.i, label %for.body17.i

for.body17.i:                                     ; preds = %for.cond15.i
  %arrayidx19.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv10.i
  %arrayidx28.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv10.i
  %4 = load double, ptr %arrayidx28.i, align 8, !tbaa !5, !invariant.load !9
  br label %for.cond20.i

for.cond20.i:                                     ; preds = %for.inc38.i, %for.body17.i
  %indvars.iv6.i = phi i64 [ %indvars.iv.next7.i, %for.inc38.i ], [ 0, %for.body17.i ]
  %exitcond9.not.i = icmp eq i64 %indvars.iv6.i, 1400
  br i1 %exitcond9.not.i, label %for.end40.i, label %for.inc38.i

for.inc38.i:                                      ; preds = %for.cond20.i
  %arrayidx26.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv6.i, i64 %indvars.iv10.i
  %5 = load double, ptr %arrayidx26.i, align 8, !tbaa !5, !invariant.load !9
  %sub.i = fsub double %5, %4
  %6 = tail call double @llvm.fmuladd.f64(double %sub.i, double %sub.i, double noundef 0.000000e+00) #16
  store double %6, ptr %arrayidx19.i, align 8, !tbaa !5
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  br label %for.cond20.i, !llvm.loop !25

for.end40.i:                                      ; preds = %for.cond20.i
  store double 1.000000e+00, ptr %arrayidx19.i, align 8, !tbaa !5
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  br label %for.cond15.i, !llvm.loop !26

for.cond58.i:                                     ; preds = %for.cond15.i, %for.inc82.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.inc82.i ], [ 0, %for.cond15.i ]
  %exitcond21.not.i = icmp eq i64 %indvars.iv18.i, 1400
  br i1 %exitcond21.not.i, label %for.cond85.i, label %for.cond61.i

for.cond61.i:                                     ; preds = %for.cond58.i, %for.inc79.i
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %for.inc79.i ], [ 0, %for.cond58.i ]
  %exitcond17.not.i = icmp eq i64 %indvars.iv14.i, 1200
  br i1 %exitcond17.not.i, label %for.inc82.i, label %for.inc79.i

for.inc79.i:                                      ; preds = %for.cond61.i
  %arrayidx65.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv14.i
  %7 = load double, ptr %arrayidx65.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx69.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv18.i, i64 %indvars.iv14.i
  %8 = load double, ptr %arrayidx69.i, align 8, !tbaa !5, !invariant.load !9
  %sub70.i = fsub double %8, %7
  %arrayidx73.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv14.i
  %9 = load double, ptr %arrayidx73.i, align 8, !tbaa !5, !invariant.load !9
  %mul.i = fmul double %9, 0x4042B5524AE1278E
  %div78.i = fdiv double %sub70.i, %mul.i
  store double %div78.i, ptr %arrayidx69.i, align 8, !tbaa !5
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  br label %for.cond61.i, !llvm.loop !27

for.inc82.i:                                      ; preds = %for.cond61.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  br label %for.cond58.i, !llvm.loop !28

for.cond85.i:                                     ; preds = %for.cond58.i, %for.inc131.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %for.inc131.i ], [ 0, %for.cond58.i ]
  %exitcond33.not.i = icmp eq i64 %indvars.iv26.i, 1199
  br i1 %exitcond33.not.i, label %kernel_correlation.exit, label %for.cond94.i

for.cond94.i:                                     ; preds = %for.cond101.i, %for.cond85.i
  %indvars.iv.next29.sink.i = phi i64 [ %indvars.iv26.i, %for.cond85.i ], [ %indvars.iv.next29.i, %for.cond101.i ]
  %.sink.i = phi double [ 1.000000e+00, %for.cond85.i ], [ 0.000000e+00, %for.cond101.i ]
  %arrayidx127.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv.next29.sink.i, i64 %indvars.iv26.i
  store double %.sink.i, ptr %arrayidx127.i, align 8, !tbaa !5
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv.next29.sink.i, 1
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next29.sink.i, 1199
  br i1 %exitcond31.not.i, label %for.inc131.i, label %for.body96.i

for.body96.i:                                     ; preds = %for.cond94.i
  %arrayidx100.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv26.i, i64 %indvars.iv.next29.i
  store double 0.000000e+00, ptr %arrayidx100.i, align 8, !tbaa !5
  br label %for.cond101.i

for.cond101.i:                                    ; preds = %for.inc117.i, %for.body96.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %for.inc117.i ], [ 0, %for.body96.i ]
  %exitcond25.not.i = icmp eq i64 %indvars.iv22.i, 1400
  br i1 %exitcond25.not.i, label %for.cond94.i, label %for.inc117.i, !llvm.loop !29

for.inc117.i:                                     ; preds = %for.cond101.i
  %arrayidx107.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv22.i, i64 %indvars.iv26.i
  %10 = load double, ptr %arrayidx107.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx111.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv22.i, i64 %indvars.iv.next29.i
  %11 = load double, ptr %arrayidx111.i, align 8, !tbaa !5, !invariant.load !9
  %12 = tail call double @llvm.fmuladd.f64(double %10, double %11, double noundef 0.000000e+00)
  store double %12, ptr %arrayidx100.i, align 8, !tbaa !5
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1
  br label %for.cond101.i, !llvm.loop !30

for.inc131.i:                                     ; preds = %for.cond94.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  br label %for.cond85.i, !llvm.loop !31

kernel_correlation.exit:                          ; preds = %for.cond85.i
  %arrayidx139.i = getelementptr inbounds nuw i8, ptr %call1, i64 11519992
  store double 1.000000e+00, ptr %arrayidx139.i, align 8, !tbaa !5
  %call.i = tail call fastcc double @rtclock() #13
  store double %call.i, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #13
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_correlation.exit
  %13 = load ptr, ptr %argv, align 8, !tbaa !32, !invariant.load !9
  %strcmpload = load i8, ptr %13, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 1200, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(11520000) %call1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_correlation.exit
  tail call void @free(ptr noundef %call) #13
  tail call void @free(ptr noundef nonnull %call1) #13
  tail call void @free(ptr noundef %call2) #13
  tail call void @free(ptr noundef %call3) #13
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_array(i32 noundef %m, ptr nofree noundef readonly captures(none) %corr) unnamed_addr #8 {
entry:
  tail call void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(23) @.str.1.6) #13
  %0 = load ptr, ptr @stderr, align 8, !tbaa !34
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #17
  %1 = zext i32 %m to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %m, i32 0)
  %wide.trip.count7 = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc10 ], [ 0, %entry ]
  %exitcond8.not = icmp eq i64 %indvars.iv3, %wide.trip.count7
  br i1 %exitcond8.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %2 = mul nuw nsw i64 %indvars.iv3, %1
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %1
  br i1 %exitcond.not, label %for.inc10, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %3 = add nuw nsw i64 %indvars.iv, %2
  %4 = trunc i64 %3 to i32
  %rem = srem i32 %4, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  tail call void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(2) @.str.4.9) #13
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %corr, i64 %indvars.iv3, i64 %indvars.iv
  %6 = load double, ptr %arrayidx8, align 8, !tbaa !5, !invariant.load !9
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.5.10, double noundef %6) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !36

for.inc10:                                        ; preds = %for.cond2
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %for.cond, !llvm.loop !37

for.end12:                                        ; preds = %for.cond
  %7 = load ptr, ptr @stderr, align 8, !tbaa !34
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #17
  tail call void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(23) @.str.7) #13
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: cold minsize nounwind optsize uwtable
define internal void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(2) %0) #9 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(2) %0) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

declare float @sqrtf(float)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold minsize nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nofree nounwind willreturn memory(readwrite) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nofree nosync willreturn }
attributes #17 = { cold nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !14, i64 0}
!13 = !{!"timeval", !14, i64 0, !14, i64 8}
!14 = !{!"long", !7, i64 0}
!15 = !{!13, !14, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!19}
!19 = distinct !{!19, !20, !"init_array: %float_n"}
!20 = distinct !{!20, !"init_array"}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 omnipotent char", !17, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
