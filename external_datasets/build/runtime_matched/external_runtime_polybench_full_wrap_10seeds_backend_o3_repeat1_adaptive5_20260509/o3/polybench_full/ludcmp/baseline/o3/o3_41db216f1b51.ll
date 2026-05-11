; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
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
  %Tp.i.i39 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i.i = alloca ptr, align 8
  %ret.i.i26 = alloca ptr, align 8
  %ret.i.i19 = alloca ptr, align 8
  %ret.i.i12 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #13
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 32000000) #13
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %1 = ptrtoint ptr %0 to i64
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %3 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %2) #14
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i12) #13
  store ptr null, ptr %ret.i.i12, align 8, !tbaa !13
  %call.i.i13 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i12, i64 noundef 4096, i64 noundef 16000) #13
  %4 = load ptr, ptr %ret.i.i12, align 8, !tbaa !13
  %5 = ptrtoint ptr %4 to i64
  %tobool.i.i14 = icmp eq ptr %4, null
  %tobool2.i.i15 = icmp ne i32 %call.i.i13, 0
  %or.cond.i.i16 = select i1 %tobool.i.i14, i1 true, i1 %tobool2.i.i15
  br i1 %or.cond.i.i16, label %if.then.i.i17, label %polybench_alloc_data.exit18

if.then.i.i17:                                    ; preds = %polybench_alloc_data.exit
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %7 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %6) #14
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit18:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i19) #13
  store ptr null, ptr %ret.i.i19, align 8, !tbaa !13
  %call.i.i20 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i19, i64 noundef 4096, i64 noundef 16000) #13
  %8 = load ptr, ptr %ret.i.i19, align 8, !tbaa !13
  %9 = ptrtoint ptr %8 to i64
  %tobool.i.i21 = icmp eq ptr %8, null
  %tobool2.i.i22 = icmp ne i32 %call.i.i20, 0
  %or.cond.i.i23 = select i1 %tobool.i.i21, i1 true, i1 %tobool2.i.i22
  br i1 %or.cond.i.i23, label %if.then.i.i24, label %polybench_alloc_data.exit25

if.then.i.i24:                                    ; preds = %polybench_alloc_data.exit18
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %10) #14
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit25:                      ; preds = %polybench_alloc_data.exit18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i19) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i26) #13
  store ptr null, ptr %ret.i.i26, align 8, !tbaa !13
  %call.i.i27 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i26, i64 noundef 4096, i64 noundef 16000) #13
  %12 = load ptr, ptr %ret.i.i26, align 8, !tbaa !13
  %tobool.i.i28 = icmp eq ptr %12, null
  %tobool2.i.i29 = icmp ne i32 %call.i.i27, 0
  %or.cond.i.i30 = select i1 %tobool.i.i28, i1 true, i1 %tobool2.i.i29
  br i1 %or.cond.i.i30, label %if.then.i.i31, label %polybench_alloc_data.exit32

if.then.i.i31:                                    ; preds = %polybench_alloc_data.exit25
  %13 = load ptr, ptr @stderr, align 8, !tbaa !15
  %14 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %13) #14
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit32:                      ; preds = %polybench_alloc_data.exit25
  %15 = ptrtoint ptr %12 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i26) #13
  %16 = sub i64 %15, %9
  %diff.check = icmp ult i64 %16, 16
  %17 = sub i64 %5, %9
  %diff.check60 = icmp ult i64 %17, 16
  %conflict.rdx = or i1 %diff.check, %diff.check60
  %18 = sub i64 %5, %15
  %diff.check61 = icmp ult i64 %18, 16
  %conflict.rdx62 = or i1 %conflict.rdx, %diff.check61
  br i1 %conflict.rdx62, label %for.body.i, label %vector.body

