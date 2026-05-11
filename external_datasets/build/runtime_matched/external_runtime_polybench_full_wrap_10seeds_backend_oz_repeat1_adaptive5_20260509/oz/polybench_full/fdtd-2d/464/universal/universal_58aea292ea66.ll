; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll'
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
@.str.3.8 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ey\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"hz\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(33556480) ptr @calloc(i64 noundef 4194560, i64 noundef 8) #12
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  br label %for.body
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

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #13
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #13
  unreachable
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #7 {
entry:
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp.i) #14
  %call.i = call i32 @gettimeofday(ptr noundef nonnull align 8 %Tp.i, ptr noundef null) #15
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i) #15
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = call double @llvm.fmuladd.f64(double %conv2.i, double noundef 0x3EB0C6F7A0B5ED8D, double %conv.i)
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp.i) #15
  store double %2, ptr @polybench_t_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #7 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) local_unnamed_addr #7 {
entry:
  tail call void @free(ptr noundef %ptr) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #7 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #14
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #15
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #16
  call void @exit(i32 noundef 1) #17
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #15
  ret ptr %0
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #15
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #15
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #15
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 500, i32 noundef 8) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %entry ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 500
  br i1 %exitcond.not.i, label %for.cond1.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv.i to i32
  %conv.i = uitofp nneg i32 %0 to double
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv.i
  store double %conv.i, ptr %arrayidx.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !17

for.cond1.i:                                      ; preds = %for.cond.i, %for.end38.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %for.end38.i ], [ 0, %for.cond.i ]
  %exitcond36.not.i = icmp eq i64 %indvars.iv31.i, 1000
  br i1 %exitcond36.not.i, label %init_array.exit, label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.cond1.i
  %1 = trunc nuw nsw i64 %indvars.iv31.i to i32
  %conv9.i = uitofp nneg i32 %1 to double
  br label %for.cond5.i

for.cond5.i:                                      ; preds = %for.inc36.i, %for.cond5.preheader.i
  %indvars.iv23.i = phi i64 [ 0, %for.cond5.preheader.i ], [ %indvars.iv.next24.i, %for.inc36.i ]
  %exitcond30.not.i = icmp eq i64 %indvars.iv23.i, 1200
  br i1 %exitcond30.not.i, label %for.end38.i, label %for.inc36.i

for.inc36.i:                                      ; preds = %for.cond5.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  %2 = trunc nuw i64 %indvars.iv.next24.i to i32
  %conv10.i = uitofp nneg i32 %2 to double
  %mul.i = fmul double %conv9.i, %conv10.i
  %div.i = fdiv double %mul.i, 1.000000e+03
  %arrayidx15.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv31.i, i64 %indvars.iv23.i
  store double %div.i, ptr %arrayidx15.i, align 8, !tbaa !11
  %3 = trunc i64 %indvars.iv23.i to i32
  %4 = add i32 %3, 2
  %conv18.i = uitofp nneg i32 %4 to double
  %mul19.i = fmul double %conv9.i, %conv18.i
  %div21.i = fdiv double %mul19.i, 1.200000e+03
  %arrayidx25.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv31.i, i64 %indvars.iv23.i
  store double %div21.i, ptr %arrayidx25.i, align 8, !tbaa !11
  %5 = add i32 %3, 3
  %conv28.i = uitofp nneg i32 %5 to double
  %mul29.i = fmul double %conv9.i, %conv28.i
  %div31.i = fdiv double %mul29.i, 1.000000e+03
  %arrayidx35.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv31.i, i64 %indvars.iv23.i
  store double %div31.i, ptr %arrayidx35.i, align 8, !tbaa !11
  br label %for.cond5.i, !llvm.loop !19

for.end38.i:                                      ; preds = %for.cond5.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  br label %for.cond1.i

