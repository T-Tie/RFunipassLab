; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/adi.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"u\00", align 1
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
  %call.i = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #18, !noalias !15
  %call.i4 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #18, !noalias !18
  %call.i5 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #18, !noalias !21
  %call.i6 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #18, !noalias !24
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.end.i, %entry
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %for.end.i ], [ 0, %entry ]
  %exitcond13.not.i = icmp eq i64 %indvars.iv9.i, 1000
  br i1 %exitcond13.not.i, label %init_array.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = add nuw nsw i64 %indvars.iv9.i, 1000
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1000
  br i1 %exitcond.not.i, label %for.end.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %1 = sub nuw nsw i64 %0, %indvars.iv.i
  %2 = trunc nuw nsw i64 %1 to i32
  %conv.i = uitofp nneg i32 %2 to double
  %div.i = fdiv double %conv.i, 1.000000e+03
  %arrayidx6.i = getelementptr inbounds nuw [1000 x double], ptr %call.i, i64 %indvars.iv9.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx6.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !27

for.end.i:                                        ; preds = %for.cond1.i
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1
  br label %for.cond.i

init_array.exit:                                  ; preds = %for.cond.i
  %arrayidx85.i = getelementptr inbounds nuw i8, ptr %call.i4, i64 7992000
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %call.i4, i64 8000
  %invariant.gep100.i = getelementptr i8, ptr %call.i4, i64 -8000
  br label %for.cond.i7

for.cond.i7:                                      ; preds = %for.end224.i, %init_array.exit
  %t.0.i = phi i32 [ 1, %init_array.exit ], [ %inc.i1.i, %for.end224.i ]
  %exitcond126.not.i = icmp eq i32 %t.0.i, 501
  br i1 %exitcond126.not.i, label %kernel_adi.exit, label %for.cond15.i

for.cond15.i:                                     ; preds = %for.cond89.i, %for.cond.i7
  %indvars.iv108.i = phi i64 [ 1, %for.cond.i7 ], [ %indvars.iv.next109.i, %for.cond89.i ]
  %exitcond112.not.i = icmp eq i64 %indvars.iv108.i, 999
  br i1 %exitcond112.not.i, label %for.cond116.i, label %for.body18.i

for.body18.i:                                     ; preds = %for.cond15.i
  %arrayidx19.i = getelementptr inbounds nuw [1000 x double], ptr %call.i4, i64 0, i64 %indvars.iv108.i
  store double 1.000000e+00, ptr %arrayidx19.i, align 8, !tbaa !11
  %arrayidx21.i = getelementptr inbounds nuw [1000 x double], ptr %call.i5, i64 %indvars.iv108.i
  store double 0.000000e+00, ptr %arrayidx21.i, align 8, !tbaa !11
  %arrayidx27.i = getelementptr inbounds nuw [1000 x double], ptr %call.i6, i64 %indvars.iv108.i
  store double 1.000000e+00, ptr %arrayidx27.i, align 8, !tbaa !11
  %3 = add nsw i64 %indvars.iv108.i, -1
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1
  br label %for.cond29.i

for.cond29.i:                                     ; preds = %for.body33.i, %for.body18.i
  %indvars.iv.i8 = phi i64 [ %indvars.iv.next.i10, %for.body33.i ], [ 1, %for.body18.i ]
  %exitcond.not.i9 = icmp eq i64 %indvars.iv.i8, 999
  br i1 %exitcond.not.i9, label %for.end.i11, label %for.body33.i

