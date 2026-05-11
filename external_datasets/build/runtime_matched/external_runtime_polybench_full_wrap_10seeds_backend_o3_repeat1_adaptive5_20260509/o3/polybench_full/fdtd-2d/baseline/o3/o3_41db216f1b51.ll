; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll'
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
@.str.3.8 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ey\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"hz\00", align 1

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
  %Tp.i.i44 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i31 = alloca ptr, align 8
  %ret.i.i24 = alloca ptr, align 8
  %ret.i.i17 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #12
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 9600000) #12
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %1 = ptrtoint ptr %0 to i64
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %3 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %2) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i17) #12
  store ptr null, ptr %ret.i.i17, align 8, !tbaa !13
  %call.i.i18 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i17, i64 noundef 4096, i64 noundef 9600000) #12
  %4 = load ptr, ptr %ret.i.i17, align 8, !tbaa !13
  %5 = ptrtoint ptr %4 to i64
  %tobool.i.i19 = icmp eq ptr %4, null
  %tobool2.i.i20 = icmp ne i32 %call.i.i18, 0
  %or.cond.i.i21 = select i1 %tobool.i.i19, i1 true, i1 %tobool2.i.i20
  br i1 %or.cond.i.i21, label %if.then.i.i22, label %polybench_alloc_data.exit23

if.then.i.i22:                                    ; preds = %polybench_alloc_data.exit
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %7 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %6) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit23:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i17) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i24) #12
  store ptr null, ptr %ret.i.i24, align 8, !tbaa !13
  %call.i.i25 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i24, i64 noundef 4096, i64 noundef 9600000) #12
  %8 = load ptr, ptr %ret.i.i24, align 8, !tbaa !13
  %9 = ptrtoint ptr %8 to i64
  %tobool.i.i26 = icmp eq ptr %8, null
  %tobool2.i.i27 = icmp ne i32 %call.i.i25, 0
  %or.cond.i.i28 = select i1 %tobool.i.i26, i1 true, i1 %tobool2.i.i27
  br i1 %or.cond.i.i28, label %if.then.i.i29, label %polybench_alloc_data.exit30

if.then.i.i29:                                    ; preds = %polybench_alloc_data.exit23
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %10) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit30:                      ; preds = %polybench_alloc_data.exit23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i31) #12
  store ptr null, ptr %ret.i.i31, align 8, !tbaa !13
  %call.i.i32 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i31, i64 noundef 4096, i64 noundef 4000) #12
  %12 = load ptr, ptr %ret.i.i31, align 8, !tbaa !13
  %tobool.i.i33 = icmp eq ptr %12, null
  %tobool2.i.i34 = icmp ne i32 %call.i.i32, 0
  %or.cond.i.i35 = select i1 %tobool.i.i33, i1 true, i1 %tobool2.i.i34
  br i1 %or.cond.i.i35, label %if.then.i.i36, label %polybench_alloc_data.exit37

if.then.i.i36:                                    ; preds = %polybench_alloc_data.exit30
  %13 = load ptr, ptr @stderr, align 8, !tbaa !15
  %14 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %13) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit37:                      ; preds = %polybench_alloc_data.exit30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i31) #12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %polybench_alloc_data.exit37
  %index = phi i64 [ 0, %polybench_alloc_data.exit37 ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %polybench_alloc_data.exit37 ], [ %vec.ind.next, %vector.body ]
  %15 = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %16 = getelementptr inbounds nuw double, ptr %12, i64 %index
  store <2 x double> %15, ptr %16, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %17 = icmp eq i64 %index.next, 500
  br i1 %17, label %for.cond5.preheader.i.preheader, label %vector.body, !llvm.loop !17

