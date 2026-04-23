; ModuleID = '<stdin>'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bits.1 = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
@main1.pBitCntFunc = internal unnamed_addr constant [7 x ptr] [ptr @bit_count, ptr @bitcount, ptr @ntbl_bitcnt, ptr @ntbl_bitcount, ptr @BW_btbl_bitcount, ptr @AR_btbl_bitcount, ptr @bit_shifter], align 16
@main1.text = internal unnamed_addr constant [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%-38s> Bits: %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.1.12 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2.13 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.3.14 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @alloc_bit_array(i64 noundef %bits) local_unnamed_addr #0 {
entry:
  %sub = add i64 %bits, 7
  %div1 = lshr i64 %sub, 3
  %call = tail call noalias ptr @calloc(i64 noundef %div1, i64 noundef 1) #19
  ret ptr %call
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @getbit(ptr noundef readonly captures(none) %set, i32 noundef %number) local_unnamed_addr #3 {
entry:
  %div = sdiv i32 %number, 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %set, i64 %idx.ext
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %rem3 = and i32 %number, 7
  %1 = lshr i32 %conv, %rem3
  %conv1 = and i32 %1, 1
  ret i32 %conv1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @setbit(ptr noundef captures(none) %set, i32 noundef %number, i32 noundef %value) local_unnamed_addr #4 {
entry:
  %div = sdiv i32 %number, 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %set, i64 %idx.ext
  %tobool.not = icmp eq i32 %value, 0
  %rem25 = and i32 %number, 7
  %shl3 = shl nuw nsw i32 1, %rem25
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %1 = trunc nuw i32 %shl3 to i8
  %2 = xor i8 %1, -1
  %conv5 = and i8 %0, %2
  %conv1 = or i8 %0, %1
  %storemerge = select i1 %tobool.not, i8 %conv5, i8 %conv1
  store i8 %storemerge, ptr %add.ptr, align 1, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @flipbit(ptr noundef captures(none) %set, i32 noundef %number) local_unnamed_addr #4 {
entry:
  %div = sdiv i32 %number, 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %set, i64 %idx.ext
  %rem3 = and i32 %number, 7
  %shl = shl nuw nsw i32 1, %rem3
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %1 = trunc nuw i32 %shl to i8
  %conv1 = xor i8 %0, %1
  store i8 %conv1, ptr %add.ptr, align 1, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @bit_count(i64 noundef %x) #5 {
entry:
  %tobool.not = icmp eq i64 %x, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry, %do.body
  %x.addr.0 = phi i64 [ %and, %do.body ], [ %x, %entry ]
  %n.1 = phi i32 [ %inc, %do.body ], [ 0, %entry ]
  %inc = add nuw nsw i32 %n.1, 1
  %sub = add nsw i64 %x.addr.0, -1
  %and = and i64 %sub, %x.addr.0
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.end, label %do.body, !llvm.loop !8

if.end:                                           ; preds = %do.body, %entry
  %n.0 = phi i32 [ 0, %entry ], [ %inc, %do.body ]
  ret i32 %n.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 59) i32 @bitcount(i64 noundef %i) #6 {
entry:
  %and = lshr i64 %i, 1
  %shr = and i64 %and, 1431655765
  %and1 = and i64 %i, 1431655765
  %add = add nuw nsw i64 %shr, %and1
  %and2 = lshr i64 %add, 2
  %shr3 = and i64 %and2, 858993459
  %and4 = and i64 %add, 858993459
  %add5 = add nuw nsw i64 %shr3, %and4
  %and6 = lshr i64 %add5, 4
  %shr7 = and i64 %and6, 117901063
  %and8 = and i64 %add5, 117901063
  %add9 = add nuw nsw i64 %shr7, %and8
  %and10 = lshr i64 %add9, 8
  %shr11 = and i64 %and10, 983055
  %and12 = and i64 %add9, 983055
  %add13 = add nuw nsw i64 %shr11, %and12
  %shr15 = lshr i64 %add13, 16
  %and16 = and i64 %add13, 31
  %add17 = add nuw nsw i64 %shr15, %and16
  %conv = trunc nuw nsw i64 %add17 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -1024, 1017) i32 @ntbl_bitcount(i64 noundef %x) #6 {
