; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"D\00", align 1
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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 720000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 880000, i32 noundef 8)
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 990000, i32 noundef 8)
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 1080000, i32 noundef 8)
  %call4 = tail call ptr @polybench_alloc_data(i64 noundef 960000, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc7.i, %entry
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %for.inc7.i ], [ 0, %entry ]
  %exitcond50.not.i = icmp eq i64 %indvars.iv47.i, 800
  br i1 %exitcond50.not.i, label %for.cond10.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %for.cond.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1100
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv47.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 800
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 8.000000e+02
  %arrayidx6.i = getelementptr inbounds nuw [1100 x double], ptr %call1, i64 %indvars.iv47.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx6.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !17

for.inc7.i:                                       ; preds = %for.cond1.i
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  br label %for.cond.i, !llvm.loop !19

for.cond10.i:                                     ; preds = %for.cond.i, %for.inc31.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %for.inc31.i ], [ 0, %for.cond.i ]
  %exitcond59.not.i = icmp eq i64 %indvars.iv56.i, 1100
  br i1 %exitcond59.not.i, label %for.cond34.i, label %for.cond14.i

for.cond14.i:                                     ; preds = %for.cond10.i, %for.body17.i
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %for.body17.i ], [ 0, %for.cond10.i ]
  %exitcond55.not.i = icmp eq i64 %indvars.iv51.i, 900
  br i1 %exitcond55.not.i, label %for.inc31.i, label %for.body17.i

for.body17.i:                                     ; preds = %for.cond14.i
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1
  %3 = mul nuw nsw i64 %indvars.iv.next52.i, %indvars.iv56.i
  %4 = trunc nuw nsw i64 %3 to i32
  %rem20.i = urem i32 %4, 900
  %conv21.i = uitofp nneg i32 %rem20.i to double
  %div23.i = fdiv double %conv21.i, 9.000000e+02
  %arrayidx27.i = getelementptr inbounds nuw [900 x double], ptr %call2, i64 %indvars.iv56.i, i64 %indvars.iv51.i
  store double %div23.i, ptr %arrayidx27.i, align 8, !tbaa !5
  br label %for.cond14.i, !llvm.loop !20

for.inc31.i:                                      ; preds = %for.cond14.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1
  br label %for.cond10.i, !llvm.loop !21

for.cond34.i:                                     ; preds = %for.cond10.i, %for.inc56.i
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %for.inc56.i ], [ 0, %for.cond10.i ]
  %exitcond70.not.i = icmp eq i64 %indvars.iv67.i, 900
  br i1 %exitcond70.not.i, label %for.cond59.i, label %for.cond38.i

for.cond38.i:                                     ; preds = %for.cond34.i, %for.body41.i
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %for.body41.i ], [ 0, %for.cond34.i ]
  %exitcond66.not.i = icmp eq i64 %indvars.iv60.i, 1200
  br i1 %exitcond66.not.i, label %for.inc56.i, label %for.body41.i

for.body41.i:                                     ; preds = %for.cond38.i
  %5 = add nuw nsw i64 %indvars.iv60.i, 3
  %6 = mul nuw nsw i64 %5, %indvars.iv67.i
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, 1
  %rem45.i = urem i32 %8, 1200
  %conv46.i = uitofp nneg i32 %rem45.i to double
  %div48.i = fdiv double %conv46.i, 1.200000e+03
  %arrayidx52.i = getelementptr inbounds nuw [1200 x double], ptr %call3, i64 %indvars.iv67.i, i64 %indvars.iv60.i
  store double %div48.i, ptr %arrayidx52.i, align 8, !tbaa !5
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1
  br label %for.cond38.i, !llvm.loop !22

for.inc56.i:                                      ; preds = %for.cond38.i
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1
  br label %for.cond34.i, !llvm.loop !23

for.cond59.i:                                     ; preds = %for.cond34.i, %for.inc80.i
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %for.inc80.i ], [ 0, %for.cond34.i ]
  %exitcond80.not.i = icmp eq i64 %indvars.iv77.i, 800
  br i1 %exitcond80.not.i, label %init_array.exit, label %for.cond63.i

for.cond63.i:                                     ; preds = %for.cond59.i, %for.body66.i
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i, %for.body66.i ], [ 0, %for.cond59.i ]
  %exitcond76.not.i = icmp eq i64 %indvars.iv71.i, 1200
  br i1 %exitcond76.not.i, label %for.inc80.i, label %for.body66.i

for.body66.i:                                     ; preds = %for.cond63.i
  %9 = add nuw nsw i64 %indvars.iv71.i, 2
  %10 = mul nuw nsw i64 %9, %indvars.iv77.i
  %11 = trunc nuw nsw i64 %10 to i32
  %rem69.i = urem i32 %11, 1100
  %conv70.i = uitofp nneg i32 %rem69.i to double
  %div72.i = fdiv double %conv70.i, 1.100000e+03
  %arrayidx76.i = getelementptr inbounds nuw [1200 x double], ptr %call4, i64 %indvars.iv77.i, i64 %indvars.iv71.i
  store double %div72.i, ptr %arrayidx76.i, align 8, !tbaa !5
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1
  br label %for.cond63.i, !llvm.loop !24

for.inc80.i:                                      ; preds = %for.cond63.i
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1
  br label %for.cond59.i, !llvm.loop !25

init_array.exit:                                  ; preds = %for.cond59.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i17

for.cond.i17:                                     ; preds = %for.inc25.i, %init_array.exit
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %for.inc25.i ], [ 0, %init_array.exit ]
  %exitcond39.not.i = icmp eq i64 %indvars.iv36.i, 800
  br i1 %exitcond39.not.i, label %for.cond28.i, label %for.cond1.i18

