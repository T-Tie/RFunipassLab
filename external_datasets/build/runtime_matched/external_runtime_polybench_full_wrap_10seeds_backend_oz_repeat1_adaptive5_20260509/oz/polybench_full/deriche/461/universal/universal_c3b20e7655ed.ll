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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  ret void
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #5 {
entry:
  %call = tail call fastcc double @rtclock() #15
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #5 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp) #18
  %call = call i32 @gettimeofday(ptr noundef nonnull align 8 captures(none) %Tp, ptr noundef null) #15
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !9
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !12
  %conv2 = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2, double noundef 0x3EB0C6F7A0B5ED8D, double %conv) #19
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp) #15
  ret double %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #5 {
entry:
  %call = tail call fastcc double @rtclock() #15
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #5 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #15
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #8 {
entry:
  tail call void @free(ptr noundef captures(none) %ptr) #20
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #5 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #18
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #15
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr noundef nonnull @.str.4, i64 noundef 50, i64 noundef 1, ptr noundef %1) #21
  call void @exit(i32 noundef 1) #22
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #15
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #10 {
entry:
  %call.i = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #15, !noalias !17
  %call.i4 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #15, !noalias !20
  %call.i5 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #15, !noalias !23
  %call.i6 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #15, !noalias !26
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.end.i, %entry
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.end.i ], [ 0, %entry ]
  %exitcond14.not.i = icmp eq i64 %indvars.iv10.i, 4096
  br i1 %exitcond14.not.i, label %init_array.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = mul nuw nsw i64 %indvars.iv10.i, 313
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.inc.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2160
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond1.i
  %1 = mul nuw nsw i64 %indvars.iv.i, 991
  %2 = add nuw nsw i64 %1, %0
  %3 = trunc nuw nsw i64 %2 to i32
  %rem.i = and i32 %3, 65535
  %conv.i = uitofp nneg i32 %rem.i to float
  %div.i = fdiv float %conv.i, 6.553500e+04
  %arrayidx6.i = getelementptr inbounds nuw [2160 x float], ptr %call.i, i64 %indvars.iv10.i, i64 %indvars.iv.i
  store float %div.i, ptr %arrayidx6.i, align 4, !tbaa !29, !noalias !31
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !34

for.end.i:                                        ; preds = %for.cond1.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  br label %for.cond.i

init_array.exit:                                  ; preds = %for.cond.i
  %call.i20 = tail call fastcc double @rtclock() #15
  store double %call.i20, ptr @polybench_t_start, align 8, !tbaa !5
  %exp2f.i = tail call float @exp2f(float noundef -2.500000e-01) #23
  br label %for.cond.i9

for.cond.i9:                                      ; preds = %for.inc50.i, %init_array.exit
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i, %for.inc50.i ], [ 0, %init_array.exit ]
  %exitcond100.not.i = icmp eq i64 %indvars.iv97.i, 4096
  br i1 %exitcond100.not.i, label %for.cond53.i, label %for.cond29.i

for.cond29.i:                                     ; preds = %for.cond.i9, %for.inc.i12
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i13, %for.inc.i12 ], [ 0, %for.cond.i9 ]
  %ym2.0.i = phi float [ %ym1.0.i, %for.inc.i12 ], [ 0.000000e+00, %for.cond.i9 ]
  %ym1.0.i = phi float [ %7, %for.inc.i12 ], [ 0.000000e+00, %for.cond.i9 ]
  %xm1.0.i = phi float [ %4, %for.inc.i12 ], [ 0.000000e+00, %for.cond.i9 ]
  %exitcond.not.i11 = icmp eq i64 %indvars.iv.i10, 2160
  br i1 %exitcond.not.i11, label %for.inc50.i, label %for.inc.i12