for.cond5.preheader.i.preheader:                  ; preds = %vector.body
  %18 = sub i64 %5, %1
  %19 = sub i64 %9, %1
  %20 = sub i64 %9, %5
  %diff.check = icmp ult i64 %18, 16
  %diff.check52 = icmp ult i64 %19, 16
  %conflict.rdx = or i1 %diff.check, %diff.check52
  %diff.check53 = icmp ult i64 %20, 16
  %conflict.rdx54 = or i1 %conflict.rdx, %diff.check53
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %for.inc39.i, %for.cond5.preheader.i.preheader
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.inc39.i ], [ 0, %for.cond5.preheader.i.preheader ]
  br i1 %conflict.rdx54, label %for.body8.i, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv32.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph56
  %index58 = phi i64 [ 0, %vector.ph56 ], [ %index.next60, %vector.body57 ]
  %vec.ind59 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph56 ], [ %vec.ind.next61, %vector.body57 ]
  %21 = add nuw nsw <2 x i64> %vec.ind59, splat (i64 1)
  %22 = mul nuw nsw <2 x i64> %21, %broadcast.splat
  %23 = trunc nuw nsw <2 x i64> %22 to <2 x i32>
  %24 = uitofp nneg <2 x i32> %23 to <2 x double>
  %25 = fdiv <2 x double> %24, splat (double 1.000000e+03)
  %26 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv32.i, i64 %index58
  store <2 x double> %25, ptr %26, align 8, !tbaa !11
  %27 = add nuw nsw <2 x i64> %vec.ind59, splat (i64 2)
  %28 = mul nuw nsw <2 x i64> %27, %broadcast.splat
  %29 = trunc nuw nsw <2 x i64> %28 to <2 x i32>
  %30 = uitofp nneg <2 x i32> %29 to <2 x double>
  %31 = fdiv <2 x double> %30, splat (double 1.200000e+03)
  %32 = getelementptr inbounds nuw [1200 x double], ptr %4, i64 %indvars.iv32.i, i64 %index58
  store <2 x double> %31, ptr %32, align 8, !tbaa !11
  %33 = add nuw nsw <2 x i64> %vec.ind59, splat (i64 3)
  %34 = mul nuw nsw <2 x i64> %33, %broadcast.splat
  %35 = trunc nuw nsw <2 x i64> %34 to <2 x i32>
  %36 = uitofp nneg <2 x i32> %35 to <2 x double>
  %37 = fdiv <2 x double> %36, splat (double 1.000000e+03)
  %38 = getelementptr inbounds nuw [1200 x double], ptr %8, i64 %indvars.iv32.i, i64 %index58
  store <2 x double> %37, ptr %38, align 8, !tbaa !11
  %index.next60 = add nuw i64 %index58, 2
  %vec.ind.next61 = add <2 x i64> %vec.ind59, splat (i64 2)
  %39 = icmp eq i64 %index.next60, 1200
  br i1 %39, label %for.inc39.i, label %vector.body57, !llvm.loop !21

for.body8.i:                                      ; preds = %vector.memcheck, %for.body8.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %for.body8.i ], [ 0, %vector.memcheck ]
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  %40 = mul nuw nsw i64 %indvars.iv.next27.i, %indvars.iv32.i
  %41 = trunc nuw nsw i64 %40 to i32
  %mul.i = uitofp nneg i32 %41 to double
  %div.i = fdiv double %mul.i, 1.000000e+03
  %arrayidx15.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv32.i, i64 %indvars.iv26.i
  store double %div.i, ptr %arrayidx15.i, align 8, !tbaa !11
  %42 = add nuw nsw i64 %indvars.iv26.i, 2
  %43 = mul nuw nsw i64 %42, %indvars.iv32.i
  %44 = trunc nuw nsw i64 %43 to i32
  %mul19.i = uitofp nneg i32 %44 to double
  %div21.i = fdiv double %mul19.i, 1.200000e+03
  %arrayidx25.i = getelementptr inbounds nuw [1200 x double], ptr %4, i64 %indvars.iv32.i, i64 %indvars.iv26.i
  store double %div21.i, ptr %arrayidx25.i, align 8, !tbaa !11
  %45 = add nuw nsw i64 %indvars.iv26.i, 3
  %46 = mul nuw nsw i64 %45, %indvars.iv32.i
  %47 = trunc nuw nsw i64 %46 to i32
  %mul29.i = uitofp nneg i32 %47 to double
  %div31.i = fdiv double %mul29.i, 1.000000e+03
  %arrayidx35.i = getelementptr inbounds nuw [1200 x double], ptr %8, i64 %indvars.iv32.i, i64 %indvars.iv26.i
  store double %div31.i, ptr %arrayidx35.i, align 8, !tbaa !11
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next27.i, 1200
  br i1 %exitcond31.not.i, label %for.inc39.i, label %for.body8.i, !llvm.loop !22

