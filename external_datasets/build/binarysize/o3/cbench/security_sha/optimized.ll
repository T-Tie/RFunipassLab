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
  %2 = load i64, ptr %loop_wrap2, align 8, !tbaa !10
  %cmp44 = icmp sgt i64 %2, 0
  br i1 %cmp44, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end, %for.body
  %3 = phi i64 [ %4, %for.body ], [ %2, %if.end ]
  %loop_wrap1.05 = phi i64 [ %add, %for.body ], [ 0, %if.end ]
  %add = add nuw nsw i64 %loop_wrap1.05, 1
  %cmp5 = icmp eq i64 %add, %3
  %conv = zext i1 %cmp5 to i32
  %call6 = call i32 @main1(i32 noundef %argc, ptr noundef %argv, i32 noundef %conv)
  %4 = load i64, ptr %loop_wrap2, align 8, !tbaa !10
  %cmp4 = icmp slt i64 %add, %4
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !12

cleanup:                                          ; preds = %for.body, %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ], [ 0, %for.body ]
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
  %cmp1016 = icmp sgt i32 %count, 63
  br i1 %cmp1016, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %data = getelementptr inbounds nuw i8, ptr %sha_info, i64 56
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %byte_reverse.exit
  %count.addr.018 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %byte_reverse.exit ]
  %buffer.addr.017 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr, %byte_reverse.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %data, ptr noundef nonnull align 1 dereferenceable(64) %buffer.addr.017, i64 64, i1 false)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %while.body
  %cp.012.i = phi ptr [ %data, %while.body ], [ %add.ptr.i, %for.body.i ]
  %i.011.i = phi i32 [ 0, %while.body ], [ %inc.i, %for.body.i ]
  %4 = load <4 x i8>, ptr %cp.012.i, align 1, !tbaa !17
  %5 = shufflevector <4 x i8> %4, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %5, ptr %cp.012.i, align 1, !tbaa !17
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %cp.012.i, i64 8
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %byte_reverse.exit, label %for.body.i, !llvm.loop !18

byte_reverse.exit:                                ; preds = %for.body.i
  tail call fastcc void @sha_transform(ptr noundef nonnull %sha_info)
  %add.ptr = getelementptr inbounds nuw i8, ptr %buffer.addr.017, i64 64
  %sub = add nsw i32 %count.addr.018, -64
  %cmp10 = icmp sgt i32 %count.addr.018, 127
  br i1 %cmp10, label %while.body, label %while.end.loopexit, !llvm.loop !19

while.end.loopexit:                               ; preds = %byte_reverse.exit
  %.pre20 = sext i32 %sub to i64
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %conv16.pre-phi = phi i64 [ %.pre20, %while.end.loopexit ], [ %conv, %entry ]
  %buffer.addr.0.lcssa = phi ptr [ %add.ptr, %while.end.loopexit ], [ %buffer, %entry ]
  %data14 = getelementptr inbounds nuw i8, ptr %sha_info, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %data14, ptr align 1 %buffer.addr.0.lcssa, i64 %conv16.pre-phi, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha_transform(ptr noundef captures(none) %sha_info) unnamed_addr #5 {
entry:
  %W = alloca [80 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %W) #11
  %data = getelementptr inbounds nuw i8, ptr %sha_info, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %W, ptr noundef nonnull align 8 dereferenceable(128) %data, i64 128, i1 false), !tbaa !10
  br label %for.body5

for.body5:                                        ; preds = %entry, %for.body5
  %indvars.iv = phi i64 [ 16, %entry ], [ %indvars.iv.next, %for.body5 ]
  %0 = add nsw i64 %indvars.iv, -3
  %arrayidx7 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %0
  %1 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %2 = add nsw i64 %indvars.iv, -8
  %arrayidx10 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %2
  %3 = load i64, ptr %arrayidx10, align 8, !tbaa !10
  %xor = xor i64 %3, %1
  %4 = add nsw i64 %indvars.iv, -14
  %arrayidx13 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %4
  %5 = load i64, ptr %arrayidx13, align 8, !tbaa !10
  %xor14 = xor i64 %xor, %5
  %6 = add nsw i64 %indvars.iv, -16
  %arrayidx17 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %6
  %7 = load i64, ptr %arrayidx17, align 8, !tbaa !10
  %xor18 = xor i64 %xor14, %7
  %arrayidx20 = getelementptr inbounds nuw [80 x i64], ptr %W, i64 0, i64 %indvars.iv
  store i64 %xor18, ptr %arrayidx20, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond.not, label %for.end23, label %for.body5, !llvm.loop !20

for.end23:                                        ; preds = %for.body5
  %8 = load i64, ptr %sha_info, align 8, !tbaa !10
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %sha_info, i64 8
  %9 = load i64, ptr %arrayidx26, align 8, !tbaa !10
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %sha_info, i64 16
  %10 = load i64, ptr %arrayidx28, align 8, !tbaa !10
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %sha_info, i64 24
  %11 = load i64, ptr %arrayidx30, align 8, !tbaa !10
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %sha_info, i64 32
  %12 = load i64, ptr %arrayidx32, align 8, !tbaa !10
  br label %for.body35

