; ModuleID = '<stdin>'
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
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #12
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #12
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i)
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #12
  store double %2, ptr @polybench_t_start, align 8, !tbaa !11
  ret void
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
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #12
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #12
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i)
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #12
  store double %2, ptr @polybench_t_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #3 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #6 {
entry:
  tail call void @free(ptr noundef %ptr) #12
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #3 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i) #12
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i, i64 noundef 4096, i64 noundef %mul) #12
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #13
  call void @exit(i32 noundef 1) #14
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i) #12
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
  %Tp.i.i21 = alloca %struct.timeval, align 8
  %Tp.i.i = alloca %struct.timeval, align 8
  %ret.i.i8 = alloca ptr, align 8
  %ret.i.i = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #12
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 13520000) #12
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %1 = ptrtoint ptr %0 to i64
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %3 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %2) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i8) #12
  store ptr null, ptr %ret.i.i8, align 8, !tbaa !13
  %call.i.i9 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i8, i64 noundef 4096, i64 noundef 13520000) #12
  %4 = load ptr, ptr %ret.i.i8, align 8, !tbaa !13
  %tobool.i.i10 = icmp eq ptr %4, null
  %tobool2.i.i11 = icmp ne i32 %call.i.i9, 0
  %or.cond.i.i12 = select i1 %tobool.i.i10, i1 true, i1 %tobool2.i.i11
  br i1 %or.cond.i.i12, label %if.then.i.i13, label %polybench_alloc_data.exit14

if.then.i.i13:                                    ; preds = %polybench_alloc_data.exit
  %5 = load ptr, ptr @stderr, align 8, !tbaa !15
  %6 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %5) #13
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit14:                      ; preds = %polybench_alloc_data.exit
  %7 = ptrtoint ptr %4 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i8) #12
  %8 = sub i64 %7, %1
  %diff.check = icmp ult i64 %8, 16
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc17.i, %polybench_alloc_data.exit14
  %indvars.iv19.i = phi i64 [ 0, %polybench_alloc_data.exit14 ], [ %indvars.iv.next20.i, %for.inc17.i ]
  %9 = trunc nuw nsw i64 %indvars.iv19.i to i32
  %conv.i = uitofp nneg i32 %9 to double
  br i1 %diff.check, label %for.body3.i, label %vector.ph

vector.ph:                                        ; preds = %for.cond1.preheader.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %conv.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %10 = add <2 x i32> %vec.ind, splat (i32 2)
  %11 = uitofp nneg <2 x i32> %10 to <2 x double>
  %12 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %11, <2 x double> splat (double 2.000000e+00))
  %13 = fdiv <2 x double> %12, splat (double 1.300000e+03)
  %14 = getelementptr inbounds nuw [1300 x double], ptr %0, i64 %indvars.iv19.i, i64 %index
  store <2 x double> %13, ptr %14, align 8, !tbaa !11
  %15 = add <2 x i32> %vec.ind, splat (i32 3)
  %16 = uitofp nneg <2 x i32> %15 to <2 x double>
  %17 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %16, <2 x double> splat (double 3.000000e+00))
  %18 = fdiv <2 x double> %17, splat (double 1.300000e+03)
  %19 = getelementptr inbounds nuw [1300 x double], ptr %4, i64 %indvars.iv19.i, i64 %index
  store <2 x double> %18, ptr %19, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %20 = icmp eq i64 %index.next, 1300
  br i1 %20, label %for.inc17.i, label %vector.body, !llvm.loop !17

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %21 = trunc i64 %indvars.iv.i to i32
  %22 = add i32 %21, 2
  %conv4.i = uitofp nneg i32 %22 to double
  %23 = call double @llvm.fmuladd.f64(double %conv.i, double %conv4.i, double 2.000000e+00)
  %div.i = fdiv double %23, 1.300000e+03
  %arrayidx7.i = getelementptr inbounds nuw [1300 x double], ptr %0, i64 %indvars.iv19.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx7.i, align 8, !tbaa !11
  %24 = add i32 %21, 3
  %conv10.i = uitofp nneg i32 %24 to double
  %25 = call double @llvm.fmuladd.f64(double %conv.i, double %conv10.i, double 3.000000e+00)
  %div12.i = fdiv double %25, 1.300000e+03
  %arrayidx16.i = getelementptr inbounds nuw [1300 x double], ptr %4, i64 %indvars.iv19.i, i64 %indvars.iv.i
  store double %div12.i, ptr %arrayidx16.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1300
  br i1 %exitcond.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !21

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next20.i, 1300
  br i1 %exitcond22.not.i, label %init_array.exit, label %for.cond1.preheader.i, !llvm.loop !22

