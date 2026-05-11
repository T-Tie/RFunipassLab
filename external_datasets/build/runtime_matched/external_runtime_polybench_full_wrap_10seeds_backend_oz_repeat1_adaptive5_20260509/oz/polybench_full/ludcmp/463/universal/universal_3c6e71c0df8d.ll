; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll'
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
@.str.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.6 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(33556480) ptr @calloc(i64 noundef 4194560, i64 noundef 8) #9
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %tmp.0 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 4194560
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw double, ptr %call, i64 %indvars.iv
  %0 = load double, ptr %arrayidx, align 8, !tbaa !5, !invariant.load !9
  %add = fadd double %tmp.0, %0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %cmp2 = fcmp ugt double %tmp.0, 1.000000e+01
  br i1 %cmp2, label %if.else, label %if.end

if.else:                                          ; preds = %for.end
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, ptr noundef nonnull @__PRETTY_FUNCTION__.polybench_flush_cache) #10
  unreachable

if.end:                                           ; preds = %for.end
  tail call void @free(ptr noundef %call) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #11
  %call = tail call fastcc double @rtclock() #11
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #0 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp) #12
  %call = call i32 @gettimeofday(ptr noundef nonnull align 8 %Tp, ptr noundef null) #11
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !12
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !15
  %conv2 = sitofp i64 %1 to double
  %2 = call double @llvm.fmuladd.f64(double %conv2, double noundef 0x3EB0C6F7A0B5ED8D, double %conv)
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp) #11
  ret double %2
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc double @rtclock() #11
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #0 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) local_unnamed_addr #0 {
entry:
  tail call void @free(ptr noundef %ptr) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #0 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #12
  store ptr null, ptr %ret.i, align 8, !tbaa !16
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #11
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !16
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(51) @.str.4) #11
  call void @exit(i32 noundef 1) #13
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #11
  ret ptr %0
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %call = tail call nonnull ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #11
  %call1 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #11
  %call2 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #11
  %call3 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2000
  br i1 %exitcond.not.i, label %for.cond9.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv.i
  store double 0.000000e+00, ptr %arrayidx.i, align 8, !tbaa !5
  %arrayidx3.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv.i
  store double 0.000000e+00, ptr %arrayidx3.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %0 = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %conv4.i = uitofp nneg i32 %0 to double
  %div.i = fdiv double %conv4.i, 2.000000e+03
  %div5.i = fmul double %div.i, 5.000000e-01
  %add6.i = fadd double %div5.i, 4.000000e+00
  %arrayidx8.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv.i
  store double %add6.i, ptr %arrayidx8.i, align 8, !tbaa !5
  br label %for.cond.i, !llvm.loop !18

for.cond9.i:                                      ; preds = %for.cond.i, %for.end39.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %for.end39.i ], [ 1, %for.cond.i ]
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.end39.i ], [ 0, %for.cond.i ]
  %exitcond35.not.i = icmp eq i64 %indvars.iv24.i, 2000
  br i1 %exitcond35.not.i, label %for.end46.i, label %for.cond13.i

for.cond13.i:                                     ; preds = %for.cond9.i, %for.body16.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body16.i ], [ 0, %for.cond9.i ]
  %exitcond23.i = icmp eq i64 %indvars.iv18.i, %indvars.iv30.i
  br i1 %exitcond23.i, label %for.cond29.i, label %for.body16.i

for.body16.i:                                     ; preds = %for.cond13.i
  %1 = trunc nuw nsw i64 %indvars.iv18.i to i32
  %2 = urem i32 %1, 2000
  %rem.i = sub nsw i32 0, %2
  %conv17.i = sitofp i32 %rem.i to double
  %div19.i = fdiv double %conv17.i, 2.000000e+03
  %add20.i = fadd double %div19.i, 1.000000e+00
  %arrayidx24.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv24.i, i64 %indvars.iv18.i
  store double %add20.i, ptr %arrayidx24.i, align 8, !tbaa !5
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  br label %for.cond13.i, !llvm.loop !19

