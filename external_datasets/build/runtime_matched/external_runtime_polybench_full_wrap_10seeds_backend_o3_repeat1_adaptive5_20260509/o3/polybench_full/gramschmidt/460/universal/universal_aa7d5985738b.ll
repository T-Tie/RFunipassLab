; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gramschmidt.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #13
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #13
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc12.i, %entry
  %indvars.iv3.i = phi i64 [ %indvars.iv.next4.i, %for.inc12.i ], [ 0, %entry ]
  %exitcond6.not.i = icmp eq i64 %indvars.iv3.i, 1000
  br i1 %exitcond6.not.i, label %for.cond15.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.cond.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1200
  br i1 %exitcond.not.i, label %for.inc12.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond1.i
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv3.i
  %1 = trunc nuw nsw i64 %0 to i32
  %rem.i = urem i32 %1, 1000
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.000000e+03
  %2 = tail call double @llvm.fmuladd.f64(double %div.i, double noundef 1.000000e+02, double noundef 1.000000e+01) #16
  %arrayidx7.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv3.i, i64 %indvars.iv.i
  store double %2, ptr %arrayidx7.i, align 8, !tbaa !5
  %arrayidx11.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv3.i, i64 %indvars.iv.i
  store double 0.000000e+00, ptr %arrayidx11.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !18

for.inc12.i:                                      ; preds = %for.cond1.i
  %indvars.iv.next4.i = add nuw nsw i64 %indvars.iv3.i, 1
  br label %for.cond.i, !llvm.loop !19

for.cond15.i:                                     ; preds = %for.cond.i, %for.inc30.i
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %for.inc30.i ], [ 0, %for.cond.i ]
  %exitcond14.not.i = icmp eq i64 %indvars.iv11.i, 1200
  br i1 %exitcond14.not.i, label %init_array.exit, label %for.cond19.i

for.cond19.i:                                     ; preds = %for.cond15.i, %for.inc27.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc27.i ], [ 0, %for.cond15.i ]
  %exitcond10.not.i = icmp eq i64 %indvars.iv7.i, 1200
  br i1 %exitcond10.not.i, label %for.inc30.i, label %for.inc27.i

for.inc27.i:                                      ; preds = %for.cond19.i
  %arrayidx26.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv11.i, i64 %indvars.iv7.i
  store double 0.000000e+00, ptr %arrayidx26.i, align 8, !tbaa !5
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  br label %for.cond19.i, !llvm.loop !20

for.inc30.i:                                      ; preds = %for.cond19.i
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  br label %for.cond15.i, !llvm.loop !21

init_array.exit:                                  ; preds = %for.cond15.i
  tail call void @polybench_timer_start() #13
  br label %for.cond.i3

for.cond.i3:                                      ; preds = %for.inc82.i, %init_array.exit
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %for.inc82.i ], [ 0, %init_array.exit ]
  %exitcond21.not.i = icmp eq i64 %indvars.iv14.i, 1200
  br i1 %exitcond21.not.i, label %kernel_gramschmidt.exit, label %for.cond1.i4

for.cond1.i4:                                     ; preds = %for.cond.i3, %for.inc.i7
  %indvars.iv.i5 = phi i64 [ %indvars.iv.next.i8, %for.inc.i7 ], [ 0, %for.cond.i3 ]
  %nrm.0.i = phi double [ %4, %for.inc.i7 ], [ 0.000000e+00, %for.cond.i3 ]
  %exitcond.not.i6 = icmp eq i64 %indvars.iv.i5, 1000
  br i1 %exitcond.not.i6, label %for.end.i, label %for.inc.i7

for.inc.i7:                                       ; preds = %for.cond1.i4
  %arrayidx5.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv.i5, i64 %indvars.iv14.i
  %3 = load double, ptr %arrayidx5.i, align 8, !tbaa !5, !invariant.load !9
  %4 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %nrm.0.i) #16
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i5, 1
  br label %for.cond1.i4, !llvm.loop !22

