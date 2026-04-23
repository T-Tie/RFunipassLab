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
define dso_local range(i32 0, 2) i32 @main(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %loop_wrap2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %loop_wrap2) #11
  %call = tail call noalias ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %0) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.3, ptr noundef nonnull %loop_wrap2) #11
  %call3 = call i32 @fclose(ptr noundef nonnull %call)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %loop_wrap1.0 = phi i64 [ 0, %if.end ], [ %add, %for.body ]
  %2 = load i64, ptr %loop_wrap2, align 8, !tbaa !10
  %cmp4 = icmp slt i64 %loop_wrap1.0, %2
  br i1 %cmp4, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %add = add nuw nsw i64 %loop_wrap1.0, 1
  %cmp5 = icmp eq i64 %add, %2
  %conv = zext i1 %cmp5 to i32
  %call6 = call i32 @main1(i32 noundef %argc, ptr noundef %argv, i32 noundef %conv)
  br label %for.cond, !llvm.loop !12

cleanup:                                          ; preds = %for.cond, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.cond ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loop_wrap2) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha_init(ptr noundef writeonly captures(none) initializes((0, 56)) %sha_info) local_unnamed_addr #4 {
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %count_lo, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha_update(ptr noundef captures(none) %sha_info, ptr noundef readonly captures(none) %buffer, i32 noundef %count) local_unnamed_addr #5 {
entry:
  %count_lo = getelementptr inbounds nuw i8, ptr %sha_info, i64 40
  %0 = load i64, ptr %count_lo, align 8, !tbaa !14
  %conv = sext i32 %count to i64
  %shl = shl nsw i64 %conv, 3
  %1 = xor i64 %0, -1
  %cmp = icmp ugt i64 %shl, %1
  %count_hi = getelementptr inbounds nuw i8, ptr %sha_info, i64 48
  %2 = load i64, ptr %count_hi, align 8, !tbaa !16
  %inc = zext i1 %cmp to i64
  %3 = add i64 %2, %inc
  %add6 = add i64 %0, %shl
  store i64 %add6, ptr %count_lo, align 8, !tbaa !14
  %shr = lshr i64 %conv, 29
  %count_hi8 = getelementptr inbounds nuw i8, ptr %sha_info, i64 48
  %add9 = add i64 %3, %shr
  store i64 %add9, ptr %count_hi8, align 8, !tbaa !16
  %data = getelementptr inbounds nuw i8, ptr %sha_info, i64 56
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %buffer.addr.0 = phi ptr [ %buffer, %entry ], [ %add.ptr, %while.body ]
  %count.addr.0 = phi i32 [ %count, %entry ], [ %sub, %while.body ]
  %cmp10 = icmp sgt i32 %count.addr.0, 63
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %data, ptr noundef nonnull align 1 dereferenceable(64) %buffer.addr.0, i64 64, i1 false)
  tail call fastcc void @byte_reverse(ptr noundef nonnull %data)
  tail call fastcc void @sha_transform(ptr noundef nonnull %sha_info)
  %add.ptr = getelementptr inbounds nuw i8, ptr %buffer.addr.0, i64 64
  %sub = add nsw i32 %count.addr.0, -64
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %conv16 = sext i32 %count.addr.0 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %data, ptr align 1 %buffer.addr.0, i64 %conv16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @byte_reverse(ptr noundef captures(none) %buffer) unnamed_addr #5 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %cp.0 = phi ptr [ %buffer, %entry ], [ %add.ptr, %for.body ]
  %exitcond.not = icmp eq i32 %i.0, 8
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %cp.0, align 1, !tbaa !18
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %cp.0, i64 1
  %1 = load i8, ptr %arrayidx4, align 1, !tbaa !18
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %cp.0, i64 2
  %2 = load i8, ptr %arrayidx6, align 1, !tbaa !18
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %cp.0, i64 3
  %3 = load i8, ptr %arrayidx8, align 1, !tbaa !18
  store i8 %3, ptr %cp.0, align 1, !tbaa !18
  store i8 %2, ptr %arrayidx4, align 1, !tbaa !18
  store i8 %1, ptr %arrayidx6, align 1, !tbaa !18
  store i8 %0, ptr %arrayidx8, align 1, !tbaa !18
  %add.ptr = getelementptr inbounds nuw i8, ptr %cp.0, i64 8
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha_transform(ptr noundef captures(none) %sha_info) unnamed_addr #5 {
entry:
  %W = alloca [80 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %W) #11
  %data = getelementptr inbounds nuw i8, ptr %sha_info, i64 56
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.cond3, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i64], ptr %data, i64 0, i64 %indvars.iv
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw [80 x i64], ptr %W, i64 0, i64 %indvars.iv
  store i64 %0, ptr %arrayidx2, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !20

