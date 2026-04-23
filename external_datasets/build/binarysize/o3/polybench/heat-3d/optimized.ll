; ModuleID = '<stdin>'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"A\00", align 1
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
  %Tp.i.i21 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i7 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #12
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 13824000) #12
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i7) #12
  store ptr null, ptr %ret.i.i7, align 8, !tbaa !13
  %call.i.i8 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i7, i64 noundef 4096, i64 noundef 13824000) #12
  %4 = load ptr, ptr %ret.i.i7, align 8, !tbaa !13
  %tobool.i.i9 = icmp eq ptr %4, null
  %tobool2.i.i10 = icmp ne i32 %call.i.i8, 0
  %or.cond.i.i11 = select i1 %tobool.i.i9, i1 true, i1 %tobool2.i.i10
  br i1 %or.cond.i.i11, label %if.then.i.i12, label %polybench_alloc_data.exit13

if.then.i.i12:                                    ; preds = %polybench_alloc_data.exit
  %5 = load ptr, ptr @stderr, align 8, !tbaa !15
  %6 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %5) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit13:                      ; preds = %polybench_alloc_data.exit
  %7 = ptrtoint ptr %4 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i7) #12
  %8 = sub i64 %1, %7
  %diff.check = icmp ult i64 %8, 16
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc22.i, %polybench_alloc_data.exit13
  %indvars.iv27.i = phi i64 [ 0, %polybench_alloc_data.exit13 ], [ %indvars.iv.next28.i, %for.inc22.i ]
  %9 = add nuw nsw i64 %indvars.iv27.i, 120
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc19.i, %for.cond1.preheader.i
  %indvars.iv22.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next23.i, %for.inc19.i ]
  %10 = add nuw nsw i64 %9, %indvars.iv22.i
  br i1 %diff.check, label %for.body6.i, label %vector.ph

vector.ph:                                        ; preds = %for.cond4.preheader.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %10, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %11 = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %12 = trunc nuw nsw <2 x i64> %11 to <2 x i32>
  %13 = sitofp <2 x i32> %12 to <2 x double>
  %14 = fmul <2 x double> %13, splat (double 1.000000e+01)
  %15 = fdiv <2 x double> %14, splat (double 1.200000e+02)
  %16 = getelementptr inbounds nuw [120 x [120 x double]], ptr %4, i64 %indvars.iv27.i, i64 %indvars.iv22.i, i64 %index
  store <2 x double> %15, ptr %16, align 8, !tbaa !11
  %17 = getelementptr inbounds nuw [120 x [120 x double]], ptr %0, i64 %indvars.iv27.i, i64 %indvars.iv22.i, i64 %index
  store <2 x double> %15, ptr %17, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %18 = icmp eq i64 %index.next, 120
  br i1 %18, label %for.inc19.i, label %vector.body, !llvm.loop !17

for.body6.i:                                      ; preds = %for.cond4.preheader.i, %for.body6.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body6.i ], [ 0, %for.cond4.preheader.i ]
  %19 = sub nuw nsw i64 %10, %indvars.iv.i
  %20 = trunc nuw nsw i64 %19 to i32
  %conv.i = sitofp i32 %20 to double
  %mul.i = fmul double %conv.i, 1.000000e+01
  %div.i = fdiv double %mul.i, 1.200000e+02
  %arrayidx12.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %4, i64 %indvars.iv27.i, i64 %indvars.iv22.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx12.i, align 8, !tbaa !11
  %arrayidx18.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %0, i64 %indvars.iv27.i, i64 %indvars.iv22.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx18.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 120
  br i1 %exitcond.not.i, label %for.inc19.i, label %for.body6.i, !llvm.loop !21

for.inc19.i:                                      ; preds = %vector.body, %for.body6.i
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next23.i, 120
  br i1 %exitcond26.not.i, label %for.inc22.i, label %for.cond4.preheader.i, !llvm.loop !22

for.inc22.i:                                      ; preds = %for.inc19.i
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, 120
  br i1 %exitcond31.not.i, label %init_array.exit, label %for.cond1.preheader.i, !llvm.loop !23

init_array.exit:                                  ; preds = %for.inc22.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #12
  %call.i.i14 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #12
  %cmp.not.i.i = icmp eq i32 %call.i.i14, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i15

