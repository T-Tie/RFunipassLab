; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gramschmidt.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #14
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #14
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #14
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #14
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #14
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #14
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
  tail call void @free(ptr noundef %ptr) #14
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #3 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i) #14
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i, i64 noundef 4096, i64 noundef %mul) #14
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #15
  call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i) #14
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
  %Tp.i.i36 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i21 = alloca ptr, align 8
  %ret.i.i14 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #14
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 9600000) #14
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %1 = ptrtoint ptr %0 to i64
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %3 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %2) #15
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i14) #14
  store ptr null, ptr %ret.i.i14, align 8, !tbaa !13
  %call.i.i15 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i14, i64 noundef 4096, i64 noundef 11520000) #14
  %4 = load ptr, ptr %ret.i.i14, align 8, !tbaa !13
  %tobool.i.i16 = icmp eq ptr %4, null
  %tobool2.i.i17 = icmp ne i32 %call.i.i15, 0
  %or.cond.i.i18 = select i1 %tobool.i.i16, i1 true, i1 %tobool2.i.i17
  br i1 %or.cond.i.i18, label %if.then.i.i19, label %polybench_alloc_data.exit20

if.then.i.i19:                                    ; preds = %polybench_alloc_data.exit
  %5 = load ptr, ptr @stderr, align 8, !tbaa !15
  %6 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %5) #15
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit20:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i14) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i21) #14
  store ptr null, ptr %ret.i.i21, align 8, !tbaa !13
  %call.i.i22 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i21, i64 noundef 4096, i64 noundef 9600000) #14
  %7 = load ptr, ptr %ret.i.i21, align 8, !tbaa !13
  %tobool.i.i23 = icmp eq ptr %7, null
  %tobool2.i.i24 = icmp ne i32 %call.i.i22, 0
  %or.cond.i.i25 = select i1 %tobool.i.i23, i1 true, i1 %tobool2.i.i24
  br i1 %or.cond.i.i25, label %if.then.i.i26, label %polybench_alloc_data.exit27

if.then.i.i26:                                    ; preds = %polybench_alloc_data.exit20
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %9 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %8) #15
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit27:                      ; preds = %polybench_alloc_data.exit20
  %10 = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i21) #14
  %11 = sub i64 %10, %1
  %diff.check = icmp ult i64 %11, 16
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %polybench_alloc_data.exit27, %for.inc12.i
  %indvars.iv25.i = phi i64 [ 0, %polybench_alloc_data.exit27 ], [ %indvars.iv.next26.i, %for.inc12.i ]
  br i1 %diff.check, label %for.body3.i, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv25.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %12 = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %13 = trunc nuw nsw <2 x i64> %12 to <2 x i32>
  %14 = urem <2 x i32> %13, splat (i32 1000)
  %15 = uitofp nneg <2 x i32> %14 to <2 x double>
  %16 = fdiv <2 x double> %15, splat (double 1.000000e+03)
  %17 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> splat (double 1.000000e+02), <2 x double> splat (double 1.000000e+01))
  %18 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv25.i, i64 %index
  store <2 x double> %17, ptr %18, align 8, !tbaa !11
  %19 = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %indvars.iv25.i, i64 %index
  store <2 x double> zeroinitializer, ptr %19, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %20 = icmp eq i64 %index.next, 1200
  br i1 %20, label %for.inc12.i, label %vector.body, !llvm.loop !17

for.body3.i:                                      ; preds = %vector.memcheck, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %vector.memcheck ]
  %21 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv25.i
  %22 = trunc nuw nsw i64 %21 to i32
  %rem.i = urem i32 %22, 1000
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.000000e+03
  %23 = call double @llvm.fmuladd.f64(double %div.i, double 1.000000e+02, double 1.000000e+01)
  %arrayidx7.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv25.i, i64 %indvars.iv.i
  store double %23, ptr %arrayidx7.i, align 8, !tbaa !11
  %arrayidx11.i = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %indvars.iv25.i, i64 %indvars.iv.i
  store double 0.000000e+00, ptr %arrayidx11.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1200
  br i1 %exitcond.not.i, label %for.inc12.i, label %for.body3.i, !llvm.loop !21

