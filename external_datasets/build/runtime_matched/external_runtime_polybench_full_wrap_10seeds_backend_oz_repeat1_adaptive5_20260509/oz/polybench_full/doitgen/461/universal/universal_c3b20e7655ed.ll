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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_doitgen(i32 noundef %nr, i32 noundef %nq, i32 noundef %np, ptr nofree noundef captures(none) %A, ptr nofree noundef readonly captures(none) %C4, ptr nofree noundef captures(none) %sum) local_unnamed_addr #10 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %np, i32 noundef 0)
  %smax44 = tail call i32 @llvm.smax.i32(i32 noundef %nq, i32 noundef 0)
  %smax50 = tail call i32 @llvm.smax.i32(i32 noundef %nr, i32 noundef 0)
  %wide.trip.count51 = zext nneg i32 %smax50 to i64
  %wide.trip.count45 = zext nneg i32 %smax44 to i64
  %wide.trip.count34 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %np to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end41, %entry
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.end41 ], [ 0, %entry ]
  %exitcond52.not = icmp eq i64 %indvars.iv47, %wide.trip.count51
  br i1 %exitcond52.not, label %for.end44, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc39
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc39 ], [ 0, %for.cond ]
  %exitcond46.not = icmp eq i64 %indvars.iv41, %wide.trip.count45
  br i1 %exitcond46.not, label %for.end41, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.inc22
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc22 ], [ 0, %for.cond1 ]
  %exitcond35.not = icmp eq i64 %indvars.iv31, %wide.trip.count34
  br i1 %exitcond35.not, label %for.cond25, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds nuw double, ptr %sum, i64 %indvars.iv31
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc22, label %for.inc

for.inc:                                          ; preds = %for.cond7
  %arrayidx15 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv47, i64 %indvars.iv41, i64 %indvars.iv
  %0 = load double, ptr %arrayidx15, align 8, !tbaa !5, !invariant.load !17
  %arrayidx19 = getelementptr inbounds nuw [160 x double], ptr %C4, i64 %indvars.iv, i64 %indvars.iv31
  %1 = load double, ptr %arrayidx19, align 8, !tbaa !5, !invariant.load !17
  %2 = tail call double @llvm.fmuladd.f64(double %0, double %1, double noundef 0.000000e+00) #23
  store double %2, ptr %arrayidx, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond7, !llvm.loop !18

for.inc22:                                        ; preds = %for.cond7
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond4, !llvm.loop !20

for.cond25:                                       ; preds = %for.cond4, %for.inc36
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc36 ], [ 0, %for.cond4 ]
  %exitcond40.not = icmp eq i64 %indvars.iv36, %wide.trip.count34
  br i1 %exitcond40.not, label %for.inc39, label %for.inc36

for.inc36:                                        ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw double, ptr %sum, i64 %indvars.iv36
  %3 = load double, ptr %arrayidx29, align 8, !tbaa !5, !invariant.load !17
  %arrayidx35 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv47, i64 %indvars.iv41, i64 %indvars.iv36
  store double %3, ptr %arrayidx35, align 8, !tbaa !5
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond25, !llvm.loop !21

for.inc39:                                        ; preds = %for.cond25
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond1, !llvm.loop !22

for.end41:                                        ; preds = %for.cond1
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #11 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 3360000, i32 noundef 8) #15
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 160, i32 noundef 8) #15
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 25600, i32 noundef 8) #15
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
  br label %for.cond4.i, !llvm.loop !23

for.inc12.i:                                      ; preds = %for.cond4.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  br label %for.cond1.i, !llvm.loop !24

for.inc15.i:                                      ; preds = %for.cond1.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  br label %for.cond.i, !llvm.loop !25

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
  br label %for.cond22.i, !llvm.loop !26

for.end37.i:                                      ; preds = %for.cond22.i
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  br label %for.cond18.i

init_array.exit:                                  ; preds = %for.cond18.i
  %call.i = tail call fastcc double @rtclock() #15
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  tail call void @kernel_doitgen(i32 noundef 150, i32 noundef 140, i32 noundef 160, ptr nofree noundef captures(none) %call, ptr nofree noundef readonly captures(none) %call2, ptr nofree noundef captures(none) %call1) #15
  %call.i9 = tail call fastcc double @rtclock() #15
  store double %call.i9, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #15
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %init_array.exit
  %5 = load ptr, ptr %argv, align 8, !tbaa !27, !invariant.load !17
  %strcmpload = load i8, ptr %5, align 1, !invariant.load !17
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr nofree noundef readonly captures(none) %call) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %init_array.exit
  tail call void @free(ptr noundef %call) #24
  tail call void @free(ptr noundef %call1) #24
  tail call void @free(ptr noundef %call2) #24
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %A) unnamed_addr #13 {
entry:
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.1.6) #15
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #25
  br label %for.cond

for.cond:                                         ; preds = %for.end20, %entry
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.end20 ], [ 0, %entry ]
  %exitcond28.not = icmp eq i64 %indvars.iv22, 150
  br i1 %exitcond28.not, label %for.end23, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %1 = trunc i64 %indvars.iv22 to i32
  %2 = mul i32 %1, 140
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc18
  %indvars.iv16 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next17, %for.inc18 ]
  %exitcond21.not = icmp eq i64 %indvars.iv16, 140
  br i1 %exitcond21.not, label %for.end20, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %3 = trunc nuw nsw i64 %indvars.iv16 to i32
  %mul813 = add i32 %2, %3
  %add = mul i32 %mul813, 160
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, 160
  br i1 %exitcond.not, label %for.inc18, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %4 = trunc i64 %indvars.iv to i32
  %5 = add i32 %add, %4
  %rem = srem i32 %5, 20
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.4.9) #15
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx16 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv22, i64 %indvars.iv16, i64 %indvars.iv
  %7 = load double, ptr %arrayidx16, align 8, !tbaa !5, !invariant.load !17
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.5.10, double noundef %7) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !29

for.inc18:                                        ; preds = %for.cond5
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond2, !llvm.loop !30

for.end20:                                        ; preds = %for.cond2
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond

for.end23:                                        ; preds = %for.cond
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #25
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.7) #15
  ret void
}

; Function Attrs: cold minsize nofree nounwind optsize uwtable
define internal void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) %0) #14 {
entry_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull readonly captures(none) dereferenceable(2) %0) #25
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

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
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold minsize nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind willreturn memory(readwrite) }
attributes #19 = { nofree }
attributes #20 = { nounwind willreturn }
attributes #21 = { cold nounwind }
attributes #22 = { cold nofree noreturn nounwind }
attributes #23 = { nofree nosync }
attributes #24 = { nounwind }
attributes #25 = { cold nofree nounwind }

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
!17 = !{}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 omnipotent char", !14, i64 0}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