for.inc39.i:                                      ; preds = %vector.body57, %for.body8.i
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next33.i, 1000
  br i1 %exitcond35.not.i, label %init_array.exit, label %vector.memcheck, !llvm.loop !23

init_array.exit:                                  ; preds = %for.inc39.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #12
  %call.i.i38 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #12
  %cmp.not.i.i = icmp eq i32 %call.i.i38, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i39

if.then.i.i39:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i38)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i39
  %48 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %48 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %49 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %49 to double
  %50 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #12
  store double %50, ptr @polybench_t_start, align 8, !tbaa !11
  %invariant.gep.i = getelementptr i8, ptr %8, i64 -9600
  %invariant.gep67.i = getelementptr i8, ptr %4, i64 9600
  %scevgep = getelementptr i8, ptr %8, i64 9590392
  %scevgep65 = getelementptr i8, ptr %0, i64 9590400
  %scevgep66 = getelementptr i8, ptr %4, i64 9599992
  %scevgep83 = getelementptr i8, ptr %0, i64 8
  %scevgep84 = getelementptr i8, ptr %0, i64 9600000
  %scevgep85 = getelementptr i8, ptr %8, i64 9600000
  %scevgep100 = getelementptr i8, ptr %4, i64 9600000
  %bound0101 = icmp ult ptr %invariant.gep67.i, %scevgep85
  %bound1102 = icmp ult ptr %8, %scevgep100
  %found.conflict103 = and i1 %bound0101, %bound1102
  %bound086 = icmp ult ptr %scevgep83, %scevgep85
  %bound187 = icmp ult ptr %8, %scevgep84
  %found.conflict88 = and i1 %bound086, %bound187
  %bound0 = icmp ult ptr %8, %scevgep65
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %8, %scevgep66
  %bound168 = icmp ult ptr %4, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx70 = or i1 %found.conflict, %found.conflict69
  br label %vector.ph115

vector.ph115:                                     ; preds = %polybench_timer_start.exit, %for.inc108.i
  %indvars.iv97.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next98.i, %for.inc108.i ]
  %arrayidx.i40 = getelementptr inbounds nuw double, ptr %12, i64 %indvars.iv97.i
  %.pre.i = load double, ptr %arrayidx.i40, align 8, !tbaa !11
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph115
  %index119 = phi i64 [ 0, %vector.ph115 ], [ %index.next120, %vector.body118 ]
  %51 = getelementptr inbounds nuw [1200 x double], ptr %4, i64 0, i64 %index119
  store <2 x double> %broadcast.splat117, ptr %51, align 8, !tbaa !11
  %index.next120 = add nuw i64 %index119, 2
  %52 = icmp eq i64 %index.next120, 1200
  br i1 %52, label %vector.memcheck99, label %vector.body118, !llvm.loop !24

vector.memcheck99:                                ; preds = %vector.body118, %for.inc33.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i, %for.inc33.i ], [ 1, %vector.body118 ]
  br i1 %found.conflict103, label %for.body12.i, label %vector.body106