for.inc.i12:                                      ; preds = %for.cond29.i
  %arrayidx33.i = getelementptr inbounds nuw [2160 x float], ptr %call.i, i64 %indvars.iv97.i, i64 %indvars.iv.i10
  %4 = load float, ptr %arrayidx33.i, align 4, !tbaa !29, !invariant.load !36
  %mul35.i = fmul float %xm1.0.i, 0x3FBC36A980000000
  %5 = tail call float @llvm.fmuladd.f32(float %4, float noundef 0xBFC826B880000000, float %mul35.i) #19
  %6 = tail call float @llvm.fmuladd.f32(float %ym1.0.i, float noundef 0x3FEAE89FA0000000, float %5) #19
  %7 = tail call float @llvm.fmuladd.f32(float %ym2.0.i, float noundef 0xBFE368B300000000, float %6) #19
  %arrayidx41.i = getelementptr inbounds nuw [2160 x float], ptr %call.i5, i64 %indvars.iv97.i, i64 %indvars.iv.i10
  store float %7, ptr %arrayidx41.i, align 4, !tbaa !29
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i10, 1
  br label %for.cond29.i, !llvm.loop !37

for.inc50.i:                                      ; preds = %for.cond29.i
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1
  br label %for.cond.i9, !llvm.loop !38

for.cond53.i:                                     ; preds = %for.cond.i9, %for.inc78.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %for.inc78.i ], [ 0, %for.cond.i9 ]
  %exitcond104.not.i = icmp eq i64 %indvars.iv101.i, 4096
  br i1 %exitcond104.not.i, label %for.cond81.i, label %for.cond57.i

for.cond57.i:                                     ; preds = %for.cond53.i, %for.inc76.i
  %yp2.0.i = phi float [ %yp1.0.i, %for.inc76.i ], [ 0.000000e+00, %for.cond53.i ]
  %yp1.0.i = phi float [ %10, %for.inc76.i ], [ 0.000000e+00, %for.cond53.i ]
  %xp2.0.i = phi float [ %xp1.0.i, %for.inc76.i ], [ 0.000000e+00, %for.cond53.i ]
  %xp1.0.i = phi float [ %11, %for.inc76.i ], [ 0.000000e+00, %for.cond53.i ]
  %j.1.i = phi i32 [ %dec.i, %for.inc76.i ], [ 2159, %for.cond53.i ]
  %cmp58.i = icmp sgt i32 %j.1.i, -1
  br i1 %cmp58.i, label %for.inc76.i, label %for.inc78.i

for.inc76.i:                                      ; preds = %for.cond57.i
  %mul61.i = fmul float %xp2.0.i, 0x3FBD4C0500000000
  %8 = tail call float @llvm.fmuladd.f32(float %xp1.0.i, float noundef 0xBFC782E280000000, float %mul61.i) #19
  %9 = tail call float @llvm.fmuladd.f32(float %yp1.0.i, float noundef 0x3FEAE89FA0000000, float %8) #19
  %10 = tail call float @llvm.fmuladd.f32(float %yp2.0.i, float noundef 0xBFE368B300000000, float %9) #19
  %idxprom66.i = zext nneg i32 %j.1.i to i64
  %arrayidx67.i = getelementptr inbounds nuw [2160 x float], ptr %call.i6, i64 %indvars.iv101.i, i64 %idxprom66.i
  store float %10, ptr %arrayidx67.i, align 4, !tbaa !29
  %arrayidx71.i = getelementptr inbounds nuw [2160 x float], ptr %call.i, i64 %indvars.iv101.i, i64 %idxprom66.i
  %11 = load float, ptr %arrayidx71.i, align 4, !tbaa !29, !invariant.load !36
  %dec.i = add nsw i32 %j.1.i, -1
  br label %for.cond57.i, !llvm.loop !39

for.inc78.i:                                      ; preds = %for.cond57.i
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1
  br label %for.cond53.i, !llvm.loop !40

for.cond81.i:                                     ; preds = %for.cond53.i, %for.inc104.i
  %indvars.iv109.i = phi i64 [ %indvars.iv.next110.i, %for.inc104.i ], [ 0, %for.cond53.i ]
  %exitcond112.not.i = icmp eq i64 %indvars.iv109.i, 4096
  br i1 %exitcond112.not.i, label %for.cond107.i, label %for.cond84.i

