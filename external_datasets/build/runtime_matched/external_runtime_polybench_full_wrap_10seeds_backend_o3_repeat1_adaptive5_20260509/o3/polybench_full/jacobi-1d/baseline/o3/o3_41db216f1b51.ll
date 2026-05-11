; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-1d.ll'
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
  %Tp.i.i22 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i8 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #11
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 16000) #11
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %1 = ptrtoint ptr %0 to i64
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %3 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %2) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i8) #11
  store ptr null, ptr %ret.i.i8, align 8, !tbaa !13
  %call.i.i9 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i8, i64 noundef 4096, i64 noundef 16000) #11
  %4 = load ptr, ptr %ret.i.i8, align 8, !tbaa !13
  %tobool.i.i10 = icmp eq ptr %4, null
  %tobool2.i.i11 = icmp ne i32 %call.i.i9, 0
  %or.cond.i.i12 = select i1 %tobool.i.i10, i1 true, i1 %tobool2.i.i11
  br i1 %or.cond.i.i12, label %if.then.i.i13, label %polybench_alloc_data.exit14

if.then.i.i13:                                    ; preds = %polybench_alloc_data.exit
  %5 = load ptr, ptr @stderr, align 8, !tbaa !15
  %6 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %5) #12
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit14:                      ; preds = %polybench_alloc_data.exit
  %7 = ptrtoint ptr %4 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i8) #11
  %8 = sub i64 %7, %1
  %diff.check = icmp ult i64 %8, 16
  br i1 %diff.check, label %for.body.i, label %vector.body

vector.body:                                      ; preds = %polybench_alloc_data.exit14, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %polybench_alloc_data.exit14 ]
  %vec.ind = phi <2 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1>, %polybench_alloc_data.exit14 ]
  %9 = add <2 x i32> %vec.ind, splat (i32 2)
  %10 = uitofp nneg <2 x i32> %9 to <2 x double>
  %11 = fdiv <2 x double> %10, splat (double 2.000000e+03)
  %12 = getelementptr inbounds nuw double, ptr %0, i64 %index
  store <2 x double> %11, ptr %12, align 8, !tbaa !11
  %13 = add <2 x i32> %vec.ind, splat (i32 3)
  %14 = uitofp nneg <2 x i32> %13 to <2 x double>
  %15 = fdiv <2 x double> %14, splat (double 2.000000e+03)
  %16 = getelementptr inbounds nuw double, ptr %4, i64 %index
  store <2 x double> %15, ptr %16, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %17 = icmp eq i64 %index.next, 2000
  br i1 %17, label %init_array.exit, label %vector.body, !llvm.loop !17

for.body.i:                                       ; preds = %polybench_alloc_data.exit14, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %polybench_alloc_data.exit14 ]
  %18 = trunc i64 %indvars.iv.i to i32
  %19 = add i32 %18, 2
  %add.i = uitofp nneg i32 %19 to double
  %div.i = fdiv double %add.i, 2.000000e+03
  %arrayidx.i = getelementptr inbounds nuw double, ptr %0, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx.i, align 8, !tbaa !11
  %20 = add i32 %18, 3
  %add3.i = uitofp nneg i32 %20 to double
  %div5.i = fdiv double %add3.i, 2.000000e+03
  %arrayidx7.i = getelementptr inbounds nuw double, ptr %4, i64 %indvars.iv.i
  store double %div5.i, ptr %arrayidx7.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2000
  br i1 %exitcond.not.i, label %init_array.exit, label %for.body.i, !llvm.loop !21

init_array.exit:                                  ; preds = %vector.body, %for.body.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #11
  %call.i.i15 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #11
  %cmp.not.i.i = icmp eq i32 %call.i.i15, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i16

