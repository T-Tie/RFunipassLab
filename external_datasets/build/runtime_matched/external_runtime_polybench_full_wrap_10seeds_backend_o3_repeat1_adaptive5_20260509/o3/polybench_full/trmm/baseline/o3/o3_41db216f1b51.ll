; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trmm.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"B\00", align 1
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #11
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #11
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #11
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #11
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #11
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #11
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
  %Tp.i.i23 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i10 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #11
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 8000000) #11
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i10) #11
  store ptr null, ptr %ret.i.i10, align 8, !tbaa !13
  %call.i.i11 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i10, i64 noundef 4096, i64 noundef 9600000) #11
  %3 = load ptr, ptr %ret.i.i10, align 8, !tbaa !13
  %tobool.i.i12 = icmp eq ptr %3, null
  %tobool2.i.i13 = icmp ne i32 %call.i.i11, 0
  %or.cond.i.i14 = select i1 %tobool.i.i12, i1 true, i1 %tobool2.i.i13
  br i1 %or.cond.i.i14, label %if.then.i.i15, label %polybench_alloc_data.exit16

if.then.i.i15:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit16:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i10) #11
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc27.i, %polybench_alloc_data.exit16
  %indvars.iv33.i = phi i64 [ 0, %polybench_alloc_data.exit16 ], [ %indvars.iv.next34.i, %for.inc27.i ]
  switch i64 %indvars.iv33.i, label %vector.ph36 [
    i64 0, label %for.end.i
    i64 1, label %for.body3.i.preheader
  ]

vector.ph36:                                      ; preds = %for.cond1.preheader.i
  %n.vec = and i64 %indvars.iv33.i, 9223372036854775806
  %broadcast.splatinsert37 = insertelement <2 x i64> poison, i64 %indvars.iv33.i, i64 0
  %broadcast.splat38 = shufflevector <2 x i64> %broadcast.splatinsert37, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph36
  %index40 = phi i64 [ 0, %vector.ph36 ], [ %index.next42, %vector.body39 ]
  %vec.ind41 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph36 ], [ %vec.ind.next43, %vector.body39 ]
  %6 = add nuw nsw <2 x i64> %vec.ind41, %broadcast.splat38
  %7 = trunc nuw nsw <2 x i64> %6 to <2 x i32>
  %8 = urem <2 x i32> %7, splat (i32 1000)
  %9 = uitofp nneg <2 x i32> %8 to <2 x double>
  %10 = fdiv <2 x double> %9, splat (double 1.000000e+03)
  %11 = getelementptr inbounds nuw [1000 x double], ptr %0, i64 %indvars.iv33.i, i64 %index40
  store <2 x double> %10, ptr %11, align 8, !tbaa !11
  %index.next42 = add nuw i64 %index40, 2
  %vec.ind.next43 = add <2 x i64> %vec.ind41, splat (i64 2)
  %12 = icmp eq i64 %index.next42, %n.vec
  br i1 %12, label %middle.block44, label %vector.body39, !llvm.loop !17

middle.block44:                                   ; preds = %vector.body39
  %cmp.n = icmp eq i64 %indvars.iv33.i, %n.vec
  br i1 %cmp.n, label %for.end.i, label %for.body3.i.preheader

for.body3.i.preheader:                            ; preds = %for.cond1.preheader.i, %middle.block44
  %indvars.iv.i.ph = phi i64 [ 0, %for.cond1.preheader.i ], [ %n.vec, %middle.block44 ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.preheader, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ %indvars.iv.i.ph, %for.body3.i.preheader ]
  %13 = add nuw nsw i64 %indvars.iv.i, %indvars.iv33.i
  %14 = trunc nuw nsw i64 %13 to i32
  %rem.i = urem i32 %14, 1000
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.000000e+03
  %arrayidx6.i = getelementptr inbounds nuw [1000 x double], ptr %0, i64 %indvars.iv33.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx6.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv33.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body3.i, !llvm.loop !21

for.end.i:                                        ; preds = %for.body3.i, %middle.block44, %for.cond1.preheader.i
  %arrayidx10.i = getelementptr inbounds nuw [1000 x double], ptr %0, i64 %indvars.iv33.i, i64 %indvars.iv33.i
  store double 1.000000e+00, ptr %arrayidx10.i, align 8, !tbaa !11
  %15 = add nuw nsw i64 %indvars.iv33.i, 1200
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %15, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.end.i
  %index = phi i64 [ 0, %for.end.i ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %for.end.i ], [ %vec.ind.next, %vector.body ]
  %16 = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %17 = trunc nuw nsw <2 x i64> %16 to <2 x i32>
  %18 = urem <2 x i32> %17, splat (i32 1200)
  %19 = uitofp nneg <2 x i32> %18 to <2 x double>
  %20 = fdiv <2 x double> %19, splat (double 1.200000e+03)
  %21 = getelementptr inbounds nuw [1200 x double], ptr %3, i64 %indvars.iv33.i, i64 %index
  store <2 x double> %20, ptr %21, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %22 = icmp eq i64 %index.next, 1200
  br i1 %22, label %for.inc27.i, label %vector.body, !llvm.loop !22

for.inc27.i:                                      ; preds = %vector.body
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next34.i, 1000
  br i1 %exitcond37.not.i, label %init_array.exit, label %for.cond1.preheader.i, !llvm.loop !23

init_array.exit:                                  ; preds = %for.inc27.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #11
  %call.i.i17 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #11
  %cmp.not.i.i = icmp eq i32 %call.i.i17, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i18