vector.body106:                                   ; preds = %vector.memcheck99, %vector.body106
  %index107 = phi i64 [ %index.next111, %vector.body106 ], [ 0, %vector.memcheck99 ]
  %53 = getelementptr inbounds nuw [1200 x double], ptr %4, i64 %indvars.iv76.i, i64 %index107
  %wide.load108 = load <2 x double>, ptr %53, align 8, !tbaa !11, !alias.scope !25, !noalias !28
  %54 = getelementptr inbounds nuw [1200 x double], ptr %8, i64 %indvars.iv76.i, i64 %index107
  %wide.load109 = load <2 x double>, ptr %54, align 8, !tbaa !11, !alias.scope !28
  %55 = getelementptr [1200 x double], ptr %invariant.gep.i, i64 %indvars.iv76.i, i64 %index107
  %wide.load110 = load <2 x double>, ptr %55, align 8, !tbaa !11, !alias.scope !28
  %56 = fsub <2 x double> %wide.load109, %wide.load110
  %57 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %56, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load108)
  store <2 x double> %57, ptr %53, align 8, !tbaa !11, !alias.scope !25, !noalias !28
  %index.next111 = add nuw i64 %index107, 2
  %58 = icmp eq i64 %index.next111, 1200
  br i1 %58, label %for.inc33.i, label %vector.body106, !llvm.loop !30

for.body12.i:                                     ; preds = %vector.memcheck99, %for.body12.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %for.body12.i ], [ 0, %vector.memcheck99 ]
  %arrayidx16.i = getelementptr inbounds nuw [1200 x double], ptr %4, i64 %indvars.iv76.i, i64 %indvars.iv72.i
  %59 = load double, ptr %arrayidx16.i, align 8, !tbaa !11
  %arrayidx20.i = getelementptr inbounds nuw [1200 x double], ptr %8, i64 %indvars.iv76.i, i64 %indvars.iv72.i
  %60 = load double, ptr %arrayidx20.i, align 8, !tbaa !11
  %arrayidx24.i = getelementptr [1200 x double], ptr %invariant.gep.i, i64 %indvars.iv76.i, i64 %indvars.iv72.i
  %61 = load double, ptr %arrayidx24.i, align 8, !tbaa !11
  %sub25.i = fsub double %60, %61
  %62 = call double @llvm.fmuladd.f64(double %sub25.i, double -5.000000e-01, double %59)
  store double %62, ptr %arrayidx16.i, align 8, !tbaa !11
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, 1200
  br i1 %exitcond75.not.i, label %for.inc33.i, label %for.body12.i, !llvm.loop !31

for.inc33.i:                                      ; preds = %vector.body106, %for.body12.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next77.i, 1000
  br i1 %exitcond79.not.i, label %vector.memcheck82, label %vector.memcheck99, !llvm.loop !32

vector.memcheck82:                                ; preds = %for.inc33.i, %for.inc63.i
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %for.inc63.i ], [ 0, %for.inc33.i ]
  br i1 %found.conflict88, label %for.body41.i.preheader, label %vector.body91

vector.body91:                                    ; preds = %vector.memcheck82, %vector.body91
  %index92 = phi i64 [ %index.next96, %vector.body91 ], [ 0, %vector.memcheck82 ]
  %offset.idx = or disjoint i64 %index92, 1
  %63 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv85.i, i64 %offset.idx
  %wide.load93 = load <2 x double>, ptr %63, align 8, !tbaa !11, !alias.scope !33, !noalias !36
  %64 = getelementptr inbounds nuw [1200 x double], ptr %8, i64 %indvars.iv85.i, i64 %offset.idx
  %wide.load94 = load <2 x double>, ptr %64, align 8, !tbaa !11, !alias.scope !36
  %65 = getelementptr inbounds [1200 x double], ptr %8, i64 %indvars.iv85.i, i64 %index92
  %wide.load95 = load <2 x double>, ptr %65, align 8, !tbaa !11, !alias.scope !36
  %66 = fsub <2 x double> %wide.load94, %wide.load95
  %67 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %66, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load93)
  store <2 x double> %67, ptr %63, align 8, !tbaa !11, !alias.scope !33, !noalias !36
  %index.next96 = add nuw i64 %index92, 2
  %68 = icmp eq i64 %index.next96, 1198
  br i1 %68, label %for.body41.i.preheader, label %vector.body91, !llvm.loop !38

