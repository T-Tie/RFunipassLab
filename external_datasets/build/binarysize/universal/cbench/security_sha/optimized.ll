; ModuleID = '<stdin>'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }

@.str = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.8 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %loop_wrap2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %loop_wrap2) #12
  %call = tail call noalias ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr noundef nonnull @.str.2, i64 noundef 28, i64 noundef 1, ptr noundef %0) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.3, ptr noundef nonnull %loop_wrap2) #13
  %call3 = call i32 @fclose(ptr noundef nonnull %call) #13
  %2 = load i64, ptr %loop_wrap2, align 8, !tbaa !10
  %cmp4 = icmp sgt i64 %2, 0
  br i1 %cmp4, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.end
  %call6 = call i32 @main1(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv, i32 undef) #15
  unreachable

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %loop_wrap2) #13
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noalias ptr @fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @fclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha_init(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 56)) %sha_info) local_unnamed_addr #4 {
entry:
  store i64 1732584193, ptr %sha_info, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sha_info, i64 8
  store i64 4023233417, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %sha_info, i64 16
  store i64 2562383102, ptr %arrayidx4, align 8, !tbaa !10
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %sha_info, i64 24
  store i64 271733878, ptr %arrayidx6, align 8, !tbaa !10
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sha_info, i64 32
  store i64 3285377520, ptr %arrayidx8, align 8, !tbaa !10
  %count_lo = getelementptr inbounds nuw i8, ptr %sha_info, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 8 dereferenceable(16) %count_lo, i8 noundef 0, i64 noundef 16, i1 noundef false) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha_update(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %sha_info, ptr nofree noundef readonly captures(none) %buffer, i32 noundef %count) local_unnamed_addr #5 {
entry:
  %count_lo = getelementptr inbounds nuw i8, ptr %sha_info, i64 40
  %0 = load i64, ptr %count_lo, align 8, !tbaa !12
  %conv = sext i32 %count to i64
  %shl = shl nsw i64 %conv, 3
  %add = add i64 %0, %shl
  %1 = getelementptr inbounds nuw i8, ptr %sha_info, i64 48
  %2 = load i64, ptr %1, align 8, !tbaa !14
  store i64 %add, ptr %count_lo, align 8, !tbaa !12
  %shr = lshr i64 %conv, 29
  %add9 = add i64 %2, %shr
  store i64 %add9, ptr %1, align 8, !tbaa !14
  %cmp10 = icmp sgt i32 %count, 63
  %data = getelementptr inbounds nuw i8, ptr %sha_info, i64 56
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull writeonly align 8 dereferenceable(64) %data, ptr noundef nonnull readonly align 1 captures(none) dereferenceable(64) %buffer, i64 noundef 64, i1 noundef false) #17
  tail call fastcc void @byte_reverse(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %data) #18
  unreachable

while.end:                                        ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull writeonly align 8 %data, ptr noundef readonly align 1 captures(none) %buffer, i64 noundef %conv, i1 noundef false) #17
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @byte_reverse(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1) %buffer) unnamed_addr #7 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %cp.0 = phi ptr [ %buffer, %entry ], [ %add.ptr, %for.body ]
  %0 = load i8, ptr %cp.0, align 1, !tbaa !15, !invariant.load !16
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %cp.0, i64 1
  %1 = load i8, ptr %arrayidx4, align 1, !tbaa !15, !invariant.load !16
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %cp.0, i64 2
  %2 = load i8, ptr %arrayidx6, align 1, !tbaa !15, !invariant.load !16
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %cp.0, i64 3
  %3 = load i8, ptr %arrayidx8, align 1, !tbaa !15, !invariant.load !16
  store i8 %3, ptr %cp.0, align 1, !tbaa !15
  store i8 %2, ptr %arrayidx4, align 1, !tbaa !15
  store i8 %1, ptr %arrayidx6, align 1, !tbaa !15
  store i8 %0, ptr %arrayidx8, align 1, !tbaa !15
  %add.ptr = getelementptr inbounds nuw i8, ptr %cp.0, i64 8
  br label %for.body
}

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha_final(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %sha_info) local_unnamed_addr #7 {
entry:
  %count_lo = getelementptr inbounds nuw i8, ptr %sha_info, i64 40
  %0 = load i64, ptr %count_lo, align 8, !tbaa !12
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 3
  %conv = and i32 %2, 63
  %data = getelementptr inbounds nuw i8, ptr %sha_info, i64 56
  %idxprom = zext nneg i32 %conv to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %data, i64 %idxprom
  store i8 -128, ptr %arrayidx, align 1, !tbaa !15
  %cmp = icmp samesign ugt i32 %conv, 55
  %3 = zext nneg i32 %conv to i64
  %4 = getelementptr inbounds nuw i8, ptr %data, i64 %3
  %add.ptr = getelementptr inbounds nuw i8, ptr %4, i64 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub = xor i32 %conv, 63
  %conv3 = zext nneg i32 %sub to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull writeonly align 1 captures(none) %add.ptr, i8 noundef 0, i64 %conv3, i1 noundef false) #17
  tail call fastcc void @byte_reverse(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1) %data) #18
  unreachable