for.end.i:                                        ; preds = %for.cond1.i4
  %call.i = tail call double @sqrt(double noundef %nrm.0.i) #13, !tbaa !23
  %arrayidx13.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv14.i, i64 %indvars.iv14.i
  store double %call.i, ptr %arrayidx13.i, align 8, !tbaa !5
  br label %for.cond14.i

for.cond14.i:                                     ; preds = %for.inc29.i, %for.end.i
  %indvars.iv2.i = phi i64 [ %indvars.iv.next3.i, %for.inc29.i ], [ 0, %for.end.i ]
  %exitcond5.not.i = icmp eq i64 %indvars.iv2.i, 1000
  br i1 %exitcond5.not.i, label %for.cond32.i, label %for.inc29.i

for.inc29.i:                                      ; preds = %for.cond14.i
  %arrayidx20.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv2.i, i64 %indvars.iv14.i
  %5 = load double, ptr %arrayidx20.i, align 8, !tbaa !5, !invariant.load !9
  %div.i9 = fdiv double %5, %call.i
  %arrayidx28.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv2.i, i64 %indvars.iv14.i
  store double %div.i9, ptr %arrayidx28.i, align 8, !tbaa !5
  %indvars.iv.next3.i = add nuw nsw i64 %indvars.iv2.i, 1
  br label %for.cond14.i, !llvm.loop !25

for.cond32.i:                                     ; preds = %for.cond57.i, %for.cond14.i
  %indvars.iv16.i = phi i64 [ %indvars.iv14.i, %for.cond14.i ], [ %indvars.iv.next17.i, %for.cond57.i ]
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond19.not.i = icmp eq i64 %indvars.iv16.i, 1199
  br i1 %exitcond19.not.i, label %for.inc82.i, label %for.body34.i

for.body34.i:                                     ; preds = %for.cond32.i
  %arrayidx38.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv14.i, i64 %indvars.iv.next17.i
  store double 0.000000e+00, ptr %arrayidx38.i, align 8, !tbaa !5
  br label %for.cond39.i

for.cond39.i:                                     ; preds = %for.inc54.i, %for.body34.i
  %indvars.iv6.i = phi i64 [ %indvars.iv.next7.i, %for.inc54.i ], [ 0, %for.body34.i ]
  %exitcond9.not.i = icmp eq i64 %indvars.iv6.i, 1000
  br i1 %exitcond9.not.i, label %for.cond57.i, label %for.inc54.i

for.inc54.i:                                      ; preds = %for.cond39.i
  %arrayidx45.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv6.i, i64 %indvars.iv14.i
  %6 = load double, ptr %arrayidx45.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx49.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv6.i, i64 %indvars.iv.next17.i
  %7 = load double, ptr %arrayidx49.i, align 8, !tbaa !5, !invariant.load !9
  %8 = tail call double @llvm.fmuladd.f64(double %6, double %7, double noundef 0.000000e+00)
  store double %8, ptr %arrayidx38.i, align 8, !tbaa !5
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  br label %for.cond39.i, !llvm.loop !26

for.cond57.i:                                     ; preds = %for.cond39.i, %for.inc76.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.inc76.i ], [ 0, %for.cond39.i ]
  %exitcond13.not.i = icmp eq i64 %indvars.iv10.i, 1000
  br i1 %exitcond13.not.i, label %for.cond32.i, label %for.inc76.i, !llvm.loop !27

for.inc76.i:                                      ; preds = %for.cond57.i
  %arrayidx63.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv10.i, i64 %indvars.iv.next17.i
  %9 = load double, ptr %arrayidx63.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx67.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv10.i, i64 %indvars.iv14.i
  %10 = load double, ptr %arrayidx67.i, align 8, !tbaa !5, !invariant.load !9
  %neg.i = fneg double %10
  %11 = tail call double @llvm.fmuladd.f64(double %neg.i, double noundef 0.000000e+00, double %9)
  store double %11, ptr %arrayidx63.i, align 8, !tbaa !5
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  br label %for.cond57.i, !llvm.loop !28

for.inc82.i:                                      ; preds = %for.cond32.i
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  br label %for.cond.i3, !llvm.loop !29

