; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/nussinov.ll'
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
@.str.3.8 = private unnamed_addr constant [6 x i8] c"table\00", align 1
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #13
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #13
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i) #13
  %call.i = call i32 @gettimeofday(ptr noundef nonnull %Tp.i, ptr noundef null) #13
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i) #13
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
  tail call void @free(ptr noundef %ptr) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #3 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i) #13
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i, i64 noundef 4096, i64 noundef %mul) #13
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #14
  call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i) #13
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i) #13
  store ptr null, ptr %ret.i.i, align 8, !tbaa !13
  %call.i.i = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i, i64 noundef 4096, i64 noundef 2500) #13
  %0 = load ptr, ptr %ret.i.i, align 8, !tbaa !13
  %tobool.i.i = icmp eq ptr %0, null
  %tobool2.i.i = icmp ne i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 true, i1 %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %polybench_alloc_data.exit

if.then.i.i:                                      ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %1) #14
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret.i.i8) #13
  store ptr null, ptr %ret.i.i8, align 8, !tbaa !13
  %call.i.i9 = call i32 @posix_memalign(ptr noundef nonnull %ret.i.i8, i64 noundef 4096, i64 noundef 25000000) #13
  %3 = load ptr, ptr %ret.i.i8, align 8, !tbaa !13
  %tobool.i.i10 = icmp eq ptr %3, null
  %tobool2.i.i11 = icmp ne i32 %call.i.i9, 0
  %or.cond.i.i12 = select i1 %tobool.i.i10, i1 true, i1 %tobool2.i.i11
  br i1 %or.cond.i.i12, label %if.then.i.i13, label %iter.check

if.then.i.i13:                                    ; preds = %polybench_alloc_data.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %4) #14
  call void @exit(i32 noundef 1) #15
  unreachable

iter.check:                                       ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret.i.i8) #13
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %iter.check
  %index = phi i64 [ 0, %iter.check ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %iter.check ], [ %vec.ind.next, %vector.body ]
  %6 = trunc <16 x i64> %vec.ind to <16 x i8>
  %7 = add <16 x i8> %6, splat (i8 1)
  %8 = and <16 x i8> %7, splat (i8 3)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %8, ptr %9, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 16
  %vec.ind.next = add <16 x i64> %vec.ind, splat (i64 16)
  %10 = icmp eq i64 %index.next, 2496
  br i1 %10, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !18

vec.epilog.vector.body:                           ; preds = %vector.body, %vec.epilog.vector.body
  %index29 = phi i64 [ %index.next31, %vec.epilog.vector.body ], [ 2496, %vector.body ]
  %vec.ind30 = phi <4 x i64> [ %vec.ind.next32, %vec.epilog.vector.body ], [ <i64 2496, i64 2497, i64 2498, i64 2499>, %vector.body ]
  %11 = trunc <4 x i64> %vec.ind30 to <4 x i8>
  %12 = add <4 x i8> %11, splat (i8 1)
  %13 = and <4 x i8> %12, splat (i8 3)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %index29
  store <4 x i8> %13, ptr %14, align 1, !tbaa !17
  %index.next31 = add nuw i64 %index29, 4
  %vec.ind.next32 = add <4 x i64> %vec.ind30, splat (i64 4)
  %15 = icmp eq i64 %index.next31, 2500
  br i1 %15, label %init_array.exit, label %vec.epilog.vector.body, !llvm.loop !22

init_array.exit:                                  ; preds = %vec.epilog.vector.body
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25000000) %3, i8 0, i64 25000000, i1 false), !tbaa !23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i) #13
  %call.i.i15 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i, ptr noundef null) #13
  %cmp.not.i.i = icmp eq i32 %call.i.i15, 0
  br i1 %cmp.not.i.i, label %polybench_timer_start.exit, label %if.then.i.i16

if.then.i.i16:                                    ; preds = %init_array.exit
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i15)
  br label %polybench_timer_start.exit

polybench_timer_start.exit:                       ; preds = %init_array.exit, %if.then.i.i16
  %16 = load i64, ptr %Tp.i.i, align 8, !tbaa !5
  %conv.i.i = sitofp i64 %16 to double
  %tv_usec.i.i = getelementptr inbounds nuw i8, ptr %Tp.i.i, i64 8
  %17 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !10
  %conv2.i.i = sitofp i64 %17 to double
  %18 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i) #13
  store double %18, ptr @polybench_t_start, align 8, !tbaa !11
  br label %for.body.i17