for.body33.i:                                     ; preds = %for.cond29.i
  %4 = add nsw i64 %indvars.iv.i8, -1
  %arrayidx39.i = getelementptr inbounds [1000 x double], ptr %call.i5, i64 %indvars.iv108.i, i64 %4
  %5 = load double, ptr %arrayidx39.i, align 8, !tbaa !11, !invariant.load !29
  %6 = tail call double @llvm.fmuladd.f64(double %5, double 0xC09F400000000001, double 0x40AF420000000001) #22
  %div41.i = fdiv double 0x409F400000000001, %6
  %arrayidx45.i = getelementptr inbounds nuw [1000 x double], ptr %call.i5, i64 %indvars.iv108.i, i64 %indvars.iv.i8
  store double %div41.i, ptr %arrayidx45.i, align 8, !tbaa !11
  %arrayidx51.i = getelementptr inbounds [1000 x double], ptr %call.i, i64 %indvars.iv.i8, i64 %3
  %7 = load double, ptr %arrayidx51.i, align 8, !tbaa !11, !invariant.load !29
  %arrayidx57.i = getelementptr inbounds nuw [1000 x double], ptr %call.i, i64 %indvars.iv.i8, i64 %indvars.iv108.i
  %8 = load double, ptr %arrayidx57.i, align 8, !tbaa !11, !invariant.load !29
  %mul58.i = fmul double %8, 0xC09F3C0000000001
  %9 = tail call double @llvm.fmuladd.f64(double %7, double 0x408F400000000001, double %mul58.i) #22
  %arrayidx63.i = getelementptr inbounds nuw [1000 x double], ptr %call.i, i64 %indvars.iv.i8, i64 %indvars.iv.next109.i
  %10 = load double, ptr %arrayidx63.i, align 8, !tbaa !11, !invariant.load !29
  %11 = tail call double @llvm.fmuladd.f64(double %10, double 0x408F400000000001, double %9) #22
  %arrayidx69.i = getelementptr inbounds [1000 x double], ptr %call.i6, i64 %indvars.iv108.i, i64 %4
  %12 = load double, ptr %arrayidx69.i, align 8, !tbaa !11, !invariant.load !29
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0x409F400000000001, double %11) #22
  %div78.i = fdiv double %13, %6
  %arrayidx82.i = getelementptr inbounds nuw [1000 x double], ptr %call.i6, i64 %indvars.iv108.i, i64 %indvars.iv.i8
  store double %div78.i, ptr %arrayidx82.i, align 8, !tbaa !11
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i8, 1
  br label %for.cond29.i, !llvm.loop !30

for.end.i11:                                      ; preds = %for.cond29.i
  %arrayidx87.i = getelementptr inbounds nuw [1000 x double], ptr %arrayidx85.i, i64 0, i64 %indvars.iv108.i
  store double 1.000000e+00, ptr %arrayidx87.i, align 8, !tbaa !11
  %invariant.gep98.i = getelementptr inbounds nuw [1000 x double], ptr %invariant.gep.i, i64 0, i64 %indvars.iv108.i
  br label %for.cond89.i

for.cond89.i:                                     ; preds = %for.body92.i, %for.end.i11
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %for.body92.i ], [ 998, %for.end.i11 ]
  %cmp90.not.i = icmp eq i64 %indvars.iv105.i, 0
  br i1 %cmp90.not.i, label %for.cond15.i, label %for.body92.i

for.body92.i:                                     ; preds = %for.cond89.i
  %arrayidx96.i = getelementptr inbounds nuw [1000 x double], ptr %call.i5, i64 %indvars.iv108.i, i64 %indvars.iv105.i
  %14 = load double, ptr %arrayidx96.i, align 8, !tbaa !11, !invariant.load !29
  %gep99.i = getelementptr inbounds nuw [1000 x double], ptr %invariant.gep98.i, i64 %indvars.iv105.i
  %15 = load double, ptr %gep99.i, align 8, !tbaa !11, !invariant.load !29
  %arrayidx106.i = getelementptr inbounds nuw [1000 x double], ptr %call.i6, i64 %indvars.iv108.i, i64 %indvars.iv105.i
  %16 = load double, ptr %arrayidx106.i, align 8, !tbaa !11, !invariant.load !29
  %17 = tail call double @llvm.fmuladd.f64(double %14, double %15, double %16) #22
  %arrayidx110.i = getelementptr inbounds nuw [1000 x double], ptr %call.i4, i64 %indvars.iv105.i, i64 %indvars.iv108.i
  store double %17, ptr %arrayidx110.i, align 8, !tbaa !11
  %indvars.iv.next106.i = add nsw i64 %indvars.iv105.i, -1
  br label %for.cond89.i, !llvm.loop !31

for.cond116.i:                                    ; preds = %for.cond15.i, %for.end221.i
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %for.end221.i ], [ 1, %for.cond15.i ]
  %exitcond125.not.i = icmp eq i64 %indvars.iv122.i, 999
  br i1 %exitcond125.not.i, label %for.end224.i, label %for.body120.i