init_array.exit:                                  ; preds = %for.inc17.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #12
  %call.i.i15 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #12
  %cmp.not.i.i = icmp eq i32 %call.i.i15, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i16

if.then.i.i16:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i15)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i16
  %26 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %26 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %27 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %27 to double
  %28 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #12
  store double %28, ptr @polybench_t_start, align 8, !tbaa !11
  %scevgep = getelementptr i8, ptr %0, i64 10408
  %scevgep30 = getelementptr i8, ptr %0, i64 13509592
  %scevgep31 = getelementptr i8, ptr %4, i64 8
  %scevgep32 = getelementptr i8, ptr %4, i64 13519992
  %scevgep45 = getelementptr i8, ptr %4, i64 10408
  %scevgep46 = getelementptr i8, ptr %4, i64 13509592
  %scevgep47 = getelementptr i8, ptr %0, i64 8
  %scevgep48 = getelementptr i8, ptr %0, i64 13519992
  %bound049 = icmp ult ptr %scevgep45, %scevgep48
  %bound150 = icmp ult ptr %scevgep47, %scevgep46
  %found.conflict51 = and i1 %bound049, %bound150
  %bound0 = icmp ult ptr %scevgep, %scevgep32
  %bound1 = icmp ult ptr %scevgep31, %scevgep30
  %found.conflict = and i1 %bound0, %bound1
  br label %for.cond1.preheader.i17

for.cond1.preheader.i17:                          ; preds = %for.inc87.i, %polybench_timer_start.exit
  %t.049.i = phi i32 [ 0, %polybench_timer_start.exit ], [ %inc88.i, %for.inc87.i ]
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc37.i, %for.cond1.preheader.i17
  %indvars.iv52.i = phi i64 [ 1, %for.cond1.preheader.i17 ], [ %indvars.iv.next53.i, %for.inc37.i ]
  %29 = getelementptr inbounds nuw [1300 x double], ptr %0, i64 %indvars.iv52.i
  %arrayidx23.i = getelementptr inbounds nuw i8, ptr %29, i64 10400
  %arrayidx29.i = getelementptr i8, ptr %29, i64 -10400
  br i1 %found.conflict51, label %for.body7.i, label %vector.body54