entry:
  %conv = and i64 %x, 15
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %conv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv1 = sext i8 %0 to i32
  %1 = lshr i64 %x, 4
  %conv3 = and i64 %1, 15
  %arrayidx5 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %conv3
  %2 = load i8, ptr %arrayidx5, align 1, !tbaa !5
  %conv6 = sext i8 %2 to i32
  %add = add nsw i32 %conv6, %conv1
  %3 = lshr i64 %x, 8
  %conv9 = and i64 %3, 15
  %arrayidx11 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %conv9
  %4 = load i8, ptr %arrayidx11, align 1, !tbaa !5
  %conv12 = sext i8 %4 to i32
  %add13 = add nsw i32 %add, %conv12
  %5 = lshr i64 %x, 12
  %conv16 = and i64 %5, 15
  %arrayidx18 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %conv16
  %6 = load i8, ptr %arrayidx18, align 1, !tbaa !5
  %conv19 = sext i8 %6 to i32
  %add20 = add nsw i32 %add13, %conv19
  %7 = lshr i64 %x, 16
  %conv23 = and i64 %7, 15
  %arrayidx25 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %conv23
  %8 = load i8, ptr %arrayidx25, align 1, !tbaa !5
  %conv26 = sext i8 %8 to i32
  %add27 = add nsw i32 %add20, %conv26
  %9 = lshr i64 %x, 20
  %conv30 = and i64 %9, 15
  %arrayidx32 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %conv30
  %10 = load i8, ptr %arrayidx32, align 1, !tbaa !5
  %conv33 = sext i8 %10 to i32
  %add34 = add nsw i32 %add27, %conv33
  %11 = lshr i64 %x, 24
  %conv37 = and i64 %11, 15
  %arrayidx39 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %conv37
  %12 = load i8, ptr %arrayidx39, align 1, !tbaa !5
  %conv40 = sext i8 %12 to i32
  %add41 = add nsw i32 %add34, %conv40
  %13 = lshr i64 %x, 28
  %idxprom45 = and i64 %13, 15
  %arrayidx46 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %idxprom45
  %14 = load i8, ptr %arrayidx46, align 1, !tbaa !5
  %conv47 = sext i8 %14 to i32
  %add48 = add nsw i32 %add41, %conv47
  ret i32 %add48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -512, 509) i32 @BW_btbl_bitcount(i64 noundef %x) #6 {
entry:
  %U.sroa.4.0.extract.shift = lshr i64 %x, 8
  %U.sroa.5.0.extract.shift = lshr i64 %x, 16
  %U.sroa.6.0.extract.shift = lshr i64 %x, 24
  %idxprom = and i64 %x, 255
  %arrayidx1 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx1, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %idxprom3 = and i64 %U.sroa.4.0.extract.shift, 255
  %arrayidx4 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %idxprom3
  %1 = load i8, ptr %arrayidx4, align 1, !tbaa !5
  %conv5 = sext i8 %1 to i32
  %add = add nsw i32 %conv5, %conv
  %idxprom7 = and i64 %U.sroa.6.0.extract.shift, 255
  %arrayidx8 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %idxprom7
  %2 = load i8, ptr %arrayidx8, align 1, !tbaa !5
  %conv9 = sext i8 %2 to i32
  %add10 = add nsw i32 %add, %conv9
  %idxprom12 = and i64 %U.sroa.5.0.extract.shift, 255
  %arrayidx13 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %idxprom12
  %3 = load i8, ptr %arrayidx13, align 1, !tbaa !5
  %conv14 = sext i8 %3 to i32
  %add15 = add nsw i32 %add10, %conv14
  ret i32 %add15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -512, 509) i32 @AR_btbl_bitcount(i64 noundef %x) #6 {