for.body35:                                       ; preds = %for.end23, %for.body35
  %indvars.iv117 = phi i64 [ 0, %for.end23 ], [ %indvars.iv.next118, %for.body35 ]
  %E.092 = phi i64 [ %12, %for.end23 ], [ %D.091, %for.body35 ]
  %D.091 = phi i64 [ %11, %for.end23 ], [ %C.090, %for.body35 ]
  %C.090 = phi i64 [ %10, %for.end23 ], [ %or45, %for.body35 ]
  %B.089 = phi i64 [ %9, %for.end23 ], [ %A.088, %for.body35 ]
  %A.088 = phi i64 [ %8, %for.end23 ], [ %add42, %for.body35 ]
  %shl = shl i64 %A.088, 5
  %shr = lshr i64 %A.088, 27
  %or = or i64 %shl, %shr
  %and = and i64 %C.090, %B.089
  %not = xor i64 %B.089, -1
  %and36 = and i64 %D.091, %not
  %or37 = or i64 %and36, %and
  %arrayidx40 = getelementptr inbounds nuw [80 x i64], ptr %W, i64 0, i64 %indvars.iv117
  %13 = load i64, ptr %arrayidx40, align 8, !tbaa !10
  %add = add i64 %or, 1518500249
  %add38 = add i64 %add, %E.092
  %add41 = add i64 %add38, %or37
  %add42 = add i64 %add41, %13
  %shl43 = shl i64 %B.089, 30
  %shr44 = lshr i64 %B.089, 2
  %or45 = or i64 %shl43, %shr44
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %exitcond120.not = icmp eq i64 %indvars.iv.next118, 20
  br i1 %exitcond120.not, label %for.body51, label %for.body35, !llvm.loop !21

for.body51:                                       ; preds = %for.body35, %for.body51
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.body51 ], [ 20, %for.body35 ]
  %E.198 = phi i64 [ %D.197, %for.body51 ], [ %D.091, %for.body35 ]
  %D.197 = phi i64 [ %C.196, %for.body51 ], [ %C.090, %for.body35 ]
  %C.196 = phi i64 [ %or65, %for.body51 ], [ %or45, %for.body35 ]
  %B.195 = phi i64 [ %A.194, %for.body51 ], [ %A.088, %for.body35 ]
  %A.194 = phi i64 [ %add62, %for.body51 ], [ %add42, %for.body35 ]
  %shl52 = shl i64 %A.194, 5
  %shr53 = lshr i64 %A.194, 27
  %or54 = or i64 %shl52, %shr53
  %xor55 = xor i64 %C.196, %B.195
  %xor56 = xor i64 %xor55, %D.197
  %arrayidx60 = getelementptr inbounds nuw [80 x i64], ptr %W, i64 0, i64 %indvars.iv121
  %14 = load i64, ptr %arrayidx60, align 8, !tbaa !10
  %add57 = add i64 %or54, 1859775393
  %add58 = add i64 %add57, %xor56
  %add61 = add i64 %add58, %E.198
  %add62 = add i64 %add61, %14
  %shl63 = shl i64 %B.195, 30
  %shr64 = lshr i64 %B.195, 2
  %or65 = or i64 %shl63, %shr64
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next122, 40
  br i1 %exitcond124.not, label %for.body71, label %for.body51, !llvm.loop !22

for.body71:                                       ; preds = %for.body51, %for.body71
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.body71 ], [ 40, %for.body51 ]
  %E.2104 = phi i64 [ %D.2103, %for.body71 ], [ %D.197, %for.body51 ]
  %D.2103 = phi i64 [ %C.2102, %for.body71 ], [ %C.196, %for.body51 ]
  %C.2102 = phi i64 [ %or88, %for.body71 ], [ %or65, %for.body51 ]
  %B.2101 = phi i64 [ %A.2100, %for.body71 ], [ %A.194, %for.body51 ]
  %A.2100 = phi i64 [ %add85, %for.body71 ], [ %add62, %for.body51 ]
  %shl72 = shl i64 %A.2100, 5
  %shr73 = lshr i64 %A.2100, 27
  %or74 = or i64 %shl72, %shr73
  %and7684 = or i64 %D.2103, %C.2102
  %or77 = and i64 %and7684, %B.2101
  %and78 = and i64 %D.2103, %C.2102
  %or79 = or i64 %or77, %and78
  %arrayidx83 = getelementptr inbounds nuw [80 x i64], ptr %W, i64 0, i64 %indvars.iv125
  %15 = load i64, ptr %arrayidx83, align 8, !tbaa !10
  %add80 = add i64 %or74, 2400959708
  %add81 = add i64 %add80, %E.2104
  %add84 = add i64 %add81, %or79
  %add85 = add i64 %add84, %15
  %shl86 = shl i64 %B.2101, 30
  %shr87 = lshr i64 %B.2101, 2
  %or88 = or i64 %shl86, %shr87
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %exitcond128.not = icmp eq i64 %indvars.iv.next126, 60
  br i1 %exitcond128.not, label %for.body94, label %for.body71, !llvm.loop !23