for.cond3:                                        ; preds = %for.cond, %for.body5
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.body5 ], [ 16, %for.cond ]
  %exitcond93.not = icmp eq i64 %indvars.iv86, 80
  br i1 %exitcond93.not, label %for.end23, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %1 = add nsw i64 %indvars.iv86, -3
  %arrayidx7 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %1
  %2 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %3 = add nsw i64 %indvars.iv86, -8
  %arrayidx10 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %3
  %4 = load i64, ptr %arrayidx10, align 8, !tbaa !10
  %xor = xor i64 %4, %2
  %5 = add nsw i64 %indvars.iv86, -14
  %arrayidx13 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %5
  %6 = load i64, ptr %arrayidx13, align 8, !tbaa !10
  %xor14 = xor i64 %xor, %6
  %7 = add nsw i64 %indvars.iv86, -16
  %arrayidx17 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %7
  %8 = load i64, ptr %arrayidx17, align 8, !tbaa !10
  %xor18 = xor i64 %xor14, %8
  %arrayidx20 = getelementptr inbounds nuw [80 x i64], ptr %W, i64 0, i64 %indvars.iv86
  store i64 %xor18, ptr %arrayidx20, align 8, !tbaa !10
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond3, !llvm.loop !21

for.end23:                                        ; preds = %for.cond3
  %9 = load i64, ptr %sha_info, align 8, !tbaa !10
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %sha_info, i64 8
  %10 = load i64, ptr %arrayidx26, align 8, !tbaa !10
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %sha_info, i64 16
  %11 = load i64, ptr %arrayidx28, align 8, !tbaa !10
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %sha_info, i64 24
  %12 = load i64, ptr %arrayidx30, align 8, !tbaa !10
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %sha_info, i64 32
  %13 = load i64, ptr %arrayidx32, align 8, !tbaa !10
  br label %for.cond33

for.cond33:                                       ; preds = %for.body35, %for.end23
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body35 ], [ 0, %for.end23 ]
  %A.0 = phi i64 [ %add42, %for.body35 ], [ %9, %for.end23 ]
  %B.0 = phi i64 [ %A.0, %for.body35 ], [ %10, %for.end23 ]
  %C.0 = phi i64 [ %or45, %for.body35 ], [ %11, %for.end23 ]
  %D.0 = phi i64 [ %C.0, %for.body35 ], [ %12, %for.end23 ]
  %E.0 = phi i64 [ %D.0, %for.body35 ], [ %13, %for.end23 ]
  %exitcond97.not = icmp eq i64 %indvars.iv94, 20
  br i1 %exitcond97.not, label %for.cond49, label %for.body35