vector.body:                                      ; preds = %polybench_alloc_data.exit32, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %polybench_alloc_data.exit32 ]
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1>, %polybench_alloc_data.exit32 ]
  %19 = getelementptr inbounds nuw double, ptr %8, i64 %index
  store <2 x double> zeroinitializer, ptr %19, align 8, !tbaa !11
  %20 = getelementptr inbounds nuw double, ptr %12, i64 %index
  store <2 x double> zeroinitializer, ptr %20, align 8, !tbaa !11
  %21 = trunc <2 x i64> %vec.ind to <2 x i32>
  %22 = add <2 x i32> %21, splat (i32 1)
  %23 = uitofp nneg <2 x i32> %22 to <2 x double>
  %24 = fdiv <2 x double> %23, splat (double 2.000000e+03)
  %25 = fmul <2 x double> %24, splat (double 5.000000e-01)
  %26 = fadd <2 x double> %25, splat (double 4.000000e+00)
  %27 = getelementptr inbounds nuw double, ptr %4, i64 %index
  store <2 x double> %26, ptr %27, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 2)
  %28 = icmp eq i64 %index.next, 2000
  br i1 %28, label %for.cond13.preheader.preheader.i, label %vector.body, !llvm.loop !17

for.body.i:                                       ; preds = %polybench_alloc_data.exit32, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %polybench_alloc_data.exit32 ]
  %arrayidx.i = getelementptr inbounds nuw double, ptr %8, i64 %indvars.iv.i
  store double 0.000000e+00, ptr %arrayidx.i, align 8, !tbaa !11
  %arrayidx3.i = getelementptr inbounds nuw double, ptr %12, i64 %indvars.iv.i
  store double 0.000000e+00, ptr %arrayidx3.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %29 = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %conv4.i = uitofp nneg i32 %29 to double
  %div.i = fdiv double %conv4.i, 2.000000e+03
  %div5.i = fmul double %div.i, 5.000000e-01
  %add6.i = fadd double %div5.i, 4.000000e+00
  %arrayidx8.i = getelementptr inbounds nuw double, ptr %4, i64 %indvars.iv.i
  store double %add6.i, ptr %arrayidx8.i, align 8, !tbaa !11
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2000
  br i1 %exitcond.not.i, label %for.cond13.preheader.preheader.i, label %for.body.i, !llvm.loop !21

for.cond13.preheader.preheader.i:                 ; preds = %vector.body, %for.body.i
  %invariant.gep.i = getelementptr i8, ptr %0, i64 8
  br label %for.cond13.preheader.i

for.cond13.preheader.i:                           ; preds = %for.end39.i, %for.cond13.preheader.preheader.i
  %indvars.iv83.i = phi i64 [ 1, %for.cond13.preheader.preheader.i ], [ %indvars.iv.next84.i, %for.end39.i ]
  %indvar.i = phi i64 [ 0, %for.cond13.preheader.preheader.i ], [ %indvar.next.i, %for.end39.i ]
  %min.iters.check = icmp samesign ult i64 %indvars.iv83.i, 2
  br i1 %min.iters.check, label %for.body16.i.preheader, label %vector.ph64

vector.ph64:                                      ; preds = %for.cond13.preheader.i
  %n.vec = and i64 %indvars.iv83.i, 9223372036854775806
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph64
  %index66 = phi i64 [ 0, %vector.ph64 ], [ %index.next68, %vector.body65 ]
  %vec.ind67 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph64 ], [ %vec.ind.next69, %vector.body65 ]
  %30 = sub <2 x i32> zeroinitializer, %vec.ind67
  %31 = sitofp <2 x i32> %30 to <2 x double>
  %32 = fdiv <2 x double> %31, splat (double 2.000000e+03)
  %33 = fadd <2 x double> %32, splat (double 1.000000e+00)
  %34 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvar.i, i64 %index66
  store <2 x double> %33, ptr %34, align 8, !tbaa !11
  %index.next68 = add nuw i64 %index66, 2
  %vec.ind.next69 = add <2 x i32> %vec.ind67, splat (i32 2)
  %35 = icmp eq i64 %index.next68, %n.vec
  br i1 %35, label %middle.block70, label %vector.body65, !llvm.loop !22

middle.block70:                                   ; preds = %vector.body65
  %cmp.n = icmp eq i64 %indvars.iv83.i, %n.vec
  br i1 %cmp.n, label %for.end27.i, label %for.body16.i.preheader