for.body.i17:                                     ; preds = %for.inc195.i, %polybench_timer_start.exit
  %indvars.iv127.i = phi i64 [ 2499, %polybench_timer_start.exit ], [ %indvars.iv.next128.i, %for.inc195.i ]
  %indvars.iv.i18 = phi i64 [ 2500, %polybench_timer_start.exit ], [ %indvars.iv.next.i19, %for.inc195.i ]
  %19 = add nuw nsw i64 %indvars.iv127.i, 1
  %cmp2114.i = icmp samesign ult i64 %indvars.iv127.i, 2499
  br i1 %cmp2114.i, label %for.body3.us.preheader.i, label %for.inc195.i

for.body3.us.preheader.i:                         ; preds = %for.body.i17
  %arrayidx77.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv127.i
  br label %for.body3.us.i

for.body3.us.i:                                   ; preds = %for.inc192.us.i, %for.body3.us.preheader.i
  %indvars.iv122.i = phi i64 [ %indvars.iv.i18, %for.body3.us.preheader.i ], [ %indvars.iv.next123.i, %for.inc192.us.i ]
  %20 = add nsw i64 %indvars.iv122.i, -1
  %arrayidx7.us.i = getelementptr inbounds nuw [2500 x i32], ptr %3, i64 %indvars.iv127.i, i64 %indvars.iv122.i
  %21 = load i32, ptr %arrayidx7.us.i, align 4, !tbaa !23
  %arrayidx12.us.i = getelementptr inbounds nuw [2500 x i32], ptr %3, i64 %indvars.iv127.i, i64 %20
  %22 = load i32, ptr %arrayidx12.us.i, align 4, !tbaa !23
  %cond.us.i = call i32 @llvm.smax.i32(i32 %21, i32 %22)
  %arrayidx38.us.i = getelementptr inbounds nuw [2500 x i32], ptr %3, i64 %19, i64 %indvars.iv122.i
  %23 = load i32, ptr %arrayidx38.us.i, align 4, !tbaa !23
  %..us.i = call i32 @llvm.smax.i32(i32 %cond.us.i, i32 %23)
  store i32 %..us.i, ptr %arrayidx7.us.i, align 4, !tbaa !23
  %cmp64.us.i = icmp samesign ult i64 %indvars.iv127.i, %20
  %arrayidx75.us.i = getelementptr inbounds nuw [2500 x i32], ptr %3, i64 %19, i64 %20
  %24 = load i32, ptr %arrayidx75.us.i, align 4, !tbaa !23
  br i1 %cmp64.us.i, label %if.then65.us.i, label %if.end148.us.i

if.then65.us.i:                                   ; preds = %for.body3.us.i
  %25 = load i8, ptr %arrayidx77.i, align 1, !tbaa !17
  %conv.us.i = sext i8 %25 to i32
  %arrayidx79.us.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv122.i
  %26 = load i8, ptr %arrayidx79.us.i, align 1, !tbaa !17
  %conv80.us.i = sext i8 %26 to i32
  %add81.us.i = add nsw i32 %conv80.us.i, %conv.us.i
  %cmp82.us.i = icmp eq i32 %add81.us.i, 3
  %cond84.us.i = zext i1 %cmp82.us.i to i32
  %add85.us.i = add nsw i32 %24, %cond84.us.i
  br label %if.end148.us.i

if.end148.us.i:                                   ; preds = %if.then65.us.i, %for.body3.us.i
  %add85.us.sink.i = phi i32 [ %add85.us.i, %if.then65.us.i ], [ %24, %for.body3.us.i ]
  %add85..us.i = call i32 @llvm.smax.i32(i32 %..us.i, i32 %add85.us.sink.i)
  store i32 %add85..us.i, ptr %arrayidx7.us.i, align 4, !tbaa !23
  %cmp151111.us.i = icmp samesign ult i64 %19, %indvars.iv122.i
  br i1 %cmp151111.us.i, label %for.body153.us.i, label %for.inc192.us.i

for.inc192.us.i:                                  ; preds = %for.body153.us.i, %if.end148.us.i
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, 2500
  br i1 %exitcond126.not.i, label %for.inc195.i, label %for.body3.us.i, !llvm.loop !25

