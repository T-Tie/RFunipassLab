; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #12
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #12
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #12
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #12
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #12
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #12
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
  tail call void @free(ptr noundef %ptr) #12
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #3 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i) #12
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i, i64 noundef 4096, i64 noundef %mul) #12
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #13
  call void @exit(i32 noundef 1) #14
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i) #12
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
  %Tp.i.i85 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i71 = alloca ptr, align 8
  %ret.i.i64 = alloca ptr, align 8
  %ret.i.i57 = alloca ptr, align 8
  %ret.i.i50 = alloca ptr, align 8
  %ret.i.i43 = alloca ptr, align 8
  %ret.i.i36 = alloca ptr, align 8
  %ret.i.i29 = alloca ptr, align 8
  %ret.i.i22 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #12
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 32000000) #12
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i22) #12
  store ptr null, ptr %ret.i.i22, align 8, !tbaa !13
  %call.i.i23 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i22, i64 noundef 4096, i64 noundef 16000) #12
  %3 = load ptr, ptr %ret.i.i22, align 8, !tbaa !13
  %tobool.i.i24 = icmp eq ptr %3, null
  %tobool2.i.i25 = icmp ne i32 %call.i.i23, 0
  %or.cond.i.i26 = select i1 %tobool.i.i24, i1 true, i1 %tobool2.i.i25
  br i1 %or.cond.i.i26, label %if.then.i.i27, label %polybench_alloc_data.exit28

if.then.i.i27:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit28:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i22) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i29) #12
  store ptr null, ptr %ret.i.i29, align 8, !tbaa !13
  %call.i.i30 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i29, i64 noundef 4096, i64 noundef 16000) #12
  %6 = load ptr, ptr %ret.i.i29, align 8, !tbaa !13
  %tobool.i.i31 = icmp eq ptr %6, null
  %tobool2.i.i32 = icmp ne i32 %call.i.i30, 0
  %or.cond.i.i33 = select i1 %tobool.i.i31, i1 true, i1 %tobool2.i.i32
  br i1 %or.cond.i.i33, label %if.then.i.i34, label %polybench_alloc_data.exit35

if.then.i.i34:                                    ; preds = %polybench_alloc_data.exit28
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %7) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit35:                      ; preds = %polybench_alloc_data.exit28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i29) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i36) #12
  store ptr null, ptr %ret.i.i36, align 8, !tbaa !13
  %call.i.i37 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i36, i64 noundef 4096, i64 noundef 16000) #12
  %9 = load ptr, ptr %ret.i.i36, align 8, !tbaa !13
  %tobool.i.i38 = icmp eq ptr %9, null
  %tobool2.i.i39 = icmp ne i32 %call.i.i37, 0
  %or.cond.i.i40 = select i1 %tobool.i.i38, i1 true, i1 %tobool2.i.i39
  br i1 %or.cond.i.i40, label %if.then.i.i41, label %polybench_alloc_data.exit42

if.then.i.i41:                                    ; preds = %polybench_alloc_data.exit35
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %10) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit42:                      ; preds = %polybench_alloc_data.exit35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i36) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i43) #12
  store ptr null, ptr %ret.i.i43, align 8, !tbaa !13
  %call.i.i44 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i43, i64 noundef 4096, i64 noundef 16000) #12
  %12 = load ptr, ptr %ret.i.i43, align 8, !tbaa !13
  %tobool.i.i45 = icmp eq ptr %12, null
  %tobool2.i.i46 = icmp ne i32 %call.i.i44, 0
  %or.cond.i.i47 = select i1 %tobool.i.i45, i1 true, i1 %tobool2.i.i46
  br i1 %or.cond.i.i47, label %if.then.i.i48, label %polybench_alloc_data.exit49