for.inc12.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next26.i, 1000
  br i1 %exitcond28.not.i, label %init_array.exit, label %vector.memcheck, !llvm.loop !22

init_array.exit:                                  ; preds = %for.inc12.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11520000) %4, i8 0, i64 11520000, i1 false), !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #14
  %call.i.i28 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #14
  %cmp.not.i.i = icmp eq i32 %call.i.i28, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i29

if.then.i.i29:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i28)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i29
  %24 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %24 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %25 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %25 to double
  %26 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #14
  store double %26, ptr @polybench_t_start, align 8, !tbaa !11
  %scevgep46 = getelementptr i8, ptr %0, i64 9600000
  %scevgep64 = getelementptr i8, ptr %7, i64 9600000
  %scevgep65 = getelementptr i8, ptr %4, i64 11520000
  %invariant.gep = getelementptr i8, ptr %0, i64 8
  %invariant.gep85 = getelementptr i8, ptr %7, i64 9590408
  %invariant.gep87 = getelementptr i8, ptr %4, i64 8
  %invariant.gep89 = getelementptr i8, ptr %4, i64 9600
  %bound066 = icmp ult ptr %7, %scevgep46
  %bound167 = icmp ult ptr %0, %scevgep64
  %found.conflict68 = and i1 %bound066, %bound167
  %bound069 = icmp ult ptr %7, %scevgep65
  %bound170 = icmp ult ptr %4, %scevgep64
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx72 = or i1 %found.conflict68, %found.conflict71
  br label %for.cond1.preheader.i30

for.cond.loopexit.i:                              ; preds = %for.inc79.i, %for.end31.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1
  %exitcond85.not.i = icmp eq i64 %indvars.iv.next83.i, 1200
  br i1 %exitcond85.not.i, label %kernel_gramschmidt.exit, label %for.cond1.preheader.i30, !llvm.loop !23

for.cond1.preheader.i30:                          ; preds = %for.cond.loopexit.i, %polybench_timer_start.exit
  %indvars.iv82.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next83.i, %for.cond.loopexit.i ]
  %indvars.iv76.i = phi i64 [ 1, %polybench_timer_start.exit ], [ %indvars.iv.next77.i, %for.cond.loopexit.i ]
  %27 = shl nuw nsw i64 %indvars.iv82.i, 3
  %gep = getelementptr i8, ptr %invariant.gep, i64 %27
  %scevgep47 = getelementptr i8, ptr %7, i64 %27
  %gep86 = getelementptr i8, ptr %invariant.gep85, i64 %27
  %28 = mul nuw nsw i64 %indvars.iv82.i, 9608
  %gep88 = getelementptr i8, ptr %invariant.gep87, i64 %28
  %29 = mul nuw nsw i64 %indvars.iv82.i, 9600
  %gep90 = getelementptr i8, ptr %invariant.gep89, i64 %29
  br label %for.body3.i31

for.body3.i31:                                    ; preds = %for.body3.i31, %for.cond1.preheader.i30
  %indvars.iv.i32 = phi i64 [ 0, %for.cond1.preheader.i30 ], [ %indvars.iv.next.i33, %for.body3.i31 ]
  %nrm.056.i = phi double [ 0.000000e+00, %for.cond1.preheader.i30 ], [ %31, %for.body3.i31 ]
  %arrayidx5.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv.i32, i64 %indvars.iv82.i
  %30 = load double, ptr %arrayidx5.i, align 8, !tbaa !11
  %31 = call double @llvm.fmuladd.f64(double %30, double %30, double %nrm.056.i)
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, 1000
  br i1 %exitcond.not.i34, label %for.end.i, label %for.body3.i31, !llvm.loop !24

