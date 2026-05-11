; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond
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

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #5 {
entry:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #5 {
entry:
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #8 {
entry:
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp.i) #17
  %call.i = call i32 @gettimeofday(ptr noundef nonnull align 8 captures(none) %Tp.i, ptr noundef null) #18
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i) #18
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2.i, double noundef 0x3EB0C6F7A0B5ED8D, double %conv.i) #19
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp.i) #18
  store double %2, ptr @polybench_t_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #8 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #9 {
entry:
  tail call void @free(ptr noundef captures(none) %ptr) #20
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #8 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #17
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #18
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(51) @.str.4) #18
  call void @exit(i32 noundef 1) #21
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #18
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #11 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 720000, i32 noundef 8) #18
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 800000, i32 noundef 8) #18
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 900000, i32 noundef 8) #18
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 990000, i32 noundef 8) #18
  %call4 = tail call ptr @polybench_alloc_data(i64 noundef 1080000, i32 noundef 8) #18
  %call5 = tail call ptr @polybench_alloc_data(i64 noundef 1320000, i32 noundef 8) #18
  %call6 = tail call ptr @polybench_alloc_data(i64 noundef 880000, i32 noundef 8) #18
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.end.i, %entry
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %for.end.i ], [ 0, %entry ]
  %exitcond47.not.i = icmp eq i64 %indvars.iv44.i, 800
  br i1 %exitcond47.not.i, label %for.cond11.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %for.cond.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1000
  br i1 %exitcond.not.i, label %for.end.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv44.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 800
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 4.000000e+03
  %arrayidx7.i = getelementptr inbounds nuw [1000 x double], ptr %call1, i64 %indvars.iv44.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx7.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !15

for.end.i:                                        ; preds = %for.cond1.i
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1
  br label %for.cond.i, !llvm.loop !17

for.cond11.i:                                     ; preds = %for.cond.i, %for.end33.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %for.end33.i ], [ 0, %for.cond.i ]
  %exitcond57.not.i = icmp eq i64 %indvars.iv54.i, 1000
  br i1 %exitcond57.not.i, label %for.cond37.i, label %for.cond15.i

for.cond15.i:                                     ; preds = %for.cond11.i, %for.body18.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %for.body18.i ], [ 0, %for.cond11.i ]
  %exitcond53.not.i = icmp eq i64 %indvars.iv48.i, 900
  br i1 %exitcond53.not.i, label %for.end33.i, label %for.body18.i

for.body18.i:                                     ; preds = %for.cond15.i
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  %3 = mul nuw nsw i64 %indvars.iv.next49.i, %indvars.iv54.i
  %4 = trunc i64 %3 to i32
  %5 = add i32 %4, 2
  %rem22.i = urem i32 %5, 900
  %conv23.i = uitofp nneg i32 %rem22.i to double
  %div26.i = fdiv double %conv23.i, 4.500000e+03
  %arrayidx30.i = getelementptr inbounds nuw [900 x double], ptr %call2, i64 %indvars.iv54.i, i64 %indvars.iv48.i
  store double %div26.i, ptr %arrayidx30.i, align 8, !tbaa !11
  br label %for.cond15.i, !llvm.loop !18

for.end33.i:                                      ; preds = %for.cond15.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1
  br label %for.cond11.i, !llvm.loop !19

for.cond37.i:                                     ; preds = %for.cond11.i, %for.end58.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.end58.i ], [ 0, %for.cond11.i ]
  %exitcond67.not.i = icmp eq i64 %indvars.iv64.i, 900
  br i1 %exitcond67.not.i, label %for.cond62.i, label %for.cond41.i

for.cond41.i:                                     ; preds = %for.cond37.i, %for.body44.i
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %for.body44.i ], [ 0, %for.cond37.i ]
  %exitcond63.not.i = icmp eq i64 %indvars.iv58.i, 1200
  br i1 %exitcond63.not.i, label %for.end58.i, label %for.body44.i

