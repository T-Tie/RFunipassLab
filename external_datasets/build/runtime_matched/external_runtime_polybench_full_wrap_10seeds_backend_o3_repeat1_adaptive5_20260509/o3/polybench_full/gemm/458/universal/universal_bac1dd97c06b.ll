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
define dso_local ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #6 {
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

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @polybench_alloc_data(i64 noundef 1100000, i32 noundef 8) #13
  %call1 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #13
  %call2 = tail call ptr @polybench_alloc_data(i64 noundef 1320000, i32 noundef 8) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc7.i, %entry
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %for.inc7.i ], [ 0, %entry ]
  %exitcond43.not.i = icmp eq i64 %indvars.iv40.i, 1000
  br i1 %exitcond43.not.i, label %for.cond10.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.cond.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 1100
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond1.i
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv40.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 1000
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.000000e+03
  %arrayidx6.i = getelementptr inbounds nuw [1100 x double], ptr %call, i64 %indvars.iv40.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx6.i, align 8, !tbaa !11, !noalias !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond1.i, !llvm.loop !19

for.inc7.i:                                       ; preds = %for.cond1.i
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  br label %for.cond.i, !llvm.loop !21

for.cond10.i:                                     ; preds = %for.cond.i, %for.inc31.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %for.inc31.i ], [ 0, %for.cond.i ]
  %exitcond52.not.i = icmp eq i64 %indvars.iv49.i, 1000
  br i1 %exitcond52.not.i, label %for.cond34.i, label %for.cond14.i

for.cond14.i:                                     ; preds = %for.cond10.i, %for.inc28.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %for.inc28.i ], [ 0, %for.cond10.i ]
  %exitcond48.not.i = icmp eq i64 %indvars.iv44.i, 1200
  br i1 %exitcond48.not.i, label %for.inc31.i, label %for.inc28.i

for.inc28.i:                                      ; preds = %for.cond14.i
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1
  %3 = mul nuw nsw i64 %indvars.iv.next45.i, %indvars.iv49.i
  %4 = trunc nuw nsw i64 %3 to i32
  %rem20.i = urem i32 %4, 1200
  %conv21.i = uitofp nneg i32 %rem20.i to double
  %div23.i = fdiv double %conv21.i, 1.200000e+03
  %arrayidx27.i = getelementptr inbounds nuw [1200 x double], ptr %call1, i64 %indvars.iv49.i, i64 %indvars.iv44.i
  store double %div23.i, ptr %arrayidx27.i, align 8, !tbaa !11, !noalias !15
  br label %for.cond14.i, !llvm.loop !22

for.inc31.i:                                      ; preds = %for.cond14.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1
  br label %for.cond10.i, !llvm.loop !23

for.cond34.i:                                     ; preds = %for.cond10.i, %for.end54.i
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %for.end54.i ], [ 0, %for.cond10.i ]
  %exitcond62.not.i = icmp eq i64 %indvars.iv59.i, 1200
  br i1 %exitcond62.not.i, label %init_array.exit, label %for.cond38.i

for.cond38.i:                                     ; preds = %for.cond34.i, %for.body41.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %for.body41.i ], [ 0, %for.cond34.i ]
  %exitcond58.not.i = icmp eq i64 %indvars.iv53.i, 1100
  br i1 %exitcond58.not.i, label %for.end54.i, label %for.body41.i

for.body41.i:                                     ; preds = %for.cond38.i
  %5 = add nuw nsw i64 %indvars.iv53.i, 2
  %6 = mul nuw nsw i64 %5, %indvars.iv59.i
  %7 = trunc nuw nsw i64 %6 to i32
  %rem44.i = urem i32 %7, 1100
  %conv45.i = uitofp nneg i32 %rem44.i to double
  %div47.i = fdiv double %conv45.i, 1.100000e+03
  %arrayidx51.i = getelementptr inbounds nuw [1100 x double], ptr %call2, i64 %indvars.iv59.i, i64 %indvars.iv53.i
  store double %div47.i, ptr %arrayidx51.i, align 8, !tbaa !11, !noalias !15
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  br label %for.cond38.i

for.end54.i:                                      ; preds = %for.cond38.i
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1
  br label %for.cond34.i

init_array.exit:                                  ; preds = %for.cond34.i
  tail call void @polybench_timer_start() #11
  unreachable
}

; Function Attrs: cold minsize nofree nounwind optsize memory(readwrite, argmem: none) uwtable
define internal fastcc void @outlined_ir_func_1() unnamed_addr #8 {
if.then_after_outline.exitStub:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !24
  %1 = tail call i64 @fwrite(ptr noundef nonnull @.str.4, i64 noundef 50, i64 noundef 1, ptr noundef %0) #15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold minsize nofree nounwind optsize memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nofree nounwind willreturn memory(readwrite) }
attributes #13 = { nounwind }
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
!15 = !{!16, !18}
!16 = distinct !{!16, !17, !"init_array: %alpha"}
!17 = distinct !{!17, !"init_array"}
!18 = distinct !{!18, !17, !"init_array: %beta"}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
