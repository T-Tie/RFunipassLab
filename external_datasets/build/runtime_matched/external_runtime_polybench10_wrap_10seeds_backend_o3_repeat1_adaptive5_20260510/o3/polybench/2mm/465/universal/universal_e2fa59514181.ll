; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/root/exp/RFunipassLab/external_datasets/sources/polybench/utilities/polybench.c\00", align 1
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"D\00", align 1
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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 720000, i32 noundef 8) #18
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 880000, i32 noundef 8) #18
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 990000, i32 noundef 8) #18
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 1080000, i32 noundef 8) #18
  %call4 = tail call ptr @polybench_alloc_data(i64 noundef 960000, i32 noundef 8) #18
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.end.i, %entry
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %for.end.i ], [ 0, %entry ]
  %exitcond50.not.i = icmp eq i64 %indvars.iv47.i, 800
  br i1 %exitcond50.not.i, label %for.cond10.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %for.cond.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1100
  br i1 %exitcond.not.i, label %for.end.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv47.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 800
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 8.000000e+02
  %arrayidx6.i = getelementptr inbounds nuw [1100 x double], ptr %call1, i64 %indvars.iv47.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx6.i, align 8, !tbaa !11, !noalias !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !19

for.end.i:                                        ; preds = %for.cond1.i
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  br label %for.cond.i, !llvm.loop !21

for.cond10.i:                                     ; preds = %for.cond.i, %for.end30.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %for.end30.i ], [ 0, %for.cond.i ]
  %exitcond59.not.i = icmp eq i64 %indvars.iv56.i, 1100
  br i1 %exitcond59.not.i, label %for.cond34.i, label %for.cond14.i

for.cond14.i:                                     ; preds = %for.cond10.i, %for.body17.i
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %for.body17.i ], [ 0, %for.cond10.i ]
  %exitcond55.not.i = icmp eq i64 %indvars.iv51.i, 900
  br i1 %exitcond55.not.i, label %for.end30.i, label %for.body17.i

for.body17.i:                                     ; preds = %for.cond14.i
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1
  %3 = mul nuw nsw i64 %indvars.iv.next52.i, %indvars.iv56.i
  %4 = trunc nuw nsw i64 %3 to i32
  %rem20.i = urem i32 %4, 900
  %conv21.i = uitofp nneg i32 %rem20.i to double
  %div23.i = fdiv double %conv21.i, 9.000000e+02
  %arrayidx27.i = getelementptr inbounds nuw [900 x double], ptr %call2, i64 %indvars.iv56.i, i64 %indvars.iv51.i
  store double %div23.i, ptr %arrayidx27.i, align 8, !tbaa !11, !noalias !15
  br label %for.cond14.i, !llvm.loop !22

for.end30.i:                                      ; preds = %for.cond14.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1
  br label %for.cond10.i, !llvm.loop !23

for.cond34.i:                                     ; preds = %for.cond10.i, %for.end55.i
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %for.end55.i ], [ 0, %for.cond10.i ]
  %exitcond70.not.i = icmp eq i64 %indvars.iv67.i, 900
  br i1 %exitcond70.not.i, label %for.cond59.i, label %for.cond38.i

for.cond38.i:                                     ; preds = %for.cond34.i, %for.body41.i
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %for.body41.i ], [ 0, %for.cond34.i ]
  %exitcond66.not.i = icmp eq i64 %indvars.iv60.i, 1200
  br i1 %exitcond66.not.i, label %for.end55.i, label %for.body41.i

for.body41.i:                                     ; preds = %for.cond38.i
  %5 = add nuw nsw i64 %indvars.iv60.i, 3
  %6 = mul nuw nsw i64 %5, %indvars.iv67.i
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, 1
  %rem45.i = urem i32 %8, 1200
  %conv46.i = uitofp nneg i32 %rem45.i to double
  %div48.i = fdiv double %conv46.i, 1.200000e+03
  %arrayidx52.i = getelementptr inbounds nuw [1200 x double], ptr %call3, i64 %indvars.iv67.i, i64 %indvars.iv60.i
  store double %div48.i, ptr %arrayidx52.i, align 8, !tbaa !11, !noalias !15
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1
  br label %for.cond38.i, !llvm.loop !24