for.body41.i.preheader:                           ; preds = %vector.body91, %vector.memcheck82
  %indvars.iv80.i.ph = phi i64 [ 1, %vector.memcheck82 ], [ 1199, %vector.body91 ]
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.preheader, %for.body41.i
  %indvars.iv80.i = phi i64 [ %indvars.iv.next81.i, %for.body41.i ], [ %indvars.iv80.i.ph, %for.body41.i.preheader ]
  %arrayidx45.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv85.i, i64 %indvars.iv80.i
  %69 = load double, ptr %arrayidx45.i, align 8, !tbaa !11
  %arrayidx49.i = getelementptr inbounds nuw [1200 x double], ptr %8, i64 %indvars.iv85.i, i64 %indvars.iv80.i
  %70 = load double, ptr %arrayidx49.i, align 8, !tbaa !11
  %71 = add nsw i64 %indvars.iv80.i, -1
  %arrayidx54.i = getelementptr inbounds [1200 x double], ptr %8, i64 %indvars.iv85.i, i64 %71
  %72 = load double, ptr %arrayidx54.i, align 8, !tbaa !11
  %sub55.i = fsub double %70, %72
  %73 = call double @llvm.fmuladd.f64(double %sub55.i, double -5.000000e-01, double %69)
  store double %73, ptr %arrayidx45.i, align 8, !tbaa !11
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, 1200
  br i1 %exitcond84.not.i, label %for.inc63.i, label %for.body41.i, !llvm.loop !39

for.inc63.i:                                      ; preds = %for.body41.i
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1
  %exitcond88.not.i = icmp eq i64 %indvars.iv.next86.i, 1000
  br i1 %exitcond88.not.i, label %vector.memcheck64, label %vector.memcheck82, !llvm.loop !40

vector.memcheck64:                                ; preds = %for.inc63.i, %for.inc105.i
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i, %for.inc105.i ], [ 0, %for.inc63.i ]
  br i1 %conflict.rdx70, label %for.body73.i.preheader, label %vector.body73

vector.body73:                                    ; preds = %vector.memcheck64, %vector.body73
  %index74 = phi i64 [ %index.next79, %vector.body73 ], [ 0, %vector.memcheck64 ]
  %74 = getelementptr inbounds nuw [1200 x double], ptr %8, i64 %indvars.iv93.i, i64 %index74
  %wide.load = load <2 x double>, ptr %74, align 8, !tbaa !11, !alias.scope !41, !noalias !44
  %75 = or disjoint i64 %index74, 1
  %76 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv93.i, i64 %75
  %wide.load75 = load <2 x double>, ptr %76, align 8, !tbaa !11, !alias.scope !47
  %77 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv93.i, i64 %index74
  %wide.load76 = load <2 x double>, ptr %77, align 8, !tbaa !11, !alias.scope !47
  %78 = fsub <2 x double> %wide.load75, %wide.load76
  %79 = getelementptr inbounds nuw [1200 x double], ptr %invariant.gep67.i, i64 %indvars.iv93.i, i64 %index74
  %wide.load77 = load <2 x double>, ptr %79, align 8, !tbaa !11, !alias.scope !48
  %80 = fadd <2 x double> %78, %wide.load77
  %81 = getelementptr inbounds nuw [1200 x double], ptr %4, i64 %indvars.iv93.i, i64 %index74
  %wide.load78 = load <2 x double>, ptr %81, align 8, !tbaa !11, !alias.scope !48
  %82 = fsub <2 x double> %80, %wide.load78
  %83 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %82, <2 x double> splat (double 0xBFE6666666666666), <2 x double> %wide.load)
  store <2 x double> %83, ptr %74, align 8, !tbaa !11, !alias.scope !41, !noalias !44
  %index.next79 = add nuw i64 %index74, 2
  %84 = icmp eq i64 %index.next79, 1198
  br i1 %84, label %for.body73.i.preheader, label %vector.body73, !llvm.loop !49