for.body120.i:                                    ; preds = %for.cond116.i
  %arrayidx122.i = getelementptr inbounds nuw [1000 x double], ptr %call.i, i64 %indvars.iv122.i
  store double 1.000000e+00, ptr %arrayidx122.i, align 8, !tbaa !11
  %arrayidx125.i = getelementptr inbounds nuw [1000 x double], ptr %call.i5, i64 %indvars.iv122.i
  store double 0.000000e+00, ptr %arrayidx125.i, align 8, !tbaa !11
  %arrayidx131.i = getelementptr inbounds nuw [1000 x double], ptr %call.i6, i64 %indvars.iv122.i
  store double 1.000000e+00, ptr %arrayidx131.i, align 8, !tbaa !11
  br label %for.cond133.i

for.cond133.i:                                    ; preds = %for.body137.i, %for.body120.i
  %indvars.iv113.i = phi i64 [ %indvars.iv.next114.i, %for.body137.i ], [ 1, %for.body120.i ]
  %exitcond117.not.i = icmp eq i64 %indvars.iv113.i, 999
  br i1 %exitcond117.not.i, label %for.end190.i, label %for.body137.i

for.body137.i:                                    ; preds = %for.cond133.i
  %18 = add nsw i64 %indvars.iv113.i, -1
  %arrayidx143.i = getelementptr inbounds [1000 x double], ptr %call.i5, i64 %indvars.iv122.i, i64 %18
  %19 = load double, ptr %arrayidx143.i, align 8, !tbaa !11, !invariant.load !29
  %20 = tail call double @llvm.fmuladd.f64(double %19, double 0xC08F400000000001, double 0x409F440000000001) #22
  %div145.i = fdiv double 0x408F400000000001, %20
  %arrayidx149.i = getelementptr inbounds nuw [1000 x double], ptr %call.i5, i64 %indvars.iv122.i, i64 %indvars.iv113.i
  store double %div145.i, ptr %arrayidx149.i, align 8, !tbaa !11
  %arrayidx155.i = getelementptr [1000 x double], ptr %invariant.gep100.i, i64 %indvars.iv122.i, i64 %indvars.iv113.i
  %21 = load double, ptr %arrayidx155.i, align 8, !tbaa !11, !invariant.load !29
  %arrayidx161.i = getelementptr inbounds nuw [1000 x double], ptr %call.i4, i64 %indvars.iv122.i, i64 %indvars.iv113.i
  %22 = load double, ptr %arrayidx161.i, align 8, !tbaa !11, !invariant.load !29
  %mul162.i = fmul double %22, 0xC0AF3E0000000001
  %23 = tail call double @llvm.fmuladd.f64(double %21, double 0x409F400000000001, double %mul162.i) #22
  %arrayidx167.i = getelementptr inbounds nuw [1000 x double], ptr %invariant.gep.i, i64 %indvars.iv122.i, i64 %indvars.iv113.i
  %24 = load double, ptr %arrayidx167.i, align 8, !tbaa !11, !invariant.load !29
  %25 = tail call double @llvm.fmuladd.f64(double %24, double 0x409F400000000001, double %23) #22
  %arrayidx174.i = getelementptr inbounds [1000 x double], ptr %call.i6, i64 %indvars.iv122.i, i64 %18
  %26 = load double, ptr %arrayidx174.i, align 8, !tbaa !11, !invariant.load !29
  %27 = tail call double @llvm.fmuladd.f64(double %26, double 0x408F400000000001, double %25) #22
  %div183.i = fdiv double %27, %20
  %arrayidx187.i = getelementptr inbounds nuw [1000 x double], ptr %call.i6, i64 %indvars.iv122.i, i64 %indvars.iv113.i
  store double %div183.i, ptr %arrayidx187.i, align 8, !tbaa !11
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1
  br label %for.cond133.i, !llvm.loop !32

for.end190.i:                                     ; preds = %for.cond133.i
  %arrayidx195.i = getelementptr inbounds nuw i8, ptr %arrayidx122.i, i64 7992
  store double 1.000000e+00, ptr %arrayidx195.i, align 8, !tbaa !11
  br label %for.cond197.i

for.cond197.i:                                    ; preds = %for.body200.i, %for.end190.i
  %indvars.iv118.i = phi i64 [ %indvars.iv.next119.i, %for.body200.i ], [ 998, %for.end190.i ]
  %cmp198.not.i = icmp eq i64 %indvars.iv118.i, 0
  br i1 %cmp198.not.i, label %for.end221.i, label %for.body200.i