for.cond84.i:                                     ; preds = %for.cond81.i, %for.inc101.i
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %for.inc101.i ], [ 0, %for.cond81.i ]
  %exitcond108.not.i = icmp eq i64 %indvars.iv105.i, 2160
  br i1 %exitcond108.not.i, label %for.inc104.i, label %for.inc101.i

for.inc101.i:                                     ; preds = %for.cond84.i
  %arrayidx90.i = getelementptr inbounds nuw [2160 x float], ptr %call.i5, i64 %indvars.iv109.i, i64 %indvars.iv105.i
  %12 = load float, ptr %arrayidx90.i, align 4, !tbaa !29, !invariant.load !36
  %arrayidx94.i = getelementptr inbounds nuw [2160 x float], ptr %call.i6, i64 %indvars.iv109.i, i64 %indvars.iv105.i
  %13 = load float, ptr %arrayidx94.i, align 4, !tbaa !29, !invariant.load !36
  %add95.i = fadd float %12, %13
  %arrayidx100.i = getelementptr inbounds nuw [2160 x float], ptr %call.i4, i64 %indvars.iv109.i, i64 %indvars.iv105.i
  store float %add95.i, ptr %arrayidx100.i, align 4, !tbaa !29
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1
  br label %for.cond84.i, !llvm.loop !41

for.inc104.i:                                     ; preds = %for.cond84.i
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1
  br label %for.cond81.i, !llvm.loop !42

for.cond107.i:                                    ; preds = %for.cond81.i, %for.inc136.i
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.i, %for.inc136.i ], [ 0, %for.cond81.i ]
  %exitcond120.not.i = icmp eq i64 %indvars.iv117.i, 2160
  br i1 %exitcond120.not.i, label %for.cond139.i, label %for.cond110.i

for.cond110.i:                                    ; preds = %for.cond107.i, %for.inc133.i
  %indvars.iv113.i = phi i64 [ %indvars.iv.next114.i, %for.inc133.i ], [ 0, %for.cond107.i ]
  %ym2.1.i = phi float [ %ym1.1.i, %for.inc133.i ], [ 0.000000e+00, %for.cond107.i ]
  %ym1.1.i = phi float [ %17, %for.inc133.i ], [ 0.000000e+00, %for.cond107.i ]
  %tm1.0.i = phi float [ %14, %for.inc133.i ], [ 0.000000e+00, %for.cond107.i ]
  %exitcond116.not.i = icmp eq i64 %indvars.iv113.i, 4096
  br i1 %exitcond116.not.i, label %for.inc136.i, label %for.inc133.i

for.inc133.i:                                     ; preds = %for.cond110.i
  %arrayidx116.i = getelementptr inbounds nuw [2160 x float], ptr %call.i4, i64 %indvars.iv113.i, i64 %indvars.iv117.i
  %14 = load float, ptr %arrayidx116.i, align 4, !tbaa !29, !invariant.load !36
  %mul118.i = fmul float %tm1.0.i, 0x3FBC36A980000000
  %15 = tail call float @llvm.fmuladd.f32(float %14, float noundef 0xBFC826B880000000, float %mul118.i) #19
  %16 = tail call float @llvm.fmuladd.f32(float %ym1.1.i, float noundef 0x3FEAE89FA0000000, float %15) #19
  %17 = tail call float @llvm.fmuladd.f32(float %ym2.1.i, float noundef 0xBFE368B300000000, float %16) #19
  %arrayidx124.i = getelementptr inbounds nuw [2160 x float], ptr %call.i5, i64 %indvars.iv113.i, i64 %indvars.iv117.i
  store float %17, ptr %arrayidx124.i, align 4, !tbaa !29
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1
  br label %for.cond110.i, !llvm.loop !43

for.inc136.i:                                     ; preds = %for.cond110.i
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1
  br label %for.cond107.i, !llvm.loop !44

