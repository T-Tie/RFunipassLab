; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/root/exp/RFunipassLab/external_datasets/sources/polybench_full/utilities/polybench.c\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Error return from gettimeofday: %d\00", align 1
@polybench_inter_array_padding_sz = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.6 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3.8 = private unnamed_addr constant [7 x i8] c"imgOut\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [7 x i8] c"%0.2f \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #5 {
entry:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #5 {
entry:
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #8 {
entry:
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp.i) #18
  %call.i = call i32 @gettimeofday(ptr noundef nonnull align 8 captures(none) %Tp.i, ptr noundef null) #19
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i) #19
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2.i, double noundef 0x3EB0C6F7A0B5ED8D, double %conv.i) #20
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp.i) #19
  store double %2, ptr @polybench_t_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #8 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #19
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #9 {
entry:
  tail call void @free(ptr noundef captures(none) %ptr) #21
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #8 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #18
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #19
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(51) @.str.4) #19
  call void @exit(i32 noundef 1) #22
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #19
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #11 {
entry:
  %call.i = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #19, !noalias !15
  %call.i4 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #19, !noalias !18
  %call.i5 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #19, !noalias !21
  %call.i6 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #19, !noalias !24
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.end.i, %entry
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.end.i ], [ 0, %entry ]
  %exitcond14.not.i = icmp eq i64 %indvars.iv10.i, 4096
  br i1 %exitcond14.not.i, label %init_array.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = mul nuw nsw i64 %indvars.iv10.i, 313
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2160
  br i1 %exitcond.not.i, label %for.end.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %1 = mul nuw nsw i64 %indvars.iv.i, 991
  %2 = add nuw nsw i64 %1, %0
  %3 = trunc nuw nsw i64 %2 to i32
  %rem.i = and i32 %3, 65535
  %conv.i = uitofp nneg i32 %rem.i to float
  %div.i = fdiv float %conv.i, 6.553500e+04
  %arrayidx6.i = getelementptr inbounds nuw [2160 x float], ptr %call.i, i64 %indvars.iv10.i, i64 %indvars.iv.i
  store float %div.i, ptr %arrayidx6.i, align 4, !tbaa !27, !noalias !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !32

for.end.i:                                        ; preds = %for.cond1.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  br label %for.cond.i

init_array.exit:                                  ; preds = %for.cond.i
  %exp2f.i = tail call float @exp2f(float -2.500000e-01) #23
  br label %for.cond.i9

for.cond.i9:                                      ; preds = %for.end.i13, %init_array.exit
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %for.end.i13 ], [ 0, %init_array.exit ]
  %exitcond102.not.i = icmp eq i64 %indvars.iv99.i, 4096
  br i1 %exitcond102.not.i, label %for.cond53.i, label %for.cond29.i

for.cond29.i:                                     ; preds = %for.cond.i9, %for.body31.i
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i12, %for.body31.i ], [ 0, %for.cond.i9 ]
  %ym2.0.i = phi float [ %ym1.0.i, %for.body31.i ], [ 0.000000e+00, %for.cond.i9 ]
  %ym1.0.i = phi float [ %7, %for.body31.i ], [ 0.000000e+00, %for.cond.i9 ]
  %xm1.0.i = phi float [ %4, %for.body31.i ], [ 0.000000e+00, %for.cond.i9 ]
  %exitcond.not.i11 = icmp eq i64 %indvars.iv.i10, 2160
  br i1 %exitcond.not.i11, label %for.end.i13, label %for.body31.i

for.body31.i:                                     ; preds = %for.cond29.i
  %arrayidx33.i = getelementptr inbounds nuw [2160 x float], ptr %call.i, i64 %indvars.iv99.i, i64 %indvars.iv.i10
  %4 = load float, ptr %arrayidx33.i, align 4, !tbaa !27, !invariant.load !34
  %mul35.i = fmul float %xm1.0.i, 0x3FBC36A980000000
  %5 = tail call float @llvm.fmuladd.f32(float %4, float 0xBFC826B880000000, float %mul35.i) #20
  %6 = tail call float @llvm.fmuladd.f32(float %ym1.0.i, float 0x3FEAE89FA0000000, float %5) #20
  %7 = tail call float @llvm.fmuladd.f32(float %ym2.0.i, float 0xBFE368B300000000, float %6) #20
  %arrayidx41.i = getelementptr inbounds nuw [2160 x float], ptr %call.i5, i64 %indvars.iv99.i, i64 %indvars.iv.i10
  store float %7, ptr %arrayidx41.i, align 4, !tbaa !27
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i10, 1
  br label %for.cond29.i, !llvm.loop !35

for.end.i13:                                      ; preds = %for.cond29.i
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1
  br label %for.cond.i9, !llvm.loop !36

