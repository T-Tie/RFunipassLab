; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll'
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
  %Tp.i.i32 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i18 = alloca ptr, align 8
  %ret.i.i11 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #12
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 11520000) #12
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i11) #12
  store ptr null, ptr %ret.i.i11, align 8, !tbaa !13
  %call.i.i12 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i11, i64 noundef 4096, i64 noundef 9600000) #12
  %3 = load ptr, ptr %ret.i.i11, align 8, !tbaa !13
  %4 = ptrtoint ptr %3 to i64
  %tobool.i.i13 = icmp eq ptr %3, null
  %tobool2.i.i14 = icmp ne i32 %call.i.i12, 0
  %or.cond.i.i15 = select i1 %tobool.i.i13, i1 true, i1 %tobool2.i.i14
  br i1 %or.cond.i.i15, label %if.then.i.i16, label %polybench_alloc_data.exit17

if.then.i.i16:                                    ; preds = %polybench_alloc_data.exit
  %5 = load ptr, ptr @stderr, align 8, !tbaa !15
  %6 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %5) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit17:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i11) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i18) #12
  store ptr null, ptr %ret.i.i18, align 8, !tbaa !13
  %call.i.i19 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i18, i64 noundef 4096, i64 noundef 9600000) #12
  %7 = load ptr, ptr %ret.i.i18, align 8, !tbaa !13
  %tobool.i.i20 = icmp eq ptr %7, null
  %tobool2.i.i21 = icmp ne i32 %call.i.i19, 0
  %or.cond.i.i22 = select i1 %tobool.i.i20, i1 true, i1 %tobool2.i.i21
  br i1 %or.cond.i.i22, label %if.then.i.i23, label %polybench_alloc_data.exit24

if.then.i.i23:                                    ; preds = %polybench_alloc_data.exit17
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %9 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %8) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit24:                      ; preds = %polybench_alloc_data.exit17
  %10 = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i18) #12
  %11 = sub i64 %10, %4
  %diff.check = icmp ult i64 %11, 16
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %polybench_alloc_data.exit24, %for.inc17.i
  %indvars.iv35.i = phi i64 [ 0, %polybench_alloc_data.exit24 ], [ %indvars.iv.next36.i, %for.inc17.i ]
  br i1 %diff.check, label %for.body3.i, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv35.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %12 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %13 = trunc <2 x i64> %12 to <2 x i32>
  %14 = add <2 x i32> %13, splat (i32 1)
  %15 = urem <2 x i32> %14, splat (i32 1200)
  %16 = uitofp nneg <2 x i32> %15 to <2 x double>
  %17 = fdiv <2 x double> %16, splat (double 1.200000e+03)
  %18 = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %indvars.iv35.i, i64 %index
  store <2 x double> %17, ptr %18, align 8, !tbaa !11
  %19 = add <2 x i32> %13, splat (i32 2)
  %20 = urem <2 x i32> %19, splat (i32 1000)
  %21 = uitofp nneg <2 x i32> %20 to <2 x double>
  %22 = fdiv <2 x double> %21, splat (double 1.000000e+03)
  %23 = getelementptr inbounds nuw [1000 x double], ptr %7, i64 %indvars.iv35.i, i64 %index
  store <2 x double> %22, ptr %23, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %24 = icmp eq i64 %index.next, 1000
  br i1 %24, label %for.inc17.i, label %vector.body, !llvm.loop !17

for.body3.i:                                      ; preds = %vector.memcheck, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %vector.memcheck ]
  %25 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv35.i
  %26 = trunc i64 %25 to i32
  %27 = add i32 %26, 1
  %rem.i = urem i32 %27, 1200
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.200000e+03
  %arrayidx6.i = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %indvars.iv35.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx6.i, align 8, !tbaa !11
  %28 = add i32 %26, 2
  %rem9.i = urem i32 %28, 1000
  %conv10.i = uitofp nneg i32 %rem9.i to double
  %div12.i = fdiv double %conv10.i, 1.000000e+03
  %arrayidx16.i = getelementptr inbounds nuw [1000 x double], ptr %7, i64 %indvars.iv35.i, i64 %indvars.iv.i
  store double %div12.i, ptr %arrayidx16.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1000
  br i1 %exitcond.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !21

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next36.i, 1200
  br i1 %exitcond38.not.i, label %vector.ph41, label %vector.memcheck, !llvm.loop !22