vector.body54:                                    ; preds = %for.cond4.preheader.i, %vector.body54
  %index55 = phi i64 [ %index.next62, %vector.body54 ], [ 0, %for.cond4.preheader.i ]
  %offset.idx56 = or disjoint i64 %index55, 1
  %30 = getelementptr inbounds nuw [1300 x double], ptr %0, i64 %indvars.iv52.i, i64 %offset.idx56
  %wide.load57 = load <2 x double>, ptr %30, align 8, !tbaa !11, !alias.scope !23
  %31 = getelementptr inbounds [1300 x double], ptr %0, i64 %indvars.iv52.i, i64 %index55
  %wide.load58 = load <2 x double>, ptr %31, align 8, !tbaa !11, !alias.scope !23
  %32 = fadd <2 x double> %wide.load57, %wide.load58
  %33 = add nuw nsw i64 %index55, 2
  %34 = getelementptr inbounds nuw [1300 x double], ptr %0, i64 %indvars.iv52.i, i64 %33
  %wide.load59 = load <2 x double>, ptr %34, align 8, !tbaa !11, !alias.scope !23
  %35 = fadd <2 x double> %32, %wide.load59
  %36 = getelementptr inbounds nuw [1300 x double], ptr %arrayidx23.i, i64 0, i64 %offset.idx56
  %wide.load60 = load <2 x double>, ptr %36, align 8, !tbaa !11, !alias.scope !23
  %37 = fadd <2 x double> %35, %wide.load60
  %38 = getelementptr inbounds nuw [1300 x double], ptr %arrayidx29.i, i64 0, i64 %offset.idx56
  %wide.load61 = load <2 x double>, ptr %38, align 8, !tbaa !11, !alias.scope !23
  %39 = fadd <2 x double> %37, %wide.load61
  %40 = fmul <2 x double> %39, splat (double 2.000000e-01)
  %41 = getelementptr inbounds nuw [1300 x double], ptr %4, i64 %indvars.iv52.i, i64 %offset.idx56
  store <2 x double> %40, ptr %41, align 8, !tbaa !11, !alias.scope !26, !noalias !23
  %index.next62 = add nuw i64 %index55, 2
  %42 = icmp eq i64 %index.next62, 1298
  br i1 %42, label %for.inc37.i, label %vector.body54, !llvm.loop !28

for.body7.i:                                      ; preds = %for.cond4.preheader.i, %for.body7.i
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i19, %for.body7.i ], [ 1, %for.cond4.preheader.i ]
  %arrayidx9.i = getelementptr inbounds nuw [1300 x double], ptr %0, i64 %indvars.iv52.i, i64 %indvars.iv.i18
  %43 = load double, ptr %arrayidx9.i, align 8, !tbaa !11
  %44 = add nsw i64 %indvars.iv.i18, -1
  %arrayidx14.i = getelementptr inbounds [1300 x double], ptr %0, i64 %indvars.iv52.i, i64 %44
  %45 = load double, ptr %arrayidx14.i, align 8, !tbaa !11
  %add.i = fadd double %43, %45
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1
  %arrayidx19.i = getelementptr inbounds nuw [1300 x double], ptr %0, i64 %indvars.iv52.i, i64 %indvars.iv.next.i19
  %46 = load double, ptr %arrayidx19.i, align 8, !tbaa !11
  %add20.i = fadd double %add.i, %46
  %arrayidx25.i = getelementptr inbounds nuw [1300 x double], ptr %arrayidx23.i, i64 0, i64 %indvars.iv.i18
  %47 = load double, ptr %arrayidx25.i, align 8, !tbaa !11
  %add26.i = fadd double %add20.i, %47
  %arrayidx31.i = getelementptr inbounds nuw [1300 x double], ptr %arrayidx29.i, i64 0, i64 %indvars.iv.i18
  %48 = load double, ptr %arrayidx31.i, align 8, !tbaa !11
  %add32.i = fadd double %add26.i, %48
  %mul.i = fmul double %add32.i, 2.000000e-01
  %arrayidx36.i = getelementptr inbounds nuw [1300 x double], ptr %4, i64 %indvars.iv52.i, i64 %indvars.iv.i18
  store double %mul.i, ptr %arrayidx36.i, align 8, !tbaa !11
  %exitcond.not.i20 = icmp eq i64 %indvars.iv.next.i19, 1299
  br i1 %exitcond.not.i20, label %for.inc37.i, label %for.body7.i, !llvm.loop !29

for.inc37.i:                                      ; preds = %vector.body54, %for.body7.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next53.i, 1299
  br i1 %exitcond55.not.i, label %for.cond44.preheader.i, label %for.cond4.preheader.i, !llvm.loop !30