for.cond53.i:                                     ; preds = %for.cond.i9, %for.end77.i
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i, %for.end77.i ], [ 0, %for.cond.i9 ]
  %exitcond106.not.i = icmp eq i64 %indvars.iv103.i, 4096
  br i1 %exitcond106.not.i, label %for.cond81.i, label %for.cond57.i

for.cond57.i:                                     ; preds = %for.cond53.i, %for.body59.i
  %yp2.0.i = phi float [ %yp1.0.i, %for.body59.i ], [ 0.000000e+00, %for.cond53.i ]
  %yp1.0.i = phi float [ %10, %for.body59.i ], [ 0.000000e+00, %for.cond53.i ]
  %xp2.0.i = phi float [ %xp1.0.i, %for.body59.i ], [ 0.000000e+00, %for.cond53.i ]
  %xp1.0.i = phi float [ %11, %for.body59.i ], [ 0.000000e+00, %for.cond53.i ]
  %j.1.i = phi i32 [ %dec.i, %for.body59.i ], [ 2159, %for.cond53.i ]
  %cmp58.i = icmp sgt i32 %j.1.i, -1
  br i1 %cmp58.i, label %for.body59.i, label %for.end77.i

for.body59.i:                                     ; preds = %for.cond57.i
  %mul61.i = fmul float %xp2.0.i, 0x3FBD4C0500000000
  %8 = tail call float @llvm.fmuladd.f32(float %xp1.0.i, float 0xBFC782E280000000, float %mul61.i) #20
  %9 = tail call float @llvm.fmuladd.f32(float %yp1.0.i, float 0x3FEAE89FA0000000, float %8) #20
  %10 = tail call float @llvm.fmuladd.f32(float %yp2.0.i, float 0xBFE368B300000000, float %9) #20
  %idxprom66.i = zext nneg i32 %j.1.i to i64
  %arrayidx67.i = getelementptr inbounds nuw [2160 x float], ptr %call.i6, i64 %indvars.iv103.i, i64 %idxprom66.i
  store float %10, ptr %arrayidx67.i, align 4, !tbaa !27
  %arrayidx71.i = getelementptr inbounds nuw [2160 x float], ptr %call.i, i64 %indvars.iv103.i, i64 %idxprom66.i
  %11 = load float, ptr %arrayidx71.i, align 4, !tbaa !27, !invariant.load !34
  %dec.i = add nsw i32 %j.1.i, -1
  br label %for.cond57.i, !llvm.loop !37

for.end77.i:                                      ; preds = %for.cond57.i
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1
  br label %for.cond53.i, !llvm.loop !38

for.cond81.i:                                     ; preds = %for.cond53.i, %for.end103.i
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i, %for.end103.i ], [ 0, %for.cond53.i ]
  %exitcond114.not.i = icmp eq i64 %indvars.iv111.i, 4096
  br i1 %exitcond114.not.i, label %for.cond107.i, label %for.cond84.i

for.cond84.i:                                     ; preds = %for.cond81.i, %for.body86.i
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %for.body86.i ], [ 0, %for.cond81.i ]
  %exitcond110.not.i = icmp eq i64 %indvars.iv107.i, 2160
  br i1 %exitcond110.not.i, label %for.end103.i, label %for.body86.i

for.body86.i:                                     ; preds = %for.cond84.i
  %arrayidx90.i = getelementptr inbounds nuw [2160 x float], ptr %call.i5, i64 %indvars.iv111.i, i64 %indvars.iv107.i
  %12 = load float, ptr %arrayidx90.i, align 4, !tbaa !27, !invariant.load !34
  %arrayidx94.i = getelementptr inbounds nuw [2160 x float], ptr %call.i6, i64 %indvars.iv111.i, i64 %indvars.iv107.i
  %13 = load float, ptr %arrayidx94.i, align 4, !tbaa !27, !invariant.load !34
  %add95.i = fadd float %12, %13
  %arrayidx100.i = getelementptr inbounds nuw [2160 x float], ptr %call.i4, i64 %indvars.iv111.i, i64 %indvars.iv107.i
  store float %add95.i, ptr %arrayidx100.i, align 4, !tbaa !27
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1
  br label %for.cond84.i, !llvm.loop !39

for.end103.i:                                     ; preds = %for.cond84.i
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1
  br label %for.cond81.i, !llvm.loop !40

for.cond107.i:                                    ; preds = %for.cond81.i, %for.end135.i
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %for.end135.i ], [ 0, %for.cond81.i ]
  %exitcond122.not.i = icmp eq i64 %indvars.iv119.i, 2160
  br i1 %exitcond122.not.i, label %for.cond139.i, label %for.cond110.i