entry:
  %x.addr.sroa.2.0.extract.shift = lshr i64 %x, 8
  %x.addr.sroa.3.0.extract.shift = lshr i64 %x, 16
  %x.addr.sroa.4.0.extract.shift = lshr i64 %x, 24
  %idxprom = and i64 %x, 255
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %idxprom2 = and i64 %x.addr.sroa.2.0.extract.shift, 255
  %arrayidx3 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %idxprom2
  %1 = load i8, ptr %arrayidx3, align 1, !tbaa !5
  %conv4 = sext i8 %1 to i32
  %add = add nsw i32 %conv4, %conv
  %idxprom6 = and i64 %x.addr.sroa.3.0.extract.shift, 255
  %arrayidx7 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %idxprom6
  %2 = load i8, ptr %arrayidx7, align 1, !tbaa !5
  %conv8 = sext i8 %2 to i32
  %add9 = add nsw i32 %add, %conv8
  %idxprom10 = and i64 %x.addr.sroa.4.0.extract.shift, 255
  %arrayidx11 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %idxprom10
  %3 = load i8, ptr %arrayidx11, align 1, !tbaa !5
  %conv12 = sext i8 %3 to i32
  %add13 = add nsw i32 %add9, %conv12
  ret i32 %add13
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @ntbl_bitcnt(i64 noundef %x) #5 {
entry:
  %conv4 = and i64 %x, 15
  %arrayidx5 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %conv4
  %0 = load i8, ptr %arrayidx5, align 1, !tbaa !5
  %conv16 = sext i8 %0 to i32
  %cmp.not7 = icmp ult i64 %x, 16
  br i1 %cmp.not7, label %if.end, label %if.then

if.then:                                          ; preds = %entry, %if.then
  %conv110 = phi i32 [ %conv1, %if.then ], [ %conv16, %entry ]
  %x.tr9 = phi i64 [ %shr, %if.then ], [ %x, %entry ]
  %accumulator.tr8 = phi i32 [ %add, %if.then ], [ 0, %entry ]
  %shr = ashr i64 %x.tr9, 4
  %add = add nsw i32 %conv110, %accumulator.tr8
  %conv = and i64 %shr, 15
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %conv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv1 = sext i8 %1 to i32
  %cmp.not = icmp ult i64 %shr, 16
  br i1 %cmp.not, label %if.end, label %if.then

if.end:                                           ; preds = %if.then, %entry
  %accumulator.tr.lcssa = phi i32 [ 0, %entry ], [ %add, %if.then ]
  %conv1.lcssa = phi i32 [ %conv16, %entry ], [ %conv1, %if.then ]
  %accumulator.ret.tr = add nsw i32 %conv1.lcssa, %accumulator.tr.lcssa
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @btbl_bitcnt(i64 noundef %x) local_unnamed_addr #5 {
entry:
  %conv16 = and i64 %x, 255
  %arrayidx117 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %conv16
  %0 = load i8, ptr %arrayidx117, align 1, !tbaa !5
  %conv218 = sext i8 %0 to i32
  %cmp.not19 = icmp ult i64 %x, 256
  br i1 %cmp.not19, label %if.end, label %if.then

if.then:                                          ; preds = %entry, %if.then
  %conv222 = phi i32 [ %conv2, %if.then ], [ %conv218, %entry ]
  %x.tr21 = phi i64 [ %shr, %if.then ], [ %x, %entry ]
  %accumulator.tr20 = phi i32 [ %add, %if.then ], [ 0, %entry ]
  %shr = ashr i64 %x.tr21, 8
  %add = add nsw i32 %conv222, %accumulator.tr20
  %conv = and i64 %shr, 255
  %arrayidx1 = getelementptr inbounds nuw [256 x i8], ptr @bits.1, i64 0, i64 %conv
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !5
  %conv2 = sext i8 %1 to i32
  %cmp.not = icmp ult i64 %shr, 256
  br i1 %cmp.not, label %if.end, label %if.then

if.end:                                           ; preds = %if.then, %entry
  %accumulator.tr.lcssa = phi i32 [ 0, %entry ], [ %add, %if.then ]
  %conv2.lcssa = phi i32 [ %conv218, %entry ], [ %conv2, %if.then ]
  %accumulator.ret.tr = add nsw i32 %conv2.lcssa, %accumulator.tr.lcssa
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main1(i32 noundef %argc, ptr noundef readonly captures(none) %argv, i32 noundef %print) local_unnamed_addr #7 {
entry:
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !10
  %1 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 28, i64 1, ptr %0) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %argv, i64 8
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !13
  %call.i = tail call i64 @strtol(ptr noundef nonnull captures(none) %2, ptr noundef null, i32 noundef 10) #22
  %tobool.not = icmp eq i32 %print, 0
  br i1 %tobool.not, label %if.end4, label %if.end4.thread