for.body44.i:                                     ; preds = %for.cond41.i
  %6 = add nuw nsw i64 %indvars.iv58.i, 3
  %7 = mul nuw nsw i64 %6, %indvars.iv64.i
  %8 = trunc nuw nsw i64 %7 to i32
  %rem47.i = urem i32 %8, 1100
  %conv48.i = uitofp nneg i32 %rem47.i to double
  %div51.i = fdiv double %conv48.i, 5.500000e+03
  %arrayidx55.i = getelementptr inbounds nuw [1200 x double], ptr %call4, i64 %indvars.iv64.i, i64 %indvars.iv58.i
  store double %div51.i, ptr %arrayidx55.i, align 8, !tbaa !11
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1
  br label %for.cond41.i, !llvm.loop !20

for.end58.i:                                      ; preds = %for.cond41.i
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  br label %for.cond37.i, !llvm.loop !21

for.cond62.i:                                     ; preds = %for.cond37.i, %for.end84.i
  %indvars.iv75.i = phi i64 [ %indvars.iv.next76.i, %for.end84.i ], [ 0, %for.cond37.i ]
  %exitcond78.not.i = icmp eq i64 %indvars.iv75.i, 1200
  br i1 %exitcond78.not.i, label %for.cond.i4, label %for.cond66.i

for.cond66.i:                                     ; preds = %for.cond62.i, %for.body69.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %for.body69.i ], [ 0, %for.cond62.i ]
  %exitcond74.not.i = icmp eq i64 %indvars.iv68.i, 1100
  br i1 %exitcond74.not.i, label %for.end84.i, label %for.body69.i

for.body69.i:                                     ; preds = %for.cond66.i
  %9 = add nuw nsw i64 %indvars.iv68.i, 2
  %10 = mul nuw nsw i64 %9, %indvars.iv75.i
  %11 = trunc i64 %10 to i32
  %12 = add i32 %11, 2
  %rem73.i = urem i32 %12, 1000
  %conv74.i = uitofp nneg i32 %rem73.i to double
  %div77.i = fdiv double %conv74.i, 5.000000e+03
  %arrayidx81.i = getelementptr inbounds nuw [1100 x double], ptr %call5, i64 %indvars.iv75.i, i64 %indvars.iv68.i
  store double %div77.i, ptr %arrayidx81.i, align 8, !tbaa !11
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1
  br label %for.cond66.i, !llvm.loop !22

for.end84.i:                                      ; preds = %for.cond66.i
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1
  br label %for.cond62.i

for.cond.i4:                                      ; preds = %for.cond62.i, %for.end23.i
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %for.end23.i ], [ 0, %for.cond62.i ]
  %exitcond48.not.i = icmp eq i64 %indvars.iv45.i, 800
  br i1 %exitcond48.not.i, label %for.cond27.i, label %for.cond1.i5

for.cond1.i5:                                     ; preds = %for.cond.i4, %for.end.i10
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %for.end.i10 ], [ 0, %for.cond.i4 ]
  %exitcond44.not.i = icmp eq i64 %indvars.iv41.i, 900
  br i1 %exitcond44.not.i, label %for.end23.i, label %for.body3.i6

for.body3.i6:                                     ; preds = %for.cond1.i5
  %arrayidx5.i = getelementptr inbounds nuw [900 x double], ptr %call, i64 %indvars.iv45.i, i64 %indvars.iv41.i
  store double 0.000000e+00, ptr %arrayidx5.i, align 8, !tbaa !11
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body8.i, %for.body3.i6
  %indvars.iv.i7 = phi i64 [ %indvars.iv.next.i9, %for.body8.i ], [ 0, %for.body3.i6 ]
  %exitcond.not.i8 = icmp eq i64 %indvars.iv.i7, 1000
  br i1 %exitcond.not.i8, label %for.end.i10, label %for.body8.i

