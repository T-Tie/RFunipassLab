; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/adi.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"u\00", align 1
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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc7.i, %entry
  %indvars.iv12.i = phi i64 [ %indvars.iv.next13.i, %for.inc7.i ], [ 0, %entry ]
  %exitcond16.not.i = icmp eq i64 %indvars.iv12.i, 1000
  br i1 %exitcond16.not.i, label %init_array.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = add nuw nsw i64 %indvars.iv12.i, 1000
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1000
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %1 = sub nuw nsw i64 %0, %indvars.iv.i
  %2 = trunc nuw nsw i64 %1 to i32
  %conv.i = uitofp nneg i32 %2 to double
  %div.i = fdiv double %conv.i, 1.000000e+03
  %arrayidx6.i = getelementptr inbounds nuw [1000 x double], ptr %call, i64 %indvars.iv12.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx6.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !17

for.inc7.i:                                       ; preds = %for.cond1.i
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1
  br label %for.cond.i, !llvm.loop !19

init_array.exit:                                  ; preds = %for.cond.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  %arrayidx85.i = getelementptr inbounds nuw i8, ptr %call1, i64 7992000
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %call1, i64 8000
  br label %for.cond.i9

for.cond.i9:                                      ; preds = %for.inc225.i, %init_array.exit
  %t.0.i = phi i32 [ 1, %init_array.exit ], [ %inc226.i, %for.inc225.i ]
  %exitcond154.not.i = icmp eq i32 %t.0.i, 501
  br i1 %exitcond154.not.i, label %kernel_adi.exit, label %for.cond15.i

for.cond15.i:                                     ; preds = %for.cond89.i, %for.cond.i9
  %indvars.iv136.i = phi i64 [ 1, %for.cond.i9 ], [ %indvars.iv.next137.i, %for.cond89.i ]
  %exitcond140.not.i = icmp eq i64 %indvars.iv136.i, 999
  br i1 %exitcond140.not.i, label %for.cond116.i, label %for.body18.i

for.body18.i:                                     ; preds = %for.cond15.i
  %arrayidx19.i = getelementptr inbounds nuw [1000 x double], ptr %call1, i64 0, i64 %indvars.iv136.i
  store double 1.000000e+00, ptr %arrayidx19.i, align 8, !tbaa !5
  %arrayidx21.i = getelementptr inbounds nuw [1000 x double], ptr %call2, i64 %indvars.iv136.i
  store double 0.000000e+00, ptr %arrayidx21.i, align 8, !tbaa !5
  %3 = load double, ptr %arrayidx19.i, align 8, !tbaa !5
  %arrayidx27.i = getelementptr inbounds nuw [1000 x double], ptr %call3, i64 %indvars.iv136.i
  store double %3, ptr %arrayidx27.i, align 8, !tbaa !5
  %4 = add nsw i64 %indvars.iv136.i, -1
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1
  br label %for.cond29.i

for.cond29.i:                                     ; preds = %for.body33.i, %for.body18.i
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i12, %for.body33.i ], [ 1, %for.body18.i ]
  %exitcond.not.i11 = icmp eq i64 %indvars.iv.i10, 999
  br i1 %exitcond.not.i11, label %for.end.i, label %for.body33.i