if.end4:                                          ; preds = %if.end
  %sext = shl i64 %call.i, 32
  %conv = ashr exact i64 %sext, 32
  %cmp78 = icmp sgt i64 %conv, 0
  br i1 %cmp78, label %for.cond6.preheader.us.us, label %for.end22

if.end4.thread:                                   ; preds = %if.end
  %call3 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8)
  %sext32 = shl i64 %call.i, 32
  %conv33 = ashr exact i64 %sext32, 32
  %cmp7834 = icmp sgt i64 %conv33, 0
  br i1 %cmp7834, label %for.cond6.preheader.us, label %for.cond6.preheader

for.cond6.preheader.us.us:                        ; preds = %if.end4, %for.cond6.for.end_crit_edge.us.us
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.cond6.for.end_crit_edge.us.us ], [ 0, %if.end4 ]
  %arrayidx10.us.us = getelementptr inbounds nuw [7 x ptr], ptr @main1.pBitCntFunc, i64 0, i64 %indvars.iv28
  %3 = load ptr, ptr %arrayidx10.us.us, align 8, !tbaa !15
  br label %for.body9.us.us

for.body9.us.us:                                  ; preds = %for.body9.us.us, %for.cond6.preheader.us.us
  %seed.011.us.us = phi i64 [ 1, %for.cond6.preheader.us.us ], [ %add13.us.us, %for.body9.us.us ]
  %j.09.us.us = phi i64 [ 0, %for.cond6.preheader.us.us ], [ %inc.us.us, %for.body9.us.us ]
  %call11.us.us = tail call i32 %3(i64 noundef %seed.011.us.us) #22
  %inc.us.us = add nuw nsw i64 %j.09.us.us, 1
  %add13.us.us = add nuw nsw i64 %seed.011.us.us, 13
  %exitcond27.not = icmp eq i64 %inc.us.us, %conv
  br i1 %exitcond27.not, label %for.cond6.for.end_crit_edge.us.us, label %for.body9.us.us, !llvm.loop !16

for.cond6.for.end_crit_edge.us.us:                ; preds = %for.body9.us.us
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond31.not = icmp eq i64 %indvars.iv.next29, 7
  br i1 %exitcond31.not, label %for.end22, label %for.cond6.preheader.us.us, !llvm.loop !17

for.cond6.preheader.us:                           ; preds = %if.end4.thread, %for.cond6.for.end_crit_edge.us
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.cond6.for.end_crit_edge.us ], [ 0, %if.end4.thread ]
  %arrayidx10.us = getelementptr inbounds nuw [7 x ptr], ptr @main1.pBitCntFunc, i64 0, i64 %indvars.iv23
  %4 = load ptr, ptr %arrayidx10.us, align 8, !tbaa !15
  br label %for.body9.us

for.body9.us:                                     ; preds = %for.cond6.preheader.us, %for.body9.us
  %seed.011.us = phi i64 [ 1, %for.cond6.preheader.us ], [ %add13.us, %for.body9.us ]
  %n.010.us = phi i64 [ 0, %for.cond6.preheader.us ], [ %add.us, %for.body9.us ]
  %j.09.us = phi i64 [ 0, %for.cond6.preheader.us ], [ %inc.us, %for.body9.us ]
  %call11.us = tail call i32 %4(i64 noundef %seed.011.us) #22
  %conv12.us = sext i32 %call11.us to i64
  %add.us = add nsw i64 %n.010.us, %conv12.us
  %inc.us = add nuw nsw i64 %j.09.us, 1
  %add13.us = add nuw nsw i64 %seed.011.us, 13
  %exitcond22.not = icmp eq i64 %inc.us, %conv33
  br i1 %exitcond22.not, label %for.cond6.for.end_crit_edge.us, label %for.body9.us, !llvm.loop !16