for.body16.i.preheader:                           ; preds = %for.cond13.preheader.i, %middle.block70
  %indvars.iv76.i.ph = phi i64 [ 0, %for.cond13.preheader.i ], [ %n.vec, %middle.block70 ]
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.preheader, %for.body16.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i, %for.body16.i ], [ %indvars.iv76.i.ph, %for.body16.i.preheader ]
  %36 = trunc i64 %indvars.iv76.i to i32
  %37 = sub i32 0, %36
  %conv17.i = sitofp i32 %37 to double
  %div19.i = fdiv double %conv17.i, 2.000000e+03
  %add20.i = fadd double %div19.i, 1.000000e+00
  %arrayidx24.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvar.i, i64 %indvars.iv76.i
  store double %add20.i, ptr %arrayidx24.i, align 8, !tbaa !11
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next77.i, %indvars.iv83.i
  br i1 %exitcond82.not.i, label %for.end27.i, label %for.body16.i, !llvm.loop !23

for.end27.i:                                      ; preds = %for.body16.i, %middle.block70
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %cmp3065.i = icmp samesign ult i64 %indvar.i, 1999
  br i1 %cmp3065.i, label %for.body32.lr.ph.i, label %for.end39.i

for.body32.lr.ph.i:                               ; preds = %for.end27.i
  %38 = shl nuw nsw i64 %indvar.i, 3
  %39 = sub nsw i64 15992, %38
  %40 = mul nuw nsw i64 %indvar.i, 16008
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %gep.i, i8 0, i64 %39, i1 false), !tbaa !11
  br label %for.end39.i

for.end39.i:                                      ; preds = %for.body32.lr.ph.i, %for.end27.i
  %arrayidx43.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvar.i, i64 %indvar.i
  store double 1.000000e+00, ptr %arrayidx43.i, align 8, !tbaa !11
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1
  %exitcond91.not.i = icmp eq i64 %indvar.next.i, 2000
  br i1 %exitcond91.not.i, label %for.end46.i, label %for.cond13.preheader.i, !llvm.loop !24

for.end46.i:                                      ; preds = %for.end39.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i.i) #13
  store ptr null, ptr %ret.i.i.i, align 8, !tbaa !13
  %call.i.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i.i, i64 noundef 4096, i64 noundef 32000000) #13
  %41 = load ptr, ptr %ret.i.i.i, align 8, !tbaa !13
  %42 = ptrtoint ptr %41 to i64
  %tobool.i.i.i = icmp eq ptr %41, null
  %tobool2.i.i.i = icmp ne i32 %call.i.i.i, 0
  %or.cond.i.i.i = select i1 %tobool.i.i.i, i1 true, i1 %tobool2.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.i, label %polybench_alloc_data.exit.i

if.then.i.i.i:                                    ; preds = %for.end46.i
  %43 = load ptr, ptr @stderr, align 8, !tbaa !15
  %44 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %43) #14
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit.i:                      ; preds = %for.end46.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i.i) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %41, i8 0, i64 32000000, i1 false), !tbaa !11
  %scevgep = getelementptr i8, ptr %41, i64 32000000
  %invariant.gep = getelementptr i8, ptr %0, i64 31984008
  br label %for.cond69.preheader.i

for.cond69.preheader.i:                           ; preds = %for.inc95.i, %polybench_alloc_data.exit.i
  %indvars.iv107.i = phi i64 [ 0, %polybench_alloc_data.exit.i ], [ %indvars.iv.next108.i, %for.inc95.i ]
  %45 = shl nuw nsw i64 %indvars.iv107.i, 3
  %scevgep73 = getelementptr nuw i8, ptr %0, i64 %45
  %gep = getelementptr i8, ptr %invariant.gep, i64 %45
  %bound0 = icmp ult ptr %41, %gep
  %bound1 = icmp ult ptr %scevgep73, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %for.cond73.preheader.i

for.cond73.preheader.i:                           ; preds = %for.inc92.i, %for.cond69.preheader.i
  %indvars.iv103.i = phi i64 [ 0, %for.cond69.preheader.i ], [ %indvars.iv.next104.i, %for.inc92.i ]
  %arrayidx80.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv103.i, i64 %indvars.iv107.i
  br i1 %found.conflict, label %for.body76.i, label %vector.body80.preheader

