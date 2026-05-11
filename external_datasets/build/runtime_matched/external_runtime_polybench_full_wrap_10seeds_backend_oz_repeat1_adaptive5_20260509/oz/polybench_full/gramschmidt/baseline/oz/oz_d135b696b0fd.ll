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
  %call = tail call fastcc double @rtclock()
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #3 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp) #12
  %call = call i32 @gettimeofday(ptr noundef nonnull %Tp, ptr noundef null) #12
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp) #12
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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8)
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc12.i, %entry
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc12.i ], [ 0, %entry ]
  %exitcond24.not.i = icmp eq i64 %indvars.iv21.i, 1000
  br i1 %exitcond24.not.i, label %for.cond15.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %for.cond.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1200
  br i1 %exitcond.not.i, label %for.inc12.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv21.i
  %1 = trunc nuw nsw i64 %0 to i32
  %rem.i = urem i32 %1, 1000
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.000000e+03
  %2 = tail call double @llvm.fmuladd.f64(double %div.i, double 1.000000e+02, double 1.000000e+01)
  %arrayidx7.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv21.i, i64 %indvars.iv.i
  store double %2, ptr %arrayidx7.i, align 8, !tbaa !5
  %arrayidx11.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv21.i, i64 %indvars.iv.i
  store double 0.000000e+00, ptr %arrayidx11.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !17

for.inc12.i:                                      ; preds = %for.cond1.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  br label %for.cond.i, !llvm.loop !19

for.cond15.i:                                     ; preds = %for.cond.i, %for.inc30.i
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %for.inc30.i ], [ 0, %for.cond.i ]
  %exitcond32.not.i = icmp eq i64 %indvars.iv29.i, 1200
  br i1 %exitcond32.not.i, label %init_array.exit, label %for.cond19.i

for.cond19.i:                                     ; preds = %for.cond15.i, %for.body22.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %for.body22.i ], [ 0, %for.cond15.i ]
  %exitcond28.not.i = icmp eq i64 %indvars.iv25.i, 1200
  br i1 %exitcond28.not.i, label %for.inc30.i, label %for.body22.i

for.body22.i:                                     ; preds = %for.cond19.i
  %arrayidx26.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv29.i, i64 %indvars.iv25.i
  store double 0.000000e+00, ptr %arrayidx26.i, align 8, !tbaa !5
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br label %for.cond19.i, !llvm.loop !20

for.inc30.i:                                      ; preds = %for.cond19.i
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1
  br label %for.cond15.i, !llvm.loop !21

init_array.exit:                                  ; preds = %for.cond15.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i14

for.cond.loopexit.i:                              ; preds = %for.cond32.i
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1
  br label %for.cond.i14, !llvm.loop !22

for.cond.i14:                                     ; preds = %for.cond.loopexit.i, %init_array.exit
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %for.cond.loopexit.i ], [ 0, %init_array.exit ]
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %for.cond.loopexit.i ], [ 1, %init_array.exit ]
  %exitcond77.not.i = icmp eq i64 %indvars.iv74.i, 1200
  br i1 %exitcond77.not.i, label %kernel_gramschmidt.exit, label %for.cond1.i15

for.cond1.i15:                                    ; preds = %for.cond.i14, %for.body3.i18
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i19, %for.body3.i18 ], [ 0, %for.cond.i14 ]
  %nrm.0.i = phi double [ %4, %for.body3.i18 ], [ 0.000000e+00, %for.cond.i14 ]
  %exitcond.not.i17 = icmp eq i64 %indvars.iv.i16, 1000
  br i1 %exitcond.not.i17, label %for.end.i, label %for.body3.i18

for.body3.i18:                                    ; preds = %for.cond1.i15
  %arrayidx5.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv.i16, i64 %indvars.iv74.i
  %3 = load double, ptr %arrayidx5.i, align 8, !tbaa !5
  %4 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %nrm.0.i)
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i16, 1
  br label %for.cond1.i15, !llvm.loop !23

for.end.i:                                        ; preds = %for.cond1.i15
  %call.i20 = tail call double @sqrt(double noundef %nrm.0.i) #12, !tbaa !24
  %arrayidx13.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv74.i, i64 %indvars.iv74.i
  store double %call.i20, ptr %arrayidx13.i, align 8, !tbaa !5
  br label %for.cond14.i

for.cond14.i:                                     ; preds = %for.body16.i, %for.end.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %for.body16.i ], [ 0, %for.end.i ]
  %exitcond59.not.i = icmp eq i64 %indvars.iv56.i, 1000
  br i1 %exitcond59.not.i, label %for.cond32.i, label %for.body16.i

for.body16.i:                                     ; preds = %for.cond14.i
  %arrayidx20.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv56.i, i64 %indvars.iv74.i
  %5 = load double, ptr %arrayidx20.i, align 8, !tbaa !5
  %6 = load double, ptr %arrayidx13.i, align 8, !tbaa !5
  %div.i21 = fdiv double %5, %6
  %arrayidx28.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv56.i, i64 %indvars.iv74.i
  store double %div.i21, ptr %arrayidx28.i, align 8, !tbaa !5
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1
  br label %for.cond14.i, !llvm.loop !26

