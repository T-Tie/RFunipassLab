; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(33556480) ptr @calloc(i64 noundef 4194560, i64 noundef 8) #12
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
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %cmp2 = fcmp ugt double %tmp.0, 1.000000e+01
  br i1 %cmp2, label %if.else, label %if.end

if.else:                                          ; preds = %for.end
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, ptr noundef nonnull @__PRETTY_FUNCTION__.polybench_flush_cache) #13
  unreachable

if.end:                                           ; preds = %for.end
  tail call void @free(ptr noundef %call) #14
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
  tail call void @polybench_flush_cache() #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #14
  %call = tail call fastcc double @rtclock() #14
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #0 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp) #15
  %call = call i32 @gettimeofday(ptr noundef nonnull align 8 %Tp, ptr noundef null) #14
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !10
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !13
  %conv2 = sitofp i64 %1 to double
  %2 = call double @llvm.fmuladd.f64(double %conv2, double noundef 0x3EB0C6F7A0B5ED8D, double %conv)
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp) #14
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
  %call = tail call fastcc double @rtclock() #14
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #0 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) local_unnamed_addr #0 {
entry:
  tail call void @free(ptr noundef %ptr) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #0 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #15
  store ptr null, ptr %ret.i, align 8, !tbaa !14
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #14
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !14
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(51) @.str.4) #14
  call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #14
  ret ptr %0
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_doitgen(i32 noundef %nr, i32 noundef %nq, i32 noundef %np, ptr nofree noundef captures(none) %A, ptr nofree noundef readonly captures(none) %C4, ptr nofree noundef captures(none) %sum) local_unnamed_addr #7 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 %np, i32 0)
  %smax32 = call i32 @llvm.smax.i32(i32 %nq, i32 0)
  %smax38 = call i32 @llvm.smax.i32(i32 %nr, i32 0)
  %wide.trip.count39 = zext nneg i32 %smax38 to i64
  %wide.trip.count33 = zext nneg i32 %smax32 to i64
  %wide.trip.count22 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %np to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end41, %entry
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.end41 ], [ 0, %entry ]
  %exitcond40.not = icmp eq i64 %indvars.iv35, %wide.trip.count39
  br i1 %exitcond40.not, label %for.end44, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc39
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc39 ], [ 0, %for.cond ]
  %exitcond34.not = icmp eq i64 %indvars.iv29, %wide.trip.count33
  br i1 %exitcond34.not, label %for.end41, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.inc22
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc22 ], [ 0, %for.cond1 ]
  %exitcond23.not = icmp eq i64 %indvars.iv19, %wide.trip.count22
  br i1 %exitcond23.not, label %for.cond25, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds nuw double, ptr %sum, i64 %indvars.iv19
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc22, label %for.inc

for.inc:                                          ; preds = %for.cond7
  %arrayidx15 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv35, i64 %indvars.iv29, i64 %indvars.iv
  %0 = load double, ptr %arrayidx15, align 8, !tbaa !5, !invariant.load !9
  %arrayidx19 = getelementptr inbounds nuw [160 x double], ptr %C4, i64 %indvars.iv, i64 %indvars.iv19
  %1 = load double, ptr %arrayidx19, align 8, !tbaa !5, !invariant.load !9
  %2 = tail call double @llvm.fmuladd.f64(double %0, double %1, double 0.000000e+00) #17
  store double %2, ptr %arrayidx, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond7, !llvm.loop !16

for.inc22:                                        ; preds = %for.cond7
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond4, !llvm.loop !18

for.cond25:                                       ; preds = %for.cond4, %for.inc36
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc36 ], [ 0, %for.cond4 ]
  %exitcond28.not = icmp eq i64 %indvars.iv24, %wide.trip.count22
  br i1 %exitcond28.not, label %for.inc39, label %for.inc36

for.inc36:                                        ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw double, ptr %sum, i64 %indvars.iv24
  %3 = load double, ptr %arrayidx29, align 8, !tbaa !5, !invariant.load !9
  %arrayidx35 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv35, i64 %indvars.iv29, i64 %indvars.iv24
  store double %3, ptr %arrayidx35, align 8, !tbaa !5
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond25, !llvm.loop !19

for.inc39:                                        ; preds = %for.cond25
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond1, !llvm.loop !20

for.end41:                                        ; preds = %for.cond1
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 3360000, i32 noundef 8) #14
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 160, i32 noundef 8) #14
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 25600, i32 noundef 8) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc15.i, %entry
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %for.inc15.i ], [ 0, %entry ]
  %exitcond34.not.i = icmp eq i64 %indvars.iv31.i, 150
  br i1 %exitcond34.not.i, label %for.cond18.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i, %for.inc12.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %for.inc12.i ], [ 0, %for.cond.i ]
  %exitcond30.not.i = icmp eq i64 %indvars.iv26.i, 140
  br i1 %exitcond30.not.i, label %for.inc15.i, label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.cond1.i
  %0 = mul nuw nsw i64 %indvars.iv26.i, %indvars.iv31.i
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.inc.i, %for.cond4.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond4.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 160
  br i1 %exitcond.not.i, label %for.inc12.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond4.i
  %1 = add nuw nsw i64 %indvars.iv.i, %0
  %2 = trunc nuw nsw i64 %1 to i32
  %rem.i = urem i32 %2, 160
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.600000e+02
  %arrayidx11.i = getelementptr inbounds nuw [140 x [160 x double]], ptr %call, i64 %indvars.iv31.i, i64 %indvars.iv26.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx11.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond4.i, !llvm.loop !21