for.body94:                                       ; preds = %for.body71, %for.body94
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.body94 ], [ 60, %for.body71 ]
  %E.3110 = phi i64 [ %D.3109, %for.body94 ], [ %D.2103, %for.body71 ]
  %D.3109 = phi i64 [ %C.3108, %for.body94 ], [ %C.2102, %for.body71 ]
  %C.3108 = phi i64 [ %or108, %for.body94 ], [ %or88, %for.body71 ]
  %B.3107 = phi i64 [ %A.3106, %for.body94 ], [ %A.2100, %for.body71 ]
  %A.3106 = phi i64 [ %add105, %for.body94 ], [ %add85, %for.body71 ]
  %shl95 = shl i64 %A.3106, 5
  %shr96 = lshr i64 %A.3106, 27
  %or97 = or i64 %shl95, %shr96
  %xor98 = xor i64 %C.3108, %B.3107
  %xor99 = xor i64 %xor98, %D.3109
  %arrayidx103 = getelementptr inbounds nuw [80 x i64], ptr %W, i64 0, i64 %indvars.iv129
  %16 = load i64, ptr %arrayidx103, align 8, !tbaa !10
  %add100 = add i64 %or97, 3395469782
  %add101 = add i64 %add100, %xor99
  %add104 = add i64 %add101, %E.3110
  %add105 = add i64 %add104, %16
  %shl106 = shl i64 %B.3107, 30
  %shr107 = lshr i64 %B.3107, 2
  %or108 = or i64 %shl106, %shr107
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond132.not = icmp eq i64 %indvars.iv.next130, 80
  br i1 %exitcond132.not, label %for.end111, label %for.body94, !llvm.loop !24

for.end111:                                       ; preds = %for.body94
  %add114 = add i64 %add105, %8
  store i64 %add114, ptr %sha_info, align 8, !tbaa !10
  %add117 = add i64 %A.3106, %9
  store i64 %add117, ptr %arrayidx26, align 8, !tbaa !10
  %add120 = add i64 %or108, %10
  store i64 %add120, ptr %arrayidx28, align 8, !tbaa !10
  %add123 = add i64 %C.3108, %11
  store i64 %add123, ptr %arrayidx30, align 8, !tbaa !10
  %add126 = add i64 %D.3109, %12
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
  store i8 -128, ptr %arrayidx, align 1, !tbaa !17
  %cmp = icmp samesign ugt i32 %conv, 55
  %4 = zext nneg i32 %conv to i64
  %5 = getelementptr inbounds nuw i8, ptr %data, i64 %4
  %add.ptr = getelementptr inbounds nuw i8, ptr %5, i64 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = xor i32 %conv, 63
  %conv3 = zext nneg i32 %sub to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr, i8 0, i64 %conv3, i1 false)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.then
  %cp.012.i = phi ptr [ %data, %if.then ], [ %add.ptr.i, %for.body.i ]
  %i.011.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i ]
  %6 = load <4 x i8>, ptr %cp.012.i, align 1, !tbaa !17
  %7 = shufflevector <4 x i8> %6, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %7, ptr %cp.012.i, align 1, !tbaa !17
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %cp.012.i, i64 8
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %byte_reverse.exit, label %for.body.i, !llvm.loop !18

byte_reverse.exit:                                ; preds = %for.body.i
  tail call fastcc void @sha_transform(ptr noundef nonnull %sha_info)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %data, i8 0, i64 56, i1 false)
  br label %for.body.i18.preheader

if.else:                                          ; preds = %entry
  %sub10 = sub nuw nsw i32 55, %conv
  %conv11 = zext nneg i32 %sub10 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr, i8 0, i64 %conv11, i1 false)
  br label %for.body.i18.preheader

for.body.i18.preheader:                           ; preds = %if.else, %byte_reverse.exit
  br label %for.body.i18

for.body.i18:                                     ; preds = %for.body.i18.preheader, %for.body.i18
  %cp.012.i19 = phi ptr [ %add.ptr.i24, %for.body.i18 ], [ %data, %for.body.i18.preheader ]
  %i.011.i20 = phi i32 [ %inc.i25, %for.body.i18 ], [ 0, %for.body.i18.preheader ]
  %8 = load <4 x i8>, ptr %cp.012.i19, align 1, !tbaa !17
  %9 = shufflevector <4 x i8> %8, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %9, ptr %cp.012.i19, align 1, !tbaa !17
  %add.ptr.i24 = getelementptr inbounds nuw i8, ptr %cp.012.i19, i64 8
  %inc.i25 = add nuw nsw i32 %i.011.i20, 1
  %exitcond.not.i26 = icmp eq i32 %inc.i25, 8
  br i1 %exitcond.not.i26, label %byte_reverse.exit27, label %for.body.i18, !llvm.loop !18