vector.ph41:                                      ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert42 = insertelement <2 x i64> poison, i64 %indvars.iv45.i, i64 0
  %broadcast.splat43 = shufflevector <2 x i64> %broadcast.splatinsert42, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph41
  %index45 = phi i64 [ 0, %vector.ph41 ], [ %index.next47, %vector.body44 ]
  %vec.ind46 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph41 ], [ %vec.ind.next48, %vector.body44 ]
  %29 = mul nuw nsw <2 x i64> %vec.ind46, %broadcast.splat43
  %30 = trunc <2 x i64> %29 to <2 x i32>
  %31 = add <2 x i32> %30, splat (i32 3)
  %32 = urem <2 x i32> %31, splat (i32 1200)
  %33 = uitofp nneg <2 x i32> %32 to <2 x double>
  %34 = fdiv <2 x double> %33, splat (double 1.000000e+03)
  %35 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv45.i, i64 %index45
  store <2 x double> %34, ptr %35, align 8, !tbaa !11
  %index.next47 = add nuw i64 %index45, 2
  %vec.ind.next48 = add <2 x i64> %vec.ind46, splat (i64 2)
  %36 = icmp eq i64 %index.next47, 1200
  br i1 %36, label %for.inc41.i, label %vector.body44, !llvm.loop !23

for.inc41.i:                                      ; preds = %vector.body44
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, 1200
  br i1 %exitcond48.not.i, label %init_array.exit, label %vector.ph41, !llvm.loop !24

init_array.exit:                                  ; preds = %for.inc41.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #12
  %call.i.i25 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #12
  %cmp.not.i.i = icmp eq i32 %call.i.i25, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i26

if.then.i.i26:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i25)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i26
  %37 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %37 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %38 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %38 to double
  %39 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #12
  store double %39, ptr @polybench_t_start, align 8, !tbaa !11
  %invariant.gep = getelementptr i8, ptr %0, i64 8
  br label %for.cond1.preheader.i27

for.cond1.preheader.i27:                          ; preds = %for.inc42.i, %polybench_timer_start.exit
  %indvars.iv42.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next43.i, %for.inc42.i ]
  %indvars.iv40.i = phi i64 [ 1, %polybench_timer_start.exit ], [ %indvars.iv.next41.i, %for.inc42.i ]
  %40 = mul nuw nsw i64 %indvars.iv42.i, 9600
  %scevgep = getelementptr i8, ptr %0, i64 %40
  %41 = mul nuw nsw i64 %indvars.iv42.i, 9608
  %gep = getelementptr i8, ptr %invariant.gep, i64 %41
  %42 = mul nuw nsw i64 %indvars.iv42.i, 8000
  %scevgep53 = getelementptr i8, ptr %3, i64 %42
  %43 = add nuw i64 %42, 8000
  %scevgep54 = getelementptr i8, ptr %3, i64 %43
  %scevgep55 = getelementptr i8, ptr %7, i64 %43
  %scevgep56 = getelementptr i8, ptr %7, i64 %42
  %min.iters.check80 = icmp samesign ult i64 %indvars.iv40.i, 2
  br i1 %min.iters.check80, label %for.body3.i28.preheader, label %vector.ph81

vector.ph81:                                      ; preds = %for.cond1.preheader.i27
  %n.vec83 = and i64 %indvars.iv40.i, 9223372036854775806
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph81
  %index85 = phi i64 [ 0, %vector.ph81 ], [ %index.next87, %vector.body84 ]
  %44 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv42.i, i64 %index85
  %wide.load86 = load <2 x double>, ptr %44, align 8, !tbaa !11
  %45 = fmul <2 x double> %wide.load86, splat (double 1.200000e+00)
  store <2 x double> %45, ptr %44, align 8, !tbaa !11
  %index.next87 = add nuw i64 %index85, 2
  %46 = icmp eq i64 %index.next87, %n.vec83
  br i1 %46, label %middle.block88, label %vector.body84, !llvm.loop !25

middle.block88:                                   ; preds = %vector.body84
  %cmp.n89 = icmp eq i64 %indvars.iv40.i, %n.vec83
  br i1 %cmp.n89, label %for.cond9.preheader.i.preheader, label %for.body3.i28.preheader

for.body3.i28.preheader:                          ; preds = %for.cond1.preheader.i27, %middle.block88
  %indvars.iv.i29.ph = phi i64 [ 0, %for.cond1.preheader.i27 ], [ %n.vec83, %middle.block88 ]
  br label %for.body3.i28