for.inc12.i:                                      ; preds = %for.cond4.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  br label %for.cond1.i, !llvm.loop !22

for.inc15.i:                                      ; preds = %for.cond1.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  br label %for.cond.i, !llvm.loop !23

for.cond18.i:                                     ; preds = %for.cond.i, %for.end37.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %for.end37.i ], [ 0, %for.cond.i ]
  %exitcond43.not.i = icmp eq i64 %indvars.iv40.i, 160
  br i1 %exitcond43.not.i, label %init_array.exit, label %for.cond22.i

for.cond22.i:                                     ; preds = %for.cond18.i, %for.inc35.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %for.inc35.i ], [ 0, %for.cond18.i ]
  %exitcond39.not.i = icmp eq i64 %indvars.iv35.i, 160
  br i1 %exitcond39.not.i, label %for.end37.i, label %for.inc35.i

for.inc35.i:                                      ; preds = %for.cond22.i
  %3 = mul nuw nsw i64 %indvars.iv35.i, %indvars.iv40.i
  %4 = trunc nuw nsw i64 %3 to i32
  %rem27.i = urem i32 %4, 160
  %conv28.i = uitofp nneg i32 %rem27.i to double
  %div30.i = fdiv double %conv28.i, 1.600000e+02
  %arrayidx34.i = getelementptr inbounds nuw [160 x double], ptr %call2, i64 %indvars.iv40.i, i64 %indvars.iv35.i
  store double %div30.i, ptr %arrayidx34.i, align 8, !tbaa !5
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  br label %for.cond22.i, !llvm.loop !24

for.end37.i:                                      ; preds = %for.cond22.i
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  br label %for.cond18.i

init_array.exit:                                  ; preds = %for.cond18.i
  tail call void @polybench_timer_start() #14
  tail call void @kernel_doitgen(i32 noundef 150, i32 noundef 140, i32 noundef 160, ptr nofree noundef captures(none) %call, ptr nofree noundef readonly captures(none) %call2, ptr nofree noundef captures(none) %call1) #14
  %call.i = tail call fastcc double @rtclock() #14
  store double %call.i, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #14
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %init_array.exit
  %5 = load ptr, ptr %argv, align 8, !tbaa !25, !invariant.load !9
  %strcmpload = load i8, ptr %5, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 150, i32 noundef 140, i32 noundef 160, ptr nofree noundef readonly captures(none) %call) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %init_array.exit
  tail call void @free(ptr noundef %call) #14
  tail call void @free(ptr noundef %call1) #14
  tail call void @free(ptr noundef %call2) #14
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_array(i32 noundef %nr, i32 noundef %nq, i32 noundef %np, ptr nofree noundef readonly captures(none) %A) unnamed_addr #9 {
entry:
  tail call void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(23) @.str.1.6) #14
  %0 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #18
  %smax = call i32 @llvm.smax.i32(i32 %np, i32 0)
  %smax19 = call i32 @llvm.smax.i32(i32 %nq, i32 0)
  %smax26 = call i32 @llvm.smax.i32(i32 %nr, i32 0)
  %wide.trip.count27 = zext nneg i32 %smax26 to i64
  %wide.trip.count20 = zext nneg i32 %smax19 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end20, %entry
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.end20 ], [ 0, %entry ]
  %exitcond28.not = icmp eq i64 %indvars.iv22, %wide.trip.count27
  br i1 %exitcond28.not, label %for.end23, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %1 = trunc i64 %indvars.iv22 to i32
  %2 = mul i32 %nq, %1
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc18
  %indvars.iv16 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next17, %for.inc18 ]
  %exitcond21.not = icmp eq i64 %indvars.iv16, %wide.trip.count20
  br i1 %exitcond21.not, label %for.end20, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %3 = trunc nuw nsw i64 %indvars.iv16 to i32
  %mul813 = add i32 %2, %3
  %add = mul i32 %mul813, %np
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc18, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %4 = trunc i64 %indvars.iv to i32
  %5 = add i32 %add, %4
  %rem = srem i32 %5, 20
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  tail call void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(2) @.str.4.9) #14
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %6 = load ptr, ptr @stderr, align 8, !tbaa !27
  %arrayidx16 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv22, i64 %indvars.iv16, i64 %indvars.iv
  %7 = load double, ptr %arrayidx16, align 8, !tbaa !5, !invariant.load !9
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.5.10, double noundef %7) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !29

for.inc18:                                        ; preds = %for.cond5
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond2, !llvm.loop !30

for.end20:                                        ; preds = %for.cond2
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond

for.end23:                                        ; preds = %for.cond
  %8 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #18
  tail call void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(23) @.str.7) #14
  ret void
}

; Function Attrs: cold minsize nounwind optsize uwtable
define internal void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(2) %0) #10 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(2) %0) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold minsize nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { nofree nounwind willreturn memory(readwrite) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nofree nosync }
attributes #18 = { cold nounwind }

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
!10 = !{!11, !12, i64 0}
!11 = !{!"timeval", !12, i64 0, !12, i64 8}
!12 = !{!"long", !7, i64 0}
!13 = !{!11, !12, i64 8}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !15, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