byte_reverse.exit27:                              ; preds = %for.body.i18
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
  %W.i = alloca [80 x i64], align 16
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
  %call25 = call i64 @fread(ptr noundef nonnull %data, i64 noundef 1, i64 noundef 8192, ptr noundef %fin)
  %conv26 = trunc i64 %call25 to i32
  %cmp27 = icmp sgt i32 %conv26, 0
  br i1 %cmp27, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %count_hi.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 48
  %data.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 56
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %sha_update.exit
  %conv29 = phi i32 [ %conv26, %while.body.lr.ph ], [ %conv, %sha_update.exit ]
  %call28 = phi i64 [ %call25, %while.body.lr.ph ], [ %call, %sha_update.exit ]
  %0 = load i64, ptr %count_lo.i, align 8, !tbaa !14
  %conv.i = and i64 %call28, 2147483647
  %shl.i = shl nuw nsw i64 %conv.i, 3
  %1 = xor i64 %0, -1
  %cmp.i = icmp ugt i64 %shl.i, %1
  %2 = load i64, ptr %count_hi.i, align 8, !tbaa !16
  %inc.i = zext i1 %cmp.i to i64
  %add6.i = add i64 %0, %shl.i
  store i64 %add6.i, ptr %count_lo.i, align 8, !tbaa !14
  %shr.i = lshr i64 %conv.i, 29
  %3 = add i64 %2, %shr.i
  %add9.i = add i64 %3, %inc.i
  store i64 %add9.i, ptr %count_hi.i, align 8, !tbaa !16
  %cmp1016.i = icmp samesign ugt i32 %conv29, 63
  br i1 %cmp1016.i, label %while.body.i, label %sha_update.exit

while.body.i:                                     ; preds = %while.body, %sha_transform.exit
  %count.addr.018.i = phi i32 [ %sub.i, %sha_transform.exit ], [ %conv29, %while.body ]
  %buffer.addr.017.i = phi ptr [ %add.ptr.i, %sha_transform.exit ], [ %data, %while.body ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %data.i, ptr noundef nonnull align 1 dereferenceable(64) %buffer.addr.017.i, i64 64, i1 false)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %while.body.i
  %cp.012.i.i = phi ptr [ %data.i, %while.body.i ], [ %add.ptr.i.i, %for.body.i.i ]
  %i.011.i.i = phi i32 [ 0, %while.body.i ], [ %inc.i.i, %for.body.i.i ]
  %4 = load <4 x i8>, ptr %cp.012.i.i, align 1, !tbaa !17
  %5 = shufflevector <4 x i8> %4, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %5, ptr %cp.012.i.i, align 1, !tbaa !17
  %add.ptr.i.i = getelementptr inbounds nuw i8, ptr %cp.012.i.i, i64 8
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %byte_reverse.exit.i, label %for.body.i.i, !llvm.loop !18

byte_reverse.exit.i:                              ; preds = %for.body.i.i
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %W.i) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %W.i, ptr noundef nonnull align 8 dereferenceable(128) %data.i, i64 128, i1 false), !tbaa !10
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i, %byte_reverse.exit.i
  %indvars.iv.i = phi i64 [ 16, %byte_reverse.exit.i ], [ %indvars.iv.next.i, %for.body5.i ]
  %6 = add nsw i64 %indvars.iv.i, -3
  %arrayidx7.i = getelementptr inbounds [80 x i64], ptr %W.i, i64 0, i64 %6
  %7 = load i64, ptr %arrayidx7.i, align 8, !tbaa !10
  %8 = add nsw i64 %indvars.iv.i, -8
  %arrayidx10.i = getelementptr inbounds [80 x i64], ptr %W.i, i64 0, i64 %8
  %9 = load i64, ptr %arrayidx10.i, align 8, !tbaa !10
  %xor.i = xor i64 %9, %7
  %10 = add nsw i64 %indvars.iv.i, -14
  %arrayidx13.i = getelementptr inbounds [80 x i64], ptr %W.i, i64 0, i64 %10
  %11 = load i64, ptr %arrayidx13.i, align 8, !tbaa !10
  %xor14.i = xor i64 %xor.i, %11
  %12 = add nsw i64 %indvars.iv.i, -16
  %arrayidx17.i22 = getelementptr inbounds [80 x i64], ptr %W.i, i64 0, i64 %12
  %13 = load i64, ptr %arrayidx17.i22, align 8, !tbaa !10
  %xor18.i = xor i64 %xor14.i, %13
  %arrayidx20.i = getelementptr inbounds nuw [80 x i64], ptr %W.i, i64 0, i64 %indvars.iv.i
  store i64 %xor18.i, ptr %arrayidx20.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 80
  br i1 %exitcond.not.i, label %for.end23.i, label %for.body5.i, !llvm.loop !20

