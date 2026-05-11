; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-2d.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"A\00", align 1
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
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1690000, i32 noundef 8)
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1690000, i32 noundef 8)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc17.i, %entry
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %for.inc17.i ], [ 0, %entry ]
  %exitcond20.not.i = icmp eq i64 %indvars.iv17.i, 1300
  br i1 %exitcond20.not.i, label %init_array.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv17.i to i32
  %conv.i = uitofp nneg i32 %0 to double
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1300
  br i1 %exitcond.not.i, label %for.inc17.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %1 = trunc i64 %indvars.iv.i to i32
  %2 = add i32 %1, 2
  %conv4.i = uitofp nneg i32 %2 to double
  %3 = tail call double @llvm.fmuladd.f64(double %conv.i, double %conv4.i, double 2.000000e+00)
  %div.i = fdiv double %3, 1.300000e+03
  %arrayidx7.i = getelementptr inbounds nuw [1300 x double], ptr %call, i64 %indvars.iv17.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx7.i, align 8, !tbaa !5
  %4 = add i32 %1, 3
  %conv10.i = uitofp nneg i32 %4 to double
  %5 = tail call double @llvm.fmuladd.f64(double %conv.i, double %conv10.i, double 3.000000e+00)
  %div12.i = fdiv double %5, 1.300000e+03
  %arrayidx16.i = getelementptr inbounds nuw [1300 x double], ptr %call1, i64 %indvars.iv17.i, i64 %indvars.iv.i
  store double %div12.i, ptr %arrayidx16.i, align 8, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !17

for.inc17.i:                                      ; preds = %for.cond1.i
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1
  br label %for.cond.i, !llvm.loop !19

init_array.exit:                                  ; preds = %for.cond.i
  %call.i = tail call fastcc double @rtclock()
  store double %call.i, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i8

for.cond.i8:                                      ; preds = %for.inc87.i, %init_array.exit
  %t.0.i = phi i32 [ 0, %init_array.exit ], [ %inc88.i, %for.inc87.i ]
  %exitcond60.not.i = icmp eq i32 %t.0.i, 500
  br i1 %exitcond60.not.i, label %kernel_jacobi_2d.exit, label %for.cond1.i9

for.cond1.i9:                                     ; preds = %for.cond.i8, %for.inc37.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %for.inc37.i ], [ 1, %for.cond.i8 ]
  %exitcond50.not.i = icmp eq i64 %indvars.iv47.i, 1299
  br i1 %exitcond50.not.i, label %for.cond40.i, label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.cond1.i9
  %6 = getelementptr inbounds nuw [1300 x double], ptr %call, i64 %indvars.iv47.i
  %arrayidx23.i = getelementptr inbounds nuw i8, ptr %6, i64 10400
  %arrayidx29.i = getelementptr i8, ptr %6, i64 -10400
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body7.i, %for.cond4.preheader.i
  %indvars.iv.i10 = phi i64 [ 1, %for.cond4.preheader.i ], [ %indvars.iv.next.i12, %for.body7.i ]
  %exitcond.not.i11 = icmp eq i64 %indvars.iv.i10, 1299
  br i1 %exitcond.not.i11, label %for.inc37.i, label %for.body7.i

for.body7.i:                                      ; preds = %for.cond4.i
  %arrayidx9.i = getelementptr inbounds nuw [1300 x double], ptr %call, i64 %indvars.iv47.i, i64 %indvars.iv.i10
  %7 = load double, ptr %arrayidx9.i, align 8, !tbaa !5
  %8 = add nsw i64 %indvars.iv.i10, -1
  %arrayidx14.i = getelementptr inbounds [1300 x double], ptr %call, i64 %indvars.iv47.i, i64 %8
  %9 = load double, ptr %arrayidx14.i, align 8, !tbaa !5
  %add.i = fadd double %7, %9
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i10, 1
  %arrayidx19.i = getelementptr inbounds nuw [1300 x double], ptr %call, i64 %indvars.iv47.i, i64 %indvars.iv.next.i12
  %10 = load double, ptr %arrayidx19.i, align 8, !tbaa !5
  %add20.i = fadd double %add.i, %10
  %arrayidx25.i = getelementptr inbounds nuw [1300 x double], ptr %arrayidx23.i, i64 0, i64 %indvars.iv.i10
  %11 = load double, ptr %arrayidx25.i, align 8, !tbaa !5
  %add26.i = fadd double %add20.i, %11
  %arrayidx31.i = getelementptr inbounds nuw [1300 x double], ptr %arrayidx29.i, i64 0, i64 %indvars.iv.i10
  %12 = load double, ptr %arrayidx31.i, align 8, !tbaa !5
  %add32.i = fadd double %add26.i, %12
  %mul.i = fmul double %add32.i, 2.000000e-01
  %arrayidx36.i = getelementptr inbounds nuw [1300 x double], ptr %call1, i64 %indvars.iv47.i, i64 %indvars.iv.i10
  store double %mul.i, ptr %arrayidx36.i, align 8, !tbaa !5
  br label %for.cond4.i, !llvm.loop !20

