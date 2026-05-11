; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
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
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp.i) #17
  %call.i = call i32 @gettimeofday(ptr noundef nonnull align 8 captures(none) %Tp.i, ptr noundef null) #18
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i) #18
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2.i, double noundef 0x3EB0C6F7A0B5ED8D, double %conv.i) #19
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp.i) #18
  store double %2, ptr @polybench_t_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #8 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #9 {
entry:
  tail call void @free(ptr noundef captures(none) %ptr) #20
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #8 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #17
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #18
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(51) @.str.4) #18
  call void @exit(i32 noundef 1) #21
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #18
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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #18
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #18
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #18
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #18
  %call4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #18
  %call5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #18
  %call6 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #18
  %call7 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #18
  %call8 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #18
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond35.i, %entry
  %indvars.iv23.i = phi i64 [ 0, %entry ], [ %indvars.iv.next24.i, %for.cond35.i ]
  %exitcond26.not.i = icmp eq i64 %indvars.iv23.i, 2000
  br i1 %exitcond26.not.i, label %for.cond.i4, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv23.i to i32
  %conv2.i = uitofp nneg i32 %0 to double
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv23.i
  store double %conv2.i, ptr %arrayidx.i, align 8, !tbaa !11, !noalias !15
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  %1 = trunc nuw nsw i64 %indvars.iv.next24.i to i32
  %conv3.i = uitofp nneg i32 %1 to double
  %div.i = fdiv double %conv3.i, 2.000000e+03
  %div4.i = fmul double %div.i, 5.000000e-01
  %arrayidx6.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv23.i
  store double %div4.i, ptr %arrayidx6.i, align 8, !tbaa !11, !noalias !15
  %div10.i = fmul double %div.i, 2.500000e-01
  %arrayidx12.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv23.i
  store double %div10.i, ptr %arrayidx12.i, align 8, !tbaa !11, !noalias !15
  %div16.i = fdiv double %div.i, 6.000000e+00
  %arrayidx18.i = getelementptr inbounds nuw double, ptr %call4, i64 %indvars.iv23.i
  store double %div16.i, ptr %arrayidx18.i, align 8, !tbaa !11, !noalias !15
  %div22.i = fmul double %div.i, 1.250000e-01
  %arrayidx24.i = getelementptr inbounds nuw double, ptr %call7, i64 %indvars.iv23.i
  store double %div22.i, ptr %arrayidx24.i, align 8, !tbaa !11, !noalias !15
  %div28.i = fdiv double %div.i, 9.000000e+00
  %arrayidx30.i = getelementptr inbounds nuw double, ptr %call8, i64 %indvars.iv23.i
  store double %div28.i, ptr %arrayidx30.i, align 8, !tbaa !11, !noalias !15
  %arrayidx32.i = getelementptr inbounds nuw double, ptr %call6, i64 %indvars.iv23.i
  store double 0.000000e+00, ptr %arrayidx32.i, align 8, !tbaa !11, !noalias !15
  %arrayidx34.i = getelementptr inbounds nuw double, ptr %call5, i64 %indvars.iv23.i
  store double 0.000000e+00, ptr %arrayidx34.i, align 8, !tbaa !11, !noalias !15
  br label %for.cond35.i

