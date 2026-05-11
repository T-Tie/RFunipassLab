; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/nussinov.ll'
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
@.str.3.8 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
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
  %call = tail call fastcc double @rtclock() #13
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #5 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp) #15
  %call = call i32 @gettimeofday(ptr noundef nonnull align 8 captures(none) %Tp, ptr noundef null) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !9
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !12
  %conv2 = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2, double noundef 0x3EB0C6F7A0B5ED8D, double %conv) #16
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp) #13
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
  %call = tail call fastcc double @rtclock() #13
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #5 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #13
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #8 {
entry:
  tail call void @free(ptr noundef captures(none) %ptr) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #5 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #15
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #13
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr noundef nonnull @.str.4, i64 noundef 50, i64 noundef 1, ptr noundef %1) #18
  call void @exit(i32 noundef 1) #19
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #13
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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 2500, i32 noundef 1) #13
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 6250000, i32 noundef 4) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %entry ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2500
  br i1 %exitcond.not.i, label %for.cond1.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %0 = trunc i64 %indvars.iv.next.i to i8
  %conv.i = and i8 %0, 3
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %call, i64 %indvars.iv.i
  store i8 %conv.i, ptr %arrayidx.i, align 1, !tbaa !17
  br label %for.cond.i, !llvm.loop !18

for.cond1.i:                                      ; preds = %for.cond.i, %for.inc16.i
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %for.inc16.i ], [ 0, %for.cond.i ]
  %exitcond17.not.i = icmp eq i64 %indvars.iv14.i, 2500
  br i1 %exitcond17.not.i, label %init_array.exit, label %for.cond5.i

for.cond5.i:                                      ; preds = %for.cond1.i, %for.inc13.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.inc13.i ], [ 0, %for.cond1.i ]
  %exitcond13.not.i = icmp eq i64 %indvars.iv10.i, 2500
  br i1 %exitcond13.not.i, label %for.inc16.i, label %for.inc13.i

for.inc13.i:                                      ; preds = %for.cond5.i
  %arrayidx12.i = getelementptr inbounds nuw [2500 x i32], ptr %call1, i64 %indvars.iv14.i, i64 %indvars.iv10.i
  store i32 0, ptr %arrayidx12.i, align 4, !tbaa !20
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  br label %for.cond5.i, !llvm.loop !22

for.inc16.i:                                      ; preds = %for.cond5.i
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  br label %for.cond1.i, !llvm.loop !23

init_array.exit:                                  ; preds = %for.cond1.i
  %call.i = tail call fastcc double @rtclock() #13
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %call1, i64 20000
  br label %for.cond.i5

for.cond.i5:                                      ; preds = %for.inc195.i, %init_array.exit
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %for.inc195.i ], [ 2499, %init_array.exit ]
  %1 = and i64 %indvars.iv143.i, 4294967295
  %cmp.i = icmp sgt i64 %indvars.iv143.i, -1
  br i1 %cmp.i, label %for.cond1.preheader.i, label %kernel_nussinov.exit

for.cond1.preheader.i:                            ; preds = %for.cond.i5
  %cmp28.i = icmp samesign ult i64 %indvars.iv143.i, 2499
  %2 = add nuw nsw i64 %indvars.iv143.i, 1
  %arrayidx77.i = getelementptr inbounds nuw i8, ptr %call, i64 %indvars.iv143.i
  br label %for.cond1.i6

for.cond1.i6:                                     ; preds = %for.cond150.i, %for.cond1.preheader.i
  %indvars.iv145.i = phi i64 [ %indvars.iv143.i, %for.cond1.preheader.i ], [ %indvars.iv.next146.i, %for.cond150.i ]
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1
  %exitcond.not.i7 = icmp eq i64 %indvars.iv145.i, 2499
  br i1 %exitcond.not.i7, label %for.inc195.i, label %if.then.i