for.body200.i:                                    ; preds = %for.cond197.i
  %arrayidx204.i = getelementptr inbounds nuw [1000 x double], ptr %call.i5, i64 %indvars.iv122.i, i64 %indvars.iv118.i
  %28 = load double, ptr %arrayidx204.i, align 8, !tbaa !11, !invariant.load !29
  %29 = add nuw nsw i64 %indvars.iv118.i, 1
  %arrayidx209.i = getelementptr inbounds nuw [1000 x double], ptr %call.i, i64 %indvars.iv122.i, i64 %29
  %30 = load double, ptr %arrayidx209.i, align 8, !tbaa !11, !invariant.load !29
  %arrayidx214.i = getelementptr inbounds nuw [1000 x double], ptr %call.i6, i64 %indvars.iv122.i, i64 %indvars.iv118.i
  %31 = load double, ptr %arrayidx214.i, align 8, !tbaa !11, !invariant.load !29
  %32 = tail call double @llvm.fmuladd.f64(double %28, double %30, double %31) #22
  %arrayidx218.i = getelementptr inbounds nuw [1000 x double], ptr %call.i, i64 %indvars.iv122.i, i64 %indvars.iv118.i
  store double %32, ptr %arrayidx218.i, align 8, !tbaa !11
  %indvars.iv.next119.i = add nsw i64 %indvars.iv118.i, -1
  br label %for.cond197.i, !llvm.loop !33

for.end221.i:                                     ; preds = %for.cond197.i
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1
  br label %for.cond116.i, !llvm.loop !34

for.end224.i:                                     ; preds = %for.cond116.i
  %inc.i1.i = add nuw nsw i32 %t.0.i, 1
  br label %for.cond.i7

kernel_adi.exit:                                  ; preds = %for.cond.i7
  tail call void @polybench_timer_stop() #18
  tail call void @polybench_timer_print() #18
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_adi.exit
  %33 = load ptr, ptr %argv, align 8, !tbaa !35, !invariant.load !29
  %strcmpload = load i8, ptr %33, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 1000, ptr nofree noundef readonly captures(none) %call.i) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_adi.exit
  tail call void @free(ptr noundef %call.i) #23
  tail call void @free(ptr noundef %call.i4) #23
  tail call void @free(ptr noundef %call.i5) #23
  tail call void @free(ptr noundef %call.i6) #23
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(i32 noundef %n, ptr nofree noundef readonly captures(none) %u) unnamed_addr #13 {
entry:
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.1.6) #18
  %0 = load ptr, ptr @stderr, align 8, !tbaa !37
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #24
  %1 = zext i32 %n to i64
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count15 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.end ], [ 0, %entry ]
  %exitcond16.not = icmp eq i64 %indvars.iv11, %wide.trip.count15
  br i1 %exitcond16.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %2 = mul i64 %indvars.iv11, %1
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
  %5 = load ptr, ptr @stderr, align 8, !tbaa !37
  %arrayidx8 = getelementptr inbounds nuw [1000 x double], ptr %u, i64 %indvars.iv11, i64 %indvars.iv
  %6 = load double, ptr %arrayidx8, align 8, !tbaa !11, !invariant.load !29
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.5.10, double noundef %6) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !39

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond, !llvm.loop !40

for.end12:                                        ; preds = %for.cond
  %7 = load ptr, ptr @stderr, align 8, !tbaa !37
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #24
  tail call void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.7) #18
  ret void
}

; Function Attrs: cold minsize nofree nounwind optsize uwtable
define internal void @outlined_ir_func_1(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) %0) #14 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !37
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
!15 = !{!16}
!16 = distinct !{!16, !17, !"outlined_ir_func_2: argument 0"}
!17 = distinct !{!17, !"outlined_ir_func_2"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"outlined_ir_func_2: argument 0"}
!20 = distinct !{!20, !"outlined_ir_func_2"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"outlined_ir_func_2: argument 0"}
!23 = distinct !{!23, !"outlined_ir_func_2"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"outlined_ir_func_2: argument 0"}
!26 = distinct !{!26, !"outlined_ir_func_2"}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 omnipotent char", !14, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !28}