for.cond6.for.end_crit_edge.us:                   ; preds = %for.body9.us
  %arrayidx17.us = getelementptr inbounds nuw [7 x ptr], ptr @main1.text, i64 0, i64 %indvars.iv23
  %5 = load ptr, ptr %arrayidx17.us, align 8, !tbaa !13
  %call18.us = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %5, i64 noundef %add.us)
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, 7
  br i1 %exitcond26.not, label %for.end22, label %for.cond6.preheader.us, !llvm.loop !17

for.cond6.preheader:                              ; preds = %if.end4.thread, %for.cond6.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond6.preheader ], [ 0, %if.end4.thread ]
  %arrayidx17 = getelementptr inbounds nuw [7 x ptr], ptr @main1.text, i64 0, i64 %indvars.iv
  %6 = load ptr, ptr %arrayidx17, align 8, !tbaa !13
  %call18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %6, i64 noundef 0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %for.end22, label %for.cond6.preheader, !llvm.loop !17

for.end22:                                        ; preds = %for.cond6.preheader, %for.cond6.for.end_crit_edge.us, %for.cond6.for.end_crit_edge.us.us, %if.end4
  ret i32 0
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define internal i32 @bit_shifter(i64 noundef %x) #5 {
entry:
  %tobool5.not = icmp eq i64 %x, 0
  br i1 %tobool5.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %n.08 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %i.07 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %x.addr.06 = phi i64 [ %shr, %for.body ], [ %x, %entry ]
  %0 = trunc i64 %x.addr.06 to i32
  %conv2 = and i32 %0, 1
  %add = add nuw nsw i32 %n.08, %conv2
  %inc = add nuw nsw i32 %i.07, 1
  %shr = ashr i64 %x.addr.06, 1
  %tobool = icmp ugt i64 %x.addr.06, 1
  %cmp = icmp samesign ult i32 %i.07, 63
  %1 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %1, label %for.body, label %for.end, !llvm.loop !18

for.end:                                          ; preds = %for.body, %entry
  %n.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  ret i32 %n.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @bfopen(ptr noundef readonly captures(none) %name, ptr noundef readonly captures(none) %mode) local_unnamed_addr #7 {