for.end.i:                                        ; preds = %for.body3.i31
  %call.i = call double @sqrt(double noundef %31) #14, !tbaa !25
  %arrayidx13.i = getelementptr inbounds nuw [1200 x double], ptr %4, i64 %indvars.iv82.i, i64 %indvars.iv82.i
  store double %call.i, ptr %arrayidx13.i, align 8, !tbaa !11
  br i1 %conflict.rdx72, label %for.body16.i, label %vector.body75.preheader

vector.body75.preheader:                          ; preds = %for.end.i
  %32 = load double, ptr %arrayidx13.i, align 8, !tbaa !11, !alias.scope !27
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %32, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75.preheader, %vector.body75
  %index76 = phi i64 [ %index.next79, %vector.body75 ], [ 0, %vector.body75.preheader ]
  %33 = or disjoint i64 %index76, 1
  %34 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %index76, i64 %indvars.iv82.i
  %35 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %33, i64 %indvars.iv82.i
  %36 = load double, ptr %34, align 8, !tbaa !11, !alias.scope !30
  %37 = load double, ptr %35, align 8, !tbaa !11, !alias.scope !30
  %38 = insertelement <2 x double> poison, double %36, i64 0
  %39 = insertelement <2 x double> %38, double %37, i64 1
  %40 = fdiv <2 x double> %39, %broadcast.splat78
  %41 = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %index76, i64 %indvars.iv82.i
  %42 = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %33, i64 %indvars.iv82.i
  %43 = extractelement <2 x double> %40, i64 0
  store double %43, ptr %41, align 8, !tbaa !11, !alias.scope !32, !noalias !34
  %44 = extractelement <2 x double> %40, i64 1
  store double %44, ptr %42, align 8, !tbaa !11, !alias.scope !32, !noalias !34
  %index.next79 = add nuw i64 %index76, 2
  %45 = icmp eq i64 %index.next79, 1000
  br i1 %45, label %for.end31.i, label %vector.body75, !llvm.loop !35

for.body16.i:                                     ; preds = %for.end.i, %for.body16.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.body16.i ], [ 0, %for.end.i ]
  %arrayidx20.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv64.i, i64 %indvars.iv82.i
  %46 = load double, ptr %arrayidx20.i, align 8, !tbaa !11
  %47 = load double, ptr %arrayidx13.i, align 8, !tbaa !11
  %div.i35 = fdiv double %46, %47
  %arrayidx28.i = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %indvars.iv64.i, i64 %indvars.iv82.i
  store double %div.i35, ptr %arrayidx28.i, align 8, !tbaa !11
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 1000
  br i1 %exitcond67.not.i, label %for.end31.i, label %for.body16.i, !llvm.loop !36

for.end31.i:                                      ; preds = %vector.body75, %for.body16.i
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1
  %cmp3360.i = icmp samesign ult i64 %indvars.iv82.i, 1199
  br i1 %cmp3360.i, label %for.body34.i.preheader, label %for.cond.loopexit.i

for.body34.i.preheader:                           ; preds = %for.end31.i
  %bound0 = icmp ult ptr %gep, %gep86
  %bound1 = icmp ult ptr %scevgep47, %scevgep46
  %found.conflict = and i1 %bound0, %bound1
  %bound051 = icmp ult ptr %gep, %gep90
  %bound152 = icmp ult ptr %gep88, %scevgep46
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx = or i1 %found.conflict, %found.conflict53
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.body34.i.preheader, %for.inc79.i
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i, %for.inc79.i ], [ %indvars.iv76.i, %for.body34.i.preheader ]
  %arrayidx38.i = getelementptr inbounds nuw [1200 x double], ptr %4, i64 %indvars.iv82.i, i64 %indvars.iv78.i
  store double 0.000000e+00, ptr %arrayidx38.i, align 8, !tbaa !11
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i, %for.body34.i
  %indvars.iv68.i = phi i64 [ 0, %for.body34.i ], [ %indvars.iv.next69.i, %for.body41.i ]
  %48 = phi double [ 0.000000e+00, %for.body34.i ], [ %51, %for.body41.i ]
  %arrayidx45.i = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %indvars.iv68.i, i64 %indvars.iv82.i
  %49 = load double, ptr %arrayidx45.i, align 8, !tbaa !11
  %arrayidx49.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv68.i, i64 %indvars.iv78.i
  %50 = load double, ptr %arrayidx49.i, align 8, !tbaa !11
  %51 = call double @llvm.fmuladd.f64(double %49, double %50, double %48)
  store double %51, ptr %arrayidx38.i, align 8, !tbaa !11
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next69.i, 1000
  br i1 %exitcond71.not.i, label %vector.memcheck45, label %for.body41.i, !llvm.loop !37