if.then.i.i15:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i14)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i15
  %21 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %21 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %22 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %22 to double
  %23 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #12
  store double %23, ptr @polybench_t_start, align 8, !tbaa !11
  %invariant.gep = getelementptr i8, ptr %4, i64 116168
  %invariant.gep74 = getelementptr i8, ptr %4, i64 229432
  %invariant.gep76 = getelementptr i8, ptr %0, i64 968
  %invariant.gep78 = getelementptr i8, ptr %0, i64 344632
  %invariant.gep80 = getelementptr i8, ptr %0, i64 116168
  %invariant.gep82 = getelementptr i8, ptr %0, i64 229432
  %invariant.gep84 = getelementptr i8, ptr %4, i64 968
  %invariant.gep86 = getelementptr i8, ptr %4, i64 344632
  br label %for.cond1.preheader.i16

for.cond1.preheader.i16:                          ; preds = %for.inc192.i, %polybench_timer_start.exit
  %t.0108.i = phi i32 [ 1, %polybench_timer_start.exit ], [ %inc193.i, %for.inc192.i ]
  br label %for.cond4.preheader.i17

for.cond4.preheader.i17:                          ; preds = %for.inc90.i, %for.cond1.preheader.i16
  %indvar47 = phi i64 [ %indvar.next48, %for.inc90.i ], [ 0, %for.cond1.preheader.i16 ]
  %indvars.iv116.i = phi i64 [ %indvars.iv.next117.i, %for.inc90.i ], [ 1, %for.cond1.preheader.i16 ]
  %24 = mul nuw nsw i64 %indvar47, 115200
  %gep = getelementptr i8, ptr %invariant.gep, i64 %24
  %gep75 = getelementptr i8, ptr %invariant.gep74, i64 %24
  %gep77 = getelementptr i8, ptr %invariant.gep76, i64 %24
  %gep79 = getelementptr i8, ptr %invariant.gep78, i64 %24
  %25 = getelementptr inbounds nuw [120 x [120 x double]], ptr %0, i64 %indvars.iv116.i
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %25, i64 115200
  %arrayidx24.i = getelementptr i8, ptr %25, i64 -115200
  %bound053 = icmp ult ptr %gep, %gep79
  %bound154 = icmp ult ptr %gep77, %gep75
  %found.conflict55 = and i1 %bound053, %bound154
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc87.i, %for.cond4.preheader.i17
  %indvars.iv111.i = phi i64 [ 1, %for.cond4.preheader.i17 ], [ %indvars.iv.next112.i, %for.inc87.i ]
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1
  %26 = add nsw i64 %indvars.iv111.i, -1
  br i1 %found.conflict55, label %for.body11.i, label %vector.body58

vector.body58:                                    ; preds = %for.cond8.preheader.i, %vector.body58
  %index59 = phi i64 [ %index.next68, %vector.body58 ], [ 0, %for.cond8.preheader.i ]
  %offset.idx60 = or disjoint i64 %index59, 1
  %27 = getelementptr inbounds nuw [120 x [120 x double]], ptr %arrayidx.i, i64 0, i64 %indvars.iv111.i, i64 %offset.idx60
  %wide.load61 = load <2 x double>, ptr %27, align 8, !tbaa !11, !alias.scope !24
  %28 = getelementptr inbounds nuw [120 x [120 x double]], ptr %0, i64 %indvars.iv116.i, i64 %indvars.iv111.i, i64 %offset.idx60
  %wide.load62 = load <2 x double>, ptr %28, align 8, !tbaa !11, !alias.scope !24
  %29 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load62, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load61)
  %30 = getelementptr inbounds nuw [120 x [120 x double]], ptr %arrayidx24.i, i64 0, i64 %indvars.iv111.i, i64 %offset.idx60
  %wide.load63 = load <2 x double>, ptr %30, align 8, !tbaa !11, !alias.scope !24
  %31 = fadd <2 x double> %29, %wide.load63
  %32 = getelementptr inbounds nuw [120 x [120 x double]], ptr %0, i64 %indvars.iv116.i, i64 %indvars.iv.next112.i, i64 %offset.idx60
  %wide.load64 = load <2 x double>, ptr %32, align 8, !tbaa !11, !alias.scope !24
  %33 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load62, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load64)
  %34 = getelementptr inbounds [120 x [120 x double]], ptr %0, i64 %indvars.iv116.i, i64 %26, i64 %offset.idx60
  %wide.load65 = load <2 x double>, ptr %34, align 8, !tbaa !11, !alias.scope !24
  %35 = fadd <2 x double> %33, %wide.load65
  %36 = fmul <2 x double> %35, splat (double 1.250000e-01)
  %37 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> splat (double 1.250000e-01), <2 x double> %36)
  %38 = add nuw nsw i64 %index59, 2
  %39 = getelementptr inbounds nuw [120 x [120 x double]], ptr %0, i64 %indvars.iv116.i, i64 %indvars.iv111.i, i64 %38
  %wide.load66 = load <2 x double>, ptr %39, align 8, !tbaa !11, !alias.scope !24
  %40 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load62, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load66)
  %41 = getelementptr inbounds [120 x [120 x double]], ptr %0, i64 %indvars.iv116.i, i64 %indvars.iv111.i, i64 %index59
  %wide.load67 = load <2 x double>, ptr %41, align 8, !tbaa !11, !alias.scope !24
  %42 = fadd <2 x double> %40, %wide.load67
  %43 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %42, <2 x double> splat (double 1.250000e-01), <2 x double> %37)
  %44 = fadd <2 x double> %wide.load62, %43
  %45 = getelementptr inbounds nuw [120 x [120 x double]], ptr %4, i64 %indvars.iv116.i, i64 %indvars.iv111.i, i64 %offset.idx60
  store <2 x double> %44, ptr %45, align 8, !tbaa !11, !alias.scope !27, !noalias !24
  %index.next68 = add nuw i64 %index59, 2
  %46 = icmp eq i64 %index.next68, 118
  br i1 %46, label %for.inc87.i, label %vector.body58, !llvm.loop !29

