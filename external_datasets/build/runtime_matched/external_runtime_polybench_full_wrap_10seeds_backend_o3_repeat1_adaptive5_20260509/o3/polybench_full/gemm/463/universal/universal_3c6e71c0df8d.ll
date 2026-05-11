; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemm.ll'
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

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(33556480) ptr @calloc(i64 noundef 4194560, i64 noundef 8) #10
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  br label %for.body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  tail call void @polybench_flush_cache() #11
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  tail call void @polybench_prepare_instruments() #11
  unreachable
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #6 {
entry:
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp.i) #12
  %call.i = call i32 @gettimeofday(ptr noundef nonnull align 8 %Tp.i, ptr noundef null) #13
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i) #13
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = call double @llvm.fmuladd.f64(double %conv2.i, double noundef 0x3EB0C6F7A0B5ED8D, double %conv.i)
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp.i) #13
  store double %2, ptr @polybench_t_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #6 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) local_unnamed_addr #6 {
entry:
  tail call void @free(ptr noundef %ptr) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #6 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #12
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #13
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call fastcc void @outlined_ir_func_1() #13
  call void @exit(i32 noundef 1) #14
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #13
  ret ptr %0
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %alpha) #15
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %beta) #15
  %call = tail call nonnull ptr @polybench_alloc_data(i64 noundef 1100000, i32 noundef 8) #13
  %call1 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #13
  %call2 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 1320000, i32 noundef 8) #13
  call fastcc void @init_array(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %alpha, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %beta, ptr nofree noundef nonnull writeonly captures(none) %call, ptr nofree noundef nonnull writeonly captures(none) %call1, ptr nofree noundef nonnull writeonly captures(none) %call2) #16
  tail call void @polybench_timer_start() #11
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %alpha, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %beta, ptr nofree noundef nonnull writeonly captures(none) %C, ptr nofree noundef nonnull writeonly captures(none) %A, ptr nofree noundef nonnull writeonly captures(none) %B) unnamed_addr #8 {
entry:
  store double 1.500000e+00, ptr %alpha, align 8, !tbaa !11
  store double 1.200000e+00, ptr %beta, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.end ], [ 0, %entry ]
  %exitcond20.not = icmp eq i64 %indvars.iv17, 1000
  br i1 %exitcond20.not, label %for.cond10, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1100
  br i1 %exitcond.not, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %0 = mul nuw nsw i64 %indvars.iv, %indvars.iv17
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem = urem i32 %2, 1000
  %conv = uitofp nneg i32 %rem to double
  %div = fdiv double %conv, 1.000000e+03
  %arrayidx6 = getelementptr inbounds nuw [1100 x double], ptr %C, i64 %indvars.iv17, i64 %indvars.iv
  store double %div, ptr %arrayidx6, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !15

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond, !llvm.loop !17

for.cond10:                                       ; preds = %for.cond, %for.end30
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.end30 ], [ 0, %for.cond ]
  %exitcond29.not = icmp eq i64 %indvars.iv26, 1000
  br i1 %exitcond29.not, label %for.cond34, label %for.cond14

for.cond14:                                       ; preds = %for.cond10, %for.body17
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body17 ], [ 0, %for.cond10 ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, 1200
  br i1 %exitcond25.not, label %for.end30, label %for.body17

for.body17:                                       ; preds = %for.cond14
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %3 = mul nuw nsw i64 %indvars.iv.next22, %indvars.iv26
  %4 = trunc nuw nsw i64 %3 to i32
  %rem20 = urem i32 %4, 1200
  %conv21 = uitofp nneg i32 %rem20 to double
  %div23 = fdiv double %conv21, 1.200000e+03
  %arrayidx27 = getelementptr inbounds nuw [1200 x double], ptr %A, i64 %indvars.iv26, i64 %indvars.iv21
  store double %div23, ptr %arrayidx27, align 8, !tbaa !11
  br label %for.cond14, !llvm.loop !18

for.end30:                                        ; preds = %for.cond14
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond10, !llvm.loop !19

for.cond34:                                       ; preds = %for.cond10, %for.end54
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.end54 ], [ 0, %for.cond10 ]
  %exitcond39.not = icmp eq i64 %indvars.iv36, 1200
  br i1 %exitcond39.not, label %for.end57, label %for.cond38

for.cond38:                                       ; preds = %for.cond34, %for.body41
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.body41 ], [ 0, %for.cond34 ]
  %exitcond35.not = icmp eq i64 %indvars.iv30, 1100
  br i1 %exitcond35.not, label %for.end54, label %for.body41

for.body41:                                       ; preds = %for.cond38
  %5 = add nuw nsw i64 %indvars.iv30, 2
  %6 = mul nuw nsw i64 %5, %indvars.iv36
  %7 = trunc nuw nsw i64 %6 to i32
  %rem44 = urem i32 %7, 1100
  %conv45 = uitofp nneg i32 %rem44 to double
  %div47 = fdiv double %conv45, 1.100000e+03
  %arrayidx51 = getelementptr inbounds nuw [1100 x double], ptr %B, i64 %indvars.iv36, i64 %indvars.iv30
  store double %div47, ptr %arrayidx51, align 8, !tbaa !11
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond38, !llvm.loop !20

for.end54:                                        ; preds = %for.cond38
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond34

for.end57:                                        ; preds = %for.cond34
  ret void
}

; Function Attrs: cold minsize nounwind optsize memory(readwrite, argmem: none) uwtable
define internal fastcc void @outlined_ir_func_1() unnamed_addr #9 {
if.then_after_outline.exitStub:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull dereferenceable(51) @.str.4) #17
  ret void
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold minsize nounwind optsize memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nofree nounwind willreturn memory(readwrite) }
attributes #13 = { nounwind }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nofree nounwind willreturn }
attributes #16 = { nounwind memory(write) }
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
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