entry:
  %call = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @fopen(ptr noundef %name, ptr noundef %mode)
  store ptr %call1, ptr %call, align 8, !tbaa !19
  %cmp3 = icmp eq ptr %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %call) #22
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rcnt = getelementptr inbounds nuw i8, ptr %call, i64 9
  store i8 0, ptr %rcnt, align 1, !tbaa !21
  %wcnt = getelementptr inbounds nuw i8, ptr %call, i64 11
  store i8 0, ptr %wcnt, align 1, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5, %if.then4
  %retval.0 = phi ptr [ null, %if.then4 ], [ %call, %if.end5 ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @bfread(ptr noundef captures(none) %bf) local_unnamed_addr #13 {
entry:
  %rcnt = getelementptr inbounds nuw i8, ptr %bf, i64 9
  %0 = load i8, ptr %rcnt, align 1, !tbaa !21
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %rbuf5.phi.trans.insert = getelementptr inbounds nuw i8, ptr %bf, i64 8
  %.pre = load i8, ptr %rbuf5.phi.trans.insert, align 8, !tbaa !23
  %1 = add i8 %0, -1
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bf, align 8, !tbaa !19
  %call = tail call i32 @fgetc(ptr noundef %2)
  %conv2 = trunc i32 %call to i8
  %rbuf = getelementptr inbounds nuw i8, ptr %bf, i64 8
  store i8 %conv2, ptr %rbuf, align 8, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %3 = phi i8 [ %conv2, %if.then ], [ %.pre, %entry.if.end_crit_edge ]
  %dec = phi i8 [ 7, %if.then ], [ %1, %entry.if.end_crit_edge ]
  store i8 %dec, ptr %rcnt, align 1, !tbaa !21
  %conv6 = sext i8 %3 to i32
  %conv87 = zext nneg i8 %dec to i32
  %4 = lshr i32 %conv6, %conv87
  %conv10 = and i32 %4, 1
  ret i32 %conv10
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local void @bfwrite(i32 noundef %bit, ptr noundef captures(none) %bf) local_unnamed_addr #13 {
entry:
  %wcnt = getelementptr inbounds nuw i8, ptr %bf, i64 11
  %0 = load i8, ptr %wcnt, align 1, !tbaa !22
  %cmp = icmp eq i8 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %wbuf = getelementptr inbounds nuw i8, ptr %bf, i64 10
  %1 = load i8, ptr %wbuf, align 2, !tbaa !24
  %conv2 = sext i8 %1 to i32
  %2 = load ptr, ptr %bf, align 8, !tbaa !19
  %call = tail call i32 @fputc(i32 noundef %conv2, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = phi i8 [ 0, %if.then ], [ %0, %entry ]
  %inc = add i8 %3, 1
  store i8 %inc, ptr %wcnt, align 1, !tbaa !22
  %wbuf5 = getelementptr inbounds nuw i8, ptr %bf, i64 10
  %4 = load i8, ptr %wbuf5, align 2, !tbaa !24
  %shl = shl i8 %4, 1
  %5 = trunc i32 %bit to i8
  %6 = and i8 %5, 1
  %conv10 = or disjoint i8 %shl, %6
  store i8 %conv10, ptr %wbuf5, align 2, !tbaa !24
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @bfclose(ptr noundef captures(none) %bf) local_unnamed_addr #7 {
entry:
  %0 = load ptr, ptr %bf, align 8, !tbaa !19
  %call = tail call i32 @fclose(ptr noundef %0)
  tail call void @free(ptr noundef %bf) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @bitstring(ptr noundef writeonly captures(none) %str, i64 noundef %byze, i32 noundef %biz, i32 noundef %strwid) local_unnamed_addr #14 {
entry:
  %shr = ashr i32 %biz, 2
  %0 = and i32 %biz, 3
  %tobool.not = icmp eq i32 %0, 0
  %cond.neg.neg20 = zext i1 %tobool.not to i32
  %1 = add i32 %shr, %biz
  %sub.neg = sub i32 %strwid, %1
  %sub1 = add i32 %sub.neg, %cond.neg.neg20
  %cmp12 = icmp sgt i32 %sub1, 0
  br i1 %cmp12, label %for.body.preheader, label %while.cond.preheader

for.body.preheader:                               ; preds = %entry
  %2 = zext nneg i32 %sub1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %str, i8 32, i64 %2, i1 false), !tbaa !5
  %3 = add i32 %strwid, %cond.neg.neg20
  %4 = xor i32 %1, -1
  %5 = add i32 %3, %4
  %6 = zext i32 %5 to i64
  %7 = getelementptr i8, ptr %str, i64 %6
  %scevgep = getelementptr i8, ptr %7, i64 1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body.preheader, %entry
  %str.addr.0.lcssa = phi ptr [ %str, %entry ], [ %scevgep, %for.body.preheader ]
  %cmp216 = icmp sgt i32 %biz, 0
  br i1 %cmp216, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %8 = zext nneg i32 %biz to i64
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end
  %indvars.iv = phi i64 [ %8, %while.body.preheader ], [ %indvars.iv.next, %if.end ]
  %str.addr.117 = phi ptr [ %str.addr.0.lcssa, %while.body.preheader ], [ %str.addr.2, %if.end ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %shr311 = lshr i64 %byze, %indvars.iv.next
  %9 = trunc i64 %shr311 to i8
  %10 = and i8 %9, 1
  %conv = or disjoint i8 %10, 48
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %str.addr.117, i64 1
  store i8 %conv, ptr %str.addr.117, align 1, !tbaa !5
  %rem622 = and i64 %indvars.iv.next, 3
  %tobool7 = icmp eq i64 %rem622, 0
  %tobool8 = icmp ne i64 %indvars.iv.next, 0
  %or.cond = and i1 %tobool8, %tobool7
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %incdec.ptr9 = getelementptr inbounds nuw i8, ptr %str.addr.117, i64 2
  store i8 32, ptr %incdec.ptr5, align 1, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %str.addr.2 = phi ptr [ %incdec.ptr9, %if.then ], [ %incdec.ptr5, %while.body ]
  %cmp2 = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %cmp2, label %while.body, label %while.end, !llvm.loop !25

while.end:                                        ; preds = %if.end, %while.cond.preheader
  %str.addr.1.lcssa = phi ptr [ %str.addr.0.lcssa, %while.cond.preheader ], [ %str.addr.2, %if.end ]
  store i8 0, ptr %str.addr.1.lcssa, align 1, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @bstr_i(ptr noundef readonly captures(address_is_null) %cptr) local_unnamed_addr #15 {
entry:
  %tobool.not7 = icmp eq ptr %cptr, null
  br i1 %tobool.not7, label %while.end, label %land.lhs.true.preheader

land.lhs.true.preheader:                          ; preds = %entry
  %0 = load i8, ptr %cptr, align 1, !tbaa !5
  %tobool1.not13 = icmp eq i8 %0, 0
  br i1 %tobool1.not13, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.preheader, %while.body
  %1 = phi i8 [ %6, %while.body ], [ %0, %land.lhs.true.preheader ]
  %cptr.addr.0815 = phi ptr [ %incdec.ptr, %while.body ], [ %cptr, %land.lhs.true.preheader ]
  %j.0914 = phi i32 [ %or, %while.body ], [ 0, %land.lhs.true.preheader ]
  %2 = zext nneg i8 %1 to i64
  %memchr.bounds = icmp ugt i8 %1, 63
  %3 = shl nuw i64 1, %2
  %4 = and i64 %3, 844424930131969
  %memchr.bits = icmp eq i64 %4, 0
  %memchr6.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr6.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %cptr.addr.0815, i64 1
  %shl = shl i32 %j.0914, 1
  %5 = and i8 %1, 1
  %and = zext nneg i8 %5 to i32
  %or = or disjoint i32 %shl, %and
  %6 = load i8, ptr %incdec.ptr, align 1, !tbaa !5
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %while.end, label %land.rhs

while.end:                                        ; preds = %while.body, %land.rhs, %land.lhs.true.preheader, %entry
  %j.0.lcssa = phi i32 [ 0, %entry ], [ 0, %land.lhs.true.preheader ], [ %j.0914, %land.rhs ], [ %or, %while.body ]
  ret i32 %j.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #7 {
entry:
  %loop_wrap2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %loop_wrap2) #22
  %call = tail call noalias ptr @fopen(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1.12)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !10
  %1 = tail call i64 @fwrite(ptr nonnull @.str.2.13, i64 28, i64 1, ptr %0) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.3.14, ptr noundef nonnull %loop_wrap2) #22
  %call3 = call i32 @fclose(ptr noundef nonnull %call)
  %2 = load i64, ptr %loop_wrap2, align 8, !tbaa !26
  %cmp44 = icmp sgt i64 %2, 0
  br i1 %cmp44, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end, %for.body
  %3 = phi i64 [ %4, %for.body ], [ %2, %if.end ]
  %loop_wrap1.05 = phi i64 [ %add, %for.body ], [ 0, %if.end ]
  %add = add nuw nsw i64 %loop_wrap1.05, 1
  %cmp5 = icmp eq i64 %add, %3
  %conv = zext i1 %cmp5 to i32
  %call6 = call i32 @main1(i32 noundef %argc, ptr noundef %argv, i32 noundef %conv)
  %4 = load i64, ptr %loop_wrap2, align 8, !tbaa !26
  %cmp4 = icmp slt i64 %add, %4
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !28

cleanup:                                          ; preds = %for.body, %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loop_wrap2) #22
  ret i32 %retval.0
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

attributes #0 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { cold }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!12, !12, i64 0}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = !{!20, !11, i64 0}
!20 = !{!"", !11, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11}
!21 = !{!20, !6, i64 9}
!22 = !{!20, !6, i64 11}
!23 = !{!20, !6, i64 8}
!24 = !{!20, !6, i64 10}
!25 = distinct !{!25, !9}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !6, i64 0}
!28 = distinct !{!28, !9}