for.body11.i:                                     ; preds = %for.cond8.preheader.i, %for.body11.i
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i19, %for.body11.i ], [ 1, %for.cond8.preheader.i ]
  %arrayidx15.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %arrayidx.i, i64 0, i64 %indvars.iv111.i, i64 %indvars.iv.i18
  %47 = load double, ptr %arrayidx15.i, align 8, !tbaa !11
  %arrayidx21.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %0, i64 %indvars.iv116.i, i64 %indvars.iv111.i, i64 %indvars.iv.i18
  %48 = load double, ptr %arrayidx21.i, align 8, !tbaa !11
  %49 = call double @llvm.fmuladd.f64(double %48, double -2.000000e+00, double %47)
  %arrayidx28.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %arrayidx24.i, i64 0, i64 %indvars.iv111.i, i64 %indvars.iv.i18
  %50 = load double, ptr %arrayidx28.i, align 8, !tbaa !11
  %add29.i = fadd double %49, %50
  %arrayidx36.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %0, i64 %indvars.iv116.i, i64 %indvars.iv.next112.i, i64 %indvars.iv.i18
  %51 = load double, ptr %arrayidx36.i, align 8, !tbaa !11
  %52 = call double @llvm.fmuladd.f64(double %48, double -2.000000e+00, double %51)
  %arrayidx50.i = getelementptr inbounds [120 x [120 x double]], ptr %0, i64 %indvars.iv116.i, i64 %26, i64 %indvars.iv.i18
  %53 = load double, ptr %arrayidx50.i, align 8, !tbaa !11
  %add51.i = fadd double %52, %53
  %mul52.i = fmul double %add51.i, 1.250000e-01
  %54 = call double @llvm.fmuladd.f64(double %add29.i, double 1.250000e-01, double %mul52.i)
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1
  %arrayidx59.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %0, i64 %indvars.iv116.i, i64 %indvars.iv111.i, i64 %indvars.iv.next.i19
  %55 = load double, ptr %arrayidx59.i, align 8, !tbaa !11
  %56 = call double @llvm.fmuladd.f64(double %48, double -2.000000e+00, double %55)
  %57 = add nsw i64 %indvars.iv.i18, -1
  %arrayidx72.i = getelementptr inbounds [120 x [120 x double]], ptr %0, i64 %indvars.iv116.i, i64 %indvars.iv111.i, i64 %57
  %58 = load double, ptr %arrayidx72.i, align 8, !tbaa !11
  %add73.i = fadd double %56, %58
  %59 = call double @llvm.fmuladd.f64(double %add73.i, double 1.250000e-01, double %54)
  %add80.i = fadd double %48, %59
  %arrayidx86.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %4, i64 %indvars.iv116.i, i64 %indvars.iv111.i, i64 %indvars.iv.i18
  store double %add80.i, ptr %arrayidx86.i, align 8, !tbaa !11
  %exitcond.not.i20 = icmp eq i64 %indvars.iv.next.i19, 119
  br i1 %exitcond.not.i20, label %for.inc87.i, label %for.body11.i, !llvm.loop !30