for.body73.i.preheader:                           ; preds = %vector.body73, %vector.memcheck64
  %indvars.iv89.i.ph = phi i64 [ 0, %vector.memcheck64 ], [ 1198, %vector.body73 ]
  br label %for.body73.i

for.body73.i:                                     ; preds = %for.body73.i.preheader, %for.body73.i
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i, %for.body73.i ], [ %indvars.iv89.i.ph, %for.body73.i.preheader ]
  %arrayidx77.i = getelementptr inbounds nuw [1200 x double], ptr %8, i64 %indvars.iv93.i, i64 %indvars.iv89.i
  %85 = load double, ptr %arrayidx77.i, align 8, !tbaa !11
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1
  %arrayidx81.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv93.i, i64 %indvars.iv.next90.i
  %86 = load double, ptr %arrayidx81.i, align 8, !tbaa !11
  %arrayidx85.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv93.i, i64 %indvars.iv89.i
  %87 = load double, ptr %arrayidx85.i, align 8, !tbaa !11
  %sub86.i = fsub double %86, %87
  %arrayidx91.i = getelementptr inbounds nuw [1200 x double], ptr %invariant.gep67.i, i64 %indvars.iv93.i, i64 %indvars.iv89.i
  %88 = load double, ptr %arrayidx91.i, align 8, !tbaa !11
  %add92.i = fadd double %sub86.i, %88
  %arrayidx96.i = getelementptr inbounds nuw [1200 x double], ptr %4, i64 %indvars.iv93.i, i64 %indvars.iv89.i
  %89 = load double, ptr %arrayidx96.i, align 8, !tbaa !11
  %sub97.i = fsub double %add92.i, %89
  %90 = call double @llvm.fmuladd.f64(double %sub97.i, double 0xBFE6666666666666, double %85)
  store double %90, ptr %arrayidx77.i, align 8, !tbaa !11
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next90.i, 1199
  br i1 %exitcond92.not.i, label %for.inc105.i, label %for.body73.i, !llvm.loop !50

for.inc105.i:                                     ; preds = %for.body73.i
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1
  %exitcond96.not.i = icmp eq i64 %indvars.iv.next94.i, 999
  br i1 %exitcond96.not.i, label %for.inc108.i, label %vector.memcheck64, !llvm.loop !51

for.inc108.i:                                     ; preds = %for.inc105.i
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1
  %exitcond100.not.i = icmp eq i64 %indvars.iv.next98.i, 500
  br i1 %exitcond100.not.i, label %kernel_fdtd_2d.exit, label %vector.ph115, !llvm.loop !52

kernel_fdtd_2d.exit:                              ; preds = %for.inc108.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i44) #12
  %call.i.i45 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i44, ptr noundef null) #12
  %cmp.not.i.i46 = icmp eq i32 %call.i.i45, 0
  br i1 %cmp.not.i.i46, label %polybench_timer_stop.exit, label %if.then.i.i47