for.end23.i:                                      ; preds = %for.body5.i
  %14 = load i64, ptr %sha_info, align 8, !tbaa !10
  %15 = load i64, ptr %arrayidx2.i, align 8, !tbaa !10
  %16 = load i64, ptr %arrayidx4.i, align 8, !tbaa !10
  %17 = load i64, ptr %arrayidx6.i, align 8, !tbaa !10
  %18 = load i64, ptr %arrayidx8.i, align 8, !tbaa !10
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.body35.i, %for.end23.i
  %indvars.iv117.i = phi i64 [ 0, %for.end23.i ], [ %indvars.iv.next118.i, %for.body35.i ]
  %E.092.i = phi i64 [ %18, %for.end23.i ], [ %D.091.i, %for.body35.i ]
  %D.091.i = phi i64 [ %17, %for.end23.i ], [ %C.090.i, %for.body35.i ]
  %C.090.i = phi i64 [ %16, %for.end23.i ], [ %or45.i, %for.body35.i ]
  %B.089.i = phi i64 [ %15, %for.end23.i ], [ %A.088.i, %for.body35.i ]
  %A.088.i = phi i64 [ %14, %for.end23.i ], [ %add42.i, %for.body35.i ]
  %shl.i23 = shl i64 %A.088.i, 5
  %shr.i24 = lshr i64 %A.088.i, 27
  %or.i = or i64 %shl.i23, %shr.i24
  %and.i = and i64 %B.089.i, %C.090.i
  %not.i = xor i64 %B.089.i, -1
  %and36.i = and i64 %D.091.i, %not.i
  %or37.i = or i64 %and36.i, %and.i
  %arrayidx40.i = getelementptr inbounds nuw [80 x i64], ptr %W.i, i64 0, i64 %indvars.iv117.i
  %19 = load i64, ptr %arrayidx40.i, align 8, !tbaa !10
  %add.i = add i64 %E.092.i, 1518500249
  %add38.i = add i64 %add.i, %or37.i
  %add41.i = add i64 %add38.i, %19
  %add42.i = add i64 %add41.i, %or.i
  %shl43.i = shl i64 %B.089.i, 30
  %shr44.i = lshr i64 %B.089.i, 2
  %or45.i = or i64 %shl43.i, %shr44.i
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1
  %exitcond120.not.i = icmp eq i64 %indvars.iv.next118.i, 20
  br i1 %exitcond120.not.i, label %for.body51.i, label %for.body35.i, !llvm.loop !21

for.body51.i:                                     ; preds = %for.body35.i, %for.body51.i
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i, %for.body51.i ], [ 20, %for.body35.i ]
  %E.198.i = phi i64 [ %D.197.i, %for.body51.i ], [ %D.091.i, %for.body35.i ]
  %D.197.i = phi i64 [ %C.196.i, %for.body51.i ], [ %C.090.i, %for.body35.i ]
  %C.196.i = phi i64 [ %or65.i, %for.body51.i ], [ %or45.i, %for.body35.i ]
  %B.195.i = phi i64 [ %A.194.i, %for.body51.i ], [ %A.088.i, %for.body35.i ]
  %A.194.i = phi i64 [ %add62.i, %for.body51.i ], [ %add42.i, %for.body35.i ]
  %shl52.i = shl i64 %A.194.i, 5
  %shr53.i = lshr i64 %A.194.i, 27
  %or54.i = or i64 %shl52.i, %shr53.i
  %xor55.i = xor i64 %C.196.i, %D.197.i
  %xor56.i = xor i64 %xor55.i, %B.195.i
  %arrayidx60.i = getelementptr inbounds nuw [80 x i64], ptr %W.i, i64 0, i64 %indvars.iv121.i
  %20 = load i64, ptr %arrayidx60.i, align 8, !tbaa !10
  %add57.i = add i64 %E.198.i, 1859775393
  %add58.i = add i64 %add57.i, %xor56.i
  %add61.i = add i64 %add58.i, %20
  %add62.i = add i64 %add61.i, %or54.i
  %shl63.i = shl i64 %B.195.i, 30
  %shr64.i = lshr i64 %B.195.i, 2
  %or65.i = or i64 %shl63.i, %shr64.i
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1
  %exitcond124.not.i = icmp eq i64 %indvars.iv.next122.i, 40
  br i1 %exitcond124.not.i, label %for.body71.i, label %for.body51.i, !llvm.loop !22

