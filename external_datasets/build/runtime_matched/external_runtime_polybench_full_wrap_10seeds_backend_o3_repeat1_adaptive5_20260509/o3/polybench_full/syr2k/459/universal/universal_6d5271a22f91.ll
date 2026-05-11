; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(33556480) ptr @calloc(i64 noundef 4194560, i64 noundef 8) #13
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
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, ptr noundef nonnull @__PRETTY_FUNCTION__.polybench_flush_cache) #14
  unreachable

if.end:                                           ; preds = %for.end
  tail call void @free(ptr noundef %call) #15
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
  tail call void @polybench_flush_cache() #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #15
  %call = tail call fastcc double @rtclock() #15
  store double %call, ptr @polybench_t_start, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc double @rtclock() unnamed_addr #0 {
entry:
  %Tp = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp) #16
  %call = call i32 @gettimeofday(ptr noundef nonnull align 8 %Tp, ptr noundef null) #15
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr %Tp, align 8, !tbaa !10
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds nuw i8, ptr %Tp, i64 8
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !13
  %conv2 = sitofp i64 %1 to double
  %2 = call double @llvm.fmuladd.f64(double %conv2, double noundef 0x3EB0C6F7A0B5ED8D, double %conv)
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp) #15
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
  %call = tail call fastcc double @rtclock() #15
  store double %call, ptr @polybench_t_end, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #0 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !5
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) local_unnamed_addr #0 {
entry:
  tail call void @free(ptr noundef %ptr) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #0 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #16
  store ptr null, ptr %ret.i, align 8, !tbaa !14
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #15
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !14
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call void @outlined_ir_func_1() #15
  call void @exit(i32 noundef 1) #17
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
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #7 {
entry:
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %alpha) #18
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %beta) #18
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #15
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #15
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #15
  call fastcc void @init_array(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %alpha, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %beta, ptr nofree noundef writeonly captures(none) %call, ptr nofree noundef writeonly captures(none) %call1, ptr nofree noundef writeonly captures(none) %call2) #14
  unreachable
}

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %alpha, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %beta, ptr nofree noundef writeonly captures(none) %C, ptr nofree noundef writeonly captures(none) %A, ptr nofree noundef writeonly captures(none) %B) unnamed_addr #8 {
entry:
  store double 1.500000e+00, ptr %alpha, align 8, !tbaa !5
  store double 1.200000e+00, ptr %beta, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc17 ], [ 0, %entry ]
  %exitcond25.not = icmp eq i64 %indvars.iv22, 1200
  br i1 %exitcond25.not, label %for.body23, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1000
  br i1 %exitcond.not, label %for.inc17, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %0 = mul nuw nsw i64 %indvars.iv, %indvars.iv22
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem = urem i32 %2, 1200
  %conv = uitofp nneg i32 %rem to double
  %div = fdiv double %conv, 1.200000e+03
  %arrayidx6 = getelementptr inbounds nuw [1000 x double], ptr %A, i64 %indvars.iv22, i64 %indvars.iv
  store double %div, ptr %arrayidx6, align 8, !tbaa !5
  %3 = trunc i64 %0 to i32
  %4 = add i32 %3, 2
  %rem9 = urem i32 %4, 1000
  %conv10 = uitofp nneg i32 %rem9 to double
  %div12 = fdiv double %conv10, 1.000000e+03
  %arrayidx16 = getelementptr inbounds nuw [1000 x double], ptr %B, i64 %indvars.iv22, i64 %indvars.iv
  store double %div12, ptr %arrayidx16, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !16

for.inc17:                                        ; preds = %for.cond1
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond, !llvm.loop !18

for.body23:                                       ; preds = %for.cond, %for.end40
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.end40 ], [ 0, %for.cond ]
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc38, %for.body23
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc38 ], [ 0, %for.body23 ]
  %exitcond31.not = icmp eq i64 %indvars.iv26, 1200
  br i1 %exitcond31.not, label %for.end40, label %for.inc38

for.inc38:                                        ; preds = %for.cond24
  %5 = mul nuw nsw i64 %indvars.iv26, %indvars.iv32
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 3
  %rem30 = urem i32 %7, 1200
  %conv31 = uitofp nneg i32 %rem30 to double
  %div33 = fdiv double %conv31, 1.000000e+03
  %arrayidx37 = getelementptr inbounds nuw [1200 x double], ptr %C, i64 %indvars.iv32, i64 %indvars.iv26
  store double %div33, ptr %arrayidx37, align 8, !tbaa !5
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond24, !llvm.loop !19

for.end40:                                        ; preds = %for.cond24
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.body23
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold minsize nofree nounwind optsize memory(readwrite, argmem: none) uwtable
define internal void @outlined_ir_func_1() #10 {
if.then_after_outline.exitStub:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !20
  %1 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 50, i64 1, ptr %0) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse noreturn nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold minsize nofree nounwind optsize memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { nofree nounwind willreturn memory(readwrite) }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { nofree nounwind willreturn }
attributes #19 = { cold }

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
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