if.then.i:                                        ; preds = %for.cond1.i6
  %arrayidx7.i = getelementptr inbounds nuw [2500 x i32], ptr %call1, i64 %indvars.iv143.i, i64 %indvars.iv.next146.i
  %3 = load i32, ptr %arrayidx7.i, align 4, !tbaa !20, !invariant.load !24
  %arrayidx12.i8 = getelementptr inbounds nuw [2500 x i32], ptr %call1, i64 %indvars.iv143.i, i64 %indvars.iv145.i
  %4 = load i32, ptr %arrayidx12.i8, align 4, !tbaa !20, !invariant.load !24
  %cmp13.not.i = icmp slt i32 %3, %4
  %spec.select.i = select i1 %cmp13.not.i, i64 %indvars.iv145.i, i64 %indvars.iv.next146.i
  %idxprom21.i = and i64 %spec.select.i, 4294967295
  %arrayidx22.i = getelementptr inbounds nuw [2500 x i32], ptr %call1, i64 %indvars.iv143.i, i64 %idxprom21.i
  %5 = load i32, ptr %arrayidx22.i, align 4, !tbaa !20, !invariant.load !24
  store i32 %5, ptr %arrayidx7.i, align 4, !tbaa !20
  br i1 %cmp28.i, label %if.then62.i, label %if.end148.i

if.then62.i:                                      ; preds = %if.then.i
  %arrayidx38.i = getelementptr inbounds nuw [2500 x i32], ptr %call1, i64 %2, i64 %indvars.iv.next146.i
  %6 = load i32, ptr %arrayidx38.i, align 4, !tbaa !20, !invariant.load !24
  %cmp39.not.i = icmp slt i32 %5, %6
  %add27133.i = zext i1 %cmp39.not.i to i64
  %spec.select135.i = add nuw nsw i64 %indvars.iv143.i, %add27133.i
  %arrayidx50.i = getelementptr inbounds nuw [2500 x i32], ptr %call1, i64 %spec.select135.i, i64 %indvars.iv.next146.i
  %7 = load i32, ptr %arrayidx50.i, align 4, !tbaa !20, !invariant.load !24
  %cmp64.i = icmp slt i64 %indvars.iv143.i, %indvars.iv145.i
  %arrayidx75.i = getelementptr inbounds nuw [2500 x i32], ptr %call1, i64 %2, i64 %indvars.iv145.i
  %8 = load i32, ptr %arrayidx75.i, align 4, !tbaa !20, !invariant.load !24
  br i1 %cmp64.i, label %if.then65.i, label %if.else.i

if.then65.i:                                      ; preds = %if.then62.i
  %9 = load i8, ptr %arrayidx77.i, align 1, !tbaa !17, !invariant.load !24
  %conv.i11 = sext i8 %9 to i32
  %arrayidx79.i = getelementptr inbounds nuw i8, ptr %call, i64 %indvars.iv.next146.i
  %10 = load i8, ptr %arrayidx79.i, align 1, !tbaa !17, !invariant.load !24
  %conv80.i = sext i8 %10 to i32
  %add81.i = add nsw i32 %conv80.i, %conv.i11
  %cmp82.i = icmp eq i32 %add81.i, 3
  %cond84.i = zext i1 %cmp82.i to i32
  %add85.i = add nsw i32 %8, %cond84.i
  %spec.select136.i = tail call i32 @llvm.smax.i32(i32 %7, i32 %add85.i) #16
  br label %if.end147.i

if.else.i:                                        ; preds = %if.then62.i
  %cmp127.not.i = icmp slt i32 %7, %8
  %spec.select137.v.i = select i1 %cmp127.not.i, i64 %indvars.iv145.i, i64 %indvars.iv.next146.i
  %spec.select138.v.i = select i1 %cmp127.not.i, i64 %2, i64 %indvars.iv143.i
  %idxprom139.i = and i64 %spec.select137.v.i, 4294967295
  %arrayidx140.i = getelementptr inbounds nuw [2500 x i32], ptr %call1, i64 %spec.select138.v.i, i64 %idxprom139.i
  %11 = load i32, ptr %arrayidx140.i, align 4, !tbaa !20, !invariant.load !24
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.else.i, %if.then65.i
  %.sink1.i = phi i32 [ %11, %if.else.i ], [ %spec.select136.i, %if.then65.i ]
  store i32 %.sink1.i, ptr %arrayidx7.i, align 4, !tbaa !20
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.end147.i, %if.then.i
  %invariant.gep140.i = getelementptr [2500 x i32], ptr %invariant.gep.i, i64 0, i64 %indvars.iv.next146.i
  br label %for.cond150.i