for.cond29.i:                                     ; preds = %for.cond13.i, %for.body32.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %for.body32.i ], [ %indvars.iv24.i, %for.cond13.i ]
  %exitcond29.not.i = icmp eq i64 %indvars.iv26.i, 1999
  br i1 %exitcond29.not.i, label %for.end39.i, label %for.body32.i

for.body32.i:                                     ; preds = %for.cond29.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  %arrayidx36.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv24.i, i64 %indvars.iv.next27.i
  store double 0.000000e+00, ptr %arrayidx36.i, align 8, !tbaa !5
  br label %for.cond29.i, !llvm.loop !20

for.end39.i:                                      ; preds = %for.cond29.i
  %arrayidx43.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv24.i, i64 %indvars.iv24.i
  store double 1.000000e+00, ptr %arrayidx43.i, align 8, !tbaa !5
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  br label %for.cond9.i, !llvm.loop !21

for.end46.i:                                      ; preds = %for.cond9.i
  %call.i = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #11
  br label %for.cond47.i

for.cond47.i:                                     ; preds = %for.end61.i, %for.end46.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %for.end61.i ], [ 0, %for.end46.i ]
  %exitcond43.not.i = icmp eq i64 %indvars.iv40.i, 2000
  br i1 %exitcond43.not.i, label %for.cond65.i, label %for.cond51.i

for.cond51.i:                                     ; preds = %for.cond47.i, %for.body54.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %for.body54.i ], [ 0, %for.cond47.i ]
  %exitcond39.not.i = icmp eq i64 %indvars.iv36.i, 2000
  br i1 %exitcond39.not.i, label %for.end61.i, label %for.body54.i

for.body54.i:                                     ; preds = %for.cond51.i
  %arrayidx58.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %call.i, i64 0, i64 %indvars.iv40.i, i64 %indvars.iv36.i
  store double 0.000000e+00, ptr %arrayidx58.i, align 8, !tbaa !5
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  br label %for.cond51.i, !llvm.loop !22

for.end61.i:                                      ; preds = %for.cond51.i
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  br label %for.cond47.i, !llvm.loop !23

for.cond65.i:                                     ; preds = %for.cond47.i, %for.end94.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %for.end94.i ], [ 0, %for.cond47.i ]
  %exitcond55.not.i = icmp eq i64 %indvars.iv52.i, 2000
  br i1 %exitcond55.not.i, label %for.cond98.i, label %for.cond69.i

for.cond69.i:                                     ; preds = %for.cond65.i, %for.end91.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %for.end91.i ], [ 0, %for.cond65.i ]
  %exitcond51.not.i = icmp eq i64 %indvars.iv48.i, 2000
  br i1 %exitcond51.not.i, label %for.end94.i, label %for.cond73.preheader.i

for.cond73.preheader.i:                           ; preds = %for.cond69.i
  %arrayidx80.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv48.i, i64 %indvars.iv52.i
  %3 = load double, ptr %arrayidx80.i, align 8, !tbaa !5, !invariant.load !9
  br label %for.cond73.i

for.cond73.i:                                     ; preds = %for.body76.i, %for.cond73.preheader.i
  %indvars.iv44.i = phi i64 [ 0, %for.cond73.preheader.i ], [ %indvars.iv.next45.i, %for.body76.i ]
  %exitcond47.not.i = icmp eq i64 %indvars.iv44.i, 2000
  br i1 %exitcond47.not.i, label %for.end91.i, label %for.body76.i

for.body76.i:                                     ; preds = %for.cond73.i
  %arrayidx84.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv44.i, i64 %indvars.iv52.i
  %4 = load double, ptr %arrayidx84.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx88.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %call.i, i64 0, i64 %indvars.iv48.i, i64 %indvars.iv44.i
  %5 = load double, ptr %arrayidx88.i, align 8, !tbaa !5, !invariant.load !9
  %6 = tail call double @llvm.fmuladd.f64(double %3, double %4, double %5)
  store double %6, ptr %arrayidx88.i, align 8, !tbaa !5
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1
  br label %for.cond73.i, !llvm.loop !24

