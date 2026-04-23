; ModuleID = '<stdin>'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adpcm_state = type { i16, i8 }

@stepsizeTable = internal unnamed_addr constant [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@indexTable = internal unnamed_addr constant [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16
@.str = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@state = dso_local local_unnamed_addr global %struct.adpcm_state zeroinitializer, align 4
@sbuf = dso_local global [1000 x i16] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@abuf = dso_local global [500 x i8] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @adpcm_coder(ptr noundef readonly captures(none) %indata, ptr noundef writeonly captures(none) %outdata, i32 noundef %len, ptr noundef captures(none) %state) local_unnamed_addr #0 {
entry:
  %0 = load i16, ptr %state, align 2, !tbaa !5
  %index1 = getelementptr inbounds nuw i8, ptr %state, i64 2
  %1 = load i8, ptr %index1, align 2, !tbaa !10
  %cmp48 = icmp sgt i32 %len, 0
  br i1 %cmp48, label %for.body.preheader, label %if.end68

for.body.preheader:                               ; preds = %entry
  %conv2 = sext i8 %1 to i32
  %conv = sext i16 %0 to i32
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !11
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end62
  %bufferstep.056 = phi i1 [ %7, %if.end62 ], [ false, %for.body.preheader ]
  %outputbuffer.055 = phi i32 [ %outputbuffer.1, %if.end62 ], [ 0, %for.body.preheader ]
  %index.054 = phi i32 [ %spec.store.select2, %if.end62 ], [ %conv2, %for.body.preheader ]
  %valpred.053 = phi i32 [ %valpred.2, %if.end62 ], [ %conv, %for.body.preheader ]
  %step.052 = phi i32 [ %6, %if.end62 ], [ %2, %for.body.preheader ]
  %len.addr.051 = phi i32 [ %dec, %if.end62 ], [ %len, %for.body.preheader ]
  %inp.050 = phi ptr [ %incdec.ptr, %if.end62 ], [ %indata, %for.body.preheader ]
  %outp.049 = phi ptr [ %outp.1, %if.end62 ], [ %outdata, %for.body.preheader ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %inp.050, i64 2
  %3 = load i16, ptr %inp.050, align 2, !tbaa !13
  %conv4 = sext i16 %3 to i32
  %sub = sub nsw i32 %conv4, %valpred.053
  %cmp5 = icmp slt i32 %sub, 0
  %cond = select i1 %cmp5, i32 8, i32 0
  %spec.select = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %shr = ashr i32 %step.052, 3
  %cmp8.not = icmp slt i32 %spec.select, %step.052
  %delta.0 = select i1 %cmp8.not, i32 0, i32 4
  %sub11 = select i1 %cmp8.not, i32 0, i32 %step.052
  %diff.1 = sub nsw i32 %spec.select, %sub11
  %vpdiff.0 = add nsw i32 %sub11, %shr
  %shr13 = ashr i32 %step.052, 1
  %cmp14.not = icmp slt i32 %diff.1, %shr13
  %or = or disjoint i32 %delta.0, 2
  %delta.1 = select i1 %cmp14.not, i32 %delta.0, i32 %or
  %sub17 = select i1 %cmp14.not, i32 0, i32 %shr13
  %diff.2 = sub nsw i32 %diff.1, %sub17
  %vpdiff.1 = add nsw i32 %vpdiff.0, %sub17
  %shr20 = ashr i32 %step.052, 2
  %cmp21.not = icmp sge i32 %diff.2, %shr20
  %or24 = zext i1 %cmp21.not to i32
  %add25 = select i1 %cmp21.not, i32 %shr20, i32 0
  %vpdiff.2 = add nsw i32 %vpdiff.1, %add25
  %4 = sub i32 0, %vpdiff.2
  %valpred.1.p = select i1 %cmp5, i32 %4, i32 %vpdiff.2
  %valpred.1 = add i32 %valpred.1.p, %valpred.053
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %valpred.1, i32 -32768)
  %valpred.2 = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 32767)
  %delta.2 = or disjoint i32 %delta.1, %cond
  %or41 = or disjoint i32 %delta.2, %or24
  %idxprom42 = zext nneg i32 %or41 to i64
  %arrayidx43 = getelementptr inbounds nuw [16 x i32], ptr @indexTable, i64 0, i64 %idxprom42
  %5 = load i32, ptr %arrayidx43, align 4, !tbaa !11
  %add44 = add nsw i32 %5, %index.054
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %add44, i32 0)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select1, i32 88)
  %idxprom53 = zext nneg i32 %spec.store.select2 to i64
  %arrayidx54 = getelementptr inbounds nuw [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom53
  %6 = load i32, ptr %arrayidx54, align 4, !tbaa !11
  br i1 %bufferstep.056, label %if.else57, label %if.then56

if.then56:                                        ; preds = %for.body
  %shl = shl nuw nsw i32 %or41, 4
  %and = and i32 %shl, 240
  br label %if.end62

if.else57:                                        ; preds = %for.body
  %or59 = or disjoint i32 %or41, %outputbuffer.055
  %conv60 = trunc nuw i32 %or59 to i8
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %outp.049, i64 1
  store i8 %conv60, ptr %outp.049, align 1, !tbaa !14
  br label %if.end62

if.end62:                                         ; preds = %if.else57, %if.then56
  %outp.1 = phi ptr [ %outp.049, %if.then56 ], [ %incdec.ptr61, %if.else57 ]
  %outputbuffer.1 = phi i32 [ %and, %if.then56 ], [ %outputbuffer.055, %if.else57 ]
  %dec = add nsw i32 %len.addr.051, -1
  %7 = xor i1 %bufferstep.056, true
  %cmp = icmp sgt i32 %len.addr.051, 1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !15

for.end:                                          ; preds = %if.end62
  %8 = trunc i32 %len to i1
  %9 = trunc nsw i32 %valpred.2 to i16
  %10 = trunc nuw nsw i32 %spec.store.select2 to i8
  br i1 %8, label %if.then65, label %if.end68

if.then65:                                        ; preds = %for.end
  %11 = trunc nuw i32 %outputbuffer.1 to i8
  store i8 %11, ptr %outp.1, align 1, !tbaa !14
  br label %if.end68

if.end68:                                         ; preds = %entry, %if.then65, %for.end
  %index.0.lcssa67 = phi i8 [ %10, %if.then65 ], [ %10, %for.end ], [ %1, %entry ]
  %valpred.0.lcssa66 = phi i16 [ %9, %if.then65 ], [ %9, %for.end ], [ %0, %entry ]
  store i16 %valpred.0.lcssa66, ptr %state, align 2, !tbaa !5
  store i8 %index.0.lcssa67, ptr %index1, align 2, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @adpcm_decoder(ptr noundef readonly captures(none) %indata, ptr noundef writeonly captures(none) %outdata, i32 noundef %len, ptr noundef captures(none) %state) local_unnamed_addr #0 {
entry:
  %0 = load i16, ptr %state, align 2, !tbaa !5
  %index1 = getelementptr inbounds nuw i8, ptr %state, i64 2
  %1 = load i8, ptr %index1, align 2, !tbaa !10
  %cmp31 = icmp sgt i32 %len, 0
  br i1 %cmp31, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %conv2 = sext i8 %1 to i32
  %conv = sext i16 %0 to i32
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !11
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end
  %bufferstep.039 = phi i1 [ %7, %if.end ], [ true, %for.body.preheader ]
  %inputbuffer.038 = phi i32 [ %inputbuffer.1, %if.end ], [ 0, %for.body.preheader ]
  %index.037 = phi i32 [ %spec.store.select2, %if.end ], [ %conv2, %for.body.preheader ]
  %valpred.036 = phi i32 [ %valpred.2, %if.end ], [ %conv, %for.body.preheader ]
  %step.035 = phi i32 [ %6, %if.end ], [ %2, %for.body.preheader ]
  %len.addr.034 = phi i32 [ %dec, %if.end ], [ %len, %for.body.preheader ]
  %outp.033 = phi ptr [ %incdec.ptr54, %if.end ], [ %outdata, %for.body.preheader ]
  %inp.032 = phi ptr [ %inp.1, %if.end ], [ %indata, %for.body.preheader ]
  br i1 %bufferstep.039, label %if.else, label %if.end

if.else:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %inp.032, i64 1
  %3 = load i8, ptr %inp.032, align 1, !tbaa !14
  %conv441 = zext i8 %3 to i32
  %shr = lshr i32 %conv441, 4
  br label %if.end

if.end:                                           ; preds = %for.body, %if.else
  %inp.1 = phi ptr [ %incdec.ptr, %if.else ], [ %inp.032, %for.body ]
  %delta.0.in = phi i32 [ %shr, %if.else ], [ %inputbuffer.038, %for.body ]
  %inputbuffer.1 = phi i32 [ %conv441, %if.else ], [ %inputbuffer.038, %for.body ]
  %delta.0 = and i32 %delta.0.in, 15
  %idxprom7 = zext nneg i32 %delta.0 to i64
  %arrayidx8 = getelementptr inbounds nuw [16 x i32], ptr @indexTable, i64 0, i64 %idxprom7
  %4 = load i32, ptr %arrayidx8, align 4, !tbaa !11
  %add = add nsw i32 %4, %index.037
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %add, i32 0)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 88)
  %and17 = and i32 %delta.0.in, 8
  %shr19 = ashr i32 %step.035, 3
  %and20 = and i32 %delta.0.in, 4
  %tobool21.not = icmp eq i32 %and20, 0
  %add23 = select i1 %tobool21.not, i32 0, i32 %step.035
  %spec.select = add nsw i32 %add23, %shr19
  %and25 = and i32 %delta.0.in, 2
  %tobool26.not = icmp eq i32 %and25, 0
  %shr28 = ashr i32 %step.035, 1
  %add29 = select i1 %tobool26.not, i32 0, i32 %shr28
  %vpdiff.1 = add nsw i32 %spec.select, %add29
  %and31 = and i32 %delta.0.in, 1
  %tobool32.not = icmp eq i32 %and31, 0
  %shr34 = ashr i32 %step.035, 2
  %add35 = select i1 %tobool32.not, i32 0, i32 %shr34
  %vpdiff.2 = add nsw i32 %vpdiff.1, %add35
  %tobool37.not = icmp eq i32 %and17, 0
  %5 = sub i32 0, %vpdiff.2
  %valpred.1.p = select i1 %tobool37.not, i32 %vpdiff.2, i32 %5
  %valpred.1 = add i32 %valpred.1.p, %valpred.036
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %valpred.1, i32 -32768)
  %valpred.2 = tail call i32 @llvm.smin.i32(i32 %spec.store.select1, i32 32767)
  %idxprom51 = zext nneg i32 %spec.store.select2 to i64
  %arrayidx52 = getelementptr inbounds nuw [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom51
  %6 = load i32, ptr %arrayidx52, align 4, !tbaa !11
  %conv53 = trunc nsw i32 %valpred.2 to i16
  %incdec.ptr54 = getelementptr inbounds nuw i8, ptr %outp.033, i64 2
  store i16 %conv53, ptr %outp.033, align 2, !tbaa !13
  %dec = add nsw i32 %len.addr.034, -1
  %7 = xor i1 %bufferstep.039, true
  %cmp = icmp sgt i32 %len.addr.034, 1
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !17

for.end.loopexit:                                 ; preds = %if.end
  %8 = trunc nuw nsw i32 %spec.store.select2 to i8
  br label %for.end

for.end:                                          ; preds = %entry, %for.end.loopexit
  %conv55.pre-phi = phi i16 [ %conv53, %for.end.loopexit ], [ %0, %entry ]
  %index.0.lcssa = phi i8 [ %8, %for.end.loopexit ], [ %1, %entry ]
  store i16 %conv55.pre-phi, ptr %state, align 2, !tbaa !5
  store i8 %index.0.lcssa, ptr %index1, align 2, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %loop_wrap2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %loop_wrap2) #10
  %call = tail call noalias ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !18
  %1 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %0) #11
  tail call void @exit(i32 noundef 1) #12
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.3, ptr noundef nonnull %loop_wrap2) #10
  %call3 = call i32 @fclose(ptr noundef nonnull %call)
  %2 = load i32, ptr @state, align 4
  %call412 = call i64 @read(i32 noundef 0, ptr noundef nonnull @sbuf, i64 noundef 2000) #10
  %conv13 = trunc i64 %call412 to i32
  %cmp514 = icmp slt i32 %conv13, 0
  br i1 %cmp514, label %if.then7, label %if.end8