for.cond110.i:                                    ; preds = %for.cond107.i, %for.body112.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i, %for.body112.i ], [ 0, %for.cond107.i ]
  %ym2.1.i = phi float [ %ym1.1.i, %for.body112.i ], [ 0.000000e+00, %for.cond107.i ]
  %ym1.1.i = phi float [ %17, %for.body112.i ], [ 0.000000e+00, %for.cond107.i ]
  %tm1.0.i = phi float [ %14, %for.body112.i ], [ 0.000000e+00, %for.cond107.i ]
  %exitcond118.not.i = icmp eq i64 %indvars.iv115.i, 4096
  br i1 %exitcond118.not.i, label %for.end135.i, label %for.body112.i

for.body112.i:                                    ; preds = %for.cond110.i
  %arrayidx116.i = getelementptr inbounds nuw [2160 x float], ptr %call.i4, i64 %indvars.iv115.i, i64 %indvars.iv119.i
  %14 = load float, ptr %arrayidx116.i, align 4, !tbaa !27, !invariant.load !34
  %mul118.i = fmul float %tm1.0.i, 0x3FBC36A980000000
  %15 = tail call float @llvm.fmuladd.f32(float %14, float 0xBFC826B880000000, float %mul118.i) #20
  %16 = tail call float @llvm.fmuladd.f32(float %ym1.1.i, float 0x3FEAE89FA0000000, float %15) #20
  %17 = tail call float @llvm.fmuladd.f32(float %ym2.1.i, float 0xBFE368B300000000, float %16) #20
  %arrayidx124.i = getelementptr inbounds nuw [2160 x float], ptr %call.i5, i64 %indvars.iv115.i, i64 %indvars.iv119.i
  store float %17, ptr %arrayidx124.i, align 4, !tbaa !27
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, 1
  br label %for.cond110.i, !llvm.loop !41

for.end135.i:                                     ; preds = %for.cond110.i
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1
  br label %for.cond107.i, !llvm.loop !42

for.cond139.i:                                    ; preds = %for.cond107.i, %for.end164.i
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i, %for.end164.i ], [ 0, %for.cond107.i ]
  %exitcond126.not.i = icmp eq i64 %indvars.iv123.i, 2160
  br i1 %exitcond126.not.i, label %for.cond168.i, label %for.cond143.i

for.cond143.i:                                    ; preds = %for.cond139.i, %for.body145.i
  %yp2.1.i = phi float [ %yp1.1.i, %for.body145.i ], [ 0.000000e+00, %for.cond139.i ]
  %yp1.1.i = phi float [ %20, %for.body145.i ], [ 0.000000e+00, %for.cond139.i ]
  %tp2.0.i = phi float [ %tp1.0.i, %for.body145.i ], [ 0.000000e+00, %for.cond139.i ]
  %tp1.0.i = phi float [ %21, %for.body145.i ], [ 0.000000e+00, %for.cond139.i ]
  %i.4.i = phi i32 [ %dec163.i, %for.body145.i ], [ 4095, %for.cond139.i ]
  %cmp144.i = icmp sgt i32 %i.4.i, -1
  br i1 %cmp144.i, label %for.body145.i, label %for.end164.i

for.body145.i:                                    ; preds = %for.cond143.i
  %mul147.i = fmul float %tp2.0.i, 0x3FBD4C0500000000
  %18 = tail call float @llvm.fmuladd.f32(float %tp1.0.i, float 0xBFC782E280000000, float %mul147.i) #20
  %19 = tail call float @llvm.fmuladd.f32(float %yp1.1.i, float 0x3FEAE89FA0000000, float %18) #20
  %20 = tail call float @llvm.fmuladd.f32(float %yp2.1.i, float 0xBFE368B300000000, float %19) #20
  %idxprom150.i = zext nneg i32 %i.4.i to i64
  %arrayidx153.i = getelementptr inbounds nuw [2160 x float], ptr %call.i6, i64 %idxprom150.i, i64 %indvars.iv123.i
  store float %20, ptr %arrayidx153.i, align 4, !tbaa !27
  %arrayidx157.i = getelementptr inbounds nuw [2160 x float], ptr %call.i4, i64 %idxprom150.i, i64 %indvars.iv123.i
  %21 = load float, ptr %arrayidx157.i, align 4, !tbaa !27, !invariant.load !34
  %dec163.i = add nsw i32 %i.4.i, -1
  br label %for.cond143.i, !llvm.loop !43

for.end164.i:                                     ; preds = %for.cond143.i
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1
  br label %for.cond139.i, !llvm.loop !44

for.cond168.i:                                    ; preds = %for.cond139.i, %for.end190.i
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i, %for.end190.i ], [ 0, %for.cond139.i ]
  %exitcond134.not.i = icmp eq i64 %indvars.iv131.i, 4096
  br i1 %exitcond134.not.i, label %kernel_deriche.exit, label %for.cond171.i

for.cond171.i:                                    ; preds = %for.cond168.i, %for.body173.i
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i, %for.body173.i ], [ 0, %for.cond168.i ]
  %exitcond130.not.i = icmp eq i64 %indvars.iv127.i, 2160
  br i1 %exitcond130.not.i, label %for.end190.i, label %for.body173.i