for.body8.i:                                      ; preds = %for.cond6.i
  %arrayidx12.i = getelementptr inbounds nuw [1000 x double], ptr %call1, i64 %indvars.iv45.i, i64 %indvars.iv.i7
  %13 = load double, ptr %arrayidx12.i, align 8, !tbaa !11, !invariant.load !23
  %arrayidx16.i = getelementptr inbounds nuw [900 x double], ptr %call2, i64 %indvars.iv.i7, i64 %indvars.iv41.i
  %14 = load double, ptr %arrayidx16.i, align 8, !tbaa !11, !invariant.load !23
  %15 = tail call double @llvm.fmuladd.f64(double %13, double %14, double 0.000000e+00) #22
  store double %15, ptr %arrayidx5.i, align 8, !tbaa !11
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i7, 1
  br label %for.cond6.i, !llvm.loop !24

for.end.i10:                                      ; preds = %for.cond6.i
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  br label %for.cond1.i5, !llvm.loop !25

for.end23.i:                                      ; preds = %for.cond1.i5
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1
  br label %for.cond.i4, !llvm.loop !26

for.cond27.i:                                     ; preds = %for.cond.i4, %for.end57.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %for.end57.i ], [ 0, %for.cond.i4 ]
  %exitcond60.not.i = icmp eq i64 %indvars.iv57.i, 900
  br i1 %exitcond60.not.i, label %for.cond61.i, label %for.cond30.i

for.cond30.i:                                     ; preds = %for.cond27.i, %for.end54.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %for.end54.i ], [ 0, %for.cond27.i ]
  %exitcond56.not.i = icmp eq i64 %indvars.iv53.i, 1100
  br i1 %exitcond56.not.i, label %for.end57.i, label %for.body32.i

for.body32.i:                                     ; preds = %for.cond30.i
  %arrayidx36.i = getelementptr inbounds nuw [1100 x double], ptr %call3, i64 %indvars.iv57.i, i64 %indvars.iv53.i
  store double 0.000000e+00, ptr %arrayidx36.i, align 8, !tbaa !11
  br label %for.cond37.i11

for.cond37.i11:                                   ; preds = %for.body39.i, %for.body32.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %for.body39.i ], [ 0, %for.body32.i ]
  %exitcond52.not.i = icmp eq i64 %indvars.iv49.i, 1200
  br i1 %exitcond52.not.i, label %for.end54.i, label %for.body39.i

for.body39.i:                                     ; preds = %for.cond37.i11
  %arrayidx43.i = getelementptr inbounds nuw [1200 x double], ptr %call4, i64 %indvars.iv57.i, i64 %indvars.iv49.i
  %16 = load double, ptr %arrayidx43.i, align 8, !tbaa !11, !invariant.load !23
  %arrayidx47.i = getelementptr inbounds nuw [1100 x double], ptr %call5, i64 %indvars.iv49.i, i64 %indvars.iv53.i
  %17 = load double, ptr %arrayidx47.i, align 8, !tbaa !11, !invariant.load !23
  %18 = tail call double @llvm.fmuladd.f64(double %16, double %17, double 0.000000e+00) #22
  store double %18, ptr %arrayidx36.i, align 8, !tbaa !11
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1
  br label %for.cond37.i11, !llvm.loop !27

for.end54.i:                                      ; preds = %for.cond37.i11
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  br label %for.cond30.i, !llvm.loop !28

for.end57.i:                                      ; preds = %for.cond30.i
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1
  br label %for.cond27.i, !llvm.loop !29

for.cond61.i:                                     ; preds = %for.cond27.i, %for.end91.i
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %for.end91.i ], [ 0, %for.cond27.i ]
  %exitcond72.not.i = icmp eq i64 %indvars.iv69.i, 800
  br i1 %exitcond72.not.i, label %kernel_3mm.exit, label %for.cond64.i

for.cond64.i:                                     ; preds = %for.cond61.i, %for.end88.i
  %indvars.iv65.i = phi i64 [ %indvars.iv.next66.i, %for.end88.i ], [ 0, %for.cond61.i ]
  %exitcond68.not.i = icmp eq i64 %indvars.iv65.i, 1100
  br i1 %exitcond68.not.i, label %for.end91.i, label %for.body66.i

for.body66.i:                                     ; preds = %for.cond64.i
  %arrayidx70.i = getelementptr inbounds nuw [1100 x double], ptr %call6, i64 %indvars.iv69.i, i64 %indvars.iv65.i
  store double 0.000000e+00, ptr %arrayidx70.i, align 8, !tbaa !11
  br label %for.cond71.i