for.end91.i:                                      ; preds = %for.cond73.i
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  br label %for.cond69.i, !llvm.loop !25

for.end94.i:                                      ; preds = %for.cond69.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1
  br label %for.cond65.i, !llvm.loop !26

for.cond98.i:                                     ; preds = %for.cond65.i, %for.end116.i
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %for.end116.i ], [ 0, %for.cond65.i ]
  %exitcond63.not.i = icmp eq i64 %indvars.iv60.i, 2000
  br i1 %exitcond63.not.i, label %init_array.exit, label %for.cond102.i

for.cond102.i:                                    ; preds = %for.cond98.i, %for.body105.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %for.body105.i ], [ 0, %for.cond98.i ]
  %exitcond59.not.i = icmp eq i64 %indvars.iv56.i, 2000
  br i1 %exitcond59.not.i, label %for.end116.i, label %for.body105.i

for.body105.i:                                    ; preds = %for.cond102.i
  %arrayidx109.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %call.i, i64 0, i64 %indvars.iv60.i, i64 %indvars.iv56.i
  %7 = load double, ptr %arrayidx109.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx113.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv60.i, i64 %indvars.iv56.i
  store double %7, ptr %arrayidx113.i, align 8, !tbaa !5
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1
  br label %for.cond102.i, !llvm.loop !27

for.end116.i:                                     ; preds = %for.cond102.i
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1
  br label %for.cond98.i, !llvm.loop !28

init_array.exit:                                  ; preds = %for.cond98.i
  tail call void @free(ptr noundef nonnull %call.i) #11
  tail call void @polybench_timer_start() #11
  br label %for.cond.i7

for.cond.i7:                                      ; preds = %for.end56.i, %init_array.exit
  %indvars.iv30.i8 = phi i64 [ %indvars.iv.next31.i17, %for.end56.i ], [ 0, %init_array.exit ]
  %exitcond37.not.i = icmp eq i64 %indvars.iv30.i8, 2000
  br i1 %exitcond37.not.i, label %for.cond60.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i7, %for.end.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.end.i ], [ 0, %for.cond.i7 ]
  %exitcond25.not.i = icmp eq i64 %indvars.iv21.i, %indvars.iv30.i8
  br i1 %exitcond25.not.i, label %for.cond28.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %arrayidx5.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv30.i8, i64 %indvars.iv21.i
  %8 = load double, ptr %arrayidx5.i, align 8, !tbaa !5, !invariant.load !9
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body8.i, %for.body3.i
  %indvars.iv.i9 = phi i64 [ %indvars.iv.next.i11, %for.body8.i ], [ 0, %for.body3.i ]
  %w.0.i = phi double [ %11, %for.body8.i ], [ %8, %for.body3.i ]
  %exitcond.not.i10 = icmp eq i64 %indvars.iv.i9, %indvars.iv21.i
  br i1 %exitcond.not.i10, label %for.end.i, label %for.body8.i

for.body8.i:                                      ; preds = %for.cond6.i
  %arrayidx12.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv30.i8, i64 %indvars.iv.i9
  %9 = load double, ptr %arrayidx12.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx16.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv.i9, i64 %indvars.iv21.i
  %10 = load double, ptr %arrayidx16.i, align 8, !tbaa !5, !invariant.load !9
  %neg.i = fneg double %9
  %11 = tail call double @llvm.fmuladd.f64(double %neg.i, double %10, double %w.0.i) #14
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i9, 1
  br label %for.cond6.i, !llvm.loop !29

for.end.i:                                        ; preds = %for.cond6.i
  %arrayidx20.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv21.i, i64 %indvars.iv21.i
  %12 = load double, ptr %arrayidx20.i, align 8, !tbaa !5, !invariant.load !9
  %div.i12 = fdiv double %w.0.i, %12
  store double %div.i12, ptr %arrayidx5.i, align 8, !tbaa !5
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  br label %for.cond1.i, !llvm.loop !30

