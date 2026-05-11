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
@polybench_inter_array_padding_sz = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.6 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
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
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp) #16
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
  %2 = tail call double @llvm.fmuladd.f64(double %conv2, double noundef 0x3EB0C6F7A0B5ED8D, double %conv) #17
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
  tail call void @free(ptr noundef captures(none) %ptr) #18
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #5 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #16
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #15
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call void @outlined_ir_func_0(ptr nofree noundef nonnull readonly captures(none) dereferenceable(51) @.str.4) #15
  call void @exit(i32 noundef 1) #19
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

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #10 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #15
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #15
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #15
  %call3 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #15
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
  br label %for.cond.i, !llvm.loop !15

for.cond9.i:                                      ; preds = %for.cond.i, %for.end39.i
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i, %for.end39.i ], [ 1, %for.cond.i ]
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %for.end39.i ], [ 0, %for.cond.i ]
  %exitcond78.not.i = icmp eq i64 %indvars.iv67.i, 2000
  br i1 %exitcond78.not.i, label %for.end46.i, label %for.cond13.i

for.cond13.i:                                     ; preds = %for.cond9.i, %for.body16.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %for.body16.i ], [ 0, %for.cond9.i ]
  %exitcond66.i = icmp eq i64 %indvars.iv61.i, %indvars.iv73.i
  br i1 %exitcond66.i, label %for.cond29.i, label %for.body16.i

for.body16.i:                                     ; preds = %for.cond13.i
  %1 = trunc nuw nsw i64 %indvars.iv61.i to i32
  %2 = urem i32 %1, 2000
  %rem.i = sub nsw i32 0, %2
  %conv17.i = sitofp i32 %rem.i to double
  %div19.i = fdiv double %conv17.i, 2.000000e+03
  %add20.i = fadd double %div19.i, 1.000000e+00
  %arrayidx24.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv67.i, i64 %indvars.iv61.i
  store double %add20.i, ptr %arrayidx24.i, align 8, !tbaa !5
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1
  br label %for.cond13.i, !llvm.loop !17

for.cond29.i:                                     ; preds = %for.cond13.i, %for.body32.i
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %for.body32.i ], [ %indvars.iv67.i, %for.cond13.i ]
  %exitcond72.not.i = icmp eq i64 %indvars.iv69.i, 1999
  br i1 %exitcond72.not.i, label %for.end39.i, label %for.body32.i

for.body32.i:                                     ; preds = %for.cond29.i
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1
  %arrayidx36.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv67.i, i64 %indvars.iv.next70.i
  store double 0.000000e+00, ptr %arrayidx36.i, align 8, !tbaa !5
  br label %for.cond29.i, !llvm.loop !18

for.end39.i:                                      ; preds = %for.cond29.i
  %arrayidx43.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv67.i, i64 %indvars.iv67.i
  store double 1.000000e+00, ptr %arrayidx43.i, align 8, !tbaa !5
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1
  br label %for.cond9.i, !llvm.loop !19

for.end46.i:                                      ; preds = %for.cond9.i
  %call.i = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #15
  br label %for.cond47.i

for.cond47.i:                                     ; preds = %for.end61.i, %for.end46.i
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i, %for.end61.i ], [ 0, %for.end46.i ]
  %exitcond86.not.i = icmp eq i64 %indvars.iv83.i, 2000
  br i1 %exitcond86.not.i, label %for.cond65.i, label %for.cond51.i

for.cond51.i:                                     ; preds = %for.cond47.i, %for.body54.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %for.body54.i ], [ 0, %for.cond47.i ]
  %exitcond82.not.i = icmp eq i64 %indvars.iv79.i, 2000
  br i1 %exitcond82.not.i, label %for.end61.i, label %for.body54.i

for.body54.i:                                     ; preds = %for.cond51.i
  %arrayidx58.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %call.i, i64 0, i64 %indvars.iv83.i, i64 %indvars.iv79.i
  store double 0.000000e+00, ptr %arrayidx58.i, align 8, !tbaa !5
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  br label %for.cond51.i, !llvm.loop !20

for.end61.i:                                      ; preds = %for.cond51.i
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1
  br label %for.cond47.i, !llvm.loop !21

for.cond65.i:                                     ; preds = %for.cond47.i, %for.end94.i
  %indvars.iv95.i = phi i64 [ %indvars.iv.next96.i, %for.end94.i ], [ 0, %for.cond47.i ]
  %exitcond98.not.i = icmp eq i64 %indvars.iv95.i, 2000
  br i1 %exitcond98.not.i, label %for.cond98.i, label %for.cond69.i

for.cond69.i:                                     ; preds = %for.cond65.i, %for.end91.i
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %for.end91.i ], [ 0, %for.cond65.i ]
  %exitcond94.not.i = icmp eq i64 %indvars.iv91.i, 2000
  br i1 %exitcond94.not.i, label %for.end94.i, label %for.cond73.preheader.i