kernel_gramschmidt.exit:                          ; preds = %for.cond.i3
  %call.i10 = tail call fastcc double @rtclock() #13
  store double %call.i10, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #13
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gramschmidt.exit
  %12 = load ptr, ptr %argv, align 8, !tbaa !30, !invariant.load !9
  %strcmpload = load i8, ptr %12, align 1, !invariant.load !9
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr nofree noundef readonly captures(none) %call1, ptr nofree noundef readonly captures(none) %call2) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_gramschmidt.exit
  tail call void @free(ptr noundef %call) #13
  tail call void @free(ptr noundef %call1) #13
  tail call void @free(ptr noundef %call2) #13
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %R, ptr nofree noundef readonly captures(none) %Q) unnamed_addr #8 {
entry:
  tail call void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(23) @.str.1.6) #13
  %0 = load ptr, ptr @stderr, align 8, !tbaa !32
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #17
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc10 ], [ 0, %entry ]
  %exitcond8.not = icmp eq i64 %indvars.iv4, 1200
  br i1 %exitcond8.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %1 = mul nuw nsw i64 %indvars.iv4, 1200
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1200
  br i1 %exitcond.not, label %for.inc10, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %2 = add nuw nsw i64 %indvars.iv, %1
  %3 = trunc nuw nsw i64 %2 to i32
  %rem = urem i32 %3, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  %4 = load ptr, ptr @stderr, align 8, !tbaa !32
  %fputc1 = tail call i32 @fputc(i32 10, ptr %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %5 = load ptr, ptr @stderr, align 8, !tbaa !32
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %R, i64 %indvars.iv4, i64 %indvars.iv
  %6 = load double, ptr %arrayidx8, align 8, !tbaa !5, !invariant.load !9
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.5.10, double noundef %6) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !34

for.inc10:                                        ; preds = %for.cond2
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond, !llvm.loop !35

for.end12:                                        ; preds = %for.cond
  %7 = load ptr, ptr @stderr, align 8, !tbaa !32
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #17
  %8 = load ptr, ptr @stderr, align 8, !tbaa !32
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.7) #17
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc36, %for.end12
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc36 ], [ 0, %for.end12 ]
  %exitcond18.not = icmp eq i64 %indvars.iv14, 1000
  br i1 %exitcond18.not, label %for.end38, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond15
  %9 = mul nuw nsw i64 %indvars.iv14, 1200
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.inc33
  %indvars.iv9 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next10, %for.inc33 ]
  %exitcond13.not = icmp eq i64 %indvars.iv9, 1200
  br i1 %exitcond13.not, label %for.inc36, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %10 = add nuw nsw i64 %indvars.iv9, %9
  %11 = trunc nuw nsw i64 %10 to i32
  %rem23 = urem i32 %11, 20
  %cmp24 = icmp eq i32 %rem23, 0
  br i1 %cmp24, label %if.then25, label %for.inc33

if.then25:                                        ; preds = %for.body20
  %12 = load ptr, ptr @stderr, align 8, !tbaa !32
  %fputc = tail call i32 @fputc(i32 10, ptr %12)
  br label %for.inc33

for.inc33:                                        ; preds = %for.body20, %if.then25
  %13 = load ptr, ptr @stderr, align 8, !tbaa !32
  %arrayidx31 = getelementptr inbounds nuw [1200 x double], ptr %Q, i64 %indvars.iv14, i64 %indvars.iv9
  %14 = load double, ptr %arrayidx31, align 8, !tbaa !5, !invariant.load !9
  %call32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.5.10, double noundef %14) #17
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond18, !llvm.loop !36

for.inc36:                                        ; preds = %for.cond18
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond15, !llvm.loop !37

for.end38:                                        ; preds = %for.cond15
  %15 = load ptr, ptr @stderr, align 8, !tbaa !32
  %call39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #17
  tail call void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(23) @.str.8) #13
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: cold minsize nounwind optsize uwtable
define internal void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(23) %0) #9 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !32
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(23) %0) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) #10

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
attributes #10 = { nofree nounwind }
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
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !7, i64 0}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 omnipotent char", !17, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