for.cond28.i:                                     ; preds = %for.cond1.i, %for.end49.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.end49.i ], [ %indvars.iv30.i8, %for.cond1.i ]
  %exitcond35.not.i13 = icmp eq i64 %indvars.iv32.i, 2000
  br i1 %exitcond35.not.i13, label %for.end56.i, label %for.body30.i

for.body30.i:                                     ; preds = %for.cond28.i
  %arrayidx34.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv30.i8, i64 %indvars.iv32.i
  %13 = load double, ptr %arrayidx34.i, align 8, !tbaa !5, !invariant.load !9
  br label %for.cond35.i

for.cond35.i:                                     ; preds = %for.body37.i, %for.body30.i
  %indvars.iv26.i14 = phi i64 [ %indvars.iv.next27.i16, %for.body37.i ], [ 0, %for.body30.i ]
  %w.1.i = phi double [ %16, %for.body37.i ], [ %13, %for.body30.i ]
  %exitcond29.not.i15 = icmp eq i64 %indvars.iv26.i14, %indvars.iv30.i8
  br i1 %exitcond29.not.i15, label %for.end49.i, label %for.body37.i

for.body37.i:                                     ; preds = %for.cond35.i
  %arrayidx41.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv30.i8, i64 %indvars.iv26.i14
  %14 = load double, ptr %arrayidx41.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx45.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv26.i14, i64 %indvars.iv32.i
  %15 = load double, ptr %arrayidx45.i, align 8, !tbaa !5, !invariant.load !9
  %neg46.i = fneg double %14
  %16 = tail call double @llvm.fmuladd.f64(double %neg46.i, double %15, double %w.1.i) #14
  %indvars.iv.next27.i16 = add nuw nsw i64 %indvars.iv26.i14, 1
  br label %for.cond35.i, !llvm.loop !31

for.end49.i:                                      ; preds = %for.cond35.i
  store double %w.1.i, ptr %arrayidx34.i, align 8, !tbaa !5
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  br label %for.cond28.i, !llvm.loop !32

for.end56.i:                                      ; preds = %for.cond28.i
  %indvars.iv.next31.i17 = add nuw nsw i64 %indvars.iv30.i8, 1
  br label %for.cond.i7, !llvm.loop !33

for.cond60.i:                                     ; preds = %for.cond.i7, %for.end77.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %for.end77.i ], [ 0, %for.cond.i7 ]
  %exitcond45.not.i = icmp eq i64 %indvars.iv42.i, 2000
  br i1 %exitcond45.not.i, label %for.cond83.i, label %for.body62.i

for.body62.i:                                     ; preds = %for.cond60.i
  %arrayidx64.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv42.i
  %17 = load double, ptr %arrayidx64.i, align 8, !tbaa !5, !invariant.load !9
  br label %for.cond65.i18

for.cond65.i18:                                   ; preds = %for.body67.i, %for.body62.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %for.body67.i ], [ 0, %for.body62.i ]
  %w.2.i = phi double [ %20, %for.body67.i ], [ %17, %for.body62.i ]
  %exitcond41.not.i = icmp eq i64 %indvars.iv38.i, %indvars.iv42.i
  br i1 %exitcond41.not.i, label %for.end77.i, label %for.body67.i

for.body67.i:                                     ; preds = %for.cond65.i18
  %arrayidx71.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv42.i, i64 %indvars.iv38.i
  %18 = load double, ptr %arrayidx71.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx73.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv38.i
  %19 = load double, ptr %arrayidx73.i, align 8, !tbaa !5, !invariant.load !9
  %neg74.i = fneg double %18
  %20 = tail call double @llvm.fmuladd.f64(double %neg74.i, double %19, double %w.2.i) #14
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  br label %for.cond65.i18, !llvm.loop !34

for.end77.i:                                      ; preds = %for.cond65.i18
  %arrayidx79.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv42.i
  store double %w.2.i, ptr %arrayidx79.i, align 8, !tbaa !5
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1
  br label %for.cond60.i, !llvm.loop !35