if.then.i.i18:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i17)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i18
  %23 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %23 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %24 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %24 to double
  %25 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #11
  store double %25, ptr @polybench_t_start, align 8, !tbaa !11
  br label %for.cond1.preheader.i19

for.cond1.preheader.i19:                          ; preds = %for.inc28.i, %polybench_timer_start.exit
  %indvars.iv25.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next26.i, %for.inc28.i ]
  %cmp519.i = icmp samesign ult i64 %indvars.iv25.i, 999
  br i1 %cmp519.i, label %for.cond4.preheader.us.i, label %vector.body48

vector.body48:                                    ; preds = %for.cond1.preheader.i19, %vector.body48
  %index49 = phi i64 [ %index.next50, %vector.body48 ], [ 0, %for.cond1.preheader.i19 ]
  %26 = getelementptr inbounds nuw [1200 x double], ptr %3, i64 %indvars.iv25.i, i64 %index49
  %wide.load = load <2 x double>, ptr %26, align 8, !tbaa !11
  %27 = fmul <2 x double> %wide.load, splat (double 1.500000e+00)
  store <2 x double> %27, ptr %26, align 8, !tbaa !11
  %index.next50 = add nuw i64 %index49, 2
  %28 = icmp eq i64 %index.next50, 1200
  br i1 %28, label %for.inc28.i, label %vector.body48, !llvm.loop !24

for.cond4.preheader.us.i:                         ; preds = %for.cond1.preheader.i19, %for.cond4.for.end_crit_edge.us.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %for.cond4.for.end_crit_edge.us.i ], [ 0, %for.cond1.preheader.i19 ]
  %arrayidx16.us.i = getelementptr inbounds nuw [1200 x double], ptr %3, i64 %indvars.iv25.i, i64 %indvars.iv31.i
  %arrayidx16.promoted.us.i = load double, ptr %arrayidx16.us.i, align 8, !tbaa !11
  br label %for.body6.us.i

for.body6.us.i:                                   ; preds = %for.body6.us.i, %for.cond4.preheader.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv25.i, %for.cond4.preheader.us.i ], [ %indvars.iv.next28.i, %for.body6.us.i ]
  %29 = phi double [ %arrayidx16.promoted.us.i, %for.cond4.preheader.us.i ], [ %32, %for.body6.us.i ]
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %arrayidx8.us.i = getelementptr inbounds nuw [1000 x double], ptr %0, i64 %indvars.iv.next28.i, i64 %indvars.iv25.i
  %30 = load double, ptr %arrayidx8.us.i, align 8, !tbaa !11
  %arrayidx12.us.i = getelementptr inbounds nuw [1200 x double], ptr %3, i64 %indvars.iv.next28.i, i64 %indvars.iv31.i
  %31 = load double, ptr %arrayidx12.us.i, align 8, !tbaa !11
  %32 = call double @llvm.fmuladd.f64(double %30, double %31, double %29)
  store double %32, ptr %arrayidx16.us.i, align 8, !tbaa !11
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next28.i, 999
  br i1 %exitcond30.not.i, label %for.cond4.for.end_crit_edge.us.i, label %for.body6.us.i, !llvm.loop !25

for.cond4.for.end_crit_edge.us.i:                 ; preds = %for.body6.us.i
  %mul.us.i = fmul double %32, 1.500000e+00
  store double %mul.us.i, ptr %arrayidx16.us.i, align 8, !tbaa !11
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next32.i, 1200
  br i1 %exitcond34.not.i, label %for.inc28.i, label %for.cond4.preheader.us.i, !llvm.loop !26

for.inc28.i:                                      ; preds = %vector.body48, %for.cond4.for.end_crit_edge.us.i
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next26.i, 1000
  br i1 %exitcond36.not.i, label %kernel_trmm.exit, label %for.cond1.preheader.i19, !llvm.loop !27

kernel_trmm.exit:                                 ; preds = %for.inc28.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i23) #11
  %call.i.i24 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i23, ptr noundef null) #11
  %cmp.not.i.i25 = icmp eq i32 %call.i.i24, 0
  br i1 %cmp.not.i.i25, label %polybench_timer_stop.exit, label %if.then.i.i26

if.then.i.i26:                                    ; preds = %kernel_trmm.exit
  %call1.i.i27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i24)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_trmm.exit, %if.then.i.i26
  %33 = load i64, ptr %Tp.i.i23, align 8, !tbaa !5
  %conv.i.i28 = sitofp i64 %33 to double
  %tv_usec.i.i29 = getelementptr inbounds nuw i8, ptr %Tp.i.i23, i64 8
  %34 = load i64, ptr %tv_usec.i.i29, align 8, !tbaa !10
  %conv2.i.i30 = sitofp i64 %34 to double
  %35 = call double @llvm.fmuladd.f64(double %conv2.i.i30, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i28)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i23) #11
  store double %35, ptr @polybench_t_end, align 8, !tbaa !11
  %36 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %35, %36
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %37 = load ptr, ptr %argv, align 8, !tbaa !28
  %strcmpload = load i8, ptr %37, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef %0) #11
  call void @free(ptr noundef nonnull %3) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %B) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv12 = phi i64 [ 0, %entry ], [ %indvars.iv.next13, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv12, 1000
  br label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ]
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
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %B, i64 %indvars.iv12, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1200
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !30

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond16.not = icmp eq i64 %indvars.iv.next13, 1000
  br i1 %exitcond16.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !31

for.end12:                                        ; preds = %for.inc10
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
!17 = distinct !{!17, !18, !19, !20}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !18, !19}
!22 = distinct !{!22, !18, !19, !20}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18, !19, !20}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