for.cond44.preheader.i:                           ; preds = %for.inc37.i, %for.inc84.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %for.inc84.i ], [ 1, %for.inc37.i ]
  %49 = getelementptr inbounds nuw [1300 x double], ptr %4, i64 %indvars.iv61.i
  %arrayidx66.i = getelementptr inbounds nuw i8, ptr %49, i64 10400
  %arrayidx72.i = getelementptr i8, ptr %49, i64 -10400
  br i1 %found.conflict, label %for.body47.i, label %vector.body35

vector.body35:                                    ; preds = %for.cond44.preheader.i, %vector.body35
  %index36 = phi i64 [ %index.next41, %vector.body35 ], [ 0, %for.cond44.preheader.i ]
  %offset.idx = or disjoint i64 %index36, 1
  %50 = getelementptr inbounds nuw [1300 x double], ptr %4, i64 %indvars.iv61.i, i64 %offset.idx
  %wide.load = load <2 x double>, ptr %50, align 8, !tbaa !11, !alias.scope !31
  %51 = getelementptr inbounds [1300 x double], ptr %4, i64 %indvars.iv61.i, i64 %index36
  %wide.load37 = load <2 x double>, ptr %51, align 8, !tbaa !11, !alias.scope !31
  %52 = fadd <2 x double> %wide.load, %wide.load37
  %53 = add nuw nsw i64 %index36, 2
  %54 = getelementptr inbounds nuw [1300 x double], ptr %4, i64 %indvars.iv61.i, i64 %53
  %wide.load38 = load <2 x double>, ptr %54, align 8, !tbaa !11, !alias.scope !31
  %55 = fadd <2 x double> %52, %wide.load38
  %56 = getelementptr inbounds nuw [1300 x double], ptr %arrayidx66.i, i64 0, i64 %offset.idx
  %wide.load39 = load <2 x double>, ptr %56, align 8, !tbaa !11, !alias.scope !31
  %57 = fadd <2 x double> %55, %wide.load39
  %58 = getelementptr inbounds nuw [1300 x double], ptr %arrayidx72.i, i64 0, i64 %offset.idx
  %wide.load40 = load <2 x double>, ptr %58, align 8, !tbaa !11, !alias.scope !31
  %59 = fadd <2 x double> %57, %wide.load40
  %60 = fmul <2 x double> %59, splat (double 2.000000e-01)
  %61 = getelementptr inbounds nuw [1300 x double], ptr %0, i64 %indvars.iv61.i, i64 %offset.idx
  store <2 x double> %60, ptr %61, align 8, !tbaa !11, !alias.scope !34, !noalias !31
  %index.next41 = add nuw i64 %index36, 2
  %62 = icmp eq i64 %index.next41, 1298
  br i1 %62, label %for.inc84.i, label %vector.body35, !llvm.loop !36

for.body47.i:                                     ; preds = %for.cond44.preheader.i, %for.body47.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %for.body47.i ], [ 1, %for.cond44.preheader.i ]
  %arrayidx51.i = getelementptr inbounds nuw [1300 x double], ptr %4, i64 %indvars.iv61.i, i64 %indvars.iv56.i
  %63 = load double, ptr %arrayidx51.i, align 8, !tbaa !11
  %64 = add nsw i64 %indvars.iv56.i, -1
  %arrayidx56.i = getelementptr inbounds [1300 x double], ptr %4, i64 %indvars.iv61.i, i64 %64
  %65 = load double, ptr %arrayidx56.i, align 8, !tbaa !11
  %add57.i = fadd double %63, %65
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1
  %arrayidx62.i = getelementptr inbounds nuw [1300 x double], ptr %4, i64 %indvars.iv61.i, i64 %indvars.iv.next57.i
  %66 = load double, ptr %arrayidx62.i, align 8, !tbaa !11
  %add63.i = fadd double %add57.i, %66
  %arrayidx68.i = getelementptr inbounds nuw [1300 x double], ptr %arrayidx66.i, i64 0, i64 %indvars.iv56.i
  %67 = load double, ptr %arrayidx68.i, align 8, !tbaa !11
  %add69.i = fadd double %add63.i, %67
  %arrayidx74.i = getelementptr inbounds nuw [1300 x double], ptr %arrayidx72.i, i64 0, i64 %indvars.iv56.i
  %68 = load double, ptr %arrayidx74.i, align 8, !tbaa !11
  %add75.i = fadd double %add69.i, %68
  %mul76.i = fmul double %add75.i, 2.000000e-01
  %arrayidx80.i = getelementptr inbounds nuw [1300 x double], ptr %0, i64 %indvars.iv61.i, i64 %indvars.iv56.i
  store double %mul76.i, ptr %arrayidx80.i, align 8, !tbaa !11
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, 1299
  br i1 %exitcond60.not.i, label %for.inc84.i, label %for.body47.i, !llvm.loop !37