if.then.i.i47:                                    ; preds = %kernel_fdtd_2d.exit
  %call1.i.i48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i45)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_fdtd_2d.exit, %if.then.i.i47
  %91 = load i64, ptr %Tp.i.i44, align 8, !tbaa !5
  %conv.i.i49 = sitofp i64 %91 to double
  %tv_usec.i.i50 = getelementptr inbounds nuw i8, ptr %Tp.i.i44, i64 8
  %92 = load i64, ptr %tv_usec.i.i50, align 8, !tbaa !10
  %conv2.i.i51 = sitofp i64 %92 to double
  %93 = call double @llvm.fmuladd.f64(double %conv2.i.i51, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i49)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i44) #12
  store double %93, ptr @polybench_t_end, align 8, !tbaa !11
  %94 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %93, %94
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %95 = load ptr, ptr %argv, align 8, !tbaa !53
  %strcmpload = load i8, ptr %95, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %0, ptr noundef %4, ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #12
  call void @free(ptr noundef nonnull %4) #12
  call void @free(ptr noundef nonnull %8) #12
  call void @free(ptr noundef %12) #12
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %ex, ptr noundef nonnull readonly captures(none) %ey, ptr noundef nonnull readonly captures(none) %hz) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv40 = phi i64 [ 0, %entry ], [ %indvars.iv.next41, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv40, 1000
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
  %fputc31 = tail call i32 @fputc(i32 10, ptr %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %ex, i64 %indvars.iv40, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1200
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !55

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, 1000
  br i1 %exitcond44.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !56

for.end12:                                        ; preds = %for.inc10
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #15
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #13
  %12 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.8) #15
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.end12, %for.inc37
  %indvars.iv50 = phi i64 [ 0, %for.end12 ], [ %indvars.iv.next51, %for.inc37 ]
  %13 = mul nuw nsw i64 %indvars.iv50, 1000
  br label %for.body21

for.body21:                                       ; preds = %for.cond19.preheader, %if.end28
  %indvars.iv45 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next46, %if.end28 ]
  %14 = add nuw nsw i64 %indvars.iv45, %13
  %15 = trunc nuw nsw i64 %14 to i32
  %rem24 = urem i32 %15, 20
  %cmp25 = icmp eq i32 %rem24, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.body21
  %16 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc30 = tail call i32 @fputc(i32 10, ptr %16)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.body21
  %17 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx32 = getelementptr inbounds nuw [1200 x double], ptr %ey, i64 %indvars.iv50, i64 %indvars.iv45
  %18 = load double, ptr %arrayidx32, align 8, !tbaa !11
  %call33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.5.10, double noundef %18) #15
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, 1200
  br i1 %exitcond49.not, label %for.inc37, label %for.body21, !llvm.loop !57

for.inc37:                                        ; preds = %if.end28
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, 1000
  br i1 %exitcond54.not, label %for.end39, label %for.cond19.preheader, !llvm.loop !58

for.end39:                                        ; preds = %for.inc37
  %19 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #15
  %20 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.9) #15
  br label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.end39, %for.inc63
  %indvars.iv60 = phi i64 [ 0, %for.end39 ], [ %indvars.iv.next61, %for.inc63 ]
  %21 = mul nuw nsw i64 %indvars.iv60, 1000
  br label %for.body47

for.body47:                                       ; preds = %for.cond45.preheader, %if.end54
  %indvars.iv55 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next56, %if.end54 ]
  %22 = add nuw nsw i64 %indvars.iv55, %21
  %23 = trunc nuw nsw i64 %22 to i32
  %rem50 = urem i32 %23, 20
  %cmp51 = icmp eq i32 %rem50, 0
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %for.body47
  %24 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %24)
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %for.body47
  %25 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx58 = getelementptr inbounds nuw [1200 x double], ptr %hz, i64 %indvars.iv60, i64 %indvars.iv55
  %26 = load double, ptr %arrayidx58, align 8, !tbaa !11
  %call59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.5.10, double noundef %26) #15
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, 1200
  br i1 %exitcond59.not, label %for.inc63, label %for.body47, !llvm.loop !59

for.inc63:                                        ; preds = %if.end54
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, 1000
  br i1 %exitcond64.not, label %for.end65, label %for.cond45.preheader, !llvm.loop !60

for.end65:                                        ; preds = %for.inc63
  %27 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9) #15
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
!21 = distinct !{!21, !18, !19, !20}
!22 = distinct !{!22, !18, !19}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18, !19, !20}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !18, !19, !20}
!31 = distinct !{!31, !18, !19}
!32 = distinct !{!32, !18}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !18, !19, !20}
!39 = distinct !{!39, !18, !19}
!40 = distinct !{!40, !18}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45, !46}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
!47 = !{!45}
!48 = !{!46}
!49 = distinct !{!49, !18, !19, !20}
!50 = distinct !{!50, !18, !19}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 omnipotent char", !14, i64 0}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !18}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