if.then.i.i48:                                    ; preds = %polybench_alloc_data.exit42
  %13 = load ptr, ptr @stderr, align 8, !tbaa !15
  %14 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %13) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit49:                      ; preds = %polybench_alloc_data.exit42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i43) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i50) #12
  store ptr null, ptr %ret.i.i50, align 8, !tbaa !13
  %call.i.i51 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i50, i64 noundef 4096, i64 noundef 16000) #12
  %15 = load ptr, ptr %ret.i.i50, align 8, !tbaa !13
  %tobool.i.i52 = icmp eq ptr %15, null
  %tobool2.i.i53 = icmp ne i32 %call.i.i51, 0
  %or.cond.i.i54 = select i1 %tobool.i.i52, i1 true, i1 %tobool2.i.i53
  br i1 %or.cond.i.i54, label %if.then.i.i55, label %polybench_alloc_data.exit56

if.then.i.i55:                                    ; preds = %polybench_alloc_data.exit49
  %16 = load ptr, ptr @stderr, align 8, !tbaa !15
  %17 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %16) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit56:                      ; preds = %polybench_alloc_data.exit49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i50) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i57) #12
  store ptr null, ptr %ret.i.i57, align 8, !tbaa !13
  %call.i.i58 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i57, i64 noundef 4096, i64 noundef 16000) #12
  %18 = load ptr, ptr %ret.i.i57, align 8, !tbaa !13
  %tobool.i.i59 = icmp eq ptr %18, null
  %tobool2.i.i60 = icmp ne i32 %call.i.i58, 0
  %or.cond.i.i61 = select i1 %tobool.i.i59, i1 true, i1 %tobool2.i.i60
  br i1 %or.cond.i.i61, label %if.then.i.i62, label %polybench_alloc_data.exit63

if.then.i.i62:                                    ; preds = %polybench_alloc_data.exit56
  %19 = load ptr, ptr @stderr, align 8, !tbaa !15
  %20 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %19) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit63:                      ; preds = %polybench_alloc_data.exit56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i57) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i64) #12
  store ptr null, ptr %ret.i.i64, align 8, !tbaa !13
  %call.i.i65 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i64, i64 noundef 4096, i64 noundef 16000) #12
  %21 = load ptr, ptr %ret.i.i64, align 8, !tbaa !13
  %tobool.i.i66 = icmp eq ptr %21, null
  %tobool2.i.i67 = icmp ne i32 %call.i.i65, 0
  %or.cond.i.i68 = select i1 %tobool.i.i66, i1 true, i1 %tobool2.i.i67
  br i1 %or.cond.i.i68, label %if.then.i.i69, label %polybench_alloc_data.exit70

if.then.i.i69:                                    ; preds = %polybench_alloc_data.exit63
  %22 = load ptr, ptr @stderr, align 8, !tbaa !15
  %23 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %22) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit70:                      ; preds = %polybench_alloc_data.exit63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i64) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i71) #12
  store ptr null, ptr %ret.i.i71, align 8, !tbaa !13
  %call.i.i72 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i71, i64 noundef 4096, i64 noundef 16000) #12
  %24 = load ptr, ptr %ret.i.i71, align 8, !tbaa !13
  %tobool.i.i73 = icmp eq ptr %24, null
  %tobool2.i.i74 = icmp ne i32 %call.i.i72, 0
  %or.cond.i.i75 = select i1 %tobool.i.i73, i1 true, i1 %tobool2.i.i74
  br i1 %or.cond.i.i75, label %if.then.i.i76, label %polybench_alloc_data.exit77

if.then.i.i76:                                    ; preds = %polybench_alloc_data.exit70
  %25 = load ptr, ptr @stderr, align 8, !tbaa !15
  %26 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %25) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit77:                      ; preds = %polybench_alloc_data.exit70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i71) #12
  br label %for.body.i