for.cond73.preheader.i:                           ; preds = %for.cond69.i
  %arrayidx80.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv91.i, i64 %indvars.iv95.i
  %3 = load double, ptr %arrayidx80.i, align 8, !tbaa !5, !invariant.load !22
  br label %for.cond73.i

for.cond73.i:                                     ; preds = %for.body76.i, %for.cond73.preheader.i
  %indvars.iv87.i = phi i64 [ 0, %for.cond73.preheader.i ], [ %indvars.iv.next88.i, %for.body76.i ]
  %exitcond90.not.i = icmp eq i64 %indvars.iv87.i, 2000
  br i1 %exitcond90.not.i, label %for.end91.i, label %for.body76.i

for.body76.i:                                     ; preds = %for.cond73.i
  %arrayidx84.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv87.i, i64 %indvars.iv95.i
  %4 = load double, ptr %arrayidx84.i, align 8, !tbaa !5, !invariant.load !22
  %arrayidx88.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %call.i, i64 0, i64 %indvars.iv91.i, i64 %indvars.iv87.i
  %5 = load double, ptr %arrayidx88.i, align 8, !tbaa !5, !invariant.load !22
  %6 = tail call double @llvm.fmuladd.f64(double %3, double %4, double %5)
  store double %6, ptr %arrayidx88.i, align 8, !tbaa !5
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1
  br label %for.cond73.i, !llvm.loop !23

for.end91.i:                                      ; preds = %for.cond73.i
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 1
  br label %for.cond69.i, !llvm.loop !24

for.end94.i:                                      ; preds = %for.cond69.i
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1
  br label %for.cond65.i, !llvm.loop !25

for.cond98.i:                                     ; preds = %for.cond65.i, %for.end116.i
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i, %for.end116.i ], [ 0, %for.cond65.i ]
  %exitcond106.not.i = icmp eq i64 %indvars.iv103.i, 2000
  br i1 %exitcond106.not.i, label %init_array.exit, label %for.cond102.i

for.cond102.i:                                    ; preds = %for.cond98.i, %for.body105.i
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %for.body105.i ], [ 0, %for.cond98.i ]
  %exitcond102.not.i = icmp eq i64 %indvars.iv99.i, 2000
  br i1 %exitcond102.not.i, label %for.end116.i, label %for.body105.i

for.body105.i:                                    ; preds = %for.cond102.i
  %arrayidx109.i = getelementptr inbounds nuw [2000 x [2000 x double]], ptr %call.i, i64 0, i64 %indvars.iv103.i, i64 %indvars.iv99.i
  %7 = load double, ptr %arrayidx109.i, align 8, !tbaa !5, !invariant.load !22
  %arrayidx113.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv103.i, i64 %indvars.iv99.i
  store double %7, ptr %arrayidx113.i, align 8, !tbaa !5
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1
  br label %for.cond102.i, !llvm.loop !26

for.end116.i:                                     ; preds = %for.cond102.i
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1
  br label %for.cond98.i, !llvm.loop !27

init_array.exit:                                  ; preds = %for.cond98.i
  tail call void @free(ptr noundef %call.i) #20
  %call.i21 = tail call fastcc double @rtclock() #15
  store double %call.i21, ptr @polybench_t_start, align 8, !tbaa !5
  br label %for.cond.i4

for.cond.i4:                                      ; preds = %for.end56.i, %init_array.exit
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %for.end56.i ], [ 0, %init_array.exit ]
  %exitcond95.not.i = icmp eq i64 %indvars.iv88.i, 2000
  br i1 %exitcond95.not.i, label %for.cond60.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i4, %for.end.i
  %indvars.iv79.i5 = phi i64 [ %indvars.iv.next80.i10, %for.end.i ], [ 0, %for.cond.i4 ]
  %exitcond83.not.i = icmp eq i64 %indvars.iv79.i5, %indvars.iv88.i
  br i1 %exitcond83.not.i, label %for.cond28.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %arrayidx5.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv88.i, i64 %indvars.iv79.i5
  %8 = load double, ptr %arrayidx5.i, align 8, !tbaa !5, !invariant.load !22
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body8.i, %for.body3.i
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i8, %for.body8.i ], [ 0, %for.body3.i ]
  %w.0.i = phi double [ %11, %for.body8.i ], [ %8, %for.body3.i ]
  %exitcond.not.i7 = icmp eq i64 %indvars.iv.i6, %indvars.iv79.i5
  br i1 %exitcond.not.i7, label %for.end.i, label %for.body8.i

