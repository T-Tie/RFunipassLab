; ModuleID = '/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll'
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
@.str.3.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  br label %for.body
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  br label %for.body.i
}

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 {
entry:
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %entry
  br label %for.body.i.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #6 {
entry:
  %Tp.i = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 16, ptr noundef nonnull align 8 %Tp.i) #14
  %call.i = call i32 @gettimeofday(ptr noundef nonnull align 8 captures(none) %Tp.i, ptr noundef null) #15
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rtclock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %call.i) #15
  br label %rtclock.exit

rtclock.exit:                                     ; preds = %entry, %if.then.i
  %0 = load i64, ptr %Tp.i, align 8, !tbaa !5
  %conv.i = sitofp i64 %0 to double
  %tv_usec.i = getelementptr inbounds nuw i8, ptr %Tp.i, i64 8
  %1 = load i64, ptr %tv_usec.i, align 8, !tbaa !10
  %conv2.i = sitofp i64 %1 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv2.i, double noundef 0x3EB0C6F7A0B5ED8D, double %conv.i) #16
  call void @llvm.lifetime.end.p0(i64 noundef 16, ptr noundef nonnull %Tp.i) #15
  store double %2, ptr @polybench_t_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #6 {
entry:
  %0 = load double, ptr @polybench_t_end, align 8, !tbaa !11
  %1 = load double, ptr @polybench_t_start, align 8, !tbaa !11
  %sub = fsub double %0, %1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %sub) #15
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %ptr) local_unnamed_addr #7 {
entry:
  tail call void @free(ptr noundef captures(none) %ptr) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
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
  call void @exit(i32 noundef 1) #18
  unreachable

xmalloc.exit:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %ret.i) #15
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #9 {
entry:
  %call = tail call nonnull ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #15
  %call1 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #15
  %call2 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #15
  %call3 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #15
  %call4 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #15
  %call5 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #15
  %call6 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #15
  %call7 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #15
  %call8 = tail call nonnull ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond35.i, %entry
  %indvars.iv5.i = phi i64 [ 0, %entry ], [ %indvars.iv.next6.i, %for.cond35.i ]
  %exitcond8.not.i = icmp eq i64 %indvars.iv5.i, 2000
  br i1 %exitcond8.not.i, label %for.body.i.i.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %0 = trunc nuw nsw i64 %indvars.iv5.i to i32
  %conv2.i = uitofp nneg i32 %0 to double
  %arrayidx.i = getelementptr inbounds nuw double, ptr %call1, i64 %indvars.iv5.i
  store double %conv2.i, ptr %arrayidx.i, align 8, !tbaa !11
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1
  %1 = trunc nuw nsw i64 %indvars.iv.next6.i to i32
  %conv3.i = uitofp nneg i32 %1 to double
  %div.i = fdiv double %conv3.i, 2.000000e+03
  %div4.i = fmul double %div.i, 5.000000e-01
  %arrayidx6.i = getelementptr inbounds nuw double, ptr %call3, i64 %indvars.iv5.i
  store double %div4.i, ptr %arrayidx6.i, align 8, !tbaa !11
  %div10.i = fmul double %div.i, 2.500000e-01
  %arrayidx12.i = getelementptr inbounds nuw double, ptr %call2, i64 %indvars.iv5.i
  store double %div10.i, ptr %arrayidx12.i, align 8, !tbaa !11
  %div16.i = fdiv double %div.i, 6.000000e+00
  %arrayidx18.i = getelementptr inbounds nuw double, ptr %call4, i64 %indvars.iv5.i
  store double %div16.i, ptr %arrayidx18.i, align 8, !tbaa !11
  %div22.i = fmul double %div.i, 1.250000e-01
  %arrayidx24.i = getelementptr inbounds nuw double, ptr %call7, i64 %indvars.iv5.i
  store double %div22.i, ptr %arrayidx24.i, align 8, !tbaa !11
  %div28.i = fdiv double %div.i, 9.000000e+00
  %arrayidx30.i = getelementptr inbounds nuw double, ptr %call8, i64 %indvars.iv5.i
  store double %div28.i, ptr %arrayidx30.i, align 8, !tbaa !11
  %arrayidx32.i = getelementptr inbounds nuw double, ptr %call6, i64 %indvars.iv5.i
  store double 0.000000e+00, ptr %arrayidx32.i, align 8, !tbaa !11
  %arrayidx34.i = getelementptr inbounds nuw double, ptr %call5, i64 %indvars.iv5.i
  store double 0.000000e+00, ptr %arrayidx34.i, align 8, !tbaa !11
  br label %for.cond35.i

for.cond35.i:                                     ; preds = %for.body38.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body38.i ], [ 0, %for.body.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 2000
  br i1 %exitcond.not.i, label %for.cond.i, label %for.body38.i

for.body38.i:                                     ; preds = %for.cond35.i
  %2 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv5.i
  %3 = trunc nuw nsw i64 %2 to i32
  %rem.i = urem i32 %3, 2000
  %conv39.i = uitofp nneg i32 %rem.i to double
  %div41.i = fdiv double %conv39.i, 2.000000e+03
  %arrayidx45.i = getelementptr inbounds nuw [2000 x double], ptr %call, i64 %indvars.iv5.i, i64 %indvars.iv.i
  store double %div41.i, ptr %arrayidx45.i, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond35.i

for.body.i.i.i:                                   ; preds = %for.cond.i, %for.body.i.i.i
  br label %for.body.i.i.i
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: cold minsize nofree nounwind optsize memory(readwrite, argmem: none) uwtable
define internal fastcc void @outlined_ir_func_1() unnamed_addr #11 {
if.then_after_outline.exitStub:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull readonly captures(none) dereferenceable(51) @.str.4) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold minsize nofree nounwind optsize memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind willreturn memory(readwrite) }
attributes #15 = { nofree nounwind }
attributes #16 = { nofree }
attributes #17 = { nounwind willreturn }
attributes #18 = { cold nofree noreturn nounwind }
attributes #19 = { cold nofree nounwind }

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