for.body35:                                       ; preds = %for.cond33
  %shl = shl i64 %A.0, 5
  %shr = lshr i64 %A.0, 27
  %or = or i64 %shl, %shr
  %and = and i64 %C.0, %B.0
  %not = xor i64 %B.0, -1
  %and36 = and i64 %D.0, %not
  %or37 = or i64 %and36, %and
  %arrayidx40 = getelementptr inbounds nuw [80 x i64], ptr %W, i64 0, i64 %indvars.iv94
  %14 = load i64, ptr %arrayidx40, align 8, !tbaa !10
  %add = add i64 %or, 1518500249
  %add38 = add i64 %add, %E.0
  %add41 = add i64 %add38, %or37
  %add42 = add i64 %add41, %14
  %shl43 = shl i64 %B.0, 30
  %shr44 = lshr i64 %B.0, 2
  %or45 = or i64 %shl43, %shr44
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond33, !llvm.loop !22

for.cond49:                                       ; preds = %for.cond33, %for.body51
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.body51 ], [ 20, %for.cond33 ]
  %A.1 = phi i64 [ %add62, %for.body51 ], [ %A.0, %for.cond33 ]
  %B.1 = phi i64 [ %A.1, %for.body51 ], [ %B.0, %for.cond33 ]
  %C.1 = phi i64 [ %or65, %for.body51 ], [ %C.0, %for.cond33 ]
  %D.1 = phi i64 [ %C.1, %for.body51 ], [ %D.0, %for.cond33 ]
  %E.1 = phi i64 [ %D.1, %for.body51 ], [ %E.0, %for.cond33 ]
  %exitcond101.not = icmp eq i64 %indvars.iv98, 40
  br i1 %exitcond101.not, label %for.cond69, label %for.body51

for.body51:                                       ; preds = %for.cond49
  %shl52 = shl i64 %A.1, 5
  %shr53 = lshr i64 %A.1, 27
  %or54 = or i64 %shl52, %shr53
  %xor55 = xor i64 %C.1, %B.1
  %xor56 = xor i64 %xor55, %D.1
  %arrayidx60 = getelementptr inbounds nuw [80 x i64], ptr %W, i64 0, i64 %indvars.iv98
  %15 = load i64, ptr %arrayidx60, align 8, !tbaa !10
  %add57 = add i64 %or54, 1859775393
  %add58 = add i64 %add57, %xor56
  %add61 = add i64 %add58, %E.1
  %add62 = add i64 %add61, %15
  %shl63 = shl i64 %B.1, 30
  %shr64 = lshr i64 %B.1, 2
  %or65 = or i64 %shl63, %shr64
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond49, !llvm.loop !23

for.cond69:                                       ; preds = %for.cond49, %for.body71
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.body71 ], [ 40, %for.cond49 ]
  %A.2 = phi i64 [ %add85, %for.body71 ], [ %A.1, %for.cond49 ]
  %B.2 = phi i64 [ %A.2, %for.body71 ], [ %B.1, %for.cond49 ]
  %C.2 = phi i64 [ %or88, %for.body71 ], [ %C.1, %for.cond49 ]
  %D.2 = phi i64 [ %C.2, %for.body71 ], [ %D.1, %for.cond49 ]
  %E.2 = phi i64 [ %D.2, %for.body71 ], [ %E.1, %for.cond49 ]
  %exitcond105.not = icmp eq i64 %indvars.iv102, 60
  br i1 %exitcond105.not, label %for.cond92, label %for.body71

for.body71:                                       ; preds = %for.cond69
  %shl72 = shl i64 %A.2, 5
  %shr73 = lshr i64 %A.2, 27
  %or74 = or i64 %shl72, %shr73
  %and7684 = or i64 %D.2, %C.2
  %or77 = and i64 %and7684, %B.2
  %and78 = and i64 %D.2, %C.2
  %or79 = or i64 %or77, %and78
  %arrayidx83 = getelementptr inbounds nuw [80 x i64], ptr %W, i64 0, i64 %indvars.iv102
  %16 = load i64, ptr %arrayidx83, align 8, !tbaa !10
  %add80 = add i64 %or74, 2400959708
  %add81 = add i64 %add80, %E.2
  %add84 = add i64 %add81, %or79
  %add85 = add i64 %add84, %16
  %shl86 = shl i64 %B.2, 30
  %shr87 = lshr i64 %B.2, 2
  %or88 = or i64 %shl86, %shr87
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %for.cond69, !llvm.loop !24