for.end55.i:                                      ; preds = %for.cond38.i
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1
  br label %for.cond34.i, !llvm.loop !25

for.cond59.i:                                     ; preds = %for.cond34.i, %for.end79.i
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %for.end79.i ], [ 0, %for.cond34.i ]
  %exitcond80.not.i = icmp eq i64 %indvars.iv77.i, 800
  br i1 %exitcond80.not.i, label %for.cond.i4, label %for.cond63.i

for.cond63.i:                                     ; preds = %for.cond59.i, %for.body66.i
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i, %for.body66.i ], [ 0, %for.cond59.i ]
  %exitcond76.not.i = icmp eq i64 %indvars.iv71.i, 1200
  br i1 %exitcond76.not.i, label %for.end79.i, label %for.body66.i

for.body66.i:                                     ; preds = %for.cond63.i
  %9 = add nuw nsw i64 %indvars.iv71.i, 2
  %10 = mul nuw nsw i64 %9, %indvars.iv77.i
  %11 = trunc nuw nsw i64 %10 to i32
  %rem69.i = urem i32 %11, 1100
  %conv70.i = uitofp nneg i32 %rem69.i to double
  %div72.i = fdiv double %conv70.i, 1.100000e+03
  %arrayidx76.i = getelementptr inbounds nuw [1200 x double], ptr %call4, i64 %indvars.iv77.i, i64 %indvars.iv71.i
  store double %div72.i, ptr %arrayidx76.i, align 8, !tbaa !11, !noalias !15
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1
  br label %for.cond63.i, !llvm.loop !26

for.end79.i:                                      ; preds = %for.cond63.i
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1
  br label %for.cond59.i

for.cond.i4:                                      ; preds = %for.cond59.i, %for.end24.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %for.end24.i ], [ 0, %for.cond59.i ]
  %exitcond34.not.i = icmp eq i64 %indvars.iv31.i, 800
  br i1 %exitcond34.not.i, label %for.cond28.i, label %for.cond1.i5

for.cond1.i5:                                     ; preds = %for.cond.i4, %for.end.i10
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %for.end.i10 ], [ 0, %for.cond.i4 ]
  %exitcond30.not.i = icmp eq i64 %indvars.iv27.i, 900
  br i1 %exitcond30.not.i, label %for.end24.i, label %for.body3.i6

for.body3.i6:                                     ; preds = %for.cond1.i5
  %arrayidx5.i = getelementptr inbounds nuw [900 x double], ptr %call, i64 %indvars.iv31.i, i64 %indvars.iv27.i
  store double 0.000000e+00, ptr %arrayidx5.i, align 8, !tbaa !11
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body8.i, %for.body3.i6
  %indvars.iv.i7 = phi i64 [ %indvars.iv.next.i9, %for.body8.i ], [ 0, %for.body3.i6 ]
  %exitcond.not.i8 = icmp eq i64 %indvars.iv.i7, 1100
  br i1 %exitcond.not.i8, label %for.end.i10, label %for.body8.i

for.body8.i:                                      ; preds = %for.cond6.i
  %arrayidx12.i = getelementptr inbounds nuw [1100 x double], ptr %call1, i64 %indvars.iv31.i, i64 %indvars.iv.i7
  %12 = load double, ptr %arrayidx12.i, align 8, !tbaa !11, !invariant.load !27
  %mul.i = fmul double %12, 1.500000e+00
  %arrayidx16.i = getelementptr inbounds nuw [900 x double], ptr %call2, i64 %indvars.iv.i7, i64 %indvars.iv27.i
  %13 = load double, ptr %arrayidx16.i, align 8, !tbaa !11, !invariant.load !27
  %14 = tail call double @llvm.fmuladd.f64(double %mul.i, double %13, double 0.000000e+00) #22
  store double %14, ptr %arrayidx5.i, align 8, !tbaa !11
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i7, 1
  br label %for.cond6.i, !llvm.loop !28

for.end.i10:                                      ; preds = %for.cond6.i
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  br label %for.cond1.i5, !llvm.loop !29

for.end24.i:                                      ; preds = %for.cond1.i5
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  br label %for.cond.i4, !llvm.loop !30