for.inc87.i:                                      ; preds = %vector.body58, %for.body11.i
  %exitcond115.not.i = icmp eq i64 %indvars.iv.next112.i, 119
  br i1 %exitcond115.not.i, label %for.inc90.i, label %for.cond8.preheader.i, !llvm.loop !31

for.inc90.i:                                      ; preds = %for.inc87.i
  %indvars.iv.next117.i = add nuw nsw i64 %indvars.iv116.i, 1
  %exitcond119.not.i = icmp eq i64 %indvars.iv.next117.i, 119
  %indvar.next48 = add i64 %indvar47, 1
  br i1 %exitcond119.not.i, label %for.cond97.preheader.i, label %for.cond4.preheader.i17, !llvm.loop !32

for.cond97.preheader.i:                           ; preds = %for.inc90.i, %for.inc189.i
  %indvar = phi i64 [ %indvar.next, %for.inc189.i ], [ 0, %for.inc90.i ]
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i, %for.inc189.i ], [ 1, %for.inc90.i ]
  %60 = mul nuw nsw i64 %indvar, 115200
  %gep81 = getelementptr i8, ptr %invariant.gep80, i64 %60
  %gep83 = getelementptr i8, ptr %invariant.gep82, i64 %60
  %gep85 = getelementptr i8, ptr %invariant.gep84, i64 %60
  %gep87 = getelementptr i8, ptr %invariant.gep86, i64 %60
  %61 = getelementptr inbounds nuw [120 x [120 x double]], ptr %4, i64 %indvars.iv130.i
  %arrayidx107.i = getelementptr inbounds nuw i8, ptr %61, i64 115200
  %arrayidx120.i = getelementptr i8, ptr %61, i64 -115200
  %bound0 = icmp ult ptr %gep81, %gep87
  %bound1 = icmp ult ptr %gep85, %gep83
  %found.conflict = and i1 %bound0, %bound1
  br label %for.cond101.preheader.i

for.cond101.preheader.i:                          ; preds = %for.inc186.i, %for.cond97.preheader.i
  %indvars.iv125.i = phi i64 [ 1, %for.cond97.preheader.i ], [ %indvars.iv.next126.i, %for.inc186.i ]
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1
  %62 = add nsw i64 %indvars.iv125.i, -1
  br i1 %found.conflict, label %for.body104.i, label %vector.body35

vector.body35:                                    ; preds = %for.cond101.preheader.i, %vector.body35
  %index36 = phi i64 [ %index.next43, %vector.body35 ], [ 0, %for.cond101.preheader.i ]
  %offset.idx = or disjoint i64 %index36, 1
  %63 = getelementptr inbounds nuw [120 x [120 x double]], ptr %arrayidx107.i, i64 0, i64 %indvars.iv125.i, i64 %offset.idx
  %wide.load = load <2 x double>, ptr %63, align 8, !tbaa !11, !alias.scope !33
  %64 = getelementptr inbounds nuw [120 x [120 x double]], ptr %4, i64 %indvars.iv130.i, i64 %indvars.iv125.i, i64 %offset.idx
  %wide.load37 = load <2 x double>, ptr %64, align 8, !tbaa !11, !alias.scope !33
  %65 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load37, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load)
  %66 = getelementptr inbounds nuw [120 x [120 x double]], ptr %arrayidx120.i, i64 0, i64 %indvars.iv125.i, i64 %offset.idx
  %wide.load38 = load <2 x double>, ptr %66, align 8, !tbaa !11, !alias.scope !33
  %67 = fadd <2 x double> %65, %wide.load38
  %68 = getelementptr inbounds nuw [120 x [120 x double]], ptr %4, i64 %indvars.iv130.i, i64 %indvars.iv.next126.i, i64 %offset.idx
  %wide.load39 = load <2 x double>, ptr %68, align 8, !tbaa !11, !alias.scope !33
  %69 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load37, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load39)
  %70 = getelementptr inbounds [120 x [120 x double]], ptr %4, i64 %indvars.iv130.i, i64 %62, i64 %offset.idx
  %wide.load40 = load <2 x double>, ptr %70, align 8, !tbaa !11, !alias.scope !33
  %71 = fadd <2 x double> %69, %wide.load40
  %72 = fmul <2 x double> %71, splat (double 1.250000e-01)
  %73 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> splat (double 1.250000e-01), <2 x double> %72)
  %74 = add nuw nsw i64 %index36, 2
  %75 = getelementptr inbounds nuw [120 x [120 x double]], ptr %4, i64 %indvars.iv130.i, i64 %indvars.iv125.i, i64 %74
  %wide.load41 = load <2 x double>, ptr %75, align 8, !tbaa !11, !alias.scope !33
  %76 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load37, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load41)
  %77 = getelementptr inbounds [120 x [120 x double]], ptr %4, i64 %indvars.iv130.i, i64 %indvars.iv125.i, i64 %index36
  %wide.load42 = load <2 x double>, ptr %77, align 8, !tbaa !11, !alias.scope !33
  %78 = fadd <2 x double> %76, %wide.load42
  %79 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %78, <2 x double> splat (double 1.250000e-01), <2 x double> %73)
  %80 = fadd <2 x double> %wide.load37, %79
  %81 = getelementptr inbounds nuw [120 x [120 x double]], ptr %0, i64 %indvars.iv130.i, i64 %indvars.iv125.i, i64 %offset.idx
  store <2 x double> %80, ptr %81, align 8, !tbaa !11, !alias.scope !36, !noalias !33
  %index.next43 = add nuw i64 %index36, 2
  %82 = icmp eq i64 %index.next43, 118
  br i1 %82, label %for.inc186.i, label %vector.body35, !llvm.loop !38

