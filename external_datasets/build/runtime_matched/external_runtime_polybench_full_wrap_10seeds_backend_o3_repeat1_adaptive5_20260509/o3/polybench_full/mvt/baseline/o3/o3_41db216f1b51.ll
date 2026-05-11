; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/mvt.ll'
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
@.str.3.8 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

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
  %Tp.i.i50 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i36 = alloca ptr, align 8
  %ret.i.i29 = alloca ptr, align 8
  %ret.i.i22 = alloca ptr, align 8
  %ret.i.i15 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #11
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 32000000) #11
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i15) #11
  store ptr null, ptr %ret.i.i15, align 8, !tbaa !13
  %call.i.i16 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i15, i64 noundef 4096, i64 noundef 16000) #11
  %3 = load ptr, ptr %ret.i.i15, align 8, !tbaa !13
  %tobool.i.i17 = icmp eq ptr %3, null
  %tobool2.i.i18 = icmp ne i32 %call.i.i16, 0
  %or.cond.i.i19 = select i1 %tobool.i.i17, i1 true, i1 %tobool2.i.i18
  br i1 %or.cond.i.i19, label %if.then.i.i20, label %polybench_alloc_data.exit21

if.then.i.i20:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit21:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i15) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i22) #11
  store ptr null, ptr %ret.i.i22, align 8, !tbaa !13
  %call.i.i23 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i22, i64 noundef 4096, i64 noundef 16000) #11
  %6 = load ptr, ptr %ret.i.i22, align 8, !tbaa !13
  %tobool.i.i24 = icmp eq ptr %6, null
  %tobool2.i.i25 = icmp ne i32 %call.i.i23, 0
  %or.cond.i.i26 = select i1 %tobool.i.i24, i1 true, i1 %tobool2.i.i25
  br i1 %or.cond.i.i26, label %if.then.i.i27, label %polybench_alloc_data.exit28

if.then.i.i27:                                    ; preds = %polybench_alloc_data.exit21
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %7) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit28:                      ; preds = %polybench_alloc_data.exit21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i22) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i29) #11
  store ptr null, ptr %ret.i.i29, align 8, !tbaa !13
  %call.i.i30 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i29, i64 noundef 4096, i64 noundef 16000) #11
  %9 = load ptr, ptr %ret.i.i29, align 8, !tbaa !13
  %tobool.i.i31 = icmp eq ptr %9, null
  %tobool2.i.i32 = icmp ne i32 %call.i.i30, 0
  %or.cond.i.i33 = select i1 %tobool.i.i31, i1 true, i1 %tobool2.i.i32
  br i1 %or.cond.i.i33, label %if.then.i.i34, label %polybench_alloc_data.exit35

if.then.i.i34:                                    ; preds = %polybench_alloc_data.exit28
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %10) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit35:                      ; preds = %polybench_alloc_data.exit28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i29) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i36) #11
  store ptr null, ptr %ret.i.i36, align 8, !tbaa !13
  %call.i.i37 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i36, i64 noundef 4096, i64 noundef 16000) #11
  %12 = load ptr, ptr %ret.i.i36, align 8, !tbaa !13
  %tobool.i.i38 = icmp eq ptr %12, null
  %tobool2.i.i39 = icmp ne i32 %call.i.i37, 0
  %or.cond.i.i40 = select i1 %tobool.i.i38, i1 true, i1 %tobool2.i.i39
  br i1 %or.cond.i.i40, label %if.then.i.i41, label %polybench_alloc_data.exit42

if.then.i.i41:                                    ; preds = %polybench_alloc_data.exit35
  %13 = load ptr, ptr @stderr, align 8, !tbaa !15
  %14 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %13) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit42:                      ; preds = %polybench_alloc_data.exit35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i36) #11
  br label %for.body.i

