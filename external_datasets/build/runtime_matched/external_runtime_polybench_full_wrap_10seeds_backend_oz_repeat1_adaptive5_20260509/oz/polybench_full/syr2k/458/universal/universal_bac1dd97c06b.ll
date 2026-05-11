; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll'
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
  %call = tail call noalias dereferenceable_or_null(33556480) ptr @calloc(i64 noundef 4194560, i64 noundef 8) #11
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
  tail call void @polybench_flush_cache() #12
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  tail call void @polybench_prepare_instruments() #12
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
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp.i) #13
  %call.i = call i32 @gettimeofday(ptr noundef nonnull align 8 %Tp.i, ptr noundef null) #14
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i) #14
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = call double @llvm.fmuladd.f64(double %conv2.i, double noundef 0x3EB0C6F7A0B5ED8D, double %conv.i)
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp.i) #14
  store double %2, ptr @polybench_t_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #6 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) local_unnamed_addr #6 {
entry:
  tail call void @free(ptr noundef %ptr) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #6 {
entry:
  %ret.i = alloca ptr, align 8
  %conv = sext i32 %elt_size to i64
  %mul = mul i64 %n, %conv
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %ret.i) #13
  store ptr null, ptr %ret.i, align 8, !tbaa !13
  %call.i = call i32 @posix_memalign(ptr noundef nonnull align 8 %ret.i, i64 noundef 4096, i64 noundef %mul) #14
  %0 = load ptr, ptr %ret.i, align 8, !tbaa !13
  %tobool.i = icmp eq ptr %0, null
  %tobool2.i = icmp ne i32 %call.i, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %tobool2.i
  br i1 %or.cond.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  call fastcc void @outlined_ir_func_1() #14
  call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #14
  ret ptr %0
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %alpha) #16
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %beta) #16
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #14
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #14
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #14
  call fastcc void @init_array(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %alpha, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %beta, ptr nofree noundef writeonly captures(none) %call, ptr nofree noundef writeonly captures(none) %call1, ptr nofree noundef writeonly captures(none) %call2) #17
  unreachable
}

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %alpha, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %beta, ptr nofree noundef writeonly captures(none) %C, ptr nofree noundef writeonly captures(none) %A, ptr nofree noundef writeonly captures(none) %B) unnamed_addr #8 {
entry:
  store double 1.500000e+00, ptr %alpha, align 8, !tbaa !11
  store double 1.200000e+00, ptr %beta, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc17 ], [ 0, %entry ]
  %exitcond24.not = icmp eq i64 %indvars.iv21, 1200
  br i1 %exitcond24.not, label %for.body27.preheader, label %for.cond1

for.body27.preheader:                             ; preds = %for.cond
  store double 3.000000e-03, ptr %C, align 8, !tbaa !11
  br label %for.body27

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1000
  br i1 %exitcond.not, label %for.inc17, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %0 = mul nuw nsw i64 %indvars.iv, %indvars.iv21
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem = urem i32 %2, 1200
  %conv = uitofp nneg i32 %rem to double
  %div = fdiv double %conv, 1.200000e+03
  %arrayidx6 = getelementptr inbounds nuw [1000 x double], ptr %A, i64 %indvars.iv21, i64 %indvars.iv
  store double %div, ptr %arrayidx6, align 8, !tbaa !11
  %3 = add i32 %1, 2
  %rem9 = urem i32 %3, 1000
  %conv10 = uitofp nneg i32 %rem9 to double
  %div12 = fdiv double %conv10, 1.000000e+03
  %arrayidx16 = getelementptr inbounds nuw [1000 x double], ptr %B, i64 %indvars.iv21, i64 %indvars.iv
  store double %div12, ptr %arrayidx16, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !15

for.inc17:                                        ; preds = %for.cond1
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond, !llvm.loop !17

for.body27:                                       ; preds = %for.body27.preheader, %for.body27
  br label %for.body27
}

; Function Attrs: cold minsize nofree nounwind optsize memory(readwrite, argmem: none) uwtable
define internal fastcc void @outlined_ir_func_1() unnamed_addr #9 {
if.then_after_outline.exitStub:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !18
  %1 = tail call i64 @fwrite(ptr noundef nonnull @.str.4, i64 noundef 50, i64 noundef 1, ptr noundef %0) #18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse noreturn nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold minsize nofree nounwind optsize memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nofree nounwind willreturn memory(readwrite) }
attributes #14 = { nounwind }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nofree nounwind willreturn }
attributes #17 = { noreturn nounwind memory(write) }
attributes #18 = { cold nounwind }

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
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