for.body104.i:                                    ; preds = %for.cond101.preheader.i, %for.body104.i
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %for.body104.i ], [ 1, %for.cond101.preheader.i ]
  %arrayidx111.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %arrayidx107.i, i64 0, i64 %indvars.iv125.i, i64 %indvars.iv120.i
  %83 = load double, ptr %arrayidx111.i, align 8, !tbaa !11
  %arrayidx117.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %4, i64 %indvars.iv130.i, i64 %indvars.iv125.i, i64 %indvars.iv120.i
  %84 = load double, ptr %arrayidx117.i, align 8, !tbaa !11
  %85 = call double @llvm.fmuladd.f64(double %84, double -2.000000e+00, double %83)
  %arrayidx124.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %arrayidx120.i, i64 0, i64 %indvars.iv125.i, i64 %indvars.iv120.i
  %86 = load double, ptr %arrayidx124.i, align 8, !tbaa !11
  %add125.i = fadd double %85, %86
  %arrayidx132.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %4, i64 %indvars.iv130.i, i64 %indvars.iv.next126.i, i64 %indvars.iv120.i
  %87 = load double, ptr %arrayidx132.i, align 8, !tbaa !11
  %88 = call double @llvm.fmuladd.f64(double %84, double -2.000000e+00, double %87)
  %arrayidx146.i = getelementptr inbounds [120 x [120 x double]], ptr %4, i64 %indvars.iv130.i, i64 %62, i64 %indvars.iv120.i
  %89 = load double, ptr %arrayidx146.i, align 8, !tbaa !11
  %add147.i = fadd double %88, %89
  %mul148.i = fmul double %add147.i, 1.250000e-01
  %90 = call double @llvm.fmuladd.f64(double %add125.i, double 1.250000e-01, double %mul148.i)
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1
  %arrayidx155.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %4, i64 %indvars.iv130.i, i64 %indvars.iv125.i, i64 %indvars.iv.next121.i
  %91 = load double, ptr %arrayidx155.i, align 8, !tbaa !11
  %92 = call double @llvm.fmuladd.f64(double %84, double -2.000000e+00, double %91)
  %93 = add nsw i64 %indvars.iv120.i, -1
  %arrayidx168.i = getelementptr inbounds [120 x [120 x double]], ptr %4, i64 %indvars.iv130.i, i64 %indvars.iv125.i, i64 %93
  %94 = load double, ptr %arrayidx168.i, align 8, !tbaa !11
  %add169.i = fadd double %92, %94
  %95 = call double @llvm.fmuladd.f64(double %add169.i, double 1.250000e-01, double %90)
  %add176.i = fadd double %84, %95
  %arrayidx182.i = getelementptr inbounds nuw [120 x [120 x double]], ptr %0, i64 %indvars.iv130.i, i64 %indvars.iv125.i, i64 %indvars.iv120.i
  store double %add176.i, ptr %arrayidx182.i, align 8, !tbaa !11
  %exitcond124.not.i = icmp eq i64 %indvars.iv.next121.i, 119
  br i1 %exitcond124.not.i, label %for.inc186.i, label %for.body104.i, !llvm.loop !39