for.body8.i:                                      ; preds = %for.cond6.i
  %arrayidx12.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv88.i, i64 %indvars.iv.i6
  %9 = load double, ptr %arrayidx12.i, align 8, !tbaa !5, !invariant.load !22
  %arrayidx16.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv.i6, i64 %indvars.iv79.i5
  %10 = load double, ptr %arrayidx16.i, align 8, !tbaa !5, !invariant.load !22
  %neg.i = fneg double %9
  %11 = tail call double @llvm.fmuladd.f64(double %neg.i, double %10, double %w.0.i) #21
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i6, 1
  br label %for.cond6.i, !llvm.loop !28

for.end.i:                                        ; preds = %for.cond6.i
  %arrayidx20.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv79.i5, i64 %indvars.iv79.i5
  %12 = load double, ptr %arrayidx20.i, align 8, !tbaa !5, !invariant.load !22
  %div.i9 = fdiv double %w.0.i, %12
  store double %div.i9, ptr %arrayidx5.i, align 8, !tbaa !5
  %indvars.iv.next80.i10 = add nuw nsw i64 %indvars.iv79.i5, 1
  br label %for.cond1.i, !llvm.loop !29

for.cond28.i:                                     ; preds = %for.cond1.i, %for.end49.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %for.end49.i ], [ %indvars.iv88.i, %for.cond1.i ]
  %exitcond93.not.i = icmp eq i64 %indvars.iv90.i, 2000
  br i1 %exitcond93.not.i, label %for.end56.i, label %for.body30.i

for.body30.i:                                     ; preds = %for.cond28.i
  %arrayidx34.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv88.i, i64 %indvars.iv90.i
  %13 = load double, ptr %arrayidx34.i, align 8, !tbaa !5, !invariant.load !22
  br label %for.cond35.i

for.cond35.i:                                     ; preds = %for.body37.i, %for.body30.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %for.body37.i ], [ 0, %for.body30.i ]
  %w.1.i = phi double [ %16, %for.body37.i ], [ %13, %for.body30.i ]
  %exitcond87.not.i = icmp eq i64 %indvars.iv84.i, %indvars.iv88.i
  br i1 %exitcond87.not.i, label %for.end49.i, label %for.body37.i

for.body37.i:                                     ; preds = %for.cond35.i
  %arrayidx41.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv88.i, i64 %indvars.iv84.i
  %14 = load double, ptr %arrayidx41.i, align 8, !tbaa !5, !invariant.load !22
  %arrayidx45.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv84.i, i64 %indvars.iv90.i
  %15 = load double, ptr %arrayidx45.i, align 8, !tbaa !5, !invariant.load !22
  %neg46.i = fneg double %14
  %16 = tail call double @llvm.fmuladd.f64(double %neg46.i, double %15, double %w.1.i) #21
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1
  br label %for.cond35.i, !llvm.loop !30

for.end49.i:                                      ; preds = %for.cond35.i
  store double %w.1.i, ptr %arrayidx34.i, align 8, !tbaa !5
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1
  br label %for.cond28.i, !llvm.loop !31

for.end56.i:                                      ; preds = %for.cond28.i
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1
  br label %for.cond.i4, !llvm.loop !32

for.cond60.i:                                     ; preds = %for.cond.i4, %for.end77.i
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %for.end77.i ], [ 0, %for.cond.i4 ]
  %exitcond103.not.i = icmp eq i64 %indvars.iv100.i, 2000
  br i1 %exitcond103.not.i, label %for.cond83.i, label %for.body62.i

for.body62.i:                                     ; preds = %for.cond60.i
  %arrayidx64.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv100.i
  %17 = load double, ptr %arrayidx64.i, align 8, !tbaa !5, !invariant.load !22
  br label %for.cond65.i11

for.cond65.i11:                                   ; preds = %for.body67.i, %for.body62.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %for.body67.i ], [ 0, %for.body62.i ]
  %w.2.i = phi double [ %20, %for.body67.i ], [ %17, %for.body62.i ]
  %exitcond99.not.i = icmp eq i64 %indvars.iv96.i, %indvars.iv100.i
  br i1 %exitcond99.not.i, label %for.end77.i, label %for.body67.i

for.body67.i:                                     ; preds = %for.cond65.i11
  %arrayidx71.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv100.i, i64 %indvars.iv96.i
  %18 = load double, ptr %arrayidx71.i, align 8, !tbaa !5, !invariant.load !22
  %arrayidx73.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv96.i
  %19 = load double, ptr %arrayidx73.i, align 8, !tbaa !5, !invariant.load !22
  %neg74.i = fneg double %18
  %20 = tail call double @llvm.fmuladd.f64(double %neg74.i, double %19, double %w.2.i) #21
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1
  br label %for.cond65.i11, !llvm.loop !33