vector.body80.preheader:                          ; preds = %for.cond73.preheader.i
  %46 = load double, ptr %arrayidx80.i, align 8, !tbaa !11, !alias.scope !25
  %broadcast.splatinsert = insertelement <2 x double> poison, double %46, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80.preheader, %vector.body80
  %index81 = phi i64 [ %index.next82, %vector.body80 ], [ 0, %vector.body80.preheader ]
  %47 = or disjoint i64 %index81, 1
  %48 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %index81, i64 %indvars.iv107.i
  %49 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %47, i64 %indvars.iv107.i
  %50 = load double, ptr %48, align 8, !tbaa !11, !alias.scope !28
  %51 = load double, ptr %49, align 8, !tbaa !11, !alias.scope !28
  %52 = insertelement <2 x double> poison, double %50, i64 0
  %53 = insertelement <2 x double> %52, double %51, i64 1
  %54 = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %41, i64 0, i64 %indvars.iv103.i, i64 %index81
  %wide.load = load <2 x double>, ptr %54, align 8, !tbaa !11, !alias.scope !30, !noalias !32
  %55 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %53, <2 x double> %wide.load)
  store <2 x double> %55, ptr %54, align 8, !tbaa !11, !alias.scope !30, !noalias !32
  %index.next82 = add nuw i64 %index81, 2
  %56 = icmp eq i64 %index.next82, 2000
  br i1 %56, label %for.inc92.i, label %vector.body80, !llvm.loop !33

for.body76.i:                                     ; preds = %for.cond73.preheader.i, %for.body76.i
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %for.body76.i ], [ 0, %for.cond73.preheader.i ]
  %57 = load double, ptr %arrayidx80.i, align 8, !tbaa !11
  %arrayidx84.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv99.i, i64 %indvars.iv107.i
  %58 = load double, ptr %arrayidx84.i, align 8, !tbaa !11
  %arrayidx88.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %41, i64 0, i64 %indvars.iv103.i, i64 %indvars.iv99.i
  %59 = load double, ptr %arrayidx88.i, align 8, !tbaa !11
  %60 = call double @llvm.fmuladd.f64(double %57, double %58, double %59)
  store double %60, ptr %arrayidx88.i, align 8, !tbaa !11
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1
  %exitcond102.not.i = icmp eq i64 %indvars.iv.next100.i, 2000
  br i1 %exitcond102.not.i, label %for.inc92.i, label %for.body76.i, !llvm.loop !34

for.inc92.i:                                      ; preds = %vector.body80, %for.body76.i
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1
  %exitcond106.not.i = icmp eq i64 %indvars.iv.next104.i, 2000
  br i1 %exitcond106.not.i, label %for.inc95.i, label %for.cond73.preheader.i, !llvm.loop !35

for.inc95.i:                                      ; preds = %for.inc92.i
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1
  %exitcond110.not.i = icmp eq i64 %indvars.iv.next108.i, 2000
  br i1 %exitcond110.not.i, label %for.cond102.preheader.i.preheader, label %for.cond69.preheader.i, !llvm.loop !36

for.cond102.preheader.i.preheader:                ; preds = %for.inc95.i
  %61 = sub i64 %1, %42
  %diff.check86 = icmp ult i64 %61, 32
  br label %vector.memcheck85

vector.memcheck85:                                ; preds = %for.inc117.i, %for.cond102.preheader.i.preheader
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %for.inc117.i ], [ 0, %for.cond102.preheader.i.preheader ]
  br i1 %diff.check86, label %for.body105.i, label %vector.body89

vector.body89:                                    ; preds = %vector.memcheck85, %vector.body89
  %index90 = phi i64 [ %index.next92, %vector.body89 ], [ 0, %vector.memcheck85 ]
  %62 = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %41, i64 0, i64 %indvars.iv119.i, i64 %index90
  %wide.load91 = load <2 x double>, ptr %62, align 8, !tbaa !11
  %63 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv119.i, i64 %index90
  store <2 x double> %wide.load91, ptr %63, align 8, !tbaa !11
  %index.next92 = add nuw i64 %index90, 2
  %64 = icmp eq i64 %index.next92, 2000
  br i1 %64, label %for.inc117.i, label %vector.body89, !llvm.loop !37