for.body3.i28:                                    ; preds = %for.body3.i28.preheader, %for.body3.i28
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30, %for.body3.i28 ], [ %indvars.iv.i29.ph, %for.body3.i28.preheader ]
  %arrayidx5.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv42.i, i64 %indvars.iv.i29
  %47 = load double, ptr %arrayidx5.i, align 8, !tbaa !11
  %mul.i = fmul double %47, 1.200000e+00
  store double %mul.i, ptr %arrayidx5.i, align 8, !tbaa !11
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, %indvars.iv40.i
  br i1 %exitcond.not.i31, label %for.cond9.preheader.i.preheader, label %for.body3.i28, !llvm.loop !26

for.cond9.preheader.i.preheader:                  ; preds = %for.body3.i28, %middle.block88
  %min.iters.check = icmp samesign ult i64 %indvars.iv40.i, 2
  %bound0 = icmp ult ptr %scevgep, %scevgep54
  %bound1 = icmp ult ptr %scevgep53, %gep
  %found.conflict = and i1 %bound0, %bound1
  %bound057 = icmp ult ptr %scevgep, %scevgep54
  %bound158 = icmp ult ptr %3, %gep
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx = or i1 %found.conflict, %found.conflict59
  %bound060 = icmp ult ptr %scevgep, %scevgep55
  %bound161 = icmp ult ptr %7, %gep
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx, %found.conflict62
  %bound064 = icmp ult ptr %scevgep, %scevgep55
  %bound165 = icmp ult ptr %scevgep56, %gep
  %found.conflict66 = and i1 %bound064, %bound165
  %conflict.rdx67 = or i1 %conflict.rdx63, %found.conflict66
  %n.vec = and i64 %indvars.iv40.i, 9223372036854775806
  %cmp.n = icmp eq i64 %indvars.iv40.i, %n.vec
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.cond9.preheader.i.preheader, %for.inc39.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %for.inc39.i ], [ 0, %for.cond9.preheader.i.preheader ]
  %arrayidx20.i = getelementptr inbounds nuw [1000 x double], ptr %7, i64 %indvars.iv42.i, i64 %indvars.iv36.i
  %arrayidx30.i = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %indvars.iv42.i, i64 %indvars.iv36.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx67
  br i1 %brmerge, label %for.body11.i.preheader, label %vector.ph69

vector.ph69:                                      ; preds = %for.cond9.preheader.i
  %48 = load double, ptr %arrayidx20.i, align 8, !tbaa !11, !alias.scope !27
  %broadcast.splatinsert74 = insertelement <2 x double> poison, double %48, i64 0
  %broadcast.splat75 = shufflevector <2 x double> %broadcast.splatinsert74, <2 x double> poison, <2 x i32> zeroinitializer
  %49 = load double, ptr %arrayidx30.i, align 8, !tbaa !11, !alias.scope !30
  %broadcast.splatinsert72 = insertelement <2 x double> poison, double %49, i64 0
  %broadcast.splat73 = shufflevector <2 x double> %broadcast.splatinsert72, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph69
  %index71 = phi i64 [ 0, %vector.ph69 ], [ %index.next76, %vector.body70 ]
  %50 = or disjoint i64 %index71, 1
  %51 = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %index71, i64 %indvars.iv36.i
  %52 = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %50, i64 %indvars.iv36.i
  %53 = load double, ptr %51, align 8, !tbaa !11, !alias.scope !32
  %54 = load double, ptr %52, align 8, !tbaa !11, !alias.scope !32
  %55 = insertelement <2 x double> poison, double %53, i64 0
  %56 = insertelement <2 x double> %55, double %54, i64 1
  %57 = fmul <2 x double> %56, splat (double 1.500000e+00)
  %58 = getelementptr inbounds nuw [1000 x double], ptr %7, i64 %index71, i64 %indvars.iv36.i
  %59 = getelementptr inbounds nuw [1000 x double], ptr %7, i64 %50, i64 %indvars.iv36.i
  %60 = load double, ptr %58, align 8, !tbaa !11, !alias.scope !34
  %61 = load double, ptr %59, align 8, !tbaa !11, !alias.scope !34
  %62 = insertelement <2 x double> poison, double %60, i64 0
  %63 = insertelement <2 x double> %62, double %61, i64 1
  %64 = fmul <2 x double> %63, splat (double 1.500000e+00)
  %65 = fmul <2 x double> %64, %broadcast.splat73
  %66 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %broadcast.splat75, <2 x double> %65)
  %67 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv42.i, i64 %index71
  %wide.load = load <2 x double>, ptr %67, align 8, !tbaa !11, !alias.scope !36, !noalias !38
  %68 = fadd <2 x double> %wide.load, %66
  store <2 x double> %68, ptr %67, align 8, !tbaa !11, !alias.scope !36, !noalias !38
  %index.next76 = add nuw i64 %index71, 2
  %69 = icmp eq i64 %index.next76, %n.vec
  br i1 %69, label %middle.block77, label %vector.body70, !llvm.loop !39