for.inc186.i:                                     ; preds = %vector.body35, %for.body104.i
  %exitcond129.not.i = icmp eq i64 %indvars.iv.next126.i, 119
  br i1 %exitcond129.not.i, label %for.inc189.i, label %for.cond101.preheader.i, !llvm.loop !40

for.inc189.i:                                     ; preds = %for.inc186.i
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next131.i, 119
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond133.not.i, label %for.inc192.i, label %for.cond97.preheader.i, !llvm.loop !41

for.inc192.i:                                     ; preds = %for.inc189.i
  %inc193.i = add nuw nsw i32 %t.0108.i, 1
  %exitcond134.not.i = icmp eq i32 %inc193.i, 501
  br i1 %exitcond134.not.i, label %kernel_heat_3d.exit, label %for.cond1.preheader.i16, !llvm.loop !42

kernel_heat_3d.exit:                              ; preds = %for.inc192.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i21) #12
  %call.i.i22 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i21, ptr noundef null) #12
  %cmp.not.i.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %cmp.not.i.i23, label %polybench_timer_stop.exit, label %if.then.i.i24

if.then.i.i24:                                    ; preds = %kernel_heat_3d.exit
  %call1.i.i25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i22)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_heat_3d.exit, %if.then.i.i24
  %96 = load i64, ptr %Tp.i.i21, align 8, !tbaa !5
  %conv.i.i26 = sitofp i64 %96 to double
  %tv_usec.i.i27 = getelementptr inbounds nuw i8, ptr %Tp.i.i21, i64 8
  %97 = load i64, ptr %tv_usec.i.i27, align 8, !tbaa !10
  %conv2.i.i28 = sitofp i64 %97 to double
  %98 = call double @llvm.fmuladd.f64(double %conv2.i.i28, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i26)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i21) #12
  store double %98, ptr @polybench_t_end, align 8, !tbaa !11
  %99 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %98, %99
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %100 = load ptr, ptr %argv, align 8, !tbaa !43
  %strcmpload = load i8, ptr %100, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #12
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %A) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc21
  %indvars.iv26 = phi i64 [ 0, %entry ], [ %indvars.iv.next27, %for.inc21 ]
  %3 = mul nuw nsw i64 %indvars.iv26, 14400
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2.preheader, %for.inc18
  %indvars.iv20 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next21, %for.inc18 ]
  %4 = mul nuw nsw i64 %indvars.iv20, 120
  %5 = add nuw nsw i64 %4, %3
  br label %for.body7

for.body7:                                        ; preds = %for.cond5.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %if.end ]
  %6 = add nuw nsw i64 %5, %indvars.iv
  %7 = trunc nuw nsw i64 %6 to i32
  %rem = urem i32 %7, 20
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx16 = getelementptr inbounds nuw [120 x [120 x double]], ptr %A, i64 %indvars.iv26, i64 %indvars.iv20, i64 %indvars.iv
  %10 = load double, ptr %arrayidx16, align 8, !tbaa !11
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5.10, double noundef %10) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 120
  br i1 %exitcond.not, label %for.inc18, label %for.body7, !llvm.loop !45

for.inc18:                                        ; preds = %if.end
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond25.not = icmp eq i64 %indvars.iv.next21, 120
  br i1 %exitcond25.not, label %for.inc21, label %for.cond5.preheader, !llvm.loop !46

for.inc21:                                        ; preds = %for.inc18
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, 120
  br i1 %exitcond30.not, label %for.end23, label %for.cond2.preheader, !llvm.loop !47

for.end23:                                        ; preds = %for.inc21
  %11 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #15
  %12 = load ptr, ptr @stderr, align 8, !tbaa !15
  %13 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %12) #13
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
!23 = distinct !{!23, !18}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !18, !19, !20}
!30 = distinct !{!30, !18, !19}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !18, !19, !20}
!39 = distinct !{!39, !18, !19}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 omnipotent char", !14, i64 0}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