for.body105.i:                                    ; preds = %vector.memcheck85, %for.body105.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i, %for.body105.i ], [ 0, %vector.memcheck85 ]
  %arrayidx109.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %41, i64 0, i64 %indvars.iv119.i, i64 %indvars.iv115.i
  %65 = load double, ptr %arrayidx109.i, align 8, !tbaa !11
  %arrayidx113.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv119.i, i64 %indvars.iv115.i
  store double %65, ptr %arrayidx113.i, align 8, !tbaa !11
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, 1
  %exitcond118.not.i = icmp eq i64 %indvars.iv.next116.i, 2000
  br i1 %exitcond118.not.i, label %for.inc117.i, label %for.body105.i, !llvm.loop !38

for.inc117.i:                                     ; preds = %vector.body89, %for.body105.i
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1
  %exitcond122.not.i = icmp eq i64 %indvars.iv.next120.i, 2000
  br i1 %exitcond122.not.i, label %init_array.exit, label %vector.memcheck85, !llvm.loop !39

init_array.exit:                                  ; preds = %for.inc117.i
  call void @free(ptr noundef nonnull %41) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #13
  %call.i.i33 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #13
  %cmp.not.i.i = icmp eq i32 %call.i.i33, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i34

if.then.i.i34:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i33)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i34
  %66 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %66 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %67 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %67 to double
  %68 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #13
  store double %68, ptr @polybench_t_start, align 8, !tbaa !11
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc57.i, %polybench_timer_start.exit
  %indvars.iv114.i = phi i64 [ 0, %polybench_timer_start.exit ], [ %indvars.iv.next115.i, %for.inc57.i ]
  %cmp280.not.i = icmp eq i64 %indvars.iv114.i, 0
  br i1 %cmp280.not.i, label %for.inc57.i, label %for.body3.i

for.body30.us.i:                                  ; preds = %for.end.i, %for.cond35.for.end49_crit_edge.us.i
  %indvars.iv116.i = phi i64 [ %indvars.iv.next117.i, %for.cond35.for.end49_crit_edge.us.i ], [ %indvars.iv114.i, %for.end.i ]
  %arrayidx34.us.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv114.i, i64 %indvars.iv116.i
  %69 = load double, ptr %arrayidx34.us.i, align 8, !tbaa !11
  br label %for.body37.us.i

for.body37.us.i:                                  ; preds = %for.body37.us.i, %for.body30.us.i
  %indvars.iv110.i = phi i64 [ 0, %for.body30.us.i ], [ %indvars.iv.next111.i, %for.body37.us.i ]
  %w.184.us.i = phi double [ %69, %for.body30.us.i ], [ %72, %for.body37.us.i ]
  %arrayidx41.us.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv114.i, i64 %indvars.iv110.i
  %70 = load double, ptr %arrayidx41.us.i, align 8, !tbaa !11
  %arrayidx45.us.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv110.i, i64 %indvars.iv116.i
  %71 = load double, ptr %arrayidx45.us.i, align 8, !tbaa !11
  %neg46.us.i = fneg double %70
  %72 = call double @llvm.fmuladd.f64(double %neg46.us.i, double %71, double %w.184.us.i)
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next111.i, %indvars.iv114.i
  br i1 %exitcond113.not.i, label %for.cond35.for.end49_crit_edge.us.i, label %for.body37.us.i, !llvm.loop !40

for.cond35.for.end49_crit_edge.us.i:              ; preds = %for.body37.us.i
  store double %72, ptr %arrayidx34.us.i, align 8, !tbaa !11
  %indvars.iv.next117.i = add nuw nsw i64 %indvars.iv116.i, 1
  %exitcond119.not.i = icmp eq i64 %indvars.iv.next117.i, 2000
  br i1 %exitcond119.not.i, label %for.inc57.i, label %for.body30.us.i, !llvm.loop !41

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.end.i
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %for.end.i ], [ 0, %for.cond1.preheader.i ]
  %arrayidx5.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv114.i, i64 %indvars.iv105.i
  %73 = load double, ptr %arrayidx5.i, align 8, !tbaa !11
  %cmp777.not.i = icmp eq i64 %indvars.iv105.i, 0
  br i1 %cmp777.not.i, label %for.end.i, label %for.body8.i