for.cond32.i:                                     ; preds = %for.cond14.i, %for.inc79.i
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %for.inc79.i ], [ %indvars.iv68.i, %for.cond14.i ]
  %exitcond73.not.i = icmp eq i64 %indvars.iv70.i, 1200
  br i1 %exitcond73.not.i, label %for.cond.loopexit.i, label %for.body34.i

for.body34.i:                                     ; preds = %for.cond32.i
  %arrayidx38.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv74.i, i64 %indvars.iv70.i
  store double 0.000000e+00, ptr %arrayidx38.i, align 8, !tbaa !5
  br label %for.cond39.i

for.cond39.i:                                     ; preds = %for.body41.i, %for.body34.i
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %for.body41.i ], [ 0, %for.body34.i ]
  %7 = phi double [ %10, %for.body41.i ], [ 0.000000e+00, %for.body34.i ]
  %exitcond63.not.i = icmp eq i64 %indvars.iv60.i, 1000
  br i1 %exitcond63.not.i, label %for.cond57.i, label %for.body41.i

for.body41.i:                                     ; preds = %for.cond39.i
  %arrayidx45.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv60.i, i64 %indvars.iv74.i
  %8 = load double, ptr %arrayidx45.i, align 8, !tbaa !5
  %arrayidx49.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv60.i, i64 %indvars.iv70.i
  %9 = load double, ptr %arrayidx49.i, align 8, !tbaa !5
  %10 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %7)
  store double %10, ptr %arrayidx38.i, align 8, !tbaa !5
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1
  br label %for.cond39.i, !llvm.loop !27

for.cond57.i:                                     ; preds = %for.cond39.i, %for.body59.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.body59.i ], [ 0, %for.cond39.i ]
  %exitcond67.not.i = icmp eq i64 %indvars.iv64.i, 1000
  br i1 %exitcond67.not.i, label %for.inc79.i, label %for.body59.i

for.body59.i:                                     ; preds = %for.cond57.i
  %arrayidx63.i = getelementptr inbounds nuw [1200 x double], ptr %call, i64 %indvars.iv64.i, i64 %indvars.iv70.i
  %11 = load double, ptr %arrayidx63.i, align 8, !tbaa !5
  %arrayidx67.i = getelementptr inbounds nuw [1200 x double], ptr %call2, i64 %indvars.iv64.i, i64 %indvars.iv74.i
  %12 = load double, ptr %arrayidx67.i, align 8, !tbaa !5
  %13 = load double, ptr %arrayidx38.i, align 8, !tbaa !5
  %neg.i = fneg double %12
  %14 = tail call double @llvm.fmuladd.f64(double %neg.i, double %13, double %11)
  store double %14, ptr %arrayidx63.i, align 8, !tbaa !5
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  br label %for.cond57.i, !llvm.loop !28

for.inc79.i:                                      ; preds = %for.cond57.i
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1
  br label %for.cond32.i, !llvm.loop !29

kernel_gramschmidt.exit:                          ; preds = %for.cond.i14
  %call.i22 = tail call fastcc double @rtclock()
  store double %call.i22, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gramschmidt.exit
  %15 = load ptr, ptr %argv, align 8, !tbaa !30
  %strcmpload = load i8, ptr %15, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call1, ptr noundef %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_gramschmidt.exit
  tail call void @free(ptr noundef nonnull %call) #12
  tail call void @free(ptr noundef nonnull %call1) #12
  tail call void @free(ptr noundef nonnull %call2) #12
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %R, ptr noundef nonnull readonly captures(none) %Q) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc10 ], [ 0, %entry ]
  %exitcond26.not = icmp eq i64 %indvars.iv22, 1200
  br i1 %exitcond26.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %3 = mul nuw nsw i64 %indvars.iv22, 1200
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1200
  br i1 %exitcond.not, label %for.inc10, label %for.body4

for.body4:                                        ; preds = %for.cond2
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
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %R, i64 %indvars.iv22, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !32

for.inc10:                                        ; preds = %for.cond2
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond, !llvm.loop !33

for.end12:                                        ; preds = %for.cond
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #15
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.7) #15
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc36, %for.end12
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc36 ], [ 0, %for.end12 ]
  %exitcond36.not = icmp eq i64 %indvars.iv32, 1000
  br i1 %exitcond36.not, label %for.end38, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond15
  %11 = mul nuw nsw i64 %indvars.iv32, 1200
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %if.end27
  %indvars.iv27 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next28, %if.end27 ]
  %exitcond31.not = icmp eq i64 %indvars.iv27, 1200
  br i1 %exitcond31.not, label %for.inc36, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %12 = add nuw nsw i64 %indvars.iv27, %11
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
  %arrayidx31 = getelementptr inbounds nuw [1200 x double], ptr %Q, i64 %indvars.iv32, i64 %indvars.iv27
  %16 = load double, ptr %arrayidx31, align 8, !tbaa !5
  %call32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.5.10, double noundef %16) #15
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond18, !llvm.loop !34

for.inc36:                                        ; preds = %for.cond18
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond15, !llvm.loop !35

for.end38:                                        ; preds = %for.cond15
  %17 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #15
  %18 = load ptr, ptr @stderr, align 8, !tbaa !15
  %19 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %18) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

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
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !7, i64 0}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 omnipotent char", !14, i64 0}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
