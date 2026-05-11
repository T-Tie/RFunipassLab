; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/durbin.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"y\00", align 1
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #13
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #13
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #13
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #13
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #13
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
  tail call void @free(ptr noundef %ptr) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #3 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i) #13
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i, i64 noundef 4096, i64 noundef %mul) #13
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #14
  call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i) #13
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
  %Tp.i.i20 = alloca %struct.timeval, align 8
  %z.i = alloca [2000 x double], align 16
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i7 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #13
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 16000) #13
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #14
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i7) #13
  store ptr null, ptr %ret.i.i7, align 8, !tbaa !13
  %call.i.i8 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i7, i64 noundef 4096, i64 noundef 16000) #13
  %3 = load ptr, ptr %ret.i.i7, align 8, !tbaa !13
  %tobool.i.i9 = icmp eq ptr %3, null
  %tobool2.i.i10 = icmp ne i32 %call.i.i8, 0
  %or.cond.i.i11 = select i1 %tobool.i.i9, i1 true, i1 %tobool2.i.i10
  br i1 %or.cond.i.i11, label %if.then.i.i12, label %polybench_alloc_data.exit13

if.then.i.i12:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #14
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit13:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i7) #13
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %polybench_alloc_data.exit13
  %index = phi i64 [ 0, %polybench_alloc_data.exit13 ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %polybench_alloc_data.exit13 ], [ %vec.ind.next, %vector.body ]
  %6 = sub <2 x i32> splat (i32 2001), %vec.ind
  %7 = uitofp nneg <2 x i32> %6 to <2 x double>
  %8 = getelementptr inbounds nuw double, ptr %0, i64 %index
  store <2 x double> %7, ptr %8, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %9 = icmp eq i64 %index.next, 2000
  br i1 %9, label %init_array.exit, label %vector.body, !llvm.loop !17

init_array.exit:                                  ; preds = %vector.body
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #13
  %call.i.i14 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #13
  %cmp.not.i.i = icmp eq i32 %call.i.i14, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i15

if.then.i.i15:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i14)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i15
  %10 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %10 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %11 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %11 to double
  %12 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #13
  store double %12, ptr @polybench_t_start, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16000, ptr nonnull %z.i) #13
  %13 = load double, ptr %0, align 8, !tbaa !11
  %fneg.i = fneg double %13
  store double %fneg.i, ptr %3, align 8, !tbaa !11
  %14 = load double, ptr %0, align 8, !tbaa !11
  %fneg3.i = fneg double %14
  br label %for.body.i16

for.body.i16:                                     ; preds = %for.body32.preheader.i, %polybench_timer_start.exit
  %indvars.iv52.i = phi i64 [ 1, %polybench_timer_start.exit ], [ %indvars.iv.next53.i, %for.body32.preheader.i ]
  %indvar.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvar.next.i, %for.body32.preheader.i ]
  %beta.039.i = phi double [ 1.000000e+00, %polybench_timer_start.exit ], [ %mul.i, %for.body32.preheader.i ]
  %alpha.038.i = phi double [ %fneg3.i, %polybench_timer_start.exit ], [ %div.i, %for.body32.preheader.i ]
  %15 = getelementptr double, ptr %0, i64 %indvars.iv52.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i, %for.body.i16
  %indvars.iv.i17 = phi i64 [ 0, %for.body.i16 ], [ %indvars.iv.next.i18, %for.body6.i ]
  %sum.034.i = phi double [ 0.000000e+00, %for.body.i16 ], [ %19, %for.body6.i ]
  %16 = xor i64 %indvars.iv.i17, -1
  %arrayidx8.i = getelementptr double, ptr %15, i64 %16
  %17 = load double, ptr %arrayidx8.i, align 8, !tbaa !11
  %arrayidx10.i = getelementptr inbounds nuw double, ptr %3, i64 %indvars.iv.i17
  %18 = load double, ptr %arrayidx10.i, align 8, !tbaa !11
  %19 = call double @llvm.fmuladd.f64(double %17, double %18, double %sum.034.i)
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i17, 1
  %exitcond.not.i19 = icmp eq i64 %indvars.iv.next.i18, %indvars.iv52.i
  br i1 %exitcond.not.i19, label %for.end.i, label %for.body6.i, !llvm.loop !21

for.end.i:                                        ; preds = %for.body6.i
  %neg.i = fneg double %alpha.038.i
  %20 = call double @llvm.fmuladd.f64(double %neg.i, double %alpha.038.i, double 1.000000e+00)
  %mul.i = fmul double %beta.039.i, %20
  %21 = load double, ptr %15, align 8, !tbaa !11
  %add.i = fadd double %19, %21
  %fneg14.i = fneg double %add.i
  %div.i = fdiv double %fneg14.i, %mul.i
  %22 = getelementptr double, ptr %3, i64 %indvars.iv52.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv52.i, 2
  br i1 %min.iters.check, label %for.body17.i.preheader, label %vector.ph29