for.body8.i:                                      ; preds = %for.body3.i, %for.body8.i
  %indvars.iv.i35 = phi i64 [ %indvars.iv.next.i36, %for.body8.i ], [ 0, %for.body3.i ]
  %w.079.i = phi double [ %76, %for.body8.i ], [ %73, %for.body3.i ]
  %arrayidx12.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv114.i, i64 %indvars.iv.i35
  %74 = load double, ptr %arrayidx12.i, align 8, !tbaa !11
  %arrayidx16.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv.i35, i64 %indvars.iv105.i
  %75 = load double, ptr %arrayidx16.i, align 8, !tbaa !11
  %neg.i = fneg double %74
  %76 = call double @llvm.fmuladd.f64(double %neg.i, double %75, double %w.079.i)
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, %indvars.iv105.i
  br i1 %exitcond.not.i37, label %for.end.i, label %for.body8.i, !llvm.loop !42

for.end.i:                                        ; preds = %for.body8.i, %for.body3.i
  %w.0.lcssa.i = phi double [ %73, %for.body3.i ], [ %76, %for.body8.i ]
  %arrayidx20.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv105.i, i64 %indvars.iv105.i
  %77 = load double, ptr %arrayidx20.i, align 8, !tbaa !11
  %div.i38 = fdiv double %w.0.lcssa.i, %77
  store double %div.i38, ptr %arrayidx5.i, align 8, !tbaa !11
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next106.i, %indvars.iv114.i
  br i1 %exitcond109.not.i, label %for.body30.us.i, label %for.body3.i, !llvm.loop !43

for.inc57.i:                                      ; preds = %for.cond35.for.end49_crit_edge.us.i, %for.cond1.preheader.i
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1
  %exitcond121.not.i = icmp eq i64 %indvars.iv.next115.i, 2000
  br i1 %exitcond121.not.i, label %for.body62.i, label %for.cond1.preheader.i, !llvm.loop !44

for.body62.i:                                     ; preds = %for.inc57.i, %for.end77.i
  %indvars.iv126.i = phi i64 [ %indvars.iv.next127.i, %for.end77.i ], [ 0, %for.inc57.i ]
  %arrayidx64.i = getelementptr inbounds nuw double, ptr %4, i64 %indvars.iv126.i
  %78 = load double, ptr %arrayidx64.i, align 8, !tbaa !11
  %cmp6690.not.i = icmp eq i64 %indvars.iv126.i, 0
  br i1 %cmp6690.not.i, label %for.end77.i, label %for.body67.i

for.body67.i:                                     ; preds = %for.body62.i, %for.body67.i
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %for.body67.i ], [ 0, %for.body62.i ]
  %w.292.i = phi double [ %81, %for.body67.i ], [ %78, %for.body62.i ]
  %arrayidx71.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv126.i, i64 %indvars.iv122.i
  %79 = load double, ptr %arrayidx71.i, align 8, !tbaa !11
  %arrayidx73.i = getelementptr inbounds nuw double, ptr %12, i64 %indvars.iv122.i
  %80 = load double, ptr %arrayidx73.i, align 8, !tbaa !11
  %neg74.i = fneg double %79
  %81 = call double @llvm.fmuladd.f64(double %neg74.i, double %80, double %w.292.i)
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1
  %exitcond125.not.i = icmp eq i64 %indvars.iv.next123.i, %indvars.iv126.i
  br i1 %exitcond125.not.i, label %for.end77.i, label %for.body67.i, !llvm.loop !45

for.end77.i:                                      ; preds = %for.body67.i, %for.body62.i
  %w.2.lcssa.i = phi double [ %78, %for.body62.i ], [ %81, %for.body67.i ]
  %arrayidx79.i = getelementptr inbounds nuw double, ptr %12, i64 %indvars.iv126.i
  store double %w.2.lcssa.i, ptr %arrayidx79.i, align 8, !tbaa !11
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1
  %exitcond129.not.i = icmp eq i64 %indvars.iv.next127.i, 2000
  br i1 %exitcond129.not.i, label %for.body85.i, label %for.body62.i, !llvm.loop !46

for.body85.i:                                     ; preds = %for.end77.i, %for.end100.i
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i, %for.end100.i ], [ 1999, %for.end77.i ]
  %arrayidx87.i = getelementptr inbounds nuw double, ptr %12, i64 %indvars.iv130.i
  %82 = load double, ptr %arrayidx87.i, align 8, !tbaa !11
  %cmp8995.i = icmp samesign ult i64 %indvars.iv130.i, 1999
  br i1 %cmp8995.i, label %for.body90.i, label %for.end100.i