for.cond150.i:                                    ; preds = %for.body153.i, %if.end148.i
  %indvars.iv.i9 = phi i64 [ %indvars.iv.next.i10, %for.body153.i ], [ %1, %if.end148.i ]
  %cmp151.i = icmp slt i64 %indvars.iv.i9, %indvars.iv145.i
  br i1 %cmp151.i, label %for.body153.i, label %for.cond1.i6, !llvm.loop !25

for.body153.i:                                    ; preds = %for.cond150.i
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1
  %arrayidx161.i = getelementptr inbounds nuw [2500 x i32], ptr %call1, i64 %indvars.iv143.i, i64 %indvars.iv.next.i10
  %12 = load i32, ptr %arrayidx161.i, align 4, !tbaa !20, !invariant.load !24
  %gep141.i = getelementptr [2500 x i32], ptr %invariant.gep140.i, i64 %indvars.iv.i9
  %13 = load i32, ptr %gep141.i, align 4, !tbaa !20, !invariant.load !24
  %add167.i = add nsw i32 %13, %12
  %spec.select139.i = tail call i32 @llvm.smax.i32(i32 %5, i32 %add167.i)
  store i32 %spec.select139.i, ptr %arrayidx7.i, align 4, !tbaa !20
  br label %for.cond150.i, !llvm.loop !26

for.inc195.i:                                     ; preds = %for.cond1.i6
  %indvars.iv.next144.i = add nsw i64 %indvars.iv143.i, -1
  br label %for.cond.i5, !llvm.loop !27

kernel_nussinov.exit:                             ; preds = %for.cond.i5
  %call.i17 = tail call fastcc double @rtclock() #13
  store double %call.i17, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #13
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_nussinov.exit
  %14 = load ptr, ptr %argv, align 8, !tbaa !28, !invariant.load !24
  %strcmpload = load i8, ptr %14, align 1, !invariant.load !24
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr nofree noundef readonly captures(none) %call1) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_nussinov.exit
  tail call void @free(ptr noundef %call) #20
  tail call void @free(ptr noundef %call1) #20
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef readonly captures(none) %table) unnamed_addr #12 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr noundef nonnull @.str.1.6, i64 noundef 22, i64 noundef 1, ptr noundef %0) #18
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #21
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %indvars.iv9 = phi i32 [ %indvars.iv.next10, %for.inc11 ], [ 2500, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc11 ], [ 0, %entry ]
  %t.0 = phi i32 [ %6, %for.inc11 ], [ 0, %entry ]
  %exitcond13.not = icmp eq i64 %indvars.iv, 2500
  br i1 %exitcond13.not, label %for.end13, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.inc
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc ], [ %indvars.iv, %for.cond ]
  %t.1 = phi i32 [ %inc, %for.inc ], [ %t.0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv7, 2500
  br i1 %exitcond.not, label %for.inc11, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %rem = srem i32 %t.1, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  %3 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 noundef 10, ptr noundef %3) #20
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx8 = getelementptr inbounds nuw [2500 x i32], ptr %table, i64 %indvars.iv, i64 %indvars.iv7
  %5 = load i32, ptr %arrayidx8, align 4, !tbaa !20, !invariant.load !24
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, i32 noundef %5) #21
  %inc = add nsw i32 %t.1, 1
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond2, !llvm.loop !30

for.inc11:                                        ; preds = %for.cond2
  %6 = add i32 %t.0, %indvars.iv9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next10 = add nsw i32 %indvars.iv9, -1
  br label %for.cond, !llvm.loop !31

for.end13:                                        ; preds = %for.cond
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #21
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %9 = tail call i64 @fwrite(ptr noundef nonnull @.str.7, i64 noundef 22, i64 noundef 1, ptr noundef %8) #18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) #13

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
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind willreturn memory(readwrite) }
attributes #16 = { nofree }
attributes #17 = { nounwind willreturn }
attributes #18 = { cold nounwind }
attributes #19 = { cold nofree noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { cold nofree nounwind }

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
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !7, i64 0}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = !{}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