for.cond28.i:                                     ; preds = %for.cond.i4, %for.end60.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %for.end60.i ], [ 0, %for.cond.i4 ]
  %exitcond46.not.i = icmp eq i64 %indvars.iv43.i, 800
  br i1 %exitcond46.not.i, label %kernel_2mm.exit, label %for.cond31.i

for.cond31.i:                                     ; preds = %for.cond28.i, %for.end57.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %for.end57.i ], [ 0, %for.cond28.i ]
  %exitcond42.not.i = icmp eq i64 %indvars.iv39.i, 1200
  br i1 %exitcond42.not.i, label %for.end60.i, label %for.body33.i

for.body33.i:                                     ; preds = %for.cond31.i
  %arrayidx37.i = getelementptr inbounds nuw [1200 x double], ptr %call4, i64 %indvars.iv43.i, i64 %indvars.iv39.i
  %15 = load double, ptr %arrayidx37.i, align 8, !tbaa !11, !invariant.load !27
  %mul38.i = fmul double %15, 1.200000e+00
  store double %mul38.i, ptr %arrayidx37.i, align 8, !tbaa !11
  br label %for.cond39.i

for.cond39.i:                                     ; preds = %for.body41.i11, %for.body33.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %for.body41.i11 ], [ 0, %for.body33.i ]
  %exitcond38.not.i = icmp eq i64 %indvars.iv35.i, 900
  br i1 %exitcond38.not.i, label %for.end57.i, label %for.body41.i11

for.body41.i11:                                   ; preds = %for.cond39.i
  %arrayidx45.i = getelementptr inbounds nuw [900 x double], ptr %call, i64 %indvars.iv43.i, i64 %indvars.iv35.i
  %16 = load double, ptr %arrayidx45.i, align 8, !tbaa !11, !invariant.load !27
  %arrayidx49.i = getelementptr inbounds nuw [1200 x double], ptr %call3, i64 %indvars.iv35.i, i64 %indvars.iv39.i
  %17 = load double, ptr %arrayidx49.i, align 8, !tbaa !11, !invariant.load !27
  %18 = tail call double @llvm.fmuladd.f64(double %16, double %17, double %mul38.i) #22
  store double %18, ptr %arrayidx37.i, align 8, !tbaa !11
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  br label %for.cond39.i, !llvm.loop !31

for.end57.i:                                      ; preds = %for.cond39.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1
  br label %for.cond31.i, !llvm.loop !32

for.end60.i:                                      ; preds = %for.cond31.i
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1
  br label %for.cond28.i

kernel_2mm.exit:                                  ; preds = %for.cond28.i
  tail call void @polybench_timer_stop() #18
  tail call void @polybench_timer_print() #18
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_2mm.exit
  %19 = load ptr, ptr %argv, align 8, !tbaa !33, !invariant.load !27
  %strcmpload = load i8, ptr %19, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 800, i32 noundef 1200, ptr nofree noundef readonly captures(none) %call4) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_2mm.exit
  tail call void @free(ptr noundef %call) #23
  tail call void @free(ptr noundef %call1) #23
  tail call void @free(ptr noundef %call2) #23
  tail call void @free(ptr noundef %call3) #23
  tail call void @free(ptr noundef %call4) #23
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(i32 noundef %ni, i32 noundef %nl, ptr nofree noundef readonly captures(none) %D) unnamed_addr #13 {
entry:
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.1.6) #18
  %0 = load ptr, ptr @stderr, align 8, !tbaa !35
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #24
  %smax = call i32 @llvm.smax.i32(i32 %nl, i32 0)
  %1 = zext i32 %ni to i64
  %smax14 = call i32 @llvm.smax.i32(i32 %ni, i32 0)
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
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.4.9) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %5 = load ptr, ptr @stderr, align 8, !tbaa !35
  %arrayidx8 = getelementptr inbounds nuw [1200 x double], ptr %D, i64 %indvars.iv10, i64 %indvars.iv
  %6 = load double, ptr %arrayidx8, align 8, !tbaa !11, !invariant.load !27
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.5.10, double noundef %6) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !37

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  %7 = load ptr, ptr @stderr, align 8, !tbaa !35
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #24
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.7) #18
  ret void
}

; Function Attrs: cold minsize nofree nounwind optsize uwtable
define internal void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) %0) #14 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !35
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
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = !{}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 omnipotent char", !14, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!37 = distinct !{!37, !20}