for.body71.i:                                     ; preds = %for.body51.i, %for.body71.i
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i, %for.body71.i ], [ 40, %for.body51.i ]
  %E.2104.i = phi i64 [ %D.2103.i, %for.body71.i ], [ %D.197.i, %for.body51.i ]
  %D.2103.i = phi i64 [ %C.2102.i, %for.body71.i ], [ %C.196.i, %for.body51.i ]
  %C.2102.i = phi i64 [ %or88.i, %for.body71.i ], [ %or65.i, %for.body51.i ]
  %B.2101.i = phi i64 [ %A.2100.i, %for.body71.i ], [ %A.194.i, %for.body51.i ]
  %A.2100.i = phi i64 [ %add85.i, %for.body71.i ], [ %add62.i, %for.body51.i ]
  %shl72.i = shl i64 %A.2100.i, 5
  %shr73.i = lshr i64 %A.2100.i, 27
  %or74.i = or i64 %shl72.i, %shr73.i
  %and7684.i = or i64 %C.2102.i, %D.2103.i
  %or77.i = and i64 %and7684.i, %B.2101.i
  %and78.i = and i64 %C.2102.i, %D.2103.i
  %or79.i = or i64 %or77.i, %and78.i
  %arrayidx83.i = getelementptr inbounds nuw [80 x i64], ptr %W.i, i64 0, i64 %indvars.iv125.i
  %21 = load i64, ptr %arrayidx83.i, align 8, !tbaa !10
  %add80.i = add i64 %E.2104.i, 2400959708
  %add81.i = add i64 %add80.i, %or79.i
  %add84.i = add i64 %add81.i, %21
  %add85.i = add i64 %add84.i, %or74.i
  %shl86.i = shl i64 %B.2101.i, 30
  %shr87.i = lshr i64 %B.2101.i, 2
  %or88.i = or i64 %shl86.i, %shr87.i
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next126.i, 60
  br i1 %exitcond128.not.i, label %for.body94.i, label %for.body71.i, !llvm.loop !23

for.body94.i:                                     ; preds = %for.body71.i, %for.body94.i
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %for.body94.i ], [ 60, %for.body71.i ]
  %E.3110.i = phi i64 [ %D.3109.i, %for.body94.i ], [ %D.2103.i, %for.body71.i ]
  %D.3109.i = phi i64 [ %C.3108.i, %for.body94.i ], [ %C.2102.i, %for.body71.i ]
  %C.3108.i = phi i64 [ %or108.i, %for.body94.i ], [ %or88.i, %for.body71.i ]
  %B.3107.i = phi i64 [ %A.3106.i, %for.body94.i ], [ %A.2100.i, %for.body71.i ]
  %A.3106.i = phi i64 [ %add105.i, %for.body94.i ], [ %add85.i, %for.body71.i ]
  %shl95.i = shl i64 %A.3106.i, 5
  %shr96.i = lshr i64 %A.3106.i, 27
  %or97.i = or i64 %shl95.i, %shr96.i
  %xor98.i = xor i64 %C.3108.i, %D.3109.i
  %xor99.i = xor i64 %xor98.i, %B.3107.i
  %arrayidx103.i = getelementptr inbounds nuw [80 x i64], ptr %W.i, i64 0, i64 %indvars.iv129.i
  %22 = load i64, ptr %arrayidx103.i, align 8, !tbaa !10
  %add100.i = add i64 %E.3110.i, 3395469782
  %add101.i = add i64 %add100.i, %xor99.i
  %add104.i = add i64 %add101.i, %22
  %add105.i = add i64 %add104.i, %or97.i
  %shl106.i = shl i64 %B.3107.i, 30
  %shr107.i = lshr i64 %B.3107.i, 2
  %or108.i = or i64 %shl106.i, %shr107.i
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1
  %exitcond132.not.i = icmp eq i64 %indvars.iv.next130.i, 80
  br i1 %exitcond132.not.i, label %sha_transform.exit, label %for.body94.i, !llvm.loop !24

sha_transform.exit:                               ; preds = %for.body94.i
  %add114.i = add i64 %add105.i, %14
  store i64 %add114.i, ptr %sha_info, align 8, !tbaa !10
  %add117.i = add i64 %A.3106.i, %15
  store i64 %add117.i, ptr %arrayidx2.i, align 8, !tbaa !10
  %add120.i = add i64 %or108.i, %16
  store i64 %add120.i, ptr %arrayidx4.i, align 8, !tbaa !10
  %add123.i = add i64 %C.3108.i, %17
  store i64 %add123.i, ptr %arrayidx6.i, align 8, !tbaa !10
  %add126.i = add i64 %D.3109.i, %18
  store i64 %add126.i, ptr %arrayidx8.i, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %W.i) #11
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %buffer.addr.017.i, i64 64
  %sub.i = add nsw i32 %count.addr.018.i, -64
  %cmp10.i = icmp sgt i32 %count.addr.018.i, 127
  br i1 %cmp10.i, label %while.body.i, label %while.end.loopexit.i, !llvm.loop !19