if.then.i.i16:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i15)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i16
  %21 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %21 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %22 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %22 to double
  %23 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #11
  store double %23, ptr @polybench_t_start, align 8, !tbaa !11
  %scevgep = getelementptr i8, ptr %0, i64 8
  %scevgep31 = getelementptr i8, ptr %0, i64 15992
  %scevgep32 = getelementptr i8, ptr %4, i64 16000
  %scevgep43 = getelementptr i8, ptr %4, i64 8
  %scevgep44 = getelementptr i8, ptr %4, i64 15992
  %scevgep45 = getelementptr i8, ptr %0, i64 16000
  %bound046 = icmp ult ptr %scevgep43, %scevgep45
  %bound147 = icmp ult ptr %0, %scevgep44
  %found.conflict48 = and i1 %bound046, %bound147
  %invariant.gep = getelementptr i8, ptr %0, i64 16
  %bound0 = icmp ult ptr %scevgep, %scevgep32
  %bound1 = icmp ult ptr %4, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  %invariant.gep63 = getelementptr i8, ptr %4, i64 16
  br label %vector.memcheck42

vector.memcheck42:                                ; preds = %polybench_timer_start.exit, %for.inc33.i
  %t.022.i = phi i32 [ 0, %polybench_timer_start.exit ], [ %inc34.i, %for.inc33.i ]
  br i1 %found.conflict48, label %for.body3.i, label %vector.body51

vector.body51:                                    ; preds = %vector.memcheck42, %vector.body51
  %index52 = phi i64 [ %index.next57, %vector.body51 ], [ 0, %vector.memcheck42 ]
  %offset.idx53 = or disjoint i64 %index52, 1
  %24 = getelementptr double, ptr %0, i64 %offset.idx53
  %25 = getelementptr i8, ptr %24, i64 -8
  %wide.load54 = load <2 x double>, ptr %25, align 8, !tbaa !11, !alias.scope !22
  %wide.load55 = load <2 x double>, ptr %24, align 8, !tbaa !11, !alias.scope !22
  %26 = fadd <2 x double> %wide.load54, %wide.load55
  %gep = getelementptr double, ptr %invariant.gep, i64 %index52
  %wide.load56 = load <2 x double>, ptr %gep, align 8, !tbaa !11, !alias.scope !22
  %27 = fadd <2 x double> %26, %wide.load56
  %28 = fmul <2 x double> %27, splat (double 3.333300e-01)
  %29 = getelementptr inbounds nuw double, ptr %4, i64 %offset.idx53
  store <2 x double> %28, ptr %29, align 8, !tbaa !11, !alias.scope !25, !noalias !22
  %index.next57 = add nuw i64 %index52, 2
  %30 = icmp eq i64 %index.next57, 1998
  br i1 %30, label %vector.memcheck30, label %vector.body51, !llvm.loop !27

for.body3.i:                                      ; preds = %vector.memcheck42, %for.body3.i
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i20, %for.body3.i ], [ 1, %vector.memcheck42 ]
  %31 = getelementptr double, ptr %0, i64 %indvars.iv.i17
  %arrayidx.i18 = getelementptr i8, ptr %31, i64 -8
  %32 = load double, ptr %arrayidx.i18, align 8, !tbaa !11
  %33 = load double, ptr %31, align 8, !tbaa !11
  %add.i19 = fadd double %32, %33
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i17, 1
  %arrayidx9.i = getelementptr inbounds nuw double, ptr %0, i64 %indvars.iv.next.i20
  %34 = load double, ptr %arrayidx9.i, align 8, !tbaa !11
  %add10.i = fadd double %add.i19, %34
  %mul.i = fmul double %add10.i, 3.333300e-01
  %arrayidx12.i = getelementptr inbounds nuw double, ptr %4, i64 %indvars.iv.i17
  store double %mul.i, ptr %arrayidx12.i, align 8, !tbaa !11
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.next.i20, 1999
  br i1 %exitcond.not.i21, label %vector.memcheck30, label %for.body3.i, !llvm.loop !28

vector.memcheck30:                                ; preds = %vector.body51, %for.body3.i
  br i1 %found.conflict, label %for.body16.i, label %vector.body35

