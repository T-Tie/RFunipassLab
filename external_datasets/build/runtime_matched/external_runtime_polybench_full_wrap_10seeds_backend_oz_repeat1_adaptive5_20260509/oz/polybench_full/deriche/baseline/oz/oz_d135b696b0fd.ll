; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll'
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
@.str.3.8 = private unnamed_addr constant [7 x i8] c"imgOut\00", align 1
@.str.5.10 = private unnamed_addr constant [7 x i8] c"%0.2f \00", align 1
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
  %call = tail call fastcc double @rtclock()
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #3 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp) #11
  %call = call i32 @gettimeofday(ptr noundef nonnull %Tp, ptr noundef null) #11
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !9
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !12
  %conv2 = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2, double 0x3EB0C6F7A0B5ED8D, double %conv)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp) #11
  ret double %2
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
  %call = tail call fastcc double @rtclock()
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #3 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4)
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4)
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc7.i, %entry
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.inc7.i ], [ 0, %entry ]
  %exitcond14.not.i = icmp eq i64 %indvars.iv10.i, 4096
  br i1 %exitcond14.not.i, label %init_array.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = mul nuw nsw i64 %indvars.iv10.i, 313
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2160
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %1 = mul nuw nsw i64 %indvars.iv.i, 991
  %2 = add nuw nsw i64 %1, %0
  %3 = trunc nuw nsw i64 %2 to i32
  %rem.i = and i32 %3, 65535
  %conv.i = uitofp nneg i32 %rem.i to float
  %div.i = fdiv float %conv.i, 6.553500e+04
  %arrayidx6.i = getelementptr inbounds nuw [2160 x float], ptr %call, i64 %indvars.iv10.i, i64 %indvars.iv.i
  store float %div.i, ptr %arrayidx6.i, align 4, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !19

for.inc7.i:                                       ; preds = %for.cond1.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  br label %for.cond.i, !llvm.loop !21

init_array.exit:                                  ; preds = %for.cond.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  %exp2f.i = tail call float @exp2f(float -2.500000e-01) #11
  br label %for.cond.i14

for.cond.i14:                                     ; preds = %for.inc50.i, %init_array.exit
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i, %for.inc50.i ], [ 0, %init_array.exit ]
  %exitcond124.not.i = icmp eq i64 %indvars.iv121.i, 4096
  br i1 %exitcond124.not.i, label %for.cond53.i, label %for.cond29.i

for.cond29.i:                                     ; preds = %for.cond.i14, %for.body31.i
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i17, %for.body31.i ], [ 0, %for.cond.i14 ]
  %ym2.0.i = phi float [ %ym1.0.i, %for.body31.i ], [ 0.000000e+00, %for.cond.i14 ]
  %ym1.0.i = phi float [ %7, %for.body31.i ], [ 0.000000e+00, %for.cond.i14 ]
  %xm1.0.i = phi float [ %8, %for.body31.i ], [ 0.000000e+00, %for.cond.i14 ]
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.i15, 2160
  br i1 %exitcond.not.i16, label %for.inc50.i, label %for.body31.i

for.body31.i:                                     ; preds = %for.cond29.i
  %arrayidx33.i = getelementptr inbounds nuw [2160 x float], ptr %call, i64 %indvars.iv121.i, i64 %indvars.iv.i15
  %4 = load float, ptr %arrayidx33.i, align 4, !tbaa !17
  %mul35.i = fmul float %xm1.0.i, 0x3FBC36A980000000
  %5 = tail call float @llvm.fmuladd.f32(float %4, float 0xBFC826B880000000, float %mul35.i)
  %6 = tail call float @llvm.fmuladd.f32(float %ym1.0.i, float 0x3FEAE89FA0000000, float %5)
  %7 = tail call float @llvm.fmuladd.f32(float %ym2.0.i, float 0xBFE368B300000000, float %6)
  %arrayidx41.i = getelementptr inbounds nuw [2160 x float], ptr %call2, i64 %indvars.iv121.i, i64 %indvars.iv.i15
  store float %7, ptr %arrayidx41.i, align 4, !tbaa !17
  %8 = load float, ptr %arrayidx33.i, align 4, !tbaa !17
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1
  br label %for.cond29.i, !llvm.loop !22