for.body33.i:                                     ; preds = %for.cond29.i
  %5 = add nsw i64 %indvars.iv.i10, -1
  %arrayidx39.i = getelementptr inbounds [1000 x double], ptr %call2, i64 %indvars.iv136.i, i64 %5
  %6 = load double, ptr %arrayidx39.i, align 8, !tbaa !5
  %7 = tail call double @llvm.fmuladd.f64(double %6, double 0xC09F400000000001, double 0x40AF420000000001)
  %div41.i = fdiv double 0x409F400000000001, %7
  %arrayidx45.i = getelementptr inbounds nuw [1000 x double], ptr %call2, i64 %indvars.iv136.i, i64 %indvars.iv.i10
  store double %div41.i, ptr %arrayidx45.i, align 8, !tbaa !5
  %arrayidx51.i = getelementptr inbounds [1000 x double], ptr %call, i64 %indvars.iv.i10, i64 %4
  %8 = load double, ptr %arrayidx51.i, align 8, !tbaa !5
  %arrayidx57.i = getelementptr inbounds nuw [1000 x double], ptr %call, i64 %indvars.iv.i10, i64 %indvars.iv136.i
  %9 = load double, ptr %arrayidx57.i, align 8, !tbaa !5
  %mul58.i = fmul double %9, 0xC09F3C0000000001
  %10 = tail call double @llvm.fmuladd.f64(double %8, double 0x408F400000000001, double %mul58.i)
  %arrayidx63.i = getelementptr inbounds nuw [1000 x double], ptr %call, i64 %indvars.iv.i10, i64 %indvars.iv.next137.i
  %11 = load double, ptr %arrayidx63.i, align 8, !tbaa !5
  %12 = tail call double @llvm.fmuladd.f64(double %11, double 0x408F400000000001, double %10)
  %arrayidx69.i = getelementptr inbounds [1000 x double], ptr %call3, i64 %indvars.iv136.i, i64 %5
  %13 = load double, ptr %arrayidx69.i, align 8, !tbaa !5
  %14 = tail call double @llvm.fmuladd.f64(double %13, double 0x409F400000000001, double %12)
  %div78.i = fdiv double %14, %7
  %arrayidx82.i = getelementptr inbounds nuw [1000 x double], ptr %call3, i64 %indvars.iv136.i, i64 %indvars.iv.i10
  store double %div78.i, ptr %arrayidx82.i, align 8, !tbaa !5
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i10, 1
  br label %for.cond29.i, !llvm.loop !20

for.end.i:                                        ; preds = %for.cond29.i
  %arrayidx87.i = getelementptr inbounds nuw [1000 x double], ptr %arrayidx85.i, i64 0, i64 %indvars.iv136.i
  store double 1.000000e+00, ptr %arrayidx87.i, align 8, !tbaa !5
  %invariant.gep129.i = getelementptr inbounds nuw [1000 x double], ptr %invariant.gep.i, i64 0, i64 %indvars.iv136.i
  br label %for.cond89.i

for.cond89.i:                                     ; preds = %for.body92.i, %for.end.i
  %indvars.iv133.i = phi i64 [ %indvars.iv.next134.i, %for.body92.i ], [ 998, %for.end.i ]
  %cmp90.not.i = icmp eq i64 %indvars.iv133.i, 0
  br i1 %cmp90.not.i, label %for.cond15.i, label %for.body92.i, !llvm.loop !21

for.body92.i:                                     ; preds = %for.cond89.i
  %arrayidx96.i = getelementptr inbounds nuw [1000 x double], ptr %call2, i64 %indvars.iv136.i, i64 %indvars.iv133.i
  %15 = load double, ptr %arrayidx96.i, align 8, !tbaa !5
  %gep130.i = getelementptr inbounds nuw [1000 x double], ptr %invariant.gep129.i, i64 %indvars.iv133.i
  %16 = load double, ptr %gep130.i, align 8, !tbaa !5
  %arrayidx106.i = getelementptr inbounds nuw [1000 x double], ptr %call3, i64 %indvars.iv136.i, i64 %indvars.iv133.i
  %17 = load double, ptr %arrayidx106.i, align 8, !tbaa !5
  %18 = tail call double @llvm.fmuladd.f64(double %15, double %16, double %17)
  %arrayidx110.i = getelementptr inbounds nuw [1000 x double], ptr %call1, i64 %indvars.iv133.i, i64 %indvars.iv136.i
  store double %18, ptr %arrayidx110.i, align 8, !tbaa !5
  %indvars.iv.next134.i = add nsw i64 %indvars.iv133.i, -1
  br label %for.cond89.i, !llvm.loop !22