for.body.i:                                       ; preds = %middle.block, %polybench_alloc_data.exit42
  %indvars.iv30.i = phi i64 [ 0, %polybench_alloc_data.exit42 ], [ %indvars.iv.next31.i, %middle.block ]
  %15 = trunc nuw nsw i64 %indvars.iv30.i to i32
  %conv.i = uitofp nneg i32 %15 to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %arrayidx.i = getelementptr inbounds nuw double, ptr %3, i64 %indvars.iv30.i
  store double %div.i, ptr %arrayidx.i, align 8, !tbaa !11
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %16 = icmp eq i64 %indvars.iv.next31.i, 2000
  %17 = trunc nuw nsw i64 %indvars.iv.next31.i to i32
  %18 = uitofp nneg i32 %17 to double
  %19 = fdiv double %18, 2.000000e+03
  %div5.i = select i1 %16, double 0.000000e+00, double %19
  %arrayidx7.i = getelementptr inbounds nuw double, ptr %6, i64 %indvars.iv30.i
  store double %div5.i, ptr %arrayidx7.i, align 8, !tbaa !11
  %rem9.cmp.i = icmp samesign ult i64 %indvars.iv30.i, 1997
  %rem9.v.i = select i1 %rem9.cmp.i, i32 3, i32 -1997
  %rem9.i = add nsw i32 %rem9.v.i, %15
  %conv10.i = uitofp nneg i32 %rem9.i to double
  %div12.i = fdiv double %conv10.i, 2.000000e+03
  %arrayidx14.i = getelementptr inbounds nuw double, ptr %9, i64 %indvars.iv30.i
  store double %div12.i, ptr %arrayidx14.i, align 8, !tbaa !11
  %rem16.cmp.i = icmp samesign ult i64 %indvars.iv30.i, 1996
  %rem16.v.i = select i1 %rem16.cmp.i, i32 4, i32 -1996
  %rem16.i = add nsw i32 %rem16.v.i, %15
  %conv17.i = uitofp nneg i32 %rem16.i to double
  %div19.i = fdiv double %conv17.i, 2.000000e+03
  %arrayidx21.i = getelementptr inbounds nuw double, ptr %12, i64 %indvars.iv30.i
  store double %div19.i, ptr %arrayidx21.i, align 8, !tbaa !11
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv30.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.body.i
  %index = phi i64 [ 0, %for.body.i ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %for.body.i ], [ %vec.ind.next, %vector.body ]
  %20 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %21 = trunc nuw nsw <2 x i64> %20 to <2 x i32>
  %22 = urem <2 x i32> %21, splat (i32 2000)
  %23 = uitofp nneg <2 x i32> %22 to <2 x double>
  %24 = fdiv <2 x double> %23, splat (double 2.000000e+03)
  %25 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv30.i, i64 %index
  store <2 x double> %24, ptr %25, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %26 = icmp eq i64 %index.next, 2000
  br i1 %26, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  br i1 %16, label %init_array.exit, label %for.body.i, !llvm.loop !21

init_array.exit:                                  ; preds = %middle.block
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #11
  %call.i.i43 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #11
  %cmp.not.i.i = icmp eq i32 %call.i.i43, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i44

if.then.i.i44:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i43)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i44
  %27 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %27 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %28 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %28 to double
  %29 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #11
  store double %29, ptr @polybench_t_start, align 8, !tbaa !11
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc12.i, %polybench_timer_start.exit
  %indvars.iv28.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next29.i, %for.inc12.i ]
  %arrayidx.i45 = getelementptr inbounds nuw double, ptr %3, i64 %indvars.iv28.i
  %arrayidx.promoted.i = load double, ptr %arrayidx.i45, align 8, !tbaa !11
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i46 = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i48, %for.body3.i ]
  %30 = phi double [ %arrayidx.promoted.i, %for.cond1.preheader.i ], [ %33, %for.body3.i ]
  %arrayidx7.i47 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv28.i, i64 %indvars.iv.i46
  %31 = load double, ptr %arrayidx7.i47, align 8, !tbaa !11
  %arrayidx9.i = getelementptr inbounds nuw double, ptr %9, i64 %indvars.iv.i46
  %32 = load double, ptr %arrayidx9.i, align 8, !tbaa !11
  %33 = call double @llvm.fmuladd.f64(double %31, double %32, double %30)
  store double %33, ptr %arrayidx.i45, align 8, !tbaa !11
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i46, 1
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, 2000
  br i1 %exitcond.not.i49, label %for.inc12.i, label %for.body3.i, !llvm.loop !22

for.inc12.i:                                      ; preds = %for.body3.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next29.i, 2000
  br i1 %exitcond31.not.i, label %for.cond18.preheader.i, label %for.cond1.preheader.i, !llvm.loop !23