while.end.loopexit.i:                             ; preds = %sha_transform.exit
  %.pre20.i = sext i32 %sub.i to i64
  br label %sha_update.exit

sha_update.exit:                                  ; preds = %while.body, %while.end.loopexit.i
  %conv16.pre-phi.i = phi i64 [ %.pre20.i, %while.end.loopexit.i ], [ %conv.i, %while.body ]
  %buffer.addr.0.lcssa.i = phi ptr [ %add.ptr.i, %while.end.loopexit.i ], [ %data, %while.body ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %data.i, ptr nonnull align 1 %buffer.addr.0.lcssa.i, i64 %conv16.pre-phi.i, i1 false)
  %call = call i64 @fread(ptr noundef nonnull %data, i64 noundef 1, i64 noundef 8192, ptr noundef %fin)
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !25

while.end:                                        ; preds = %sha_update.exit, %entry
  %23 = load i64, ptr %count_lo.i, align 8, !tbaa !14
  %count_hi.i5 = getelementptr inbounds nuw i8, ptr %sha_info, i64 48
  %24 = load i64, ptr %count_hi.i5, align 8, !tbaa !16
  %25 = trunc i64 %23 to i32
  %26 = lshr i32 %25, 3
  %conv.i6 = and i32 %26, 63
  %data.i7 = getelementptr inbounds nuw i8, ptr %sha_info, i64 56
  %idxprom.i = zext nneg i32 %conv.i6 to i64
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %data.i7, i64 %idxprom.i
  store i8 -128, ptr %arrayidx.i, align 1, !tbaa !17
  %cmp.i8 = icmp samesign ugt i32 %conv.i6, 55
  %add.ptr.i9 = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 1
  br i1 %cmp.i8, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.end
  %sub.i10 = xor i32 %conv.i6, 63
  %conv3.i = zext nneg i32 %sub.i10 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr.i9, i8 0, i64 %conv3.i, i1 false)
  br label %for.body.i.i11

for.body.i.i11:                                   ; preds = %for.body.i.i11, %if.then.i
  %cp.012.i.i12 = phi ptr [ %data.i7, %if.then.i ], [ %add.ptr.i.i17, %for.body.i.i11 ]
  %i.011.i.i13 = phi i32 [ 0, %if.then.i ], [ %inc.i.i18, %for.body.i.i11 ]
  %27 = load <4 x i8>, ptr %cp.012.i.i12, align 1, !tbaa !17
  %28 = shufflevector <4 x i8> %27, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %28, ptr %cp.012.i.i12, align 1, !tbaa !17
  %add.ptr.i.i17 = getelementptr inbounds nuw i8, ptr %cp.012.i.i12, i64 8
  %inc.i.i18 = add nuw nsw i32 %i.011.i.i13, 1
  %exitcond.not.i.i19 = icmp eq i32 %inc.i.i18, 8
  br i1 %exitcond.not.i.i19, label %byte_reverse.exit.i20, label %for.body.i.i11, !llvm.loop !18

byte_reverse.exit.i20:                            ; preds = %for.body.i.i11
  tail call fastcc void @sha_transform(ptr noundef nonnull %sha_info)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %data.i7, i8 0, i64 56, i1 false)
  br label %for.body.i18.i.preheader

if.else.i:                                        ; preds = %while.end
  %sub10.i = sub nuw nsw i32 55, %conv.i6
  %conv11.i = zext nneg i32 %sub10.i to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr.i9, i8 0, i64 %conv11.i, i1 false)
  br label %for.body.i18.i.preheader

for.body.i18.i.preheader:                         ; preds = %if.else.i, %byte_reverse.exit.i20
  br label %for.body.i18.i

for.body.i18.i:                                   ; preds = %for.body.i18.i.preheader, %for.body.i18.i
  %cp.012.i19.i = phi ptr [ %add.ptr.i24.i, %for.body.i18.i ], [ %data.i7, %for.body.i18.i.preheader ]
  %i.011.i20.i = phi i32 [ %inc.i25.i, %for.body.i18.i ], [ 0, %for.body.i18.i.preheader ]
  %29 = load <4 x i8>, ptr %cp.012.i19.i, align 1, !tbaa !17
  %30 = shufflevector <4 x i8> %29, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %30, ptr %cp.012.i19.i, align 1, !tbaa !17
  %add.ptr.i24.i = getelementptr inbounds nuw i8, ptr %cp.012.i19.i, i64 8
  %inc.i25.i = add nuw nsw i32 %i.011.i20.i, 1
  %exitcond.not.i26.i = icmp eq i32 %inc.i25.i, 8
  br i1 %exitcond.not.i26.i, label %sha_final.exit, label %for.body.i18.i, !llvm.loop !18