vector.ph29:                                      ; preds = %for.end.i
  %n.vec = and i64 %indvars.iv52.i, 9223372036854775806
  %broadcast.splatinsert = insertelement <2 x double> poison, double %div.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %22, i64 -8
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph29
  %index31 = phi i64 [ 0, %vector.ph29 ], [ %index.next33, %vector.body30 ]
  %23 = getelementptr inbounds nuw double, ptr %3, i64 %index31
  %wide.load = load <2 x double>, ptr %23, align 8, !tbaa !11
  %24 = xor i64 %index31, -1
  %gep = getelementptr double, ptr %invariant.gep, i64 %24
  %wide.load32 = load <2 x double>, ptr %gep, align 8, !tbaa !11
  %reverse = shufflevector <2 x double> %wide.load32, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %25 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %reverse, <2 x double> %wide.load)
  %26 = getelementptr inbounds nuw [2000 x double], ptr %z.i, i64 0, i64 %index31
  store <2 x double> %25, ptr %26, align 16, !tbaa !11
  %index.next33 = add nuw i64 %index31, 2
  %27 = icmp eq i64 %index.next33, %n.vec
  br i1 %27, label %middle.block34, label %vector.body30, !llvm.loop !22

middle.block34:                                   ; preds = %vector.body30
  %cmp.n = icmp eq i64 %indvars.iv52.i, %n.vec
  br i1 %cmp.n, label %for.body32.preheader.i, label %for.body17.i.preheader

for.body17.i.preheader:                           ; preds = %for.end.i, %middle.block34
  %indvars.iv43.i.ph = phi i64 [ 0, %for.end.i ], [ %n.vec, %middle.block34 ]
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i.preheader, %for.body17.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %for.body17.i ], [ %indvars.iv43.i.ph, %for.body17.i.preheader ]
  %arrayidx19.i = getelementptr inbounds nuw double, ptr %3, i64 %indvars.iv43.i
  %28 = load double, ptr %arrayidx19.i, align 8, !tbaa !11
  %29 = xor i64 %indvars.iv43.i, -1
  %arrayidx23.i = getelementptr double, ptr %22, i64 %29
  %30 = load double, ptr %arrayidx23.i, align 8, !tbaa !11
  %31 = call double @llvm.fmuladd.f64(double %div.i, double %30, double %28)
  %arrayidx26.i = getelementptr inbounds nuw [2000 x double], ptr %z.i, i64 0, i64 %indvars.iv43.i
  store double %31, ptr %arrayidx26.i, align 8, !tbaa !11
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next44.i, %indvars.iv52.i
  br i1 %exitcond48.not.i, label %for.body32.preheader.i, label %for.body17.i, !llvm.loop !23

for.body32.preheader.i:                           ; preds = %for.body17.i, %middle.block34
  %32 = shl nuw nsw i64 %indvar.i, 3
  %33 = add nuw nsw i64 %32, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(1) %z.i, i64 %33, i1 false), !tbaa !11
  store double %div.i, ptr %22, align 8, !tbaa !11
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %exitcond55.not.i = icmp eq i64 %indvar.next.i, 1999
  br i1 %exitcond55.not.i, label %kernel_durbin.exit, label %for.body.i16, !llvm.loop !24

kernel_durbin.exit:                               ; preds = %for.body32.preheader.i
  call void @llvm.lifetime.end.p0(i64 16000, ptr nonnull %z.i) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i20) #13
  %call.i.i21 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i20, ptr noundef null) #13
  %cmp.not.i.i22 = icmp eq i32 %call.i.i21, 0
  br i1 %cmp.not.i.i22, label %polybench_timer_stop.exit, label %if.then.i.i23

if.then.i.i23:                                    ; preds = %kernel_durbin.exit
  %call1.i.i24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i21)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_durbin.exit, %if.then.i.i23
  %34 = load i64, ptr %Tp.i.i20, align 8, !tbaa !5
  %conv.i.i25 = sitofp i64 %34 to double
  %tv_usec.i.i26 = getelementptr inbounds nuw i8, ptr %Tp.i.i20, i64 8
  %35 = load i64, ptr %tv_usec.i.i26, align 8, !tbaa !10
  %conv2.i.i27 = sitofp i64 %35 to double
  %36 = call double @llvm.fmuladd.f64(double %conv2.i.i27, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i25)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i20) #13
  store double %36, ptr @polybench_t_end, align 8, !tbaa !11
  %37 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %36, %37
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %38 = load ptr, ptr %argv, align 8, !tbaa !25
  %strcmpload = load i8, ptr %38, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #13
  call void @free(ptr noundef nonnull %3) #13
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %y) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #14
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #16
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
  %arrayidx = getelementptr inbounds nuw double, ptr %y, i64 %indvars.iv
  %5 = load double, ptr %arrayidx, align 8, !tbaa !11
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, double noundef %5) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !27

for.end:                                          ; preds = %if.end
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #16
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %8 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %7) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }

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
!22 = distinct !{!22, !18, !19, !20}
!23 = distinct !{!23, !18, !19}
!24 = distinct !{!24, !18}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = distinct !{!27, !18}