for.body.i:                                       ; preds = %middle.block, %polybench_alloc_data.exit77
  %indvars.iv33.i = phi i64 [ 0, %polybench_alloc_data.exit77 ], [ %indvars.iv.next34.i, %middle.block ]
  %27 = trunc nuw nsw i64 %indvars.iv33.i to i32
  %conv2.i = uitofp nneg i32 %27 to double
  %arrayidx.i = getelementptr inbounds nuw double, ptr %3, i64 %indvars.iv33.i
  store double %conv2.i, ptr %arrayidx.i, align 8, !tbaa !11
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1
  %28 = trunc nuw nsw i64 %indvars.iv.next34.i to i32
  %conv3.i = uitofp nneg i32 %28 to double
  %div.i = fdiv double %conv3.i, 2.000000e+03
  %div4.i = fmul double %div.i, 5.000000e-01
  %arrayidx6.i = getelementptr inbounds nuw double, ptr %9, i64 %indvars.iv33.i
  store double %div4.i, ptr %arrayidx6.i, align 8, !tbaa !11
  %div10.i = fmul double %div.i, 2.500000e-01
  %arrayidx12.i = getelementptr inbounds nuw double, ptr %6, i64 %indvars.iv33.i
  store double %div10.i, ptr %arrayidx12.i, align 8, !tbaa !11
  %div16.i = fdiv double %div.i, 6.000000e+00
  %arrayidx18.i = getelementptr inbounds nuw double, ptr %12, i64 %indvars.iv33.i
  store double %div16.i, ptr %arrayidx18.i, align 8, !tbaa !11
  %div22.i = fmul double %div.i, 1.250000e-01
  %arrayidx24.i = getelementptr inbounds nuw double, ptr %21, i64 %indvars.iv33.i
  store double %div22.i, ptr %arrayidx24.i, align 8, !tbaa !11
  %div28.i = fdiv double %div.i, 9.000000e+00
  %arrayidx30.i = getelementptr inbounds nuw double, ptr %24, i64 %indvars.iv33.i
  store double %div28.i, ptr %arrayidx30.i, align 8, !tbaa !11
  %arrayidx32.i = getelementptr inbounds nuw double, ptr %18, i64 %indvars.iv33.i
  store double 0.000000e+00, ptr %arrayidx32.i, align 8, !tbaa !11
  %arrayidx34.i = getelementptr inbounds nuw double, ptr %15, i64 %indvars.iv33.i
  store double 0.000000e+00, ptr %arrayidx34.i, align 8, !tbaa !11
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv33.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.body.i
  %index = phi i64 [ 0, %for.body.i ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %for.body.i ], [ %vec.ind.next, %vector.body ]
  %29 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %30 = trunc nuw nsw <2 x i64> %29 to <2 x i32>
  %31 = urem <2 x i32> %30, splat (i32 2000)
  %32 = uitofp nneg <2 x i32> %31 to <2 x double>
  %33 = fdiv <2 x double> %32, splat (double 2.000000e+03)
  %34 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv33.i, i64 %index
  store <2 x double> %33, ptr %34, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %35 = icmp eq i64 %index.next, 2000
  br i1 %35, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next34.i, 2000
  br i1 %exitcond36.not.i, label %init_array.exit, label %for.body.i, !llvm.loop !21

init_array.exit:                                  ; preds = %middle.block
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #12
  %call.i.i78 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #12
  %cmp.not.i.i = icmp eq i32 %call.i.i78, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i79

if.then.i.i79:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i78)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i79
  %36 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %36 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %37 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %37 to double
  %38 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #12
  store double %38, ptr @polybench_t_start, align 8, !tbaa !11
  %scevgep = getelementptr i8, ptr %0, i64 32000000
  %39 = insertelement <4 x ptr> poison, ptr %3, i64 0
  %40 = insertelement <4 x ptr> %39, ptr %6, i64 1
  %41 = insertelement <4 x ptr> %40, ptr %9, i64 2
  %42 = insertelement <4 x ptr> %41, ptr %12, i64 3
  %43 = getelementptr i8, <4 x ptr> %42, i64 16000
  %44 = insertelement <4 x ptr> poison, ptr %0, i64 0
  %45 = shufflevector <4 x ptr> %44, <4 x ptr> poison, <4 x i32> zeroinitializer
  %46 = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %47 = shufflevector <4 x ptr> %46, <4 x ptr> poison, <4 x i32> zeroinitializer
  %48 = icmp ult <4 x ptr> %45, %43
  %49 = icmp ult <4 x ptr> %42, %47
  %50 = and <4 x i1> %48, %49
  %51 = bitcast <4 x i1> %50 to i4
  %.not = icmp eq i4 %51, 0
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc18.i, %polybench_timer_start.exit
  %indvars.iv56.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next57.i, %for.inc18.i ]
  %arrayidx7.i = getelementptr inbounds nuw double, ptr %3, i64 %indvars.iv56.i
  %arrayidx11.i = getelementptr inbounds nuw double, ptr %9, i64 %indvars.iv56.i
  br i1 %.not, label %vector.body110.preheader, label %for.body3.i