for.body173.i:                                    ; preds = %for.cond171.i
  %arrayidx177.i = getelementptr inbounds nuw [2160 x float], ptr %call.i5, i64 %indvars.iv131.i, i64 %indvars.iv127.i
  %22 = load float, ptr %arrayidx177.i, align 4, !tbaa !27, !invariant.load !34
  %arrayidx181.i = getelementptr inbounds nuw [2160 x float], ptr %call.i6, i64 %indvars.iv131.i, i64 %indvars.iv127.i
  %23 = load float, ptr %arrayidx181.i, align 4, !tbaa !27, !invariant.load !34
  %add182.i = fadd float %22, %23
  %arrayidx187.i = getelementptr inbounds nuw [2160 x float], ptr %call.i4, i64 %indvars.iv131.i, i64 %indvars.iv127.i
  store float %add182.i, ptr %arrayidx187.i, align 4, !tbaa !27
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1
  br label %for.cond171.i, !llvm.loop !45

for.end190.i:                                     ; preds = %for.cond171.i
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1
  br label %for.cond168.i

kernel_deriche.exit:                              ; preds = %for.cond168.i
  tail call void @polybench_timer_stop() #19
  tail call void @polybench_timer_print() #19
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_deriche.exit
  %24 = load ptr, ptr %argv, align 8, !tbaa !46, !invariant.load !34
  %strcmpload = load i8, ptr %24, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 4096, i32 noundef 2160, ptr nofree noundef readonly captures(none) %call.i4) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_deriche.exit
  tail call void @free(ptr noundef %call.i) #23
  tail call void @free(ptr noundef %call.i4) #23
  tail call void @free(ptr noundef %call.i5) #23
  tail call void @free(ptr noundef %call.i6) #23
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(i32 noundef %w, i32 noundef %h, ptr nofree noundef readonly captures(none) %imgOut) unnamed_addr #13 {
entry:
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.1.6) #19
  %0 = load ptr, ptr @stderr, align 8, !tbaa !48
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #24
  %smax = call i32 @llvm.smax.i32(i32 %h, i32 0)
  %1 = zext i32 %h to i64
  %smax14 = call i32 @llvm.smax.i32(i32 %w, i32 0)
  %wide.trip.count15 = zext nneg i32 %smax14 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.end ], [ 0, %entry ]
  %exitcond16.not = icmp eq i64 %indvars.iv10, %wide.trip.count15
  br i1 %exitcond16.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %2 = mul i64 %indvars.iv10, %1
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %3 = add i64 %indvars.iv, %2
  %4 = trunc i64 %3 to i32
  %rem = srem i32 %4, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.4.9) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %5 = load ptr, ptr @stderr, align 8, !tbaa !48
  %arrayidx8 = getelementptr inbounds nuw [2160 x float], ptr %imgOut, i64 %indvars.iv10, i64 %indvars.iv
  %6 = load float, ptr %arrayidx8, align 4, !tbaa !27, !invariant.load !34
  %conv = fpext float %6 to double
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.5.10, double noundef %conv) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !50

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  %7 = load ptr, ptr @stderr, align 8, !tbaa !48
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #24
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.7) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #14

; Function Attrs: cold minsize nofree nounwind optsize uwtable
define internal void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) %0) #15 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !48
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull readonly captures(none) dereferenceable(2) %0) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

declare float @exp2f(float)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold minsize nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind willreturn memory(readwrite) }
attributes #19 = { nofree nounwind }
attributes #20 = { nofree }
attributes #21 = { nounwind willreturn }
attributes #22 = { cold nofree noreturn nounwind }
attributes #23 = { nounwind }
attributes #24 = { cold nofree nounwind }

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
!15 = !{!16}
!16 = distinct !{!16, !17, !"outlined_ir_func_2: argument 0"}
!17 = distinct !{!17, !"outlined_ir_func_2"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"outlined_ir_func_2: argument 0"}
!20 = distinct !{!20, !"outlined_ir_func_2"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"outlined_ir_func_2: argument 0"}
!23 = distinct !{!23, !"outlined_ir_func_2"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"outlined_ir_func_2: argument 0"}
!26 = distinct !{!26, !"outlined_ir_func_2"}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !8, i64 0}
!29 = !{!30}
!30 = distinct !{!30, !31, !"init_array: %alpha"}
!31 = distinct !{!31, !"init_array"}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = distinct !{!40, !33}
!41 = distinct !{!41, !33}
!42 = distinct !{!42, !33}
!43 = distinct !{!43, !33}
!44 = distinct !{!44, !33}
!45 = distinct !{!45, !33}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 omnipotent char", !14, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!50 = distinct !{!50, !33}