sha_final.exit:                                   ; preds = %for.body.i18.i
  %arrayidx15.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 168
  store i64 %24, ptr %arrayidx15.i, align 8, !tbaa !10
  %arrayidx17.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 176
  store i64 %23, ptr %arrayidx17.i, align 8, !tbaa !10
  tail call fastcc void @sha_transform(ptr noundef nonnull %sha_info)
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
  br i1 %cmp, label %if.then, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %dec12 = add nsw i32 %argc, -1
  %tobool7.not = icmp eq i32 %print, 0
  %arrayidx2.i7 = getelementptr inbounds nuw i8, ptr %sha_info, i64 8
  %arrayidx4.i8 = getelementptr inbounds nuw i8, ptr %sha_info, i64 16
  %arrayidx6.i9 = getelementptr inbounds nuw i8, ptr %sha_info, i64 24
  %arrayidx8.i10 = getelementptr inbounds nuw i8, ptr %sha_info, i64 32
  br i1 %tobool7.not, label %while.body.us, label %while.body

while.body.us:                                    ; preds = %while.body.lr.ph, %if.else6.us
  %dec15.us = phi i32 [ %dec.us, %if.else6.us ], [ %dec12, %while.body.lr.ph ]
  %argv.addr.014.us = phi ptr [ %incdec.ptr.us, %if.else6.us ], [ %argv, %while.body.lr.ph ]
  %incdec.ptr.us = getelementptr inbounds nuw i8, ptr %argv.addr.014.us, i64 8
  %0 = load ptr, ptr %incdec.ptr.us, align 8, !tbaa !26
  %call.us = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.7)
  %cmp3.us = icmp eq ptr %call.us, null
  br i1 %cmp3.us, label %if.then4, label %if.else6.us

if.else6.us:                                      ; preds = %while.body.us
  call void @sha_stream(ptr noundef nonnull %sha_info, ptr noundef nonnull %call.us)
  %call10.us = tail call i32 @fclose(ptr noundef nonnull %call.us)
  %dec.us = add nsw i32 %dec15.us, -1
  %tobool2.not.us = icmp eq i32 %dec.us, 0
  br i1 %tobool2.not.us, label %if.end12, label %while.body.us, !llvm.loop !28

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stdin, align 8, !tbaa !5
  call void @sha_stream(ptr noundef nonnull %sha_info, ptr noundef %1)
  %tobool.not = icmp eq i32 %print, 0
  br i1 %tobool.not, label %if.end12, label %if.then1

if.then1:                                         ; preds = %if.then
  %2 = load i64, ptr %sha_info, align 8, !tbaa !10
  %arrayidx2.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 8
  %3 = load i64, ptr %arrayidx2.i, align 8, !tbaa !10
  %arrayidx4.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 16
  %4 = load i64, ptr %arrayidx4.i, align 8, !tbaa !10
  %arrayidx6.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 24
  %5 = load i64, ptr %arrayidx6.i, align 8, !tbaa !10
  %arrayidx8.i = getelementptr inbounds nuw i8, ptr %sha_info, i64 32
  %6 = load i64, ptr %arrayidx8.i, align 8, !tbaa !10
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6)
  br label %if.end12

while.body:                                       ; preds = %while.body.lr.ph, %if.else6
  %dec15 = phi i32 [ %dec, %if.else6 ], [ %dec12, %while.body.lr.ph ]
  %argv.addr.014 = phi ptr [ %incdec.ptr, %if.else6 ], [ %argv, %while.body.lr.ph ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %argv.addr.014, i64 8
  %7 = load ptr, ptr %incdec.ptr, align 8, !tbaa !26
  %call = tail call noalias ptr @fopen(ptr noundef %7, ptr noundef nonnull @.str.7)
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %while.body, %while.body.us
  %.us-phi = phi ptr [ %incdec.ptr.us, %while.body.us ], [ %incdec.ptr, %while.body ]
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = load ptr, ptr %.us-phi, align 8, !tbaa !26
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.1.8, ptr noundef %9) #13
  tail call void @exit(i32 noundef 1) #14
  unreachable

if.else6:                                         ; preds = %while.body
  call void @sha_stream(ptr noundef nonnull %sha_info, ptr noundef nonnull %call)
  %10 = load i64, ptr %sha_info, align 8, !tbaa !10
  %11 = load i64, ptr %arrayidx2.i7, align 8, !tbaa !10
  %12 = load i64, ptr %arrayidx4.i8, align 8, !tbaa !10
  %13 = load i64, ptr %arrayidx6.i9, align 8, !tbaa !10
  %14 = load i64, ptr %arrayidx8.i10, align 8, !tbaa !10
  %call.i11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14)
  %call10 = tail call i32 @fclose(ptr noundef nonnull %call)
  %dec = add nsw i32 %dec15, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end12, label %while.body, !llvm.loop !28

if.end12:                                         ; preds = %if.else6, %if.else6.us, %if.then, %if.then1
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
!17 = !{!8, !8, i64 0}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 omnipotent char", !7, i64 0}
!28 = distinct !{!28, !13}