for.cond1.i18:                                    ; preds = %for.cond.i17, %for.inc22.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.inc22.i ], [ 0, %for.cond.i17 ]
  %exitcond35.not.i = icmp eq i64 %indvars.iv32.i, 900
  br i1 %exitcond35.not.i, label %for.inc25.i, label %for.body3.i19

for.body3.i19:                                    ; preds = %for.cond1.i18
  %arrayidx5.i = getelementptr inbounds nuw [900 x double], ptr %call, i64 %indvars.iv36.i, i64 %indvars.iv32.i
  store double 0.000000e+00, ptr %arrayidx5.i, align 8, !tbaa !5
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body8.i, %for.body3.i19
  %indvars.iv.i20 = phi i64 [ %indvars.iv.next.i22, %for.body8.i ], [ 0, %for.body3.i19 ]
  %12 = phi double [ %15, %for.body8.i ], [ 0.000000e+00, %for.body3.i19 ]
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.i20, 1100
  br i1 %exitcond.not.i21, label %for.inc22.i, label %for.body8.i

for.body8.i:                                      ; preds = %for.cond6.i
  %arrayidx12.i = getelementptr inbounds nuw [1100 x double], ptr %call1, i64 %indvars.iv36.i, i64 %indvars.iv.i20
  %13 = load double, ptr %arrayidx12.i, align 8, !tbaa !5
  %mul.i = fmul double %13, 1.500000e+00
  %arrayidx16.i = getelementptr inbounds nuw [900 x double], ptr %call2, i64 %indvars.iv.i20, i64 %indvars.iv32.i
  %14 = load double, ptr %arrayidx16.i, align 8, !tbaa !5
  %15 = tail call double @llvm.fmuladd.f64(double %mul.i, double %14, double %12)
  store double %15, ptr %arrayidx5.i, align 8, !tbaa !5
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i20, 1
  br label %for.cond6.i, !llvm.loop !26

for.inc22.i:                                      ; preds = %for.cond6.i
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  br label %for.cond1.i18, !llvm.loop !27

for.inc25.i:                                      ; preds = %for.cond1.i18
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  br label %for.cond.i17, !llvm.loop !28

for.cond28.i:                                     ; preds = %for.cond.i17, %for.inc61.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %for.inc61.i ], [ 0, %for.cond.i17 ]
  %exitcond51.not.i = icmp eq i64 %indvars.iv48.i, 800
  br i1 %exitcond51.not.i, label %kernel_2mm.exit, label %for.cond31.i

for.cond31.i:                                     ; preds = %for.cond28.i, %for.inc58.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %for.inc58.i ], [ 0, %for.cond28.i ]
  %exitcond47.not.i = icmp eq i64 %indvars.iv44.i, 1200
  br i1 %exitcond47.not.i, label %for.inc61.i, label %for.body33.i

for.body33.i:                                     ; preds = %for.cond31.i
  %arrayidx37.i = getelementptr inbounds nuw [1200 x double], ptr %call4, i64 %indvars.iv48.i, i64 %indvars.iv44.i
  %16 = load double, ptr %arrayidx37.i, align 8, !tbaa !5
  %mul38.i = fmul double %16, 1.200000e+00
  store double %mul38.i, ptr %arrayidx37.i, align 8, !tbaa !5
  br label %for.cond39.i

for.cond39.i:                                     ; preds = %for.body41.i23, %for.body33.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %for.body41.i23 ], [ 0, %for.body33.i ]
  %17 = phi double [ %20, %for.body41.i23 ], [ %mul38.i, %for.body33.i ]
  %exitcond43.not.i = icmp eq i64 %indvars.iv40.i, 900
  br i1 %exitcond43.not.i, label %for.inc58.i, label %for.body41.i23

for.body41.i23:                                   ; preds = %for.cond39.i
  %arrayidx45.i = getelementptr inbounds nuw [900 x double], ptr %call, i64 %indvars.iv48.i, i64 %indvars.iv40.i
  %18 = load double, ptr %arrayidx45.i, align 8, !tbaa !5
  %arrayidx49.i = getelementptr inbounds nuw [1200 x double], ptr %call3, i64 %indvars.iv40.i, i64 %indvars.iv44.i
  %19 = load double, ptr %arrayidx49.i, align 8, !tbaa !5
  %20 = tail call double @llvm.fmuladd.f64(double %18, double %19, double %17)
  store double %20, ptr %arrayidx37.i, align 8, !tbaa !5
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  br label %for.cond39.i, !llvm.loop !29

for.inc58.i:                                      ; preds = %for.cond39.i
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1
  br label %for.cond31.i, !llvm.loop !30

for.inc61.i:                                      ; preds = %for.cond31.i
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  br label %for.cond28.i, !llvm.loop !31

kernel_2mm.exit:                                  ; preds = %for.cond28.i
  %call.i24 = tail call fastcc double @rtclock()
  store double %call.i24, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_2mm.exit
  %21 = load ptr, ptr %argv, align 8, !tbaa !32
  %strcmpload = load i8, ptr %21, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_2mm.exit
  tail call void @free(ptr noundef nonnull %call) #11
  tail call void @free(ptr noundef nonnull %call1) #11
  tail call void @free(ptr noundef nonnull %call2) #11
  tail call void @free(ptr noundef nonnull %call3) #11
  tail call void @free(ptr noundef nonnull %call4) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %D) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc10 ], [ 0, %entry ]
  %exitcond14.not = icmp eq i64 %indvars.iv10, 800
  br i1 %exitcond14.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %3 = mul nuw nsw i64 %indvars.iv10, 800
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
  %fputc = tail call i32 @fputc(i32 10, ptr %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %D, i64 %indvars.iv10, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !34

for.inc10:                                        ; preds = %for.cond2
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond, !llvm.loop !35

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
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 omnipotent char", !14, i64 0}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