for.cond71.i:                                     ; preds = %for.body73.i, %for.body66.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %for.body73.i ], [ 0, %for.body66.i ]
  %exitcond64.not.i = icmp eq i64 %indvars.iv61.i, 900
  br i1 %exitcond64.not.i, label %for.end88.i, label %for.body73.i

for.body73.i:                                     ; preds = %for.cond71.i
  %arrayidx77.i = getelementptr inbounds nuw [900 x double], ptr %call, i64 %indvars.iv69.i, i64 %indvars.iv61.i
  %19 = load double, ptr %arrayidx77.i, align 8, !tbaa !11, !invariant.load !23
  %arrayidx81.i12 = getelementptr inbounds nuw [1100 x double], ptr %call3, i64 %indvars.iv61.i, i64 %indvars.iv65.i
  %20 = load double, ptr %arrayidx81.i12, align 8, !tbaa !11, !invariant.load !23
  %21 = tail call double @llvm.fmuladd.f64(double %19, double %20, double 0.000000e+00) #22
  store double %21, ptr %arrayidx70.i, align 8, !tbaa !11
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1
  br label %for.cond71.i, !llvm.loop !30

for.end88.i:                                      ; preds = %for.cond71.i
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1
  br label %for.cond64.i, !llvm.loop !31

for.end91.i:                                      ; preds = %for.cond64.i
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1
  br label %for.cond61.i

kernel_3mm.exit:                                  ; preds = %for.cond61.i
  tail call void @polybench_timer_stop() #18
  tail call void @polybench_timer_print() #18
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_3mm.exit
  %22 = load ptr, ptr %argv, align 8, !tbaa !32, !invariant.load !23
  %strcmpload = load i8, ptr %22, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 800, i32 noundef 1100, ptr nofree noundef readonly captures(none) %call6) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_3mm.exit
  tail call void @free(ptr noundef %call) #23
  tail call void @free(ptr noundef %call1) #23
  tail call void @free(ptr noundef %call2) #23
  tail call void @free(ptr noundef %call3) #23
  tail call void @free(ptr noundef %call4) #23
  tail call void @free(ptr noundef %call5) #23
  tail call void @free(ptr noundef %call6) #23
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(i32 noundef %ni, i32 noundef %nl, ptr nofree noundef readonly captures(none) %G) unnamed_addr #13 {
entry:
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.1.6) #18
  %0 = load ptr, ptr @stderr, align 8, !tbaa !34
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #24
  %smax = call i32 @llvm.smax.i32(i32 %nl, i32 0)
  %1 = zext i32 %ni to i64
  %smax14 = call i32 @llvm.smax.i32(i32 %ni, i32 0)
  %wide.trip.count15 = zext nneg i32 %smax14 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.end ], [ 0, %entry ]
  %exitcond16.not = icmp eq i64 %indvars.iv10, %wide.trip.count15
  br i1 %exitcond16.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %2 = mul i64 %indvars.iv10, %1
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %3 = add i64 %indvars.iv, %2
  %4 = trunc i64 %3 to i32
  %rem = srem i32 %4, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.4.9) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %arrayidx8 = getelementptr inbounds nuw [1100 x double], ptr %G, i64 %indvars.iv10, i64 %indvars.iv
  %6 = load double, ptr %arrayidx8, align 8, !tbaa !11, !invariant.load !23
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.5.10, double noundef %6) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !36

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  %7 = load ptr, ptr @stderr, align 8, !tbaa !34
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #24
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.7) #18
  ret void
}

; Function Attrs: cold minsize nofree nounwind optsize uwtable
define internal void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) %0) #14 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull readonly captures(none) dereferenceable(2) %0) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold minsize nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind willreturn memory(readwrite) }
attributes #18 = { nofree nounwind }
attributes #19 = { nofree }
attributes #20 = { nounwind willreturn }
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
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = !{}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 omnipotent char", !14, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!36 = distinct !{!36, !16}