for.cond116.i:                                    ; preds = %for.cond15.i, %for.inc222.i
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %for.inc222.i ], [ 1, %for.cond15.i ]
  %exitcond153.not.i = icmp eq i64 %indvars.iv150.i, 999
  br i1 %exitcond153.not.i, label %for.inc225.i, label %for.body120.i

for.body120.i:                                    ; preds = %for.cond116.i
  %arrayidx122.i = getelementptr inbounds nuw [1000 x double], ptr %call, i64 %indvars.iv150.i
  store double 1.000000e+00, ptr %arrayidx122.i, align 8, !tbaa !5
  %arrayidx125.i = getelementptr inbounds nuw [1000 x double], ptr %call2, i64 %indvars.iv150.i
  store double 0.000000e+00, ptr %arrayidx125.i, align 8, !tbaa !5
  %19 = load double, ptr %arrayidx122.i, align 8, !tbaa !5
  %arrayidx131.i = getelementptr inbounds nuw [1000 x double], ptr %call3, i64 %indvars.iv150.i
  store double %19, ptr %arrayidx131.i, align 8, !tbaa !5
  %20 = getelementptr [1000 x double], ptr %call1, i64 %indvars.iv150.i
  %arrayidx153.i = getelementptr i8, ptr %20, i64 -8000
  %arrayidx165.i = getelementptr inbounds nuw i8, ptr %20, i64 8000
  br label %for.cond133.i

for.cond133.i:                                    ; preds = %for.body137.i, %for.body120.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %for.body137.i ], [ 1, %for.body120.i ]
  %exitcond145.not.i = icmp eq i64 %indvars.iv141.i, 999
  br i1 %exitcond145.not.i, label %for.end190.i, label %for.body137.i

for.body137.i:                                    ; preds = %for.cond133.i
  %21 = add nsw i64 %indvars.iv141.i, -1
  %arrayidx143.i = getelementptr inbounds [1000 x double], ptr %call2, i64 %indvars.iv150.i, i64 %21
  %22 = load double, ptr %arrayidx143.i, align 8, !tbaa !5
  %23 = tail call double @llvm.fmuladd.f64(double %22, double 0xC08F400000000001, double 0x409F440000000001)
  %div145.i = fdiv double 0x408F400000000001, %23
  %arrayidx149.i = getelementptr inbounds nuw [1000 x double], ptr %call2, i64 %indvars.iv150.i, i64 %indvars.iv141.i
  store double %div145.i, ptr %arrayidx149.i, align 8, !tbaa !5
  %arrayidx155.i = getelementptr inbounds nuw [1000 x double], ptr %arrayidx153.i, i64 0, i64 %indvars.iv141.i
  %24 = load double, ptr %arrayidx155.i, align 8, !tbaa !5
  %arrayidx161.i = getelementptr inbounds nuw [1000 x double], ptr %call1, i64 %indvars.iv150.i, i64 %indvars.iv141.i
  %25 = load double, ptr %arrayidx161.i, align 8, !tbaa !5
  %mul162.i = fmul double %25, 0xC0AF3E0000000001
  %26 = tail call double @llvm.fmuladd.f64(double %24, double 0x409F400000000001, double %mul162.i)
  %arrayidx167.i = getelementptr inbounds nuw [1000 x double], ptr %arrayidx165.i, i64 0, i64 %indvars.iv141.i
  %27 = load double, ptr %arrayidx167.i, align 8, !tbaa !5
  %28 = tail call double @llvm.fmuladd.f64(double %27, double 0x409F400000000001, double %26)
  %arrayidx174.i = getelementptr inbounds [1000 x double], ptr %call3, i64 %indvars.iv150.i, i64 %21
  %29 = load double, ptr %arrayidx174.i, align 8, !tbaa !5
  %30 = tail call double @llvm.fmuladd.f64(double %29, double 0x408F400000000001, double %28)
  %div183.i = fdiv double %30, %23
  %arrayidx187.i = getelementptr inbounds nuw [1000 x double], ptr %call3, i64 %indvars.iv150.i, i64 %indvars.iv141.i
  store double %div183.i, ptr %arrayidx187.i, align 8, !tbaa !5
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1
  br label %for.cond133.i, !llvm.loop !23