for.cond35.i:                                     ; preds = %for.body38.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body38.i ], [ 0, %for.body.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2000
  br i1 %exitcond.not.i, label %for.cond.i, label %for.body38.i

for.body38.i:                                     ; preds = %for.cond35.i
  %2 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv23.i
  %3 = trunc nuw nsw i64 %2 to i32
  %rem.i = urem i32 %3, 2000
  %conv39.i = uitofp nneg i32 %rem.i to double
  %div41.i = fdiv double %conv39.i, 2.000000e+03
  %arrayidx45.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv23.i, i64 %indvars.iv.i
  store double %div41.i, ptr %arrayidx45.i, align 8, !tbaa !11, !noalias !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond35.i, !llvm.loop !19

for.cond.i4:                                      ; preds = %for.cond.i, %for.end.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %for.end.i ], [ 0, %for.cond.i ]
  %exitcond38.not.i = icmp eq i64 %indvars.iv35.i, 2000
  br i1 %exitcond38.not.i, label %for.cond21.i, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i4
  %arrayidx7.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv35.i
  %4 = load double, ptr %arrayidx7.i, align 8, !tbaa !11, !invariant.load !21
  %arrayidx11.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv35.i
  %5 = load double, ptr %arrayidx11.i, align 8, !tbaa !11, !invariant.load !21
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i5 = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i7, %for.body3.i ]
  %exitcond.not.i6 = icmp eq i64 %indvars.iv.i5, 2000
  br i1 %exitcond.not.i6, label %for.end.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %arrayidx5.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv35.i, i64 %indvars.iv.i5
  %6 = load double, ptr %arrayidx5.i, align 8, !tbaa !11, !invariant.load !21
  %arrayidx9.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv.i5
  %7 = load double, ptr %arrayidx9.i, align 8, !tbaa !11, !invariant.load !21
  %8 = tail call double @llvm.fmuladd.f64(double %4, double %7, double %6) #22
  %arrayidx13.i = getelementptr inbounds nuw double, ptr %call4, i64 %indvars.iv.i5
  %9 = load double, ptr %arrayidx13.i, align 8, !tbaa !11, !invariant.load !21
  %10 = tail call double @llvm.fmuladd.f64(double %5, double %9, double %8) #22
  store double %10, ptr %arrayidx5.i, align 8, !tbaa !11
  %indvars.iv.next.i7 = add nuw nsw i64 %indvars.iv.i5, 1
  br label %for.cond1.i, !llvm.loop !22

for.end.i:                                        ; preds = %for.cond1.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  br label %for.cond.i4, !llvm.loop !23

for.cond21.i:                                     ; preds = %for.cond.i4, %for.end40.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %for.end40.i ], [ 0, %for.cond.i4 ]
  %exitcond46.not.i = icmp eq i64 %indvars.iv43.i, 2000
  br i1 %exitcond46.not.i, label %for.cond44.i, label %for.cond24.preheader.i

for.cond24.preheader.i:                           ; preds = %for.cond21.i
  %arrayidx28.i = getelementptr inbounds nuw double, ptr %call6, i64 %indvars.iv43.i
  %11 = load double, ptr %arrayidx28.i, align 8, !tbaa !11, !invariant.load !21
  br label %for.cond24.i

for.cond24.i:                                     ; preds = %for.body26.i, %for.cond24.preheader.i
  %indvars.iv39.i = phi i64 [ 0, %for.cond24.preheader.i ], [ %indvars.iv.next40.i, %for.body26.i ]
  %exitcond42.not.i = icmp eq i64 %indvars.iv39.i, 2000
  br i1 %exitcond42.not.i, label %for.end40.i, label %for.body26.i

for.body26.i:                                     ; preds = %for.cond24.i
  %arrayidx32.i8 = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv39.i, i64 %indvars.iv43.i
  %12 = load double, ptr %arrayidx32.i8, align 8, !tbaa !11, !invariant.load !21
  %mul.i = fmul double %12, 1.200000e+00
  %arrayidx34.i9 = getelementptr inbounds nuw double, ptr %call7, i64 %indvars.iv39.i
  %13 = load double, ptr %arrayidx34.i9, align 8, !tbaa !11, !invariant.load !21
  %14 = tail call double @llvm.fmuladd.f64(double %mul.i, double %13, double %11) #22
  store double %14, ptr %arrayidx28.i, align 8, !tbaa !11
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1
  br label %for.cond24.i, !llvm.loop !24

for.end40.i:                                      ; preds = %for.cond24.i
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1
  br label %for.cond21.i, !llvm.loop !25

for.cond44.i:                                     ; preds = %for.cond21.i, %for.body46.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %for.body46.i ], [ 0, %for.cond21.i ]
  %exitcond50.not.i = icmp eq i64 %indvars.iv47.i, 2000
  br i1 %exitcond50.not.i, label %for.cond56.i, label %for.body46.i

for.body46.i:                                     ; preds = %for.cond44.i
  %arrayidx48.i = getelementptr inbounds nuw double, ptr %call6, i64 %indvars.iv47.i
  %15 = load double, ptr %arrayidx48.i, align 8, !tbaa !11, !invariant.load !21
  %arrayidx50.i = getelementptr inbounds nuw double, ptr %call8, i64 %indvars.iv47.i
  %16 = load double, ptr %arrayidx50.i, align 8, !tbaa !11, !invariant.load !21
  %add.i = fadd double %15, %16
  store double %add.i, ptr %arrayidx48.i, align 8, !tbaa !11
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  br label %for.cond44.i, !llvm.loop !26