for.inc84.i:                                      ; preds = %vector.body35, %for.body47.i
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next62.i, 1299
  br i1 %exitcond64.not.i, label %for.inc87.i, label %for.cond44.preheader.i, !llvm.loop !38

for.inc87.i:                                      ; preds = %for.inc84.i
  %inc88.i = add nuw nsw i32 %t.049.i, 1
  %exitcond65.not.i = icmp eq i32 %inc88.i, 500
  br i1 %exitcond65.not.i, label %kernel_jacobi_2d.exit, label %for.cond1.preheader.i17, !llvm.loop !39

kernel_jacobi_2d.exit:                            ; preds = %for.inc87.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i21) #12
  %call.i.i22 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i21, ptr noundef null) #12
  %cmp.not.i.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %cmp.not.i.i23, label %polybench_timer_stop.exit, label %if.then.i.i24

if.then.i.i24:                                    ; preds = %kernel_jacobi_2d.exit
  %call1.i.i25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i22)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_jacobi_2d.exit, %if.then.i.i24
  %69 = load i64, ptr %Tp.i.i21, align 8, !tbaa !5
  %conv.i.i26 = sitofp i64 %69 to double
  %tv_usec.i.i27 = getelementptr inbounds nuw i8, ptr %Tp.i.i21, i64 8
  %70 = load i64, ptr %tv_usec.i.i27, align 8, !tbaa !10
  %conv2.i.i28 = sitofp i64 %70 to double
  %71 = call double @llvm.fmuladd.f64(double %conv2.i.i28, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i26)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i21) #12
  store double %71, ptr @polybench_t_end, align 8, !tbaa !11
  %72 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %71, %72
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %73 = load ptr, ptr %argv, align 8, !tbaa !40
  %strcmpload = load i8, ptr %73, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef nonnull %0) #12
  call void @free(ptr noundef nonnull %4) #12
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %A) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #15
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv13 = phi i64 [ 0, %entry ], [ %indvars.iv.next14, %for.inc10 ]
  %3 = mul nuw nsw i64 %indvars.iv13, 1300
  br label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ]
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
  %arrayidx8 = getelementptr inbounds nuw [1300 x double], ptr %A, i64 %indvars.iv13, i64 %indvars.iv
  %8 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5.10, double noundef %8) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1300
  br i1 %exitcond.not, label %for.inc10, label %for.body4, !llvm.loop !42

for.inc10:                                        ; preds = %if.end
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next14, 1300
  br i1 %exitcond17.not, label %for.end12, label %for.cond2.preheader, !llvm.loop !43

for.end12:                                        ; preds = %for.inc10
  %9 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #15
  %10 = load ptr, ptr @stderr, align 8, !tbaa !15
  %11 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %10) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #11

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
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold nounwind }

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
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!17 = distinct !{!17, !18, !19, !20}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !18, !19}
!22 = distinct !{!22, !18}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !18, !19, !20}
!29 = distinct !{!29, !18, !19}
!30 = distinct !{!30, !18}
!31 = !{!32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!35}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !18, !19, !20}
!37 = distinct !{!37, !18, !19}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 omnipotent char", !14, i64 0}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