for.body153.us.i:                                 ; preds = %if.end148.us.i, %for.body153.us.i
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %for.body153.us.i ], [ %indvars.iv.i18, %if.end148.us.i ]
  %add167.113.us.i = phi i32 [ %add167..us.i, %for.body153.us.i ], [ %add85..us.i, %if.end148.us.i ]
  %arrayidx161.us.i = getelementptr inbounds nuw [2500 x i32], ptr %3, i64 %indvars.iv127.i, i64 %indvars.iv119.i
  %27 = load i32, ptr %arrayidx161.us.i, align 4, !tbaa !23
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1
  %arrayidx166.us.i = getelementptr inbounds nuw [2500 x i32], ptr %3, i64 %indvars.iv.next120.i, i64 %indvars.iv122.i
  %28 = load i32, ptr %arrayidx166.us.i, align 4, !tbaa !23
  %add167.us.i = add nsw i32 %28, %27
  %add167..us.i = call i32 @llvm.smax.i32(i32 %add167.113.us.i, i32 %add167.us.i)
  store i32 %add167..us.i, ptr %arrayidx7.us.i, align 4, !tbaa !23
  %exitcond.not.i20 = icmp eq i64 %indvars.iv.next120.i, %indvars.iv122.i
  br i1 %exitcond.not.i20, label %for.inc192.us.i, label %for.body153.us.i, !llvm.loop !26

for.inc195.i:                                     ; preds = %for.inc192.us.i, %for.body.i17
  %indvars.iv.next128.i = add nsw i64 %indvars.iv127.i, -1
  %cmp.not.i = icmp eq i64 %indvars.iv127.i, 0
  %indvars.iv.next.i19 = add nsw i64 %indvars.iv.i18, -1
  br i1 %cmp.not.i, label %kernel_nussinov.exit, label %for.body.i17, !llvm.loop !27

kernel_nussinov.exit:                             ; preds = %for.inc195.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Tp.i.i21) #13
  %call.i.i22 = call i32 @gettimeofday(ptr noundef nonnull %Tp.i.i21, ptr noundef null) #13
  %cmp.not.i.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %cmp.not.i.i23, label %polybench_timer_stop.exit, label %if.then.i.i24

if.then.i.i24:                                    ; preds = %kernel_nussinov.exit
  %call1.i.i25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i.i22)
  br label %polybench_timer_stop.exit

polybench_timer_stop.exit:                        ; preds = %kernel_nussinov.exit, %if.then.i.i24
  %29 = load i64, ptr %Tp.i.i21, align 8, !tbaa !5
  %conv.i.i26 = sitofp i64 %29 to double
  %tv_usec.i.i27 = getelementptr inbounds nuw i8, ptr %Tp.i.i21, i64 8
  %30 = load i64, ptr %tv_usec.i.i27, align 8, !tbaa !10
  %conv2.i.i28 = sitofp i64 %30 to double
  %31 = call double @llvm.fmuladd.f64(double %conv2.i.i28, double 0x3EB0C6F7A0B5ED8D, double %conv.i.i26)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Tp.i.i21) #13
  store double %31, ptr @polybench_t_end, align 8, !tbaa !11
  %32 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub.i = fsub double %31, %32
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub.i)
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %polybench_timer_stop.exit
  %33 = load ptr, ptr %argv, align 8, !tbaa !28
  %strcmpload = load i8, ptr %33, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @print_array(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %polybench_timer_stop.exit
  call void @free(ptr noundef %0) #13
  call void @free(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr noundef nonnull readonly captures(none) %table) unnamed_addr #9 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 22, i64 1, ptr %0) #14
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #16
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc11
  %indvars.iv14 = phi i32 [ 2500, %entry ], [ %indvars.iv.next15, %for.inc11 ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc11 ]
  %t.011 = phi i32 [ 0, %entry ], [ %6, %for.inc11 ]
  br label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv12 = phi i64 [ %indvars.iv, %for.cond2.preheader ], [ %indvars.iv.next13, %if.end ]
  %t.19 = phi i32 [ %t.011, %for.cond2.preheader ], [ %inc, %if.end ]
  %rem = srem i32 %t.19, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %3 = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %arrayidx8 = getelementptr inbounds nuw [2500 x i32], ptr %table, i64 %indvars.iv, i64 %indvars.iv12
  %5 = load i32, ptr %arrayidx8, align 4, !tbaa !23
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.10, i32 noundef %5) #16
  %inc = add nsw i32 %t.19, 1
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next13, 2500
  br i1 %exitcond.not, label %for.inc11, label %for.body4, !llvm.loop !30

for.inc11:                                        ; preds = %if.end
  %6 = add i32 %t.011, %indvars.iv14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next15 = add nsw i32 %indvars.iv14, -1
  %exitcond18.not = icmp eq i64 %indvars.iv.next, 2500
  br i1 %exitcond18.not, label %for.end13, label %for.cond2.preheader, !llvm.loop !31

for.end13:                                        ; preds = %for.inc11
  %7 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #16
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %9 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %8) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }

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
!17 = !{!8, !8, i64 0}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !19, !20, !21}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !8, i64 0}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