if.then7:                                         ; preds = %cleanup, %if.end
  call void @perror(ptr noundef nonnull @.str.4) #11
  call void @exit(i32 noundef 1) #12
  unreachable

if.end8:                                          ; preds = %if.end, %cleanup
  %conv17 = phi i32 [ %conv, %cleanup ], [ %conv13, %if.end ]
  %call415 = phi i64 [ %call4, %cleanup ], [ %call412, %if.end ]
  %3 = phi i32 [ %21, %cleanup ], [ %2, %if.end ]
  %cmp9 = icmp eq i32 %conv17, 0
  br i1 %cmp9, label %while.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %4 = load i64, ptr %loop_wrap2, align 8, !tbaa !21
  %cmp1310 = icmp sgt i64 %4, 0
  br i1 %cmp1310, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div7 = lshr i32 %conv17, 1
  %cmp48.i.not = icmp eq i32 %conv17, 1
  %5 = trunc i32 %div7 to i1
  br i1 %cmp48.i.not, label %for.body.lr.ph.split.us, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %6 = lshr i32 %3, 16
  %7 = zext nneg i32 %6 to i64
  %sext = shl i32 %6, 24
  %conv2.i = ashr exact i32 %sext, 24
  %sext19 = shl i32 %3, 16
  %conv.i = ashr exact i32 %sext19, 16
  %sext20 = shl i64 %7, 56
  %idxprom.i = ashr exact i64 %sext20, 56
  %arrayidx.i = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom.i
  %8 = load i32, ptr %arrayidx.i, align 4, !tbaa !11
  br label %for.body

