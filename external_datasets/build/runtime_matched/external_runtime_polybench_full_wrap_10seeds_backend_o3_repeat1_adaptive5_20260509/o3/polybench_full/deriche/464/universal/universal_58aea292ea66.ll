; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll'
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
@.str.3.8 = private unnamed_addr constant [7 x i8] c"imgOut\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [7 x i8] c"%0.2f \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(33556480) ptr @calloc(i64 noundef 4194560, i64 noundef 8) #12
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  br label %for.body
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

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #13
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #13
  unreachable
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #7 {
entry:
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp.i) #14
  %call.i = call i32 @gettimeofday(ptr noundef nonnull align 8 %Tp.i, ptr noundef null) #15
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i) #15
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = call double @llvm.fmuladd.f64(double %conv2.i, double noundef 0x3EB0C6F7A0B5ED8D, double %conv.i)
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp.i) #15
  store double %2, ptr @polybench_t_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #7 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) local_unnamed_addr #7 {
entry:
  tail call void @free(ptr noundef %ptr) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #7 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #14
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #15
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(51) @.str.4) #15
  call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #15
  ret ptr %0
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #15
  %call.i1 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #15
  %call.i2 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #15
  %call.i3 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.end.i, %entry
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.end.i ], [ 0, %entry ]
  %exitcond16.not.i = icmp eq i64 %indvars.iv10.i, 4096
  br i1 %exitcond16.not.i, label %init_array.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %0 = mul nuw nsw i64 %indvars.iv10.i, 313
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %for.inc.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2160
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond1.i
  %1 = mul nuw nsw i64 %indvars.iv.i, 991
  %2 = add nuw nsw i64 %1, %0
  %3 = trunc nuw i64 %2 to i32
  %rem.i = and i32 %3, 65535
  %conv.i = uitofp nneg i32 %rem.i to float
  %div.i = fdiv float %conv.i, 6.553500e+04
  %arrayidx6.i = getelementptr inbounds nuw [2160 x float], ptr %call.i, i64 %indvars.iv10.i, i64 %indvars.iv.i
  store float %div.i, ptr %arrayidx6.i, align 4, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !17

for.end.i:                                        ; preds = %for.cond1.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  br label %for.cond.i

init_array.exit:                                  ; preds = %for.cond.i
  tail call void @polybench_timer_start() #15
  unreachable
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_array(i32 noundef %w, i32 noundef %h, ptr noundef readonly captures(none) %imgOut) unnamed_addr #9 {
entry:
  tail call void @outlined_ir_func_1(ptr nonnull @.str.1.6)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.7, ptr noundef nonnull @.str.3.8) #17
  %smax = tail call i32 @llvm.smax.i32(i32 %h, i32 0)
  %1 = zext i32 %h to i64
  %smax14 = tail call i32 @llvm.smax.i32(i32 %w, i32 0)
  %wide.trip.count15 = zext nneg i32 %smax14 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.end ], [ 0, %entry ]
  %exitcond16.not = icmp eq i64 %indvars.iv10, %wide.trip.count15
  br i1 %exitcond16.not, label %for.end12, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %2 = mul nuw nsw i64 %indvars.iv10, %1
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %3 = add nuw nsw i64 %indvars.iv, %2
  %4 = trunc i64 %3 to i32
  %rem = srem i32 %4, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  tail call void @outlined_ir_func_1(ptr nonnull @.str.4.9)
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %5 = load ptr, ptr @stderr, align 8, !tbaa !19
  %arrayidx8 = getelementptr inbounds nuw [2160 x float], ptr %imgOut, i64 %indvars.iv10, i64 %indvars.iv
  %6 = load float, ptr %arrayidx8, align 4, !tbaa !15
  %conv = fpext float %6 to double
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.5.10, double noundef %conv) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !21

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  %7 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3.8) #17
  tail call void @outlined_ir_func_1(ptr nonnull @.str.7)
  ret void
}

; Function Attrs: nounwind
declare float @expf(float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nounwind
declare float @powf(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: cold minsize nounwind optsize uwtable
define internal void @outlined_ir_func_1(ptr %0) #10 {
if.then_after_outline.exitStub:
  %1 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef %0) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

declare float @exp2f(float)

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold minsize nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nofree nounwind willreturn memory(readwrite) }
attributes #15 = { nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { cold nounwind }

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
!16 = !{!"float", !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!21 = distinct !{!21, !18}