for.cond92:                                       ; preds = %for.cond69, %for.body94
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.body94 ], [ 60, %for.cond69 ]
  %A.3 = phi i64 [ %add105, %for.body94 ], [ %A.2, %for.cond69 ]
  %B.3 = phi i64 [ %A.3, %for.body94 ], [ %B.2, %for.cond69 ]
  %C.3 = phi i64 [ %or108, %for.body94 ], [ %C.2, %for.cond69 ]
  %D.3 = phi i64 [ %C.3, %for.body94 ], [ %D.2, %for.cond69 ]
  %E.3 = phi i64 [ %D.3, %for.body94 ], [ %E.2, %for.cond69 ]
  %exitcond109.not = icmp eq i64 %indvars.iv106, 80
  br i1 %exitcond109.not, label %for.end111, label %for.body94

for.body94:                                       ; preds = %for.cond92
  %shl95 = shl i64 %A.3, 5
  %shr96 = lshr i64 %A.3, 27
  %or97 = or i64 %shl95, %shr96
  %xor98 = xor i64 %C.3, %B.3
  %xor99 = xor i64 %xor98, %D.3
  %arrayidx103 = getelementptr inbounds nuw [80 x i64], ptr %W, i64 0, i64 %indvars.iv106
  %17 = load i64, ptr %arrayidx103, align 8, !tbaa !10
  %add100 = add i64 %or97, 3395469782
  %add101 = add i64 %add100, %xor99
  %add104 = add i64 %add101, %E.3
  %add105 = add i64 %add104, %17
  %shl106 = shl i64 %B.3, 30
  %shr107 = lshr i64 %B.3, 2
  %or108 = or i64 %shl106, %shr107
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond92, !llvm.loop !25

for.end111:                                       ; preds = %for.cond92
  %add114 = add i64 %A.3, %9
  store i64 %add114, ptr %sha_info, align 8, !tbaa !10
  %add117 = add i64 %B.3, %10
  store i64 %add117, ptr %arrayidx26, align 8, !tbaa !10
  %add120 = add i64 %C.3, %11
  store i64 %add120, ptr %arrayidx28, align 8, !tbaa !10
  %add123 = add i64 %D.3, %12
  store i64 %add123, ptr %arrayidx30, align 8, !tbaa !10
  %add126 = add i64 %E.3, %13
  store i64 %add126, ptr %arrayidx32, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %W) #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha_final(ptr noundef captures(none) %sha_info) local_unnamed_addr #5 {
entry:
  %count_lo = getelementptr inbounds nuw i8, ptr %sha_info, i64 40
  %0 = load i64, ptr %count_lo, align 8, !tbaa !14
  %count_hi = getelementptr inbounds nuw i8, ptr %sha_info, i64 48
  %1 = load i64, ptr %count_hi, align 8, !tbaa !16
  %2 = trunc i64 %0 to i32
  %3 = lshr i32 %2, 3
  %conv = and i32 %3, 63
  %data = getelementptr inbounds nuw i8, ptr %sha_info, i64 56
  %idxprom = zext nneg i32 %conv to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %data, i64 %idxprom
  store i8 -128, ptr %arrayidx, align 1, !tbaa !18
  %cmp = icmp samesign ugt i32 %conv, 55
  %4 = zext nneg i32 %conv to i64
  %5 = getelementptr inbounds nuw i8, ptr %data, i64 %4
  %add.ptr = getelementptr inbounds nuw i8, ptr %5, i64 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = xor i32 %conv, 63
  %conv3 = zext nneg i32 %sub to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr, i8 0, i64 %conv3, i1 false)
  tail call fastcc void @byte_reverse(ptr noundef nonnull %data)
  tail call fastcc void @sha_transform(ptr noundef nonnull %sha_info)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %data, i8 0, i64 56, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %sub10 = sub nuw nsw i32 55, %conv
  %conv11 = zext nneg i32 %sub10 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr, i8 0, i64 %conv11, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @byte_reverse(ptr noundef nonnull %data)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %sha_info, i64 168
  store i64 %1, ptr %arrayidx15, align 8, !tbaa !10
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sha_info, i64 176
  store i64 %0, ptr %arrayidx17, align 8, !tbaa !10
  tail call fastcc void @sha_transform(ptr noundef nonnull %sha_info)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind uwtable