vector.body110.preheader:                         ; preds = %for.cond1.preheader.i
  %52 = load double, ptr %arrayidx7.i, align 8, !tbaa !11, !alias.scope !22
  %broadcast.splatinsert113 = insertelement <2 x double> poison, double %52, i64 0
  %broadcast.splat114 = shufflevector <2 x double> %broadcast.splatinsert113, <2 x double> poison, <2 x i32> zeroinitializer
  %53 = load double, ptr %arrayidx11.i, align 8, !tbaa !11, !alias.scope !25
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %53, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110.preheader, %vector.body110
  %index111 = phi i64 [ %index.next118, %vector.body110 ], [ 0, %vector.body110.preheader ]
  %54 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv56.i, i64 %index111
  %wide.load = load <2 x double>, ptr %54, align 8, !tbaa !11, !alias.scope !27, !noalias !29
  %55 = getelementptr inbounds nuw double, ptr %6, i64 %index111
  %wide.load112 = load <2 x double>, ptr %55, align 8, !tbaa !11, !alias.scope !32
  %56 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat114, <2 x double> %wide.load112, <2 x double> %wide.load)
  %57 = getelementptr inbounds nuw double, ptr %12, i64 %index111
  %wide.load115 = load <2 x double>, ptr %57, align 8, !tbaa !11, !alias.scope !33
  %58 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat117, <2 x double> %wide.load115, <2 x double> %56)
  store <2 x double> %58, ptr %54, align 8, !tbaa !11, !alias.scope !27, !noalias !29
  %index.next118 = add nuw i64 %index111, 2
  %59 = icmp eq i64 %index.next118, 2000
  br i1 %59, label %for.inc18.i, label %vector.body110, !llvm.loop !34

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv.i80 = phi i64 [ %indvars.iv.next.i81, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %arrayidx5.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv56.i, i64 %indvars.iv.i80
  %60 = load double, ptr %arrayidx5.i, align 8, !tbaa !11
  %61 = load double, ptr %arrayidx7.i, align 8, !tbaa !11
  %arrayidx9.i = getelementptr inbounds nuw double, ptr %6, i64 %indvars.iv.i80
  %62 = load double, ptr %arrayidx9.i, align 8, !tbaa !11
  %63 = call double @llvm.fmuladd.f64(double %61, double %62, double %60)
  %64 = load double, ptr %arrayidx11.i, align 8, !tbaa !11
  %arrayidx13.i = getelementptr inbounds nuw double, ptr %12, i64 %indvars.iv.i80
  %65 = load double, ptr %arrayidx13.i, align 8, !tbaa !11
  %66 = call double @llvm.fmuladd.f64(double %64, double %65, double %63)
  store double %66, ptr %arrayidx5.i, align 8, !tbaa !11
  %indvars.iv.next.i81 = add nuw nsw i64 %indvars.iv.i80, 1
  %exitcond.not.i82 = icmp eq i64 %indvars.iv.next.i81, 2000
  br i1 %exitcond.not.i82, label %for.inc18.i, label %for.body3.i, !llvm.loop !35

for.inc18.i:                                      ; preds = %vector.body110, %for.body3.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next57.i, 2000
  br i1 %exitcond59.not.i, label %for.cond24.preheader.i, label %for.cond1.preheader.i, !llvm.loop !36

for.cond24.preheader.i:                           ; preds = %for.inc18.i, %for.inc41.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.inc41.i ], [ 0, %for.inc18.i ]
  %arrayidx28.i = getelementptr inbounds nuw double, ptr %18, i64 %indvars.iv64.i
  %arrayidx28.promoted.i = load double, ptr %arrayidx28.i, align 8, !tbaa !11
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.body26.i, %for.cond24.preheader.i
  %indvars.iv60.i = phi i64 [ 0, %for.cond24.preheader.i ], [ %indvars.iv.next61.i, %for.body26.i ]
  %67 = phi double [ %arrayidx28.promoted.i, %for.cond24.preheader.i ], [ %70, %for.body26.i ]
  %arrayidx32.i83 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv60.i, i64 %indvars.iv64.i
  %68 = load double, ptr %arrayidx32.i83, align 8, !tbaa !11
  %mul.i = fmul double %68, 1.200000e+00
  %arrayidx34.i84 = getelementptr inbounds nuw double, ptr %21, i64 %indvars.iv60.i
  %69 = load double, ptr %arrayidx34.i84, align 8, !tbaa !11
  %70 = call double @llvm.fmuladd.f64(double %mul.i, double %69, double %67)
  store double %70, ptr %arrayidx28.i, align 8, !tbaa !11
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next61.i, 2000
  br i1 %exitcond63.not.i, label %for.inc41.i, label %for.body26.i, !llvm.loop !37