for.end190.i:                                     ; preds = %for.cond133.i
  %arrayidx195.i = getelementptr inbounds nuw i8, ptr %arrayidx122.i, i64 7992
  store double 1.000000e+00, ptr %arrayidx195.i, align 8, !tbaa !5
  br label %for.cond197.i

for.cond197.i:                                    ; preds = %for.body200.i, %for.end190.i
  %indvars.iv146.i = phi i64 [ %indvars.iv.next147.i, %for.body200.i ], [ 998, %for.end190.i ]
  %cmp198.not.i = icmp eq i64 %indvars.iv146.i, 0
  br i1 %cmp198.not.i, label %for.inc222.i, label %for.body200.i

for.body200.i:                                    ; preds = %for.cond197.i
  %arrayidx204.i = getelementptr inbounds nuw [1000 x double], ptr %call2, i64 %indvars.iv150.i, i64 %indvars.iv146.i
  %31 = load double, ptr %arrayidx204.i, align 8, !tbaa !5
  %32 = add nuw nsw i64 %indvars.iv146.i, 1
  %arrayidx209.i = getelementptr inbounds nuw [1000 x double], ptr %call, i64 %indvars.iv150.i, i64 %32
  %33 = load double, ptr %arrayidx209.i, align 8, !tbaa !5
  %arrayidx214.i = getelementptr inbounds nuw [1000 x double], ptr %call3, i64 %indvars.iv150.i, i64 %indvars.iv146.i
  %34 = load double, ptr %arrayidx214.i, align 8, !tbaa !5
  %35 = tail call double @llvm.fmuladd.f64(double %31, double %33, double %34)
  %arrayidx218.i = getelementptr inbounds nuw [1000 x double], ptr %call, i64 %indvars.iv150.i, i64 %indvars.iv146.i
  store double %35, ptr %arrayidx218.i, align 8, !tbaa !5
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, -1
  br label %for.cond197.i, !llvm.loop !24

for.inc222.i:                                     ; preds = %for.cond197.i
  %indvars.iv.next151.i = add nuw nsw i64 %indvars.iv150.i, 1
  br label %for.cond116.i, !llvm.loop !25

for.inc225.i:                                     ; preds = %for.cond116.i
  %inc226.i = add nuw nsw i32 %t.0.i, 1
  br label %for.cond.i9, !llvm.loop !26

kernel_adi.exit:                                  ; preds = %for.cond.i9
  %call.i13 = tail call fastcc double @rtclock()
  store double %call.i13, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_adi.exit
  %36 = load ptr, ptr %argv, align 8, !tbaa !27
  %strcmpload = load i8, ptr %36, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_adi.exit
  tail call void @free(ptr noundef nonnull %call) #11
  tail call void @free(ptr noundef nonnull %call1) #11
  tail call void @free(ptr noundef nonnull %call2) #11
  tail call void @free(ptr noundef nonnull %call3) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %u) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc10 ], [ 0, %entry ]
  %exitcond15.not = icmp eq i64 %indvars.iv11, 1000
  br i1 %exitcond15.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %3 = mul nuw nsw i64 %indvars.iv11, 1000
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1000
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
  %arrayidx8 = getelementptr inbounds nuw [1000 x double], ptr %u, i64 %indvars.iv11, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !29

for.inc10:                                        ; preds = %for.cond2
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond, !llvm.loop !30

for.end12:                                        ; preds = %for.cond
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #14
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #12
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
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 omnipotent char", !14, i64 0}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