for.inc37.i:                                      ; preds = %for.cond4.i
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  br label %for.cond1.i9, !llvm.loop !21

for.cond40.i:                                     ; preds = %for.cond1.i9, %for.inc84.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %for.inc84.i ], [ 1, %for.cond1.i9 ]
  %exitcond59.not.i = icmp eq i64 %indvars.iv56.i, 1299
  br i1 %exitcond59.not.i, label %for.inc87.i, label %for.cond44.preheader.i

for.cond44.preheader.i:                           ; preds = %for.cond40.i
  %13 = getelementptr inbounds nuw [1300 x double], ptr %call1, i64 %indvars.iv56.i
  %arrayidx66.i = getelementptr inbounds nuw i8, ptr %13, i64 10400
  %arrayidx72.i = getelementptr i8, ptr %13, i64 -10400
  br label %for.cond44.i

for.cond44.i:                                     ; preds = %for.body47.i, %for.cond44.preheader.i
  %indvars.iv51.i = phi i64 [ 1, %for.cond44.preheader.i ], [ %indvars.iv.next52.i, %for.body47.i ]
  %exitcond55.not.i = icmp eq i64 %indvars.iv51.i, 1299
  br i1 %exitcond55.not.i, label %for.inc84.i, label %for.body47.i

for.body47.i:                                     ; preds = %for.cond44.i
  %arrayidx51.i = getelementptr inbounds nuw [1300 x double], ptr %call1, i64 %indvars.iv56.i, i64 %indvars.iv51.i
  %14 = load double, ptr %arrayidx51.i, align 8, !tbaa !5
  %15 = add nsw i64 %indvars.iv51.i, -1
  %arrayidx56.i = getelementptr inbounds [1300 x double], ptr %call1, i64 %indvars.iv56.i, i64 %15
  %16 = load double, ptr %arrayidx56.i, align 8, !tbaa !5
  %add57.i = fadd double %14, %16
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1
  %arrayidx62.i = getelementptr inbounds nuw [1300 x double], ptr %call1, i64 %indvars.iv56.i, i64 %indvars.iv.next52.i
  %17 = load double, ptr %arrayidx62.i, align 8, !tbaa !5
  %add63.i = fadd double %add57.i, %17
  %arrayidx68.i = getelementptr inbounds nuw [1300 x double], ptr %arrayidx66.i, i64 0, i64 %indvars.iv51.i
  %18 = load double, ptr %arrayidx68.i, align 8, !tbaa !5
  %add69.i = fadd double %add63.i, %18
  %arrayidx74.i = getelementptr inbounds nuw [1300 x double], ptr %arrayidx72.i, i64 0, i64 %indvars.iv51.i
  %19 = load double, ptr %arrayidx74.i, align 8, !tbaa !5
  %add75.i = fadd double %add69.i, %19
  %mul76.i = fmul double %add75.i, 2.000000e-01
  %arrayidx80.i = getelementptr inbounds nuw [1300 x double], ptr %call, i64 %indvars.iv56.i, i64 %indvars.iv51.i
  store double %mul76.i, ptr %arrayidx80.i, align 8, !tbaa !5
  br label %for.cond44.i, !llvm.loop !22

for.inc84.i:                                      ; preds = %for.cond44.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1
  br label %for.cond40.i, !llvm.loop !23

for.inc87.i:                                      ; preds = %for.cond40.i
  %inc88.i = add nuw nsw i32 %t.0.i, 1
  br label %for.cond.i8, !llvm.loop !24

kernel_jacobi_2d.exit:                            ; preds = %for.cond.i8
  %call.i13 = tail call fastcc double @rtclock()
  store double %call.i13, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print()
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_jacobi_2d.exit
  %20 = load ptr, ptr %argv, align 8, !tbaa !25
  %strcmpload = load i8, ptr %20, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_jacobi_2d.exit
  tail call void @free(ptr noundef nonnull %call) #11
  tail call void @free(ptr noundef nonnull %call1) #11
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %A) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #14
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc10 ], [ 0, %entry ]
  %exitcond15.not = icmp eq i64 %indvars.iv11, 1300
  br i1 %exitcond15.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %3 = mul nuw nsw i64 %indvars.iv11, 1300
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1300
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
  %arrayidx8 = getelementptr inbounds nuw [1300 x double], ptr %A, i64 %indvars.iv11, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !27

for.inc10:                                        ; preds = %for.cond2
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond, !llvm.loop !28

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
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