middle.block77:                                   ; preds = %vector.body70
  br i1 %cmp.n, label %for.inc39.i, label %for.body11.i.preheader

for.body11.i.preheader:                           ; preds = %for.cond9.preheader.i, %middle.block77
  %indvars.iv31.i.ph = phi i64 [ 0, %for.cond9.preheader.i ], [ %n.vec, %middle.block77 ]
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.preheader, %for.body11.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %for.body11.i ], [ %indvars.iv31.i.ph, %for.body11.i.preheader ]
  %arrayidx15.i = getelementptr inbounds nuw [1000 x double], ptr %3, i64 %indvars.iv31.i, i64 %indvars.iv36.i
  %70 = load double, ptr %arrayidx15.i, align 8, !tbaa !11
  %mul16.i = fmul double %70, 1.500000e+00
  %71 = load double, ptr %arrayidx20.i, align 8, !tbaa !11
  %arrayidx25.i = getelementptr inbounds nuw [1000 x double], ptr %7, i64 %indvars.iv31.i, i64 %indvars.iv36.i
  %72 = load double, ptr %arrayidx25.i, align 8, !tbaa !11
  %mul26.i = fmul double %72, 1.500000e+00
  %73 = load double, ptr %arrayidx30.i, align 8, !tbaa !11
  %mul31.i = fmul double %mul26.i, %73
  %74 = call double @llvm.fmuladd.f64(double %mul16.i, double %71, double %mul31.i)
  %arrayidx35.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv42.i, i64 %indvars.iv31.i
  %75 = load double, ptr %arrayidx35.i, align 8, !tbaa !11
  %add.i = fadd double %75, %74
  store double %add.i, ptr %arrayidx35.i, align 8, !tbaa !11
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %indvars.iv40.i
  br i1 %exitcond35.not.i, label %for.inc39.i, label %for.body11.i, !llvm.loop !40

for.inc39.i:                                      ; preds = %for.body11.i, %middle.block77
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next37.i, 1000
  br i1 %exitcond39.not.i, label %for.inc42.i, label %for.cond9.preheader.i, !llvm.loop !41

for.inc42.i:                                      ; preds = %for.inc39.i
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next43.i, 1200
  br i1 %exitcond47.not.i, label %kernel_syr2k.exit, label %for.cond1.preheader.i27, !llvm.loop !42

kernel_syr2k.exit:                                ; preds = %for.inc42.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i32) #12
  %call.i.i33 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i32, ptr noundef null) #12
  %cmp.not.i.i34 = icmp eq i32 %call.i.i33, 0
  br i1 %cmp.not.i.i34, label %polybench_timer_stop.exit, label %if.then.i.i35

if.then.i.i35:                                    ; preds = %kernel_syr2k.exit
  %call1.i.i36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i33)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_syr2k.exit, %if.then.i.i35
  %76 = load i64, ptr %Tp.i.i32, align 8, !tbaa !5
  %conv.i.i37 = sitofp i64 %76 to double
  %tv_usec.i.i38 = getelementptr inbounds nuw i8, ptr %Tp.i.i32, i64 8
  %77 = load i64, ptr %tv_usec.i.i38, align 8, !tbaa !10
  %conv2.i.i39 = sitofp i64 %77 to double
  %78 = call double @llvm.fmuladd.f64(double %conv2.i.i39, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i37)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i32) #12
  store double %78, ptr @polybench_t_end, align 8, !tbaa !11
  %79 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %78, %79
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %80 = load ptr, ptr %argv, align 8, !tbaa !43
  %strcmpload = load i8, ptr %80, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #12
  call void @free(ptr noundef nonnull %3) #12
  call void @free(ptr noundef nonnull %7) #12
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %C) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv13 = phi i64 [ 0, %entry ], [ %indvars.iv.next14, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv13, 1200
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
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %C, i64 %indvars.iv13, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1200
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !45

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next14, 1200
  br i1 %exitcond17.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !46

for.end12:                                        ; preds = %for.inc10
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #15
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #13
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
!21 = distinct !{!21, !18, !19}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18, !19, !20}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18, !19, !20}
!26 = distinct !{!26, !18, !19}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = !{!33}
!33 = distinct !{!33, !29}
!34 = !{!35}
!35 = distinct !{!35, !29}
!36 = !{!37}
!37 = distinct !{!37, !29}
!38 = !{!31, !33, !35, !28}
!39 = distinct !{!39, !18, !19, !20}
!40 = distinct !{!40, !18, !19}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 omnipotent char", !14, i64 0}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