for.body.lr.ph.split.us:                          ; preds = %for.body.lr.ph
  %9 = trunc i32 %3 to i16
  %10 = lshr i32 %3, 16
  %11 = trunc i32 %10 to i8
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us, %for.body.lr.ph.split.us
  %loop_wrap1.011.us = phi i64 [ 0, %for.body.lr.ph.split.us ], [ %inc.us, %for.body.us ]
  store i32 %3, ptr @state, align 4
  store i16 %9, ptr @state, align 4, !tbaa !5
  store i8 %11, ptr getelementptr inbounds nuw (i8, ptr @state, i64 2), align 2, !tbaa !10
  %inc.us = add nuw nsw i64 %loop_wrap1.011.us, 1
  %exitcond.not = icmp eq i64 %inc.us, %4
  br i1 %exitcond.not, label %cleanup, label %for.body.us, !llvm.loop !23

for.body:                                         ; preds = %for.body.preheader, %adpcm_coder.exit
  %loop_wrap1.011 = phi i64 [ %inc, %adpcm_coder.exit ], [ 0, %for.body.preheader ]
  store i32 %3, ptr @state, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end62.i, %for.body
  %bufferstep.056.i = phi i1 [ %16, %if.end62.i ], [ false, %for.body ]
  %outputbuffer.055.i = phi i32 [ %outputbuffer.1.i, %if.end62.i ], [ 0, %for.body ]
  %index.054.i = phi i32 [ %spec.store.select2.i, %if.end62.i ], [ %conv2.i, %for.body ]
  %valpred.053.i = phi i32 [ %valpred.2.i, %if.end62.i ], [ %conv.i, %for.body ]
  %step.052.i = phi i32 [ %15, %if.end62.i ], [ %8, %for.body ]
  %len.addr.051.i = phi i32 [ %dec.i, %if.end62.i ], [ %div7, %for.body ]
  %inp.050.i = phi ptr [ %incdec.ptr.i, %if.end62.i ], [ @sbuf, %for.body ]
  %outp.049.i = phi ptr [ %outp.1.i, %if.end62.i ], [ @abuf, %for.body ]
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %inp.050.i, i64 2
  %12 = load i16, ptr %inp.050.i, align 2, !tbaa !13
  %conv4.i = sext i16 %12 to i32
  %sub.i = sub nsw i32 %conv4.i, %valpred.053.i
  %cmp5.i = icmp slt i32 %sub.i, 0
  %cond.i = select i1 %cmp5.i, i32 8, i32 0
  %spec.select.i = call i32 @llvm.abs.i32(i32 %sub.i, i1 true)
  %shr.i = ashr i32 %step.052.i, 3
  %cmp8.not.i = icmp slt i32 %spec.select.i, %step.052.i
  %delta.0.i = select i1 %cmp8.not.i, i32 0, i32 4
  %sub11.i = select i1 %cmp8.not.i, i32 0, i32 %step.052.i
  %diff.1.i = sub nsw i32 %spec.select.i, %sub11.i
  %vpdiff.0.i = add nsw i32 %sub11.i, %shr.i
  %shr13.i = ashr i32 %step.052.i, 1
  %cmp14.not.i = icmp slt i32 %diff.1.i, %shr13.i
  %or.i = or disjoint i32 %delta.0.i, 2
  %delta.1.i = select i1 %cmp14.not.i, i32 %delta.0.i, i32 %or.i
  %sub17.i = select i1 %cmp14.not.i, i32 0, i32 %shr13.i
  %diff.2.i = sub nsw i32 %diff.1.i, %sub17.i
  %vpdiff.1.i = add nsw i32 %vpdiff.0.i, %sub17.i
  %shr20.i = ashr i32 %step.052.i, 2
  %cmp21.not.i = icmp sge i32 %diff.2.i, %shr20.i
  %or24.i = zext i1 %cmp21.not.i to i32
  %add25.i = select i1 %cmp21.not.i, i32 %shr20.i, i32 0
  %vpdiff.2.i = add nsw i32 %vpdiff.1.i, %add25.i
  %13 = sub i32 0, %vpdiff.2.i
  %valpred.1.p.i = select i1 %cmp5.i, i32 %13, i32 %vpdiff.2.i
  %valpred.1.i = add i32 %valpred.1.p.i, %valpred.053.i
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %valpred.1.i, i32 -32768)
  %valpred.2.i = call i32 @llvm.smin.i32(i32 %spec.store.select.i, i32 32767)
  %delta.2.i = or disjoint i32 %delta.1.i, %cond.i
  %or41.i = or disjoint i32 %delta.2.i, %or24.i
  %idxprom42.i = zext nneg i32 %or41.i to i64
  %arrayidx43.i = getelementptr inbounds nuw [16 x i32], ptr @indexTable, i64 0, i64 %idxprom42.i
  %14 = load i32, ptr %arrayidx43.i, align 4, !tbaa !11
  %add44.i = add nsw i32 %14, %index.054.i
  %spec.store.select1.i = call i32 @llvm.smax.i32(i32 %add44.i, i32 0)
  %spec.store.select2.i = call i32 @llvm.umin.i32(i32 %spec.store.select1.i, i32 88)
  %idxprom53.i = zext nneg i32 %spec.store.select2.i to i64
  %arrayidx54.i = getelementptr inbounds nuw [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom53.i
  %15 = load i32, ptr %arrayidx54.i, align 4, !tbaa !11
  br i1 %bufferstep.056.i, label %if.else57.i, label %if.then56.i

if.then56.i:                                      ; preds = %for.body.i
  %shl.i = shl nuw nsw i32 %or41.i, 4
  %and.i = and i32 %shl.i, 240
  br label %if.end62.i

if.else57.i:                                      ; preds = %for.body.i
  %or59.i = or disjoint i32 %or41.i, %outputbuffer.055.i
  %conv60.i = trunc nuw i32 %or59.i to i8
  %incdec.ptr61.i = getelementptr inbounds nuw i8, ptr %outp.049.i, i64 1
  store i8 %conv60.i, ptr %outp.049.i, align 1, !tbaa !14
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.else57.i, %if.then56.i
  %outp.1.i = phi ptr [ %outp.049.i, %if.then56.i ], [ %incdec.ptr61.i, %if.else57.i ]
  %outputbuffer.1.i = phi i32 [ %and.i, %if.then56.i ], [ %outputbuffer.055.i, %if.else57.i ]
  %dec.i = add nsw i32 %len.addr.051.i, -1
  %16 = xor i1 %bufferstep.056.i, true
  %cmp.i = icmp sgt i32 %len.addr.051.i, 1
  br i1 %cmp.i, label %for.body.i, label %for.end.i, !llvm.loop !15

for.end.i:                                        ; preds = %if.end62.i
  %17 = trunc nsw i32 %valpred.2.i to i16
  %18 = trunc nuw nsw i32 %spec.store.select2.i to i8
  br i1 %5, label %if.then65.i, label %adpcm_coder.exit

if.then65.i:                                      ; preds = %for.end.i
  %19 = trunc nuw i32 %outputbuffer.1.i to i8
  store i8 %19, ptr %outp.1.i, align 1, !tbaa !14
  br label %adpcm_coder.exit

adpcm_coder.exit:                                 ; preds = %for.end.i, %if.then65.i
  store i16 %17, ptr @state, align 4, !tbaa !5
  store i8 %18, ptr getelementptr inbounds nuw (i8, ptr @state, i64 2), align 2, !tbaa !10
  %inc = add nuw nsw i64 %loop_wrap1.011, 1
  %20 = load i64, ptr %loop_wrap2, align 8, !tbaa !21
  %cmp13 = icmp slt i64 %inc, %20
  br i1 %cmp13, label %for.body, label %cleanup, !llvm.loop !23

cleanup:                                          ; preds = %adpcm_coder.exit, %for.body.us, %for.cond.preheader
  %div156 = lshr i64 %call415, 2
  %conv16 = and i64 %div156, 536870911
  %call17 = call i64 @write(i32 noundef 1, ptr noundef nonnull @abuf, i64 noundef %conv16) #10
  %21 = load i32, ptr @state, align 4
  %call4 = call i64 @read(i32 noundef 0, ptr noundef nonnull @sbuf, i64 noundef 2000) #10
  %conv = trunc i64 %call4 to i32
  %cmp5 = icmp slt i32 %conv, 0
  br i1 %cmp5, label %if.then7, label %if.end8

while.end:                                        ; preds = %if.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loop_wrap2) #10
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { cold noreturn nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !7, i64 0}
!6 = !{!"adpcm_state", !7, i64 0, !8, i64 2}
!7 = !{!"short", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !8, i64 2}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!20 = !{!"any pointer", !8, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = distinct !{!23, !16}