for.cond139.i:                                    ; preds = %for.cond107.i, %for.inc165.i
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i, %for.inc165.i ], [ 0, %for.cond107.i ]
  %exitcond124.not.i = icmp eq i64 %indvars.iv121.i, 2160
  br i1 %exitcond124.not.i, label %for.cond168.i, label %for.cond143.i

for.cond143.i:                                    ; preds = %for.cond139.i, %for.inc162.i
  %yp2.1.i = phi float [ %yp1.1.i, %for.inc162.i ], [ 0.000000e+00, %for.cond139.i ]
  %yp1.1.i = phi float [ %20, %for.inc162.i ], [ 0.000000e+00, %for.cond139.i ]
  %tp2.0.i = phi float [ %tp1.0.i, %for.inc162.i ], [ 0.000000e+00, %for.cond139.i ]
  %tp1.0.i = phi float [ %21, %for.inc162.i ], [ 0.000000e+00, %for.cond139.i ]
  %i.4.i = phi i32 [ %dec163.i, %for.inc162.i ], [ 4095, %for.cond139.i ]
  %cmp144.i = icmp sgt i32 %i.4.i, -1
  br i1 %cmp144.i, label %for.inc162.i, label %for.inc165.i

for.inc162.i:                                     ; preds = %for.cond143.i
  %mul147.i = fmul float %tp2.0.i, 0x3FBD4C0500000000
  %18 = tail call float @llvm.fmuladd.f32(float %tp1.0.i, float noundef 0xBFC782E280000000, float %mul147.i) #19
  %19 = tail call float @llvm.fmuladd.f32(float %yp1.1.i, float noundef 0x3FEAE89FA0000000, float %18) #19
  %20 = tail call float @llvm.fmuladd.f32(float %yp2.1.i, float 0xBFE368B300000000, float %19) #19
  %idxprom150.i = zext nneg i32 %i.4.i to i64
  %arrayidx153.i = getelementptr inbounds nuw [2160 x float], ptr %call.i6, i64 %idxprom150.i, i64 %indvars.iv121.i
  store float %20, ptr %arrayidx153.i, align 4, !tbaa !29
  %arrayidx157.i = getelementptr inbounds nuw [2160 x float], ptr %call.i4, i64 %idxprom150.i, i64 %indvars.iv121.i
  %21 = load float, ptr %arrayidx157.i, align 4, !tbaa !29, !invariant.load !36
  %dec163.i = add nsw i32 %i.4.i, -1
  br label %for.cond143.i, !llvm.loop !45

for.inc165.i:                                     ; preds = %for.cond143.i
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1
  br label %for.cond139.i, !llvm.loop !46

for.cond168.i:                                    ; preds = %for.cond139.i, %for.end190.i
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %for.end190.i ], [ 0, %for.cond139.i ]
  %exitcond132.not.i = icmp eq i64 %indvars.iv129.i, 4096
  br i1 %exitcond132.not.i, label %kernel_deriche.exit, label %for.cond171.i

for.cond171.i:                                    ; preds = %for.cond168.i, %for.inc188.i
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i, %for.inc188.i ], [ 0, %for.cond168.i ]
  %exitcond128.not.i = icmp eq i64 %indvars.iv125.i, 2160
  br i1 %exitcond128.not.i, label %for.end190.i, label %for.inc188.i

for.inc188.i:                                     ; preds = %for.cond171.i
  %arrayidx177.i = getelementptr inbounds nuw [2160 x float], ptr %call.i5, i64 %indvars.iv129.i, i64 %indvars.iv125.i
  %22 = load float, ptr %arrayidx177.i, align 4, !tbaa !29, !invariant.load !36
  %arrayidx181.i = getelementptr inbounds nuw [2160 x float], ptr %call.i6, i64 %indvars.iv129.i, i64 %indvars.iv125.i
  %23 = load float, ptr %arrayidx181.i, align 4, !tbaa !29, !invariant.load !36
  %add182.i = fadd float %22, %23
  %arrayidx187.i = getelementptr inbounds nuw [2160 x float], ptr %call.i4, i64 %indvars.iv129.i, i64 %indvars.iv125.i
  store float %add182.i, ptr %arrayidx187.i, align 4, !tbaa !29
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1
  br label %for.cond171.i, !llvm.loop !47