for.inc41.i:                                      ; preds = %for.body26.i
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 2000
  br i1 %exitcond67.not.i, label %vector.memcheck121, label %for.cond24.preheader.i, !llvm.loop !38

vector.memcheck121:                               ; preds = %for.inc41.i
  %scevgep122 = getelementptr i8, ptr %18, i64 16000
  %scevgep123 = getelementptr i8, ptr %24, i64 16000
  %bound0124 = icmp ult ptr %18, %scevgep123
  %bound1125 = icmp ult ptr %24, %scevgep122
  %found.conflict126 = and i1 %bound0124, %bound1125
  br i1 %found.conflict126, label %for.body46.i, label %vector.body129

vector.body129:                                   ; preds = %vector.memcheck121, %vector.body129
  %index130 = phi i64 [ %index.next133, %vector.body129 ], [ 0, %vector.memcheck121 ]
  %71 = getelementptr inbounds nuw double, ptr %18, i64 %index130
  %wide.load131 = load <2 x double>, ptr %71, align 8, !tbaa !11, !alias.scope !39, !noalias !42
  %72 = getelementptr inbounds nuw double, ptr %24, i64 %index130
  %wide.load132 = load <2 x double>, ptr %72, align 8, !tbaa !11, !alias.scope !42
  %73 = fadd <2 x double> %wide.load131, %wide.load132
  store <2 x double> %73, ptr %71, align 8, !tbaa !11, !alias.scope !39, !noalias !42
  %index.next133 = add nuw i64 %index130, 2
  %74 = icmp eq i64 %index.next133, 2000
  br i1 %74, label %for.cond59.preheader.i.preheader, label %vector.body129, !llvm.loop !44

for.body46.i:                                     ; preds = %vector.memcheck121, %for.body46.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %for.body46.i ], [ 0, %vector.memcheck121 ]
  %arrayidx48.i = getelementptr inbounds nuw double, ptr %18, i64 %indvars.iv68.i
  %75 = load double, ptr %arrayidx48.i, align 8, !tbaa !11
  %arrayidx50.i = getelementptr inbounds nuw double, ptr %24, i64 %indvars.iv68.i
  %76 = load double, ptr %arrayidx50.i, align 8, !tbaa !11
  %add.i = fadd double %75, %76
  store double %add.i, ptr %arrayidx48.i, align 8, !tbaa !11
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next69.i, 2000
  br i1 %exitcond71.not.i, label %for.cond59.preheader.i.preheader, label %for.body46.i, !llvm.loop !45

for.cond59.preheader.i.preheader:                 ; preds = %vector.body129, %for.body46.i
  br label %for.cond59.preheader.i