for.inc50.i:                                      ; preds = %for.cond29.i
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1
  br label %for.cond.i14, !llvm.loop !23

for.cond53.i:                                     ; preds = %for.cond.i14, %for.inc78.i
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i, %for.inc78.i ], [ 0, %for.cond.i14 ]
  %exitcond128.not.i = icmp eq i64 %indvars.iv125.i, 4096
  br i1 %exitcond128.not.i, label %for.cond81.i, label %for.cond57.i

for.cond57.i:                                     ; preds = %for.cond53.i, %for.body59.i
  %yp2.0.i = phi float [ %yp1.0.i, %for.body59.i ], [ 0.000000e+00, %for.cond53.i ]
  %yp1.0.i = phi float [ %11, %for.body59.i ], [ 0.000000e+00, %for.cond53.i ]
  %xp2.0.i = phi float [ %xp1.0.i, %for.body59.i ], [ 0.000000e+00, %for.cond53.i ]
  %xp1.0.i = phi float [ %12, %for.body59.i ], [ 0.000000e+00, %for.cond53.i ]
  %j.1.i = phi i32 [ %dec.i, %for.body59.i ], [ 2159, %for.cond53.i ]
  %cmp58.i = icmp sgt i32 %j.1.i, -1
  br i1 %cmp58.i, label %for.body59.i, label %for.inc78.i

for.body59.i:                                     ; preds = %for.cond57.i
  %mul61.i = fmul float %xp2.0.i, 0x3FBD4C0500000000
  %9 = tail call float @llvm.fmuladd.f32(float %xp1.0.i, float 0xBFC782E280000000, float %mul61.i)
  %10 = tail call float @llvm.fmuladd.f32(float %yp1.0.i, float 0x3FEAE89FA0000000, float %9)
  %11 = tail call float @llvm.fmuladd.f32(float %yp2.0.i, float 0xBFE368B300000000, float %10)
  %idxprom66.i = zext nneg i32 %j.1.i to i64
  %arrayidx67.i = getelementptr inbounds nuw [2160 x float], ptr %call3, i64 %indvars.iv125.i, i64 %idxprom66.i
  store float %11, ptr %arrayidx67.i, align 4, !tbaa !17
  %arrayidx71.i = getelementptr inbounds nuw [2160 x float], ptr %call, i64 %indvars.iv125.i, i64 %idxprom66.i
  %12 = load float, ptr %arrayidx71.i, align 4, !tbaa !17
  %dec.i = add nsw i32 %j.1.i, -1
  br label %for.cond57.i, !llvm.loop !24

for.inc78.i:                                      ; preds = %for.cond57.i
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1
  br label %for.cond53.i, !llvm.loop !25

for.cond81.i:                                     ; preds = %for.cond53.i, %for.inc104.i
  %indvars.iv133.i = phi i64 [ %indvars.iv.next134.i, %for.inc104.i ], [ 0, %for.cond53.i ]
  %exitcond136.not.i = icmp eq i64 %indvars.iv133.i, 4096
  br i1 %exitcond136.not.i, label %for.cond107.i, label %for.cond84.i

for.cond84.i:                                     ; preds = %for.cond81.i, %for.body86.i
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %for.body86.i ], [ 0, %for.cond81.i ]
  %exitcond132.not.i = icmp eq i64 %indvars.iv129.i, 2160
  br i1 %exitcond132.not.i, label %for.inc104.i, label %for.body86.i

for.body86.i:                                     ; preds = %for.cond84.i
  %arrayidx90.i = getelementptr inbounds nuw [2160 x float], ptr %call2, i64 %indvars.iv133.i, i64 %indvars.iv129.i
  %13 = load float, ptr %arrayidx90.i, align 4, !tbaa !17
  %arrayidx94.i = getelementptr inbounds nuw [2160 x float], ptr %call3, i64 %indvars.iv133.i, i64 %indvars.iv129.i
  %14 = load float, ptr %arrayidx94.i, align 4, !tbaa !17
  %add95.i = fadd float %13, %14
  %arrayidx100.i = getelementptr inbounds nuw [2160 x float], ptr %call1, i64 %indvars.iv133.i, i64 %indvars.iv129.i
  store float %add95.i, ptr %arrayidx100.i, align 4, !tbaa !17
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1
  br label %for.cond84.i, !llvm.loop !26