for.cond18.preheader.i:                           ; preds = %for.inc12.i, %for.inc34.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %for.inc34.i ], [ 0, %for.inc12.i ]
  %arrayidx22.i = getelementptr inbounds nuw double, ptr %6, i64 %indvars.iv36.i
  %arrayidx22.promoted.i = load double, ptr %arrayidx22.i, align 8, !tbaa !11
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.body20.i, %for.cond18.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %for.cond18.preheader.i ], [ %indvars.iv.next33.i, %for.body20.i ]
  %34 = phi double [ %arrayidx22.promoted.i, %for.cond18.preheader.i ], [ %37, %for.body20.i ]
  %arrayidx26.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv32.i, i64 %indvars.iv36.i
  %35 = load double, ptr %arrayidx26.i, align 8, !tbaa !11
  %arrayidx28.i = getelementptr inbounds nuw double, ptr %12, i64 %indvars.iv32.i
  %36 = load double, ptr %arrayidx28.i, align 8, !tbaa !11
  %37 = call double @llvm.fmuladd.f64(double %35, double %36, double %34)
  store double %37, ptr %arrayidx22.i, align 8, !tbaa !11
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next33.i, 2000
  br i1 %exitcond35.not.i, label %for.inc34.i, label %for.body20.i, !llvm.loop !24

for.inc34.i:                                      ; preds = %for.body20.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next37.i, 2000
  br i1 %exitcond39.not.i, label %kernel_mvt.exit, label %for.cond18.preheader.i, !llvm.loop !25

kernel_mvt.exit:                                  ; preds = %for.inc34.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i50) #11
  %call.i.i51 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i50, ptr noundef null) #11
  %cmp.not.i.i52 = icmp eq i32 %call.i.i51, 0
  br i1 %cmp.not.i.i52, label %polybench_timer_stop.exit, label %if.then.i.i53

if.then.i.i53:                                    ; preds = %kernel_mvt.exit
  %call1.i.i54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i51)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_mvt.exit, %if.then.i.i53
  %38 = load i64, ptr %Tp.i.i50, align 8, !tbaa !5
  %conv.i.i55 = sitofp i64 %38 to double
  %tv_usec.i.i56 = getelementptr inbounds nuw i8, ptr %Tp.i.i50, i64 8
  %39 = load i64, ptr %tv_usec.i.i56, align 8, !tbaa !10
  %conv2.i.i57 = sitofp i64 %39 to double
  %40 = call double @llvm.fmuladd.f64(double %conv2.i.i57, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i55)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i50) #11
  store double %40, ptr @polybench_t_end, align 8, !tbaa !11
  %41 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %40, %41
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %42 = load ptr, ptr %argv, align 8, !tbaa !26
  %strcmpload = load i8, ptr %42, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %3, ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #11
  call void @free(ptr noundef %3) #11
  call void @free(ptr noundef nonnull %6) #11
  call void @free(ptr noundef %9) #11
  call void @free(ptr noundef nonnull %12) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %x1, ptr noundef nonnull readonly captures(none) %x2) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16
  %rem11 = urem i16 %rem.lhs.trunc, 20
  %cmp2 = icmp eq i16 %rem11, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc9 = tail call i32 @fputc(i32 10, ptr %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds nuw double, ptr %x1, i64 %indvars.iv
  %5 = load double, ptr %arrayidx, align 8, !tbaa !11
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, double noundef %5) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !28

for.end:                                          ; preds = %if.end
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.7) #14
  br label %for.body9

for.body9:                                        ; preds = %for.end, %if.end14
  %indvars.iv16 = phi i64 [ 0, %for.end ], [ %indvars.iv.next17, %if.end14 ]
  %rem10.lhs.trunc = trunc i64 %indvars.iv16 to i16
  %rem1012 = urem i16 %rem10.lhs.trunc, 20
  %cmp11 = icmp eq i16 %rem1012, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.body9
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %8)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.body9
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx16 = getelementptr inbounds nuw double, ptr %x2, i64 %indvars.iv16
  %10 = load double, ptr %arrayidx16, align 8, !tbaa !11
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5.10, double noundef %10) #14
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond19.not = icmp eq i64 %indvars.iv.next17, 2000
  br i1 %exitcond19.not, label %for.end20, label %for.body9, !llvm.loop !29

for.end20:                                        ; preds = %if.end14
  %11 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #14
  %12 = load ptr, ptr @stderr, align 8, !tbaa !15
  %13 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %12) #12
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
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 omnipotent char", !14, i64 0}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