for.cond56.i:                                     ; preds = %for.cond44.i, %for.end76.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %for.end76.i ], [ 0, %for.cond44.i ]
  %exitcond58.not.i = icmp eq i64 %indvars.iv55.i, 2000
  br i1 %exitcond58.not.i, label %kernel_gemver.exit, label %for.cond59.preheader.i

for.cond59.preheader.i:                           ; preds = %for.cond56.i
  %arrayidx63.i = getelementptr inbounds nuw double, ptr %call5, i64 %indvars.iv55.i
  %17 = load double, ptr %arrayidx63.i, align 8, !tbaa !11, !invariant.load !21
  br label %for.cond59.i

for.cond59.i:                                     ; preds = %for.body61.i, %for.cond59.preheader.i
  %indvars.iv51.i = phi i64 [ 0, %for.cond59.preheader.i ], [ %indvars.iv.next52.i, %for.body61.i ]
  %exitcond54.not.i = icmp eq i64 %indvars.iv51.i, 2000
  br i1 %exitcond54.not.i, label %for.end76.i, label %for.body61.i

for.body61.i:                                     ; preds = %for.cond59.i
  %arrayidx67.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv55.i, i64 %indvars.iv51.i
  %18 = load double, ptr %arrayidx67.i, align 8, !tbaa !11, !invariant.load !21
  %mul68.i = fmul double %18, 1.500000e+00
  %arrayidx70.i = getelementptr inbounds nuw double, ptr %call6, i64 %indvars.iv51.i
  %19 = load double, ptr %arrayidx70.i, align 8, !tbaa !11, !invariant.load !21
  %20 = tail call double @llvm.fmuladd.f64(double %mul68.i, double %19, double %17) #22
  store double %20, ptr %arrayidx63.i, align 8, !tbaa !11
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1
  br label %for.cond59.i, !llvm.loop !27

for.end76.i:                                      ; preds = %for.cond59.i
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1
  br label %for.cond56.i

kernel_gemver.exit:                               ; preds = %for.cond56.i
  tail call void @polybench_timer_stop() #18
  tail call void @polybench_timer_print() #18
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gemver.exit
  %21 = load ptr, ptr %argv, align 8, !tbaa !28, !invariant.load !21
  %strcmpload = load i8, ptr %21, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 2000, ptr nofree noundef readonly captures(none) %call5) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_gemver.exit
  tail call void @free(ptr noundef %call) #23
  tail call void @free(ptr noundef %call1) #23
  tail call void @free(ptr noundef %call2) #23
  tail call void @free(ptr noundef %call3) #23
  tail call void @free(ptr noundef %call4) #23
  tail call void @free(ptr noundef %call5) #23
  tail call void @free(ptr noundef %call6) #23
  tail call void @free(ptr noundef %call7) #23
  tail call void @free(ptr noundef %call8) #23
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(i32 noundef %n, ptr nofree noundef readonly captures(none) %w) unnamed_addr #13 {
entry:
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.1.6) #18
  %0 = load ptr, ptr @stderr, align 8, !tbaa !30
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #24
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %rem = urem i32 %1, 20
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.4.9) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %2 = load ptr, ptr @stderr, align 8, !tbaa !30
  %arrayidx = getelementptr inbounds nuw double, ptr %w, i64 %indvars.iv
  %3 = load double, ptr %arrayidx, align 8, !tbaa !11, !invariant.load !21
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.5.10, double noundef %3) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr @stderr, align 8, !tbaa !30
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #24
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.7) #18
  ret void
}

; Function Attrs: cold minsize nofree nounwind optsize uwtable
define internal void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) %0) #14 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !30
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull readonly captures(none) dereferenceable(2) %0) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

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
attributes #14 = { cold minsize nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind willreturn memory(readwrite) }
attributes #18 = { nofree nounwind }
attributes #19 = { nofree }
attributes #20 = { nounwind willreturn }
attributes #21 = { cold nofree noreturn nounwind }
attributes #22 = { nofree nosync }
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
!15 = !{!16, !18}
!16 = distinct !{!16, !17, !"init_array: %alpha"}
!17 = distinct !{!17, !"init_array"}
!18 = distinct !{!18, !17, !"init_array: %beta"}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
