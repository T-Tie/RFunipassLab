; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/seidel-2d.ll'
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
  %Tp.i.i13 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
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
  br label %vector.ph

vector.ph:                                        ; preds = %polybench_alloc_data.exit, %for.inc8.i
  %indvars.iv13.i = phi i64 [ 0, %polybench_alloc_data.exit ], [ %indvars.iv.next14.i, %for.inc8.i ]
  %3 = trunc nuw nsw i64 %indvars.iv13.i to i32
  %conv.i = uitofp nneg i32 %3 to double
  %broadcast.splatinsert = insertelement <2 x double> poison, double %conv.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %4 = add <2 x i32> %vec.ind, splat (i32 2)
  %5 = uitofp nneg <2 x i32> %4 to <2 x double>
  %6 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %5, <2 x double> splat (double 2.000000e+00))
  %7 = fdiv <2 x double> %6, splat (double 2.000000e+03)
  %8 = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv13.i, i64 %index
  store <2 x double> %7, ptr %8, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %9 = icmp eq i64 %index.next, 2000
  br i1 %9, label %for.inc8.i, label %vector.body, !llvm.loop !17

for.inc8.i:                                       ; preds = %vector.body
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next14.i, 2000
  br i1 %exitcond16.not.i, label %init_array.exit, label %vector.ph, !llvm.loop !21

init_array.exit:                                  ; preds = %for.inc8.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #12
  %call.i.i6 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #12
  %cmp.not.i.i = icmp eq i32 %call.i.i6, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i7

if.then.i.i7:                                     ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i6)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i7
  %10 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %10 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %11 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %11 to double
  %12 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #12
  store double %12, ptr @polybench_t_start, align 8, !tbaa !11
  br label %for.cond1.preheader.i8

for.cond1.preheader.i8:                           ; preds = %for.inc69.i, %polybench_timer_start.exit
  %t.036.i = phi i32 [ 0, %polybench_timer_start.exit ], [ %inc70.i, %for.inc69.i ]
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.inc66.i, %for.cond1.preheader.i8
  %indvars.iv39.i = phi i64 [ 1, %for.cond1.preheader.i8 ], [ %indvars.iv.next40.i, %for.inc66.i ]
  %13 = getelementptr [2000 x double], ptr %0, i64 %indvars.iv39.i
  %arrayidx.i = getelementptr i8, ptr %13, i64 -16000
  %arrayidx44.i = getelementptr inbounds nuw i8, ptr %13, i64 16000
  %.pre.i = load double, ptr %arrayidx.i, align 8, !tbaa !11
  %arrayidx17.phi.trans.insert.i = getelementptr i8, ptr %13, i64 -15992
  %.pre44.i = load double, ptr %arrayidx17.phi.trans.insert.i, align 8, !tbaa !11
  %.pre45.i = load double, ptr %13, align 8, !tbaa !11
  %arrayidx34.phi.trans.insert.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv39.i, i64 1
  %.pre46.i = load double, ptr %arrayidx34.phi.trans.insert.i, align 8, !tbaa !11
  %.pre47.i = load double, ptr %arrayidx44.i, align 8, !tbaa !11
  %arrayidx53.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %13, i64 16008
  %.pre48.i = load double, ptr %arrayidx53.phi.trans.insert.i, align 8, !tbaa !11
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i, %for.cond5.preheader.i
  %14 = phi double [ %.pre48.i, %for.cond5.preheader.i ], [ %22, %for.body8.i ]
  %15 = phi double [ %.pre47.i, %for.cond5.preheader.i ], [ %14, %for.body8.i ]
  %16 = phi double [ %.pre46.i, %for.cond5.preheader.i ], [ %21, %for.body8.i ]
  %17 = phi double [ %.pre45.i, %for.cond5.preheader.i ], [ %div.i11, %for.body8.i ]
  %18 = phi double [ %.pre44.i, %for.cond5.preheader.i ], [ %20, %for.body8.i ]
  %19 = phi double [ %.pre.i, %for.cond5.preheader.i ], [ %18, %for.body8.i ]
  %indvars.iv.i9 = phi i64 [ 1, %for.cond5.preheader.i ], [ %indvars.iv.next.i10, %for.body8.i ]
  %add.i = fadd double %18, %19
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1
  %arrayidx23.i = getelementptr inbounds nuw [2000 x double], ptr %arrayidx.i, i64 0, i64 %indvars.iv.next.i10
  %20 = load double, ptr %arrayidx23.i, align 8, !tbaa !11
  %add24.i = fadd double %add.i, %20
  %add30.i = fadd double %17, %add24.i
  %arrayidx34.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv39.i, i64 %indvars.iv.i9
  %add35.i = fadd double %16, %add30.i
  %arrayidx40.i = getelementptr inbounds nuw [2000 x double], ptr %0, i64 %indvars.iv39.i, i64 %indvars.iv.next.i10
  %21 = load double, ptr %arrayidx40.i, align 8, !tbaa !11
  %add41.i = fadd double %21, %add35.i
  %add48.i = fadd double %15, %add41.i
  %add54.i = fadd double %14, %add48.i
  %arrayidx60.i = getelementptr inbounds nuw [2000 x double], ptr %arrayidx44.i, i64 0, i64 %indvars.iv.next.i10
  %22 = load double, ptr %arrayidx60.i, align 8, !tbaa !11
  %add61.i = fadd double %22, %add54.i
  %div.i11 = fdiv double %add61.i, 9.000000e+00
  store double %div.i11, ptr %arrayidx34.i, align 8, !tbaa !11
  %exitcond.not.i12 = icmp eq i64 %indvars.iv.next.i10, 1999
  br i1 %exitcond.not.i12, label %for.inc66.i, label %for.body8.i, !llvm.loop !22