for.inc104.i:                                     ; preds = %for.cond84.i
  %indvars.iv.next134.i = add nuw nsw i64 %indvars.iv133.i, 1
  br label %for.cond81.i, !llvm.loop !27

for.cond107.i:                                    ; preds = %for.cond81.i, %for.inc136.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %for.inc136.i ], [ 0, %for.cond81.i ]
  %exitcond144.not.i = icmp eq i64 %indvars.iv141.i, 2160
  br i1 %exitcond144.not.i, label %for.cond139.i, label %for.cond110.i

for.cond110.i:                                    ; preds = %for.cond107.i, %for.body112.i
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %for.body112.i ], [ 0, %for.cond107.i ]
  %ym2.1.i = phi float [ %ym1.1.i, %for.body112.i ], [ 0.000000e+00, %for.cond107.i ]
  %ym1.1.i = phi float [ %18, %for.body112.i ], [ 0.000000e+00, %for.cond107.i ]
  %tm1.0.i = phi float [ %19, %for.body112.i ], [ 0.000000e+00, %for.cond107.i ]
  %exitcond140.not.i = icmp eq i64 %indvars.iv137.i, 4096
  br i1 %exitcond140.not.i, label %for.inc136.i, label %for.body112.i

for.body112.i:                                    ; preds = %for.cond110.i
  %arrayidx116.i = getelementptr inbounds nuw [2160 x float], ptr %call1, i64 %indvars.iv137.i, i64 %indvars.iv141.i
  %15 = load float, ptr %arrayidx116.i, align 4, !tbaa !17
  %mul118.i = fmul float %tm1.0.i, 0x3FBC36A980000000
  %16 = tail call float @llvm.fmuladd.f32(float %15, float 0xBFC826B880000000, float %mul118.i)
  %17 = tail call float @llvm.fmuladd.f32(float %ym1.1.i, float 0x3FEAE89FA0000000, float %16)
  %18 = tail call float @llvm.fmuladd.f32(float %ym2.1.i, float 0xBFE368B300000000, float %17)
  %arrayidx124.i = getelementptr inbounds nuw [2160 x float], ptr %call2, i64 %indvars.iv137.i, i64 %indvars.iv141.i
  store float %18, ptr %arrayidx124.i, align 4, !tbaa !17
  %19 = load float, ptr %arrayidx116.i, align 4, !tbaa !17
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1
  br label %for.cond110.i, !llvm.loop !28

for.inc136.i:                                     ; preds = %for.cond110.i
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1
  br label %for.cond107.i, !llvm.loop !29

for.cond139.i:                                    ; preds = %for.cond107.i, %for.inc165.i
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %for.inc165.i ], [ 0, %for.cond107.i ]
  %exitcond148.not.i = icmp eq i64 %indvars.iv145.i, 2160
  br i1 %exitcond148.not.i, label %for.cond168.i, label %for.cond143.i

for.cond143.i:                                    ; preds = %for.cond139.i, %for.body145.i
  %yp2.1.i = phi float [ %yp1.1.i, %for.body145.i ], [ 0.000000e+00, %for.cond139.i ]
  %yp1.1.i = phi float [ %22, %for.body145.i ], [ 0.000000e+00, %for.cond139.i ]
  %tp2.0.i = phi float [ %tp1.0.i, %for.body145.i ], [ 0.000000e+00, %for.cond139.i ]
  %tp1.0.i = phi float [ %23, %for.body145.i ], [ 0.000000e+00, %for.cond139.i ]
  %i.4.i = phi i32 [ %dec163.i, %for.body145.i ], [ 4095, %for.cond139.i ]
  %cmp144.i = icmp sgt i32 %i.4.i, -1
  br i1 %cmp144.i, label %for.body145.i, label %for.inc165.i