for.end190.i:                                     ; preds = %for.cond171.i
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1
  br label %for.cond168.i

kernel_deriche.exit:                              ; preds = %for.cond168.i
  %call.i21 = tail call fastcc double @rtclock() #15
  store double %call.i21, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #15
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_deriche.exit
  %24 = load ptr, ptr %argv, align 8, !tbaa !48, !invariant.load !36
  %strcmpload = load i8, ptr %24, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 4096, i32 noundef 2160, ptr nofree noundef readonly captures(none) %call.i4) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_deriche.exit
  tail call void @free(ptr noundef %call.i) #23
  tail call void @free(ptr noundef %call.i4) #23
  tail call void @free(ptr noundef %call.i5) #23
  tail call void @free(ptr noundef %call.i6) #23
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(i32 noundef %w, i32 noundef %h, ptr nofree noundef readonly captures(none) %imgOut) unnamed_addr #12 {
entry:
  tail call void @outlined_ir_func_2(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.1.6) #15
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #24
  %smax = tail call i32 @llvm.smax.i32(i32 %h, i32 0)
  %1 = zext i32 %h to i64
  %smax14 = tail call i32 @llvm.smax.i32(i32 %w, i32 0)
  %wide.trip.count15 = zext nneg i32 %smax14 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.end ], [ 0, %entry ]
  %exitcond16.not = icmp eq i64 %indvars.iv10, %wide.trip.count15
  br i1 %exitcond16.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %2 = mul nuw nsw i64 %indvars.iv10, %1
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %3 = add nuw nsw i64 %indvars.iv, %2
  %4 = trunc i64 %3 to i32
  %rem = srem i32 %4, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  tail call void @outlined_ir_func_2(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.4.9) #15
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %5 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx8 = getelementptr inbounds nuw [2160 x float], ptr %imgOut, i64 %indvars.iv10, i64 %indvars.iv
  %6 = load float, ptr %arrayidx8, align 4, !tbaa !29, !invariant.load !36
  %conv = fpext float %6 to double
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.5.10, double noundef %conv) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !50

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #24
  tail call void @outlined_ir_func_2(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.7) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #13

; Function Attrs: cold minsize nofree nounwind optsize uwtable
define internal void @outlined_ir_func_2(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) %0) #14 {
entry_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull readonly captures(none) dereferenceable(2) %0) #24
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

declare float @exp2f(float)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold minsize nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind willreturn memory(readwrite) }
attributes #19 = { nofree }
attributes #20 = { nounwind willreturn }
attributes #21 = { cold nounwind }
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
!17 = !{!18}
!18 = distinct !{!18, !19, !"outlined_ir_func_0: argument 0"}
!19 = distinct !{!19, !"outlined_ir_func_0"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"outlined_ir_func_0: argument 0"}
!22 = distinct !{!22, !"outlined_ir_func_0"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"outlined_ir_func_0: argument 0"}
!25 = distinct !{!25, !"outlined_ir_func_0"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"outlined_ir_func_0: argument 0"}
!28 = distinct !{!28, !"outlined_ir_func_0"}
!29 = !{!30, !30, i64 0}
!30 = !{!"float", !7, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33, !"init_array: %alpha"}
!33 = distinct !{!33, !"init_array"}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !35}
!39 = distinct !{!39, !35}
!40 = distinct !{!40, !35}
!41 = distinct !{!41, !35}
!42 = distinct !{!42, !35}
!43 = distinct !{!43, !35}
!44 = distinct !{!44, !35}
!45 = distinct !{!45, !35}
!46 = distinct !{!46, !35}
!47 = distinct !{!47, !35}
!48 = !{!49, !49, i64 0}
!49 = !{!"p1 omnipotent char", !14, i64 0}
!50 = distinct !{!50, !35}