init_array.exit:                                  ; preds = %for.cond1.i
  tail call void @polybench_timer_start() #15
  unreachable
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_array(i32 noundef %nx, i32 noundef %ny, ptr noundef readonly captures(none) %ex, ptr noundef readonly captures(none) %ey, ptr noundef readonly captures(none) %hz) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #16
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #18
  %smax = tail call i32 @llvm.smax.i32(i32 %ny, i32 0)
  %3 = zext i32 %nx to i64
  %smax38 = tail call i32 @llvm.smax.i32(i32 %nx, i32 0)
  %wide.trip.count39 = zext nneg i32 %smax38 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc10 ], [ 0, %entry ]
  %exitcond40.not = icmp eq i64 %indvars.iv34, %wide.trip.count39
  br i1 %exitcond40.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %4 = mul nuw nsw i64 %indvars.iv34, %3
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc10, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %5 = add nuw nsw i64 %indvars.iv, %4
  %6 = trunc i64 %5 to i32
  %rem = srem i32 %6, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc31 = tail call i32 @fputc(i32 10, ptr %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %ex, i64 %indvars.iv34, i64 %indvars.iv
  %9 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.5.10, double noundef %9) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !20

for.inc10:                                        ; preds = %for.cond2
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond, !llvm.loop !21

for.end12:                                        ; preds = %for.cond
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #18
  %11 = load ptr, ptr @stderr, align 8, !tbaa !15
  %12 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %11) #16
  %13 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.8) #18
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc37, %for.end12
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc37 ], [ 0, %for.end12 ]
  %exitcond52.not = icmp eq i64 %indvars.iv47, %wide.trip.count39
  br i1 %exitcond52.not, label %for.end39, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond16
  %14 = mul nuw nsw i64 %indvars.iv47, %3
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc34
  %indvars.iv41 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next42, %for.inc34 ]
  %exitcond46.not = icmp eq i64 %indvars.iv41, %wide.trip.count
  br i1 %exitcond46.not, label %for.inc37, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %15 = add nuw nsw i64 %indvars.iv41, %14
  %16 = trunc i64 %15 to i32
  %rem24 = srem i32 %16, 20
  %cmp25 = icmp eq i32 %rem24, 0
  br i1 %cmp25, label %if.then26, label %for.inc34

if.then26:                                        ; preds = %for.body21
  %17 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc30 = tail call i32 @fputc(i32 10, ptr %17)
  br label %for.inc34

for.inc34:                                        ; preds = %for.body21, %if.then26
  %18 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx32 = getelementptr inbounds nuw [1200 x double], ptr %ey, i64 %indvars.iv47, i64 %indvars.iv41
  %19 = load double, ptr %arrayidx32, align 8, !tbaa !11
  %call33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.5.10, double noundef %19) #18
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond19, !llvm.loop !22

for.inc37:                                        ; preds = %for.cond19
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond16, !llvm.loop !23

for.end39:                                        ; preds = %for.cond16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #18
  %21 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.9) #18
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc63, %for.end39
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.inc63 ], [ 0, %for.end39 ]
  %exitcond64.not = icmp eq i64 %indvars.iv59, %wide.trip.count39
  br i1 %exitcond64.not, label %for.end65, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond42
  %22 = mul nuw nsw i64 %indvars.iv59, %3
  br label %for.cond45

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc60
  %indvars.iv53 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next54, %for.inc60 ]
  %exitcond58.not = icmp eq i64 %indvars.iv53, %wide.trip.count
  br i1 %exitcond58.not, label %for.inc63, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %23 = add nuw nsw i64 %indvars.iv53, %22
  %24 = trunc i64 %23 to i32
  %rem50 = srem i32 %24, 20
  %cmp51 = icmp eq i32 %rem50, 0
  br i1 %cmp51, label %if.then52, label %for.inc60

if.then52:                                        ; preds = %for.body47
  %25 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %25)
  br label %for.inc60

for.inc60:                                        ; preds = %for.body47, %if.then52
  %26 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx58 = getelementptr inbounds nuw [1200 x double], ptr %hz, i64 %indvars.iv59, i64 %indvars.iv53
  %27 = load double, ptr %arrayidx58, align 8, !tbaa !11
  %call59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.5.10, double noundef %27) #18
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond45, !llvm.loop !24

for.inc63:                                        ; preds = %for.cond45
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond42, !llvm.loop !25

for.end65:                                        ; preds = %for.cond42
  %28 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) #11

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nofree nounwind willreturn memory(readwrite) }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold nounwind }

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
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