for.body145.i:                                    ; preds = %for.cond143.i
  %mul147.i = fmul float %tp2.0.i, 0x3FBD4C0500000000
  %20 = tail call float @llvm.fmuladd.f32(float %tp1.0.i, float 0xBFC782E280000000, float %mul147.i)
  %21 = tail call float @llvm.fmuladd.f32(float %yp1.1.i, float 0x3FEAE89FA0000000, float %20)
  %22 = tail call float @llvm.fmuladd.f32(float %yp2.1.i, float 0xBFE368B300000000, float %21)
  %idxprom150.i = zext nneg i32 %i.4.i to i64
  %arrayidx153.i = getelementptr inbounds nuw [2160 x float], ptr %call3, i64 %idxprom150.i, i64 %indvars.iv145.i
  store float %22, ptr %arrayidx153.i, align 4, !tbaa !17
  %arrayidx157.i = getelementptr inbounds nuw [2160 x float], ptr %call1, i64 %idxprom150.i, i64 %indvars.iv145.i
  %23 = load float, ptr %arrayidx157.i, align 4, !tbaa !17
  %dec163.i = add nsw i32 %i.4.i, -1
  br label %for.cond143.i, !llvm.loop !30

for.inc165.i:                                     ; preds = %for.cond143.i
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1
  br label %for.cond139.i, !llvm.loop !31

for.cond168.i:                                    ; preds = %for.cond139.i, %for.inc191.i
  %indvars.iv153.i = phi i64 [ %indvars.iv.next154.i, %for.inc191.i ], [ 0, %for.cond139.i ]
  %exitcond156.not.i = icmp eq i64 %indvars.iv153.i, 4096
  br i1 %exitcond156.not.i, label %kernel_deriche.exit, label %for.cond171.i

for.cond171.i:                                    ; preds = %for.cond168.i, %for.body173.i
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %for.body173.i ], [ 0, %for.cond168.i ]
  %exitcond152.not.i = icmp eq i64 %indvars.iv149.i, 2160
  br i1 %exitcond152.not.i, label %for.inc191.i, label %for.body173.i

for.body173.i:                                    ; preds = %for.cond171.i
  %arrayidx177.i = getelementptr inbounds nuw [2160 x float], ptr %call2, i64 %indvars.iv153.i, i64 %indvars.iv149.i
  %24 = load float, ptr %arrayidx177.i, align 4, !tbaa !17
  %arrayidx181.i = getelementptr inbounds nuw [2160 x float], ptr %call3, i64 %indvars.iv153.i, i64 %indvars.iv149.i
  %25 = load float, ptr %arrayidx181.i, align 4, !tbaa !17
  %add182.i = fadd float %24, %25
  %arrayidx187.i = getelementptr inbounds nuw [2160 x float], ptr %call1, i64 %indvars.iv153.i, i64 %indvars.iv149.i
  store float %add182.i, ptr %arrayidx187.i, align 4, !tbaa !17
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1
  br label %for.cond171.i, !llvm.loop !32

for.inc191.i:                                     ; preds = %for.cond171.i
  %indvars.iv.next154.i = add nuw nsw i64 %indvars.iv153.i, 1
  br label %for.cond168.i, !llvm.loop !33

kernel_deriche.exit:                              ; preds = %for.cond168.i
  %call.i18 = tail call fastcc double @rtclock()
  store double %call.i18, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_deriche.exit
  %26 = load ptr, ptr %argv, align 8, !tbaa !34
  %strcmpload = load i8, ptr %26, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_deriche.exit
  tail call void @free(ptr noundef nonnull %call) #11
  tail call void @free(ptr noundef nonnull %call1) #11
  tail call void @free(ptr noundef nonnull %call2) #11
  tail call void @free(ptr noundef nonnull %call3) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %imgOut) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc10 ], [ 0, %entry ]
  %exitcond14.not = icmp eq i64 %indvars.iv10, 4096
  br i1 %exitcond14.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %3 = mul nuw nsw i64 %indvars.iv10, 2160
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, 2160
  br i1 %exitcond.not, label %for.inc10, label %for.body4

for.body4:                                        ; preds = %for.cond2
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
  %arrayidx8 = getelementptr inbounds nuw [2160 x float], ptr %imgOut, i64 %indvars.iv10, i64 %indvars.iv
  %8 = load float, ptr %arrayidx8, align 4, !tbaa !17
  %conv = fpext float %8 to double
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %conv) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !36

for.inc10:                                        ; preds = %for.cond2
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond, !llvm.loop !37

for.end12:                                        ; preds = %for.cond
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

declare float @exp2f(float) local_unnamed_addr

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
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"timeval", !11, i64 0, !11, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !7, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 omnipotent char", !14, i64 0}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