for.body90.i:                                     ; preds = %for.body85.i, %for.body90.i
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %for.body90.i ], [ %indvars.iv130.i, %for.body85.i ]
  %w.397.i = phi double [ %85, %for.body90.i ], [ %82, %for.body85.i ]
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1
  %arrayidx94.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv130.i, i64 %indvars.iv.next133.i
  %83 = load double, ptr %arrayidx94.i, align 8, !tbaa !11
  %arrayidx96.i = getelementptr inbounds nuw double, ptr %8, i64 %indvars.iv.next133.i
  %84 = load double, ptr %arrayidx96.i, align 8, !tbaa !11
  %neg97.i = fneg double %83
  %85 = call double @llvm.fmuladd.f64(double %neg97.i, double %84, double %w.397.i)
  %exitcond135.not.i = icmp eq i64 %indvars.iv.next133.i, 1999
  br i1 %exitcond135.not.i, label %for.end100.i, label %for.body90.i, !llvm.loop !47

for.end100.i:                                     ; preds = %for.body90.i, %for.body85.i
  %w.3.lcssa.i = phi double [ %82, %for.body85.i ], [ %85, %for.body90.i ]
  %arrayidx104.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv130.i, i64 %indvars.iv130.i
  %86 = load double, ptr %arrayidx104.i, align 8, !tbaa !11
  %div105.i = fdiv double %w.3.lcssa.i, %86
  %arrayidx107.i = getelementptr inbounds nuw double, ptr %8, i64 %indvars.iv130.i
  store double %div105.i, ptr %arrayidx107.i, align 8, !tbaa !11
  %indvars.iv.next131.i = add nsw i64 %indvars.iv130.i, -1
  %cmp84.not.i = icmp eq i64 %indvars.iv130.i, 0
  br i1 %cmp84.not.i, label %kernel_ludcmp.exit, label %for.body85.i, !llvm.loop !48

kernel_ludcmp.exit:                               ; preds = %for.end100.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i39) #13
  %call.i.i40 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i39, ptr noundef null) #13
  %cmp.not.i.i41 = icmp eq i32 %call.i.i40, 0
  br i1 %cmp.not.i.i41, label %polybench_timer_stop.exit, label %if.then.i.i42

if.then.i.i42:                                    ; preds = %kernel_ludcmp.exit
  %call1.i.i43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i40)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_ludcmp.exit, %if.then.i.i42
  %87 = load i64, ptr %Tp.i.i39, align 8, !tbaa !5
  %conv.i.i44 = sitofp i64 %87 to double
  %tv_usec.i.i45 = getelementptr inbounds nuw i8, ptr %Tp.i.i39, i64 8
  %88 = load i64, ptr %tv_usec.i.i45, align 8, !tbaa !10
  %conv2.i.i46 = sitofp i64 %88 to double
  %89 = call double @llvm.fmuladd.f64(double %conv2.i.i46, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i44)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i39) #13
  store double %89, ptr @polybench_t_end, align 8, !tbaa !11
  %90 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %89, %90
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %91 = load ptr, ptr %argv, align 8, !tbaa !49
  %strcmpload = load i8, ptr %91, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #13
  call void @free(ptr noundef %4) #13
  call void @free(ptr noundef nonnull %8) #13
  call void @free(ptr noundef nonnull %12) #13
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %x) unnamed_addr #9 {
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
  %arrayidx = getelementptr inbounds nuw double, ptr %x, i64 %indvars.iv
  %5 = load double, ptr %arrayidx, align 8, !tbaa !11
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, double noundef %5) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !51

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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!21 = distinct !{!21, !18, !19}
!22 = distinct !{!22, !18, !19, !20}
!23 = distinct !{!23, !18, !19}
!24 = distinct !{!24, !18}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = !{!31}
!31 = distinct !{!31, !27}
!32 = !{!29, !26}
!33 = distinct !{!33, !18, !19, !20}
!34 = distinct !{!34, !18, !19}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18, !19, !20}
!38 = distinct !{!38, !18, !19}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 omnipotent char", !14, i64 0}
!51 = distinct !{!51, !18}
