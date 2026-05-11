; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll'
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
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.6 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3.8 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
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

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #3

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
  tail call void @polybench_prepare_instruments() #13
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
define dso_local void @polybench_timer_print() local_unnamed_addr #6 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_free_data(ptr noundef %ptr) local_unnamed_addr #6 {
entry:
  tail call void @free(ptr noundef %ptr) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %n, i32 noundef %elt_size) local_unnamed_addr #6 {
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
  call fastcc void @outlined_ir_func_1() #15
  call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #15
  ret ptr %0
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_doitgen(i32 noundef %nr, i32 noundef %nq, i32 noundef %np, ptr nofree noundef captures(none) %A, ptr nofree noundef readonly captures(none) %C4, ptr nofree noundef captures(none) %sum) local_unnamed_addr #8 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 noundef %np, i32 noundef 0)
  %smax17 = call i32 @llvm.smax.i32(i32 noundef %nq, i32 noundef 0)
  %smax23 = call i32 @llvm.smax.i32(i32 noundef %nr, i32 noundef 0)
  %wide.trip.count24 = zext nneg i32 %smax23 to i64
  %wide.trip.count18 = zext nneg i32 %smax17 to i64
  %wide.trip.count7 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %np to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end41, %entry
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.end41 ], [ 0, %entry ]
  %exitcond25.not = icmp eq i64 %indvars.iv20, %wide.trip.count24
  br i1 %exitcond25.not, label %for.end44, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc39
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc39 ], [ 0, %for.cond ]
  %exitcond19.not = icmp eq i64 %indvars.iv14, %wide.trip.count18
  br i1 %exitcond19.not, label %for.end41, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.inc22
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc22 ], [ 0, %for.cond1 ]
  %exitcond8.not = icmp eq i64 %indvars.iv4, %wide.trip.count7
  br i1 %exitcond8.not, label %for.cond25, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds nuw double, ptr %sum, i64 %indvars.iv4
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !11
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc22, label %for.inc

for.inc:                                          ; preds = %for.cond7
  %arrayidx15 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv20, i64 %indvars.iv14, i64 %indvars.iv
  %0 = load double, ptr %arrayidx15, align 8, !tbaa !11, !invariant.load !15
  %arrayidx19 = getelementptr inbounds nuw [160 x double], ptr %C4, i64 %indvars.iv, i64 %indvars.iv4
  %1 = load double, ptr %arrayidx19, align 8, !tbaa !11, !invariant.load !15
  %2 = tail call double @llvm.fmuladd.f64(double %0, double %1, double noundef 0.000000e+00) #17
  store double %2, ptr %arrayidx, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond7, !llvm.loop !16

for.inc22:                                        ; preds = %for.cond7
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond4, !llvm.loop !18

for.cond25:                                       ; preds = %for.cond4, %for.inc36
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.inc36 ], [ 0, %for.cond4 ]
  %exitcond13.not = icmp eq i64 %indvars.iv9, %wide.trip.count7
  br i1 %exitcond13.not, label %for.inc39, label %for.inc36

for.inc36:                                        ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw double, ptr %sum, i64 %indvars.iv9
  %3 = load double, ptr %arrayidx29, align 8, !tbaa !11, !invariant.load !15
  %arrayidx35 = getelementptr inbounds nuw [140 x [160 x double]], ptr %A, i64 %indvars.iv20, i64 %indvars.iv14, i64 %indvars.iv9
  store double %3, ptr %arrayidx35, align 8, !tbaa !11
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond25, !llvm.loop !19

for.inc39:                                        ; preds = %for.cond25
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond1, !llvm.loop !20

for.end41:                                        ; preds = %for.cond1
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %call = tail call nonnull ptr @polybench_alloc_data(i64 noundef 3360000, i32 noundef 8) #15
  %call1 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 160, i32 noundef 8) #15
  %call2 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 25600, i32 noundef 8) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc15.i, %entry
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %for.inc15.i ], [ 0, %entry ]
  %exitcond14.not.i = icmp eq i64 %indvars.iv11.i, 150
  br i1 %exitcond14.not.i, label %for.cond18.i, label %for.cond1.i

for.cond1.i:                                      ; preds = %for.cond.i, %for.inc12.i
  %indvars.iv6.i = phi i64 [ %indvars.iv.next7.i, %for.inc12.i ], [ 0, %for.cond.i ]
  %exitcond10.not.i = icmp eq i64 %indvars.iv6.i, 140
  br i1 %exitcond10.not.i, label %for.inc15.i, label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.cond1.i
  %0 = mul nuw nsw i64 %indvars.iv6.i, %indvars.iv11.i
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.inc.i, %for.cond4.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond4.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 160
  br i1 %exitcond.not.i, label %for.inc12.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond4.i
  %1 = add nuw nsw i64 %indvars.iv.i, %0
  %2 = trunc nuw nsw i64 %1 to i32
  %rem.i = urem i32 %2, 160
  %conv.i = uitofp nneg i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.600000e+02
  %arrayidx11.i = getelementptr inbounds nuw [140 x [160 x double]], ptr %call, i64 %indvars.iv11.i, i64 %indvars.iv6.i, i64 %indvars.iv.i
  store double %div.i, ptr %arrayidx11.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond4.i, !llvm.loop !21

for.inc12.i:                                      ; preds = %for.cond4.i
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  br label %for.cond1.i, !llvm.loop !22

for.inc15.i:                                      ; preds = %for.cond1.i
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  br label %for.cond.i, !llvm.loop !23

for.cond18.i:                                     ; preds = %for.cond.i, %for.end37.i
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %for.end37.i ], [ 0, %for.cond.i ]
  %exitcond23.not.i = icmp eq i64 %indvars.iv20.i, 160
  br i1 %exitcond23.not.i, label %init_array.exit, label %for.cond22.i

for.cond22.i:                                     ; preds = %for.cond18.i, %for.inc35.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc35.i ], [ 0, %for.cond18.i ]
  %exitcond19.not.i = icmp eq i64 %indvars.iv15.i, 160
  br i1 %exitcond19.not.i, label %for.end37.i, label %for.inc35.i

for.inc35.i:                                      ; preds = %for.cond22.i
  %3 = mul nuw nsw i64 %indvars.iv15.i, %indvars.iv20.i
  %4 = trunc nuw nsw i64 %3 to i32
  %rem27.i = urem i32 %4, 160
  %conv28.i = uitofp nneg i32 %rem27.i to double
  %div30.i = fdiv double %conv28.i, 1.600000e+02
  %arrayidx34.i = getelementptr inbounds nuw [160 x double], ptr %call2, i64 %indvars.iv20.i, i64 %indvars.iv15.i
  store double %div30.i, ptr %arrayidx34.i, align 8, !tbaa !11
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  br label %for.cond22.i, !llvm.loop !24

for.end37.i:                                      ; preds = %for.cond22.i
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1
  br label %for.cond18.i

init_array.exit:                                  ; preds = %for.cond18.i
  tail call void @polybench_timer_start() #13
  unreachable
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold minsize nounwind optsize memory(readwrite, argmem: none) uwtable
define internal fastcc void @outlined_ir_func_1() unnamed_addr #10 {
if.then_after_outline.exitStub:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !25
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull dereferenceable(51) @.str.4) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold minsize nounwind optsize memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nofree nounwind willreturn memory(readwrite) }
attributes #15 = { nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nofree nosync }
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
!15 = !{}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