for.cond59.preheader.i:                           ; preds = %for.cond59.preheader.i.preheader, %for.inc77.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i, %for.inc77.i ], [ 0, %for.cond59.preheader.i.preheader ]
  %arrayidx63.i = getelementptr inbounds nuw double, ptr %15, i64 %indvars.iv76.i
  %arrayidx63.promoted.i = load double, ptr %arrayidx63.i, align 8, !tbaa !11
  br label %for.body61.i

for.body61.i:                                     ; preds = %for.body61.i, %for.cond59.preheader.i
  %indvars.iv72.i = phi i64 [ 0, %for.cond59.preheader.i ], [ %indvars.iv.next73.i, %for.body61.i ]
  %77 = phi double [ %arrayidx63.promoted.i, %for.cond59.preheader.i ], [ %80, %for.body61.i ]
  %arrayidx67.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv76.i, i64 %indvars.iv72.i
  %78 = load double, ptr %arrayidx67.i, align 8, !tbaa !11
  %mul68.i = fmul double %78, 1.500000e+00
  %arrayidx70.i = getelementptr inbounds nuw double, ptr %18, i64 %indvars.iv72.i
  %79 = load double, ptr %arrayidx70.i, align 8, !tbaa !11
  %80 = call double @llvm.fmuladd.f64(double %mul68.i, double %79, double %77)
  store double %80, ptr %arrayidx63.i, align 8, !tbaa !11
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, 2000
  br i1 %exitcond75.not.i, label %for.inc77.i, label %for.body61.i, !llvm.loop !46

for.inc77.i:                                      ; preds = %for.body61.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next77.i, 2000
  br i1 %exitcond79.not.i, label %kernel_gemver.exit, label %for.cond59.preheader.i, !llvm.loop !47

kernel_gemver.exit:                               ; preds = %for.inc77.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i85) #12
  %call.i.i86 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i85, ptr noundef null) #12
  %cmp.not.i.i87 = icmp eq i32 %call.i.i86, 0
  br i1 %cmp.not.i.i87, label %polybench_timer_stop.exit, label %if.then.i.i88

if.then.i.i88:                                    ; preds = %kernel_gemver.exit
  %call1.i.i89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i86)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_gemver.exit, %if.then.i.i88
  %81 = load i64, ptr %Tp.i.i85, align 8, !tbaa !5
  %conv.i.i90 = sitofp i64 %81 to double
  %tv_usec.i.i91 = getelementptr inbounds nuw i8, ptr %Tp.i.i85, i64 8
  %82 = load i64, ptr %tv_usec.i.i91, align 8, !tbaa !10
  %conv2.i.i92 = sitofp i64 %82 to double
  %83 = call double @llvm.fmuladd.f64(double %conv2.i.i92, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i90)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i85) #12
  store double %83, ptr @polybench_t_end, align 8, !tbaa !11
  %84 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %83, %84
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %85 = load ptr, ptr %argv, align 8, !tbaa !48
  %strcmpload = load i8, ptr %85, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #12
  call void @free(ptr noundef %3) #12
  call void @free(ptr noundef %6) #12
  call void @free(ptr noundef %9) #12
  call void @free(ptr noundef %12) #12
  call void @free(ptr noundef nonnull %15) #12
  call void @free(ptr noundef nonnull %18) #12
  call void @free(ptr noundef %21) #12
  call void @free(ptr noundef %24) #12
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %w) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
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
  %arrayidx = getelementptr inbounds nuw double, ptr %w, i64 %indvars.iv
  %5 = load double, ptr %arrayidx, align 8, !tbaa !11
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, double noundef %5) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !50

for.end:                                          ; preds = %if.end
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #15
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %7) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #11

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
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold nounwind }

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
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = !{!28}
!28 = distinct !{!28, !24}
!29 = !{!23, !30, !26, !31}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = !{!30}
!33 = !{!31}
!34 = distinct !{!34, !18, !19, !20}
!35 = distinct !{!35, !18, !19}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !18, !19, !20}
!45 = distinct !{!45, !18, !19}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = !{!49, !49, i64 0}
!49 = !{!"p1 omnipotent char", !14, i64 0}
!50 = distinct !{!50, !18}