if.end:                                           ; preds = %entry
  %sub10 = sub nuw nsw i32 55, %conv
  %conv11 = zext nneg i32 %sub10 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull writeonly align 1 captures(none) %add.ptr, i8 noundef 0, i64 %conv11, i1 noundef false) #17
  tail call fastcc void @byte_reverse(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1) %data) #18
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noreturn nounwind uwtable
define dso_local void @sha_stream(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 56)) %sha_info, ptr noundef %fin) local_unnamed_addr #9 {
entry:
  %data = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 8192, ptr noundef nonnull align 16 captures(none) dereferenceable(8192) %data) #11
  store i64 1732584193, ptr %sha_info, align 8, !tbaa !10
  %arrayidx2.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 8
  store i64 4023233417, ptr %arrayidx2.i, align 8, !tbaa !10
  %arrayidx4.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 16
  store i64 2562383102, ptr %arrayidx4.i, align 8, !tbaa !10
  %arrayidx6.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 24
  store i64 271733878, ptr %arrayidx6.i, align 8, !tbaa !10
  %arrayidx8.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 32
  store i64 3285377520, ptr %arrayidx8.i, align 8, !tbaa !10
  %count_lo.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 8 dereferenceable(16) %count_lo.i, i8 noundef 0, i64 noundef 16, i1 noundef false) #19
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i64 @fread(ptr noundef nonnull align 16 dereferenceable(8192) %data, i64 noundef 1, i64 noundef 8192, ptr noundef %fin) #13
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @sha_update(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %sha_info, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(8192) %data, i32 noundef %conv) #13
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  call void @sha_final(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %sha_info) #15
  unreachable
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @sha_print(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %sha_info) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %sha_info, align 8, !tbaa !10, !invariant.load !16
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sha_info, i64 8
  %1 = load i64, ptr %arrayidx2, align 8, !tbaa !10, !invariant.load !16
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %sha_info, i64 16
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !10, !invariant.load !16
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %sha_info, i64 24
  %3 = load i64, ptr %arrayidx6, align 8, !tbaa !10, !invariant.load !16
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sha_info, i64 32
  %4 = load i64, ptr %arrayidx8, align 8, !tbaa !10, !invariant.load !16
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #13
  ret void
}

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main1(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv, i32 %print) local_unnamed_addr #9 {
entry:
  %sha_info = alloca %struct.SHA_INFO, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 184, ptr noundef nonnull align 8 dereferenceable(184) %sha_info) #12
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %while.body

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  call void @sha_stream(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(184) %sha_info, ptr noundef %0) #15
  unreachable

while.body:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %argv, i64 8
  %1 = load ptr, ptr %incdec.ptr, align 8, !tbaa !19, !invariant.load !16
  %call = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7) #13
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %while.body
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1.8, ptr noundef %1) #14
  tail call void @exit(i32 noundef 1) #20
  unreachable

if.else6:                                         ; preds = %while.body
  call void @sha_stream(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(184) %sha_info, ptr noundef nonnull %call) #15
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree norecurse noreturn nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nofree nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { memory(write) }
attributes #17 = { nofree willreturn }
attributes #18 = { nofree noreturn nosync nounwind }
attributes #19 = { nofree }
attributes #20 = { cold noreturn nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !11, i64 40}
!13 = !{!"", !8, i64 0, !11, i64 40, !11, i64 48, !8, i64 56}
!14 = !{!13, !11, i64 48}
!15 = !{!8, !8, i64 0}
!16 = !{}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !7, i64 0}