for.inc66.i:                                      ; preds = %for.body8.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 1999
  br i1 %exitcond42.not.i, label %for.inc69.i, label %for.cond5.preheader.i, !llvm.loop !23

for.inc69.i:                                      ; preds = %for.inc66.i
  %inc70.i = add nuw nsw i32 %t.036.i, 1
  %exitcond43.not.i = icmp eq i32 %inc70.i, 500
  br i1 %exitcond43.not.i, label %kernel_seidel_2d.exit, label %for.cond1.preheader.i8, !llvm.loop !24

kernel_seidel_2d.exit:                            ; preds = %for.inc69.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i13) #12
  %call.i.i14 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i13, ptr noundef null) #12
  %cmp.not.i.i15 = icmp eq i32 %call.i.i14, 0
  br i1 %cmp.not.i.i15, label %polybench_timer_stop.exit, label %if.then.i.i16

if.then.i.i16:                                    ; preds = %kernel_seidel_2d.exit
  %call1.i.i17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i14)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_seidel_2d.exit, %if.then.i.i16
  %23 = load i64, ptr %Tp.i.i13, align 8, !tbaa !5
  %conv.i.i18 = sitofp i64 %23 to double
  %tv_usec.i.i19 = getelementptr inbounds nuw i8, ptr %Tp.i.i13, i64 8
  %24 = load i64, ptr %tv_usec.i.i19, align 8, !tbaa !10
  %conv2.i.i20 = sitofp i64 %24 to double
  %25 = call double @llvm.fmuladd.f64(double %conv2.i.i20, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i18)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i13) #12
  store double %25, ptr @polybench_t_end, align 8, !tbaa !11
  %26 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %25, %26
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %27 = load ptr, ptr %argv, align 8, !tbaa !25
  %strcmpload = load i8, ptr %27, align 1
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

for.cond2.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv13 = phi i64 [ 0, %entry ], [ %indvars.iv.next14, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv13, 2000
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
  %arrayidx8 = getelementptr inbounds nuw [2000 x double], ptr %A, i64 %indvars.iv13, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !27

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next14, 2000
  br i1 %exitcond17.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !28

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
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