vector.body35:                                    ; preds = %vector.memcheck30, %vector.body35
  %index36 = phi i64 [ %index.next39, %vector.body35 ], [ 0, %vector.memcheck30 ]
  %offset.idx = or disjoint i64 %index36, 1
  %35 = getelementptr double, ptr %4, i64 %offset.idx
  %36 = getelementptr i8, ptr %35, i64 -8
  %wide.load = load <2 x double>, ptr %36, align 8, !tbaa !11, !alias.scope !29
  %wide.load37 = load <2 x double>, ptr %35, align 8, !tbaa !11, !alias.scope !29
  %37 = fadd <2 x double> %wide.load, %wide.load37
  %gep64 = getelementptr double, ptr %invariant.gep63, i64 %index36
  %wide.load38 = load <2 x double>, ptr %gep64, align 8, !tbaa !11, !alias.scope !29
  %38 = fadd <2 x double> %37, %wide.load38
  %39 = fmul <2 x double> %38, splat (double 3.333300e-01)
  %40 = getelementptr inbounds nuw double, ptr %0, i64 %offset.idx
  store <2 x double> %39, ptr %40, align 8, !tbaa !11, !alias.scope !32, !noalias !29
  %index.next39 = add nuw i64 %index36, 2
  %41 = icmp eq i64 %index.next39, 1998
  br i1 %41, label %for.inc33.i, label %vector.body35, !llvm.loop !34

for.body16.i:                                     ; preds = %vector.memcheck30, %for.body16.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.body16.i ], [ 1, %vector.memcheck30 ]
  %42 = getelementptr double, ptr %4, i64 %indvars.iv24.i
  %arrayidx19.i = getelementptr i8, ptr %42, i64 -8
  %43 = load double, ptr %arrayidx19.i, align 8, !tbaa !11
  %44 = load double, ptr %42, align 8, !tbaa !11
  %add22.i = fadd double %43, %44
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %arrayidx25.i = getelementptr inbounds nuw double, ptr %4, i64 %indvars.iv.next25.i
  %45 = load double, ptr %arrayidx25.i, align 8, !tbaa !11
  %add26.i = fadd double %add22.i, %45
  %mul27.i = fmul double %add26.i, 3.333300e-01
  %arrayidx29.i = getelementptr inbounds nuw double, ptr %0, i64 %indvars.iv24.i
  store double %mul27.i, ptr %arrayidx29.i, align 8, !tbaa !11
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next25.i, 1999
  br i1 %exitcond27.not.i, label %for.inc33.i, label %for.body16.i, !llvm.loop !35

for.inc33.i:                                      ; preds = %vector.body35, %for.body16.i
  %inc34.i = add nuw nsw i32 %t.022.i, 1
  %exitcond28.not.i = icmp eq i32 %inc34.i, 500
  br i1 %exitcond28.not.i, label %kernel_jacobi_1d.exit, label %vector.memcheck42, !llvm.loop !36

kernel_jacobi_1d.exit:                            ; preds = %for.inc33.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i22) #11
  %call.i.i23 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i22, ptr noundef null) #11
  %cmp.not.i.i24 = icmp eq i32 %call.i.i23, 0
  br i1 %cmp.not.i.i24, label %polybench_timer_stop.exit, label %if.then.i.i25

if.then.i.i25:                                    ; preds = %kernel_jacobi_1d.exit
  %call1.i.i26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i23)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_jacobi_1d.exit, %if.then.i.i25
  %46 = load i64, ptr %Tp.i.i22, align 8, !tbaa !5
  %conv.i.i27 = sitofp i64 %46 to double
  %tv_usec.i.i28 = getelementptr inbounds nuw i8, ptr %Tp.i.i22, i64 8
  %47 = load i64, ptr %tv_usec.i.i28, align 8, !tbaa !10
  %conv2.i.i29 = sitofp i64 %47 to double
  %48 = call double @llvm.fmuladd.f64(double %conv2.i.i29, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i27)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i22) #11
  store double %48, ptr @polybench_t_end, align 8, !tbaa !11
  %49 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %48, %49
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %50 = load ptr, ptr %argv, align 8, !tbaa !37
  %strcmpload = load i8, ptr %50, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #11
  call void @free(ptr noundef nonnull %4) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %A) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
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
  %arrayidx = getelementptr inbounds nuw double, ptr %A, i64 %indvars.iv
  %5 = load double, ptr %arrayidx, align 8, !tbaa !11
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, double noundef %5) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !39

for.end:                                          ; preds = %if.end
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %7) #12
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
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !18, !19, !20}
!28 = distinct !{!28, !18, !19}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !18, !19, !20}
!35 = distinct !{!35, !18, !19}
!36 = distinct !{!36, !18}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 omnipotent char", !14, i64 0}
!39 = distinct !{!39, !18}