define dso_local void @sha_stream(ptr noundef captures(none) initializes((0, 56)) %sha_info, ptr noundef captures(none) %fin) local_unnamed_addr #8 {
entry:
  %data = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %data) #11
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %count_lo.i, i8 0, i64 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i64 @fread(ptr noundef nonnull %data, i64 noundef 1, i64 noundef 8192, ptr noundef %fin)
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @sha_update(ptr noundef nonnull %sha_info, ptr noundef nonnull %data, i32 noundef %conv)
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  tail call void @sha_final(ptr noundef nonnull %sha_info)
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %data) #11
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @sha_print(ptr noundef readonly captures(none) %sha_info) local_unnamed_addr #8 {
entry:
  %0 = load i64, ptr %sha_info, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sha_info, i64 8
  %1 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %sha_info, i64 16
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %sha_info, i64 24
  %3 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sha_info, i64 32
  %4 = load i64, ptr %arrayidx8, align 8, !tbaa !10
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main1(i32 noundef %argc, ptr noundef readonly captures(none) %argv, i32 noundef %print) local_unnamed_addr #8 {
entry:
  %sha_info = alloca %struct.SHA_INFO, align 8
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %sha_info) #11
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %tobool7.not = icmp eq i32 %print, 0
  br label %while.cond

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  call void @sha_stream(ptr noundef nonnull %sha_info, ptr noundef %0)
  %tobool.not = icmp eq i32 %print, 0
  br i1 %tobool.not, label %if.end12, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @sha_print(ptr noundef nonnull %sha_info)
  br label %if.end12

while.cond:                                       ; preds = %while.cond.preheader, %if.end9
  %argv.addr.0 = phi ptr [ %incdec.ptr, %if.end9 ], [ %argv, %while.cond.preheader ]
  %argc.addr.0 = phi i32 [ %dec, %if.end9 ], [ %argc, %while.cond.preheader ]
  %dec = add nsw i32 %argc.addr.0, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end12, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %argv.addr.0, i64 8
  %1 = load ptr, ptr %incdec.ptr, align 8, !tbaa !27
  %call = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7)
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %while.body
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %3 = load ptr, ptr %incdec.ptr, align 8, !tbaa !27
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1.8, ptr noundef %3) #13
  tail call void @exit(i32 noundef 1) #14
  unreachable

if.else6:                                         ; preds = %while.body
  call void @sha_stream(ptr noundef nonnull %sha_info, ptr noundef nonnull %call)
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.else6
  call void @sha_print(ptr noundef nonnull %sha_info)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else6
  %call10 = tail call i32 @fclose(ptr noundef nonnull %call)
  br label %while.cond, !llvm.loop !29

if.end12:                                         ; preds = %while.cond, %if.then, %if.then1
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %sha_info) #11
  ret i32 0
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { cold noreturn nounwind }

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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !11, i64 40}
!15 = !{!"", !8, i64 0, !11, i64 40, !11, i64 48, !8, i64 56}
!16 = !{!15, !11, i64 48}
!17 = distinct !{!17, !13}
!18 = !{!8, !8, i64 0}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 omnipotent char", !7, i64 0}
!29 = distinct !{!29, !13}