for.cond83.i:                                     ; preds = %for.cond60.i, %for.end100.i
  %i.2.i = phi i32 [ %dec.i, %for.end100.i ], [ 1999, %for.cond60.i ]
  %21 = zext i32 %i.2.i to i64
  %cmp84.i = icmp sgt i32 %i.2.i, -1
  br i1 %cmp84.i, label %for.body85.i, label %kernel_ludcmp.exit

for.body85.i:                                     ; preds = %for.cond83.i
  %arrayidx87.i = getelementptr inbounds nuw double, ptr %call3, i64 %21
  %22 = load double, ptr %arrayidx87.i, align 8, !tbaa !5, !invariant.load !9
  br label %for.cond88.i

for.cond88.i:                                     ; preds = %for.body90.i, %for.body85.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %for.body90.i ], [ %21, %for.body85.i ]
  %w.3.i = phi double [ %25, %for.body90.i ], [ %22, %for.body85.i ]
  %exitcond49.not.i = icmp eq i64 %indvars.iv46.i, 1999
  br i1 %exitcond49.not.i, label %for.end100.i, label %for.body90.i

for.body90.i:                                     ; preds = %for.cond88.i
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %arrayidx94.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %21, i64 %indvars.iv.next47.i
  %23 = load double, ptr %arrayidx94.i, align 8, !tbaa !5, !invariant.load !9
  %arrayidx96.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv.next47.i
  %24 = load double, ptr %arrayidx96.i, align 8, !tbaa !5, !invariant.load !9
  %neg97.i = fneg double %23
  %25 = tail call double @llvm.fmuladd.f64(double %neg97.i, double %24, double %w.3.i) #14
  br label %for.cond88.i, !llvm.loop !36

for.end100.i:                                     ; preds = %for.cond88.i
  %arrayidx104.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %21, i64 %21
  %26 = load double, ptr %arrayidx104.i, align 8, !tbaa !5, !invariant.load !9
  %div105.i = fdiv double %w.3.i, %26
  %arrayidx107.i = getelementptr inbounds nuw double, ptr %call2, i64 %21
  store double %div105.i, ptr %arrayidx107.i, align 8, !tbaa !5
  %dec.i = add nsw i32 %i.2.i, -1
  br label %for.cond83.i, !llvm.loop !37

kernel_ludcmp.exit:                               ; preds = %for.cond83.i
  %call.i19 = tail call fastcc double @rtclock() #11
  store double %call.i19, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #11
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_ludcmp.exit
  %27 = load ptr, ptr %argv, align 8, !tbaa !38, !invariant.load !9
  %strcmpload = load i8, ptr %27, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr nofree noundef nonnull readonly captures(none) %call2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_ludcmp.exit
  tail call void @free(ptr noundef nonnull %call) #11
  tail call void @free(ptr noundef nonnull %call1) #11
  tail call void @free(ptr noundef nonnull %call2) #11
  tail call void @free(ptr noundef nonnull %call3) #11
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef nonnull readonly captures(none) %x) unnamed_addr #7 {
entry:
  tail call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(23) @.str.1.6) #11
  %0 = load ptr, ptr @stderr, align 8, !tbaa !40
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 2000
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %rem = urem i32 %1, 20
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  tail call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(2) @.str.4.9) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %2 = load ptr, ptr @stderr, align 8, !tbaa !40
  %arrayidx = getelementptr inbounds nuw double, ptr %x, i64 %indvars.iv
  %3 = load double, ptr %arrayidx, align 8, !tbaa !5, !invariant.load !9
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.5.10, double noundef %3) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr @stderr, align 8, !tbaa !40
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #15
  tail call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(23) @.str.7) #11
  ret void
}

; Function Attrs: cold minsize nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(2) %0) unnamed_addr #8 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !40
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(2) %0) #15
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold minsize nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { nofree nounwind willreturn memory(readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nofree nosync }
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
!9 = !{}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !14, i64 0}
!13 = !{!"timeval", !14, i64 0, !14, i64 8}
!14 = !{!"long", !7, i64 0}
!15 = !{!13, !14, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 omnipotent char", !17, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!42 = distinct !{!42, !11}