for.end77.i:                                      ; preds = %for.cond65.i11
  %arrayidx79.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv100.i
  store double %w.2.i, ptr %arrayidx79.i, align 8, !tbaa !5
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1
  br label %for.cond60.i, !llvm.loop !34

for.cond83.i:                                     ; preds = %for.cond60.i, %for.end100.i
  %i.2.i = phi i32 [ %dec.i, %for.end100.i ], [ 1999, %for.cond60.i ]
  %21 = zext i32 %i.2.i to i64
  %cmp84.i = icmp sgt i32 %i.2.i, -1
  br i1 %cmp84.i, label %for.body85.i, label %kernel_ludcmp.exit

for.body85.i:                                     ; preds = %for.cond83.i
  %arrayidx87.i = getelementptr inbounds nuw double, ptr %call3, i64 %21
  %22 = load double, ptr %arrayidx87.i, align 8, !tbaa !5, !invariant.load !22
  br label %for.cond88.i

for.cond88.i:                                     ; preds = %for.body90.i, %for.body85.i
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i, %for.body90.i ], [ %21, %for.body85.i ]
  %w.3.i = phi double [ %25, %for.body90.i ], [ %22, %for.body85.i ]
  %exitcond107.not.i = icmp eq i64 %indvars.iv104.i, 1999
  br i1 %exitcond107.not.i, label %for.end100.i, label %for.body90.i

for.body90.i:                                     ; preds = %for.cond88.i
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1
  %arrayidx94.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %21, i64 %indvars.iv.next105.i
  %23 = load double, ptr %arrayidx94.i, align 8, !tbaa !5, !invariant.load !22
  %arrayidx96.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv.next105.i
  %24 = load double, ptr %arrayidx96.i, align 8, !tbaa !5, !invariant.load !22
  %neg97.i = fneg double %23
  %25 = tail call double @llvm.fmuladd.f64(double %neg97.i, double %24, double %w.3.i) #21
  br label %for.cond88.i, !llvm.loop !35

for.end100.i:                                     ; preds = %for.cond88.i
  %arrayidx104.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %21, i64 %21
  %26 = load double, ptr %arrayidx104.i, align 8, !tbaa !5, !invariant.load !22
  %div105.i = fdiv double %w.3.i, %26
  %arrayidx107.i = getelementptr inbounds nuw double, ptr %call2, i64 %21
  store double %div105.i, ptr %arrayidx107.i, align 8, !tbaa !5
  %dec.i = add nsw i32 %i.2.i, -1
  br label %for.cond83.i, !llvm.loop !36

kernel_ludcmp.exit:                               ; preds = %for.cond83.i
  %call.i22 = tail call fastcc double @rtclock() #15
  store double %call.i22, ptr @polybench_t_end, align 8, !tbaa !5
  tail call void @polybench_timer_print() #15
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_ludcmp.exit
  %27 = load ptr, ptr %argv, align 8, !tbaa !37, !invariant.load !22
  %strcmpload = load i8, ptr %27, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @print_array(i32 noundef 2000, ptr nofree noundef readonly captures(none) %call2) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %kernel_ludcmp.exit
  tail call void @free(ptr noundef %call) #22
  tail call void @free(ptr noundef %call1) #22
  tail call void @free(ptr noundef %call2) #22
  tail call void @free(ptr noundef %call3) #22
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(i32 noundef %n, ptr nofree noundef readonly captures(none) %x) unnamed_addr #12 {
entry:
  tail call void @outlined_ir_func_0(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.1.6) #15
  %0 = load ptr, ptr @stderr, align 8, !tbaa !39
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #23
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %rem = urem i32 %1, 20
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  tail call void @outlined_ir_func_0(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.4.9) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %2 = load ptr, ptr @stderr, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds nuw double, ptr %x, i64 %indvars.iv
  %3 = load double, ptr %arrayidx, align 8, !tbaa !5, !invariant.load !22
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.5.10, double noundef %3) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr @stderr, align 8, !tbaa !39
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #23
  tail call void @outlined_ir_func_0(ptr nofree noundef nonnull readonly captures(none) dereferenceable(23) @.str.7) #15
  ret void
}

; Function Attrs: cold minsize nofree nounwind optsize uwtable
define internal void @outlined_ir_func_0(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) %0) #13 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !39
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull readonly captures(none) dereferenceable(2) %0) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

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
attributes #13 = { cold minsize nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind }
attributes #16 = { nofree nounwind willreturn memory(readwrite) }
attributes #17 = { nofree }
attributes #18 = { nounwind willreturn }
attributes #19 = { cold nofree noreturn nounwind }
attributes #20 = { nounwind memory(readwrite) }
attributes #21 = { nofree nosync }
attributes #22 = { nounwind }
attributes #23 = { cold nofree nounwind }

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
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = !{}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 omnipotent char", !14, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!41 = distinct !{!41, !16}