vector.memcheck45:                                ; preds = %for.body41.i
  br i1 %conflict.rdx, label %for.body59.i, label %vector.body56.preheader

vector.body56.preheader:                          ; preds = %vector.memcheck45
  %52 = load double, ptr %arrayidx38.i, align 8, !tbaa !11, !alias.scope !38
  %broadcast.splatinsert58 = insertelement <2 x double> poison, double %52, i64 0
  %broadcast.splat59 = shufflevector <2 x double> %broadcast.splatinsert58, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56.preheader, %vector.body56
  %index57 = phi i64 [ %index.next60, %vector.body56 ], [ 0, %vector.body56.preheader ]
  %53 = or disjoint i64 %index57, 1
  %54 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %index57, i64 %indvars.iv78.i
  %55 = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %53, i64 %indvars.iv78.i
  %56 = load double, ptr %54, align 8, !tbaa !11, !alias.scope !41, !noalias !43
  %57 = load double, ptr %55, align 8, !tbaa !11, !alias.scope !41, !noalias !43
  %58 = insertelement <2 x double> poison, double %56, i64 0
  %59 = insertelement <2 x double> %58, double %57, i64 1
  %60 = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %index57, i64 %indvars.iv82.i
  %61 = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %53, i64 %indvars.iv82.i
  %62 = load double, ptr %60, align 8, !tbaa !11, !alias.scope !45
  %63 = load double, ptr %61, align 8, !tbaa !11, !alias.scope !45
  %64 = insertelement <2 x double> poison, double %62, i64 0
  %65 = insertelement <2 x double> %64, double %63, i64 1
  %66 = fneg <2 x double> %65
  %67 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %66, <2 x double> %broadcast.splat59, <2 x double> %59)
  %68 = extractelement <2 x double> %67, i64 0
  store double %68, ptr %54, align 8, !tbaa !11, !alias.scope !41, !noalias !43
  %69 = extractelement <2 x double> %67, i64 1
  store double %69, ptr %55, align 8, !tbaa !11, !alias.scope !41, !noalias !43
  %index.next60 = add nuw i64 %index57, 2
  %70 = icmp eq i64 %index.next60, 1000
  br i1 %70, label %for.inc79.i, label %vector.body56, !llvm.loop !46

for.body59.i:                                     ; preds = %vector.memcheck45, %for.body59.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %for.body59.i ], [ 0, %vector.memcheck45 ]
  %arrayidx63.i = getelementptr inbounds nuw [1200 x double], ptr %0, i64 %indvars.iv72.i, i64 %indvars.iv78.i
  %71 = load double, ptr %arrayidx63.i, align 8, !tbaa !11
  %arrayidx67.i = getelementptr inbounds nuw [1200 x double], ptr %7, i64 %indvars.iv72.i, i64 %indvars.iv82.i
  %72 = load double, ptr %arrayidx67.i, align 8, !tbaa !11
  %73 = load double, ptr %arrayidx38.i, align 8, !tbaa !11
  %neg.i = fneg double %72
  %74 = call double @llvm.fmuladd.f64(double %neg.i, double %73, double %71)
  store double %74, ptr %arrayidx63.i, align 8, !tbaa !11
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, 1000
  br i1 %exitcond75.not.i, label %for.inc79.i, label %for.body59.i, !llvm.loop !47

for.inc79.i:                                      ; preds = %vector.body56, %for.body59.i
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next79.i, 1200
  br i1 %exitcond81.not.i, label %for.cond.loopexit.i, label %for.body34.i, !llvm.loop !48

kernel_gramschmidt.exit:                          ; preds = %for.cond.loopexit.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i36) #14
  %call.i.i37 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i36, ptr noundef null) #14
  %cmp.not.i.i38 = icmp eq i32 %call.i.i37, 0
  br i1 %cmp.not.i.i38, label %polybench_timer_stop.exit, label %if.then.i.i39

if.then.i.i39:                                    ; preds = %kernel_gramschmidt.exit
  %call1.i.i40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i37)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_gramschmidt.exit, %if.then.i.i39
  %75 = load i64, ptr %Tp.i.i36, align 8, !tbaa !5
  %conv.i.i41 = sitofp i64 %75 to double
  %tv_usec.i.i42 = getelementptr inbounds nuw i8, ptr %Tp.i.i36, i64 8
  %76 = load i64, ptr %tv_usec.i.i42, align 8, !tbaa !10
  %conv2.i.i43 = sitofp i64 %76 to double
  %77 = call double @llvm.fmuladd.f64(double %conv2.i.i43, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i41)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i36) #14
  store double %77, ptr @polybench_t_end, align 8, !tbaa !11
  %78 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %77, %78
  %call.i44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %79 = load ptr, ptr %argv, align 8, !tbaa !49
  %strcmpload = load i8, ptr %79, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %4, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #14
  call void @free(ptr noundef nonnull %4) #14
  call void @free(ptr noundef nonnull %7) #14
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %R, ptr noundef nonnull readonly captures(none) %Q) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #15
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #17
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv7 = phi i64 [ 0, %entry ], [ %indvars.iv.next8, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv7, 1200
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
  %fputc19 = tail call i32 @fputc(i32 10, ptr %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %R, i64 %indvars.iv7, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1200
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !51

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %exitcond11.not = icmp eq i64 %indvars.iv.next8, 1200
  br i1 %exitcond11.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !52

for.end12:                                        ; preds = %for.inc10
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #17
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.7) #17
  br label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.end12, %for.inc36
  %indvars.iv17 = phi i64 [ 0, %for.end12 ], [ %indvars.iv.next18, %for.inc36 ]
  %11 = mul nuw nsw i64 %indvars.iv17, 1200
  br label %for.body20

for.body20:                                       ; preds = %for.cond18.preheader, %if.end27
  %indvars.iv12 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next13, %if.end27 ]
  %12 = add nuw nsw i64 %indvars.iv12, %11
  %13 = trunc nuw nsw i64 %12 to i32
  %rem23 = urem i32 %13, 20
  %cmp24 = icmp eq i32 %rem23, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.body20
  %14 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %14)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.body20
  %15 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx31 = getelementptr inbounds nuw [1200 x double], ptr %Q, i64 %indvars.iv17, i64 %indvars.iv12
  %16 = load double, ptr %arrayidx31, align 8, !tbaa !11
  %call32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.5.10, double noundef %16) #17
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond16.not = icmp eq i64 %indvars.iv.next13, 1200
  br i1 %exitcond16.not, label %for.inc36, label %for.body20, !llvm.loop !53

for.inc36:                                        ; preds = %if.end27
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next18, 1000
  br i1 %exitcond21.not, label %for.end38, label %for.cond18.preheader, !llvm.loop !54

for.end38:                                        ; preds = %for.inc36
  %17 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #17
  %18 = load ptr, ptr @stderr, align 8, !tbaa !15
  %19 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %18) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #13

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { cold nounwind }

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
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !8, i64 0}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = !{!33}
!33 = distinct !{!33, !29}
!34 = !{!31, !28}
!35 = distinct !{!35, !18, !19, !20}
!36 = distinct !{!36, !18, !19}
!37 = distinct !{!37, !18}
!38 = !{!39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!42}
!42 = distinct !{!42, !40}
!43 = !{!44, !39}
!44 = distinct !{!44, !40}
!45 = !{!44}
!46 = distinct !{!46, !18, !19, !20}
!47 = distinct !{!47, !18, !19}
!48 = distinct !{!48, !18}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 omnipotent char", !14, i64 0}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
