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
@state = dso_local global %struct.adpcm_state zeroinitializer, align 2
@sbuf = dso_local global [1000 x i16] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@abuf = dso_local global [500 x i8] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @adpcm_coder(ptr nofree noundef readonly captures(none) %indata, ptr nofree noundef writeonly captures(none) %outdata, i32 noundef %len, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(3) %state) local_unnamed_addr #0 {
entry:
  %0 = load i16, ptr %state, align 2, !tbaa !5
  %conv = sext i16 %0 to i32
  %index1 = getelementptr inbounds nuw i8, ptr %state, i64 2
  %1 = load i8, ptr %index1, align 2, !tbaa !10
  %conv2 = sext i8 %1 to i32
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %outp.0 = phi ptr [ %outdata, %entry ], [ %outp.1, %for.inc ]
  %inp.0 = phi ptr [ %indata, %entry ], [ %incdec.ptr, %for.inc ]
  %len.addr.0 = phi i32 [ %len, %entry ], [ %dec, %for.inc ]
  %step.0 = phi i32 [ %2, %entry ], [ %7, %for.inc ]
  %valpred.0 = phi i32 [ %conv, %entry ], [ %valpred.1, %for.inc ]
  %index.0 = phi i32 [ %conv2, %entry ], [ %index.1, %for.inc ]
  %outputbuffer.0 = phi i32 [ 0, %entry ], [ %outputbuffer.1, %for.inc ]
  %bufferstep.0 = phi i1 [ false, %entry ], [ %8, %for.inc ]
  %cmp = icmp sgt i32 %len.addr.0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %inp.0, i64 2
  %3 = load i16, ptr %inp.0, align 2, !tbaa !13, !invariant.load !14
  %conv4 = sext i16 %3 to i32
  %sub = sub nsw i32 %conv4, %valpred.0
  %cmp5 = icmp slt i32 %sub, 0
  %cond = select i1 %cmp5, i32 8, i32 0
  %spec.select = tail call i32 @llvm.abs.i32(i32 %sub, i1 noundef true) #10
  %shr = ashr i32 %step.0, 3
  %cmp8.not = icmp slt i32 %spec.select, %step.0
  %delta.0 = select i1 %cmp8.not, i32 0, i32 4
  %sub11 = select i1 %cmp8.not, i32 0, i32 %step.0
  %diff.1 = sub nsw i32 %spec.select, %sub11
  %vpdiff.0 = add nsw i32 %sub11, %shr
  %shr13 = ashr i32 %step.0, 1
  %cmp14.not = icmp slt i32 %diff.1, %shr13
  %or = or disjoint i32 %delta.0, 2
  %delta.1 = select i1 %cmp14.not, i32 %delta.0, i32 %or
  %sub17 = select i1 %cmp14.not, i32 0, i32 %shr13
  %diff.2 = sub nsw i32 %diff.1, %sub17
  %vpdiff.1 = add nsw i32 %vpdiff.0, %sub17
  %shr20 = ashr i32 %step.0, 2
  %cmp21.not = icmp sge i32 %diff.2, %shr20
  %or24 = zext i1 %cmp21.not to i32
  %add25 = select i1 %cmp21.not, i32 %shr20, i32 0
  %vpdiff.2 = add nsw i32 %vpdiff.1, %add25
  %4 = sub i32 0, %vpdiff.2
  %add30.sink.p = select i1 %cmp5, i32 %4, i32 %vpdiff.2
  %add30.sink = add i32 %add30.sink.p, %valpred.0
  %spec.select16 = tail call i32 @llvm.smax.i32(i32 %add30.sink, i32 noundef -32768) #10
  %valpred.1 = tail call i32 @llvm.smin.i32(i32 %spec.select16, i32 noundef 32767) #10
  %delta.2 = or disjoint i32 %delta.1, %cond
  %or41 = or disjoint i32 %delta.2, %or24
  %idxprom42 = zext nneg i32 %or41 to i64
  %arrayidx43 = getelementptr inbounds nuw [16 x i32], ptr @indexTable, i64 0, i64 %idxprom42
  %5 = load i32, ptr %arrayidx43, align 4, !tbaa !11, !invariant.load !14
  %add44 = add nsw i32 %5, %index.0
  %6 = tail call i32 @llvm.smax.i32(i32 %add44, i32 noundef 0) #10
  %index.1 = tail call i32 @llvm.umin.i32(i32 %6, i32 noundef 88) #10
  %idxprom53 = zext nneg i32 %index.1 to i64
  %arrayidx54 = getelementptr inbounds nuw [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom53
  %7 = load i32, ptr %arrayidx54, align 4, !tbaa !11, !invariant.load !14
  br i1 %bufferstep.0, label %if.else57, label %if.then56

if.then56:                                        ; preds = %for.body
  %shl = shl nuw nsw i32 %or41, 4
  %and = and i32 %shl, 240
  br label %for.inc

if.else57:                                        ; preds = %for.body
  %or59 = or disjoint i32 %or41, %outputbuffer.0
  %conv60 = trunc nuw i32 %or59 to i8
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %outp.0, i64 1
  store i8 %conv60, ptr %outp.0, align 1, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %if.then56, %if.else57
  %outp.1 = phi ptr [ %outp.0, %if.then56 ], [ %incdec.ptr61, %if.else57 ]
  %outputbuffer.1 = phi i32 [ %and, %if.then56 ], [ %outputbuffer.0, %if.else57 ]
  %dec = add nsw i32 %len.addr.0, -1
  %8 = xor i1 %bufferstep.0, true
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %smin = call i32 @llvm.smin.i32(i32 noundef %len, i32 noundef 0) #10
  %9 = sub i32 %len, %smin
  %10 = trunc i32 %9 to i1
  br i1 %10, label %if.then65, label %if.end68

if.then65:                                        ; preds = %for.end
  %conv66 = trunc nuw i32 %outputbuffer.0 to i8
  store i8 %conv66, ptr %outp.0, align 1, !tbaa !15
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %for.end
  %conv69 = trunc nsw i32 %valpred.0 to i16
  store i16 %conv69, ptr %state, align 2, !tbaa !5
  %conv71 = trunc nsw i32 %index.0 to i8
  store i8 %conv71, ptr %index1, align 2, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @adpcm_decoder(ptr nofree noundef readonly captures(none) %indata, ptr nofree noundef writeonly captures(none) %outdata, i32 noundef %len, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(3) %state) local_unnamed_addr #0 {
entry:
  %0 = load i16, ptr %state, align 2, !tbaa !5
  %conv = sext i16 %0 to i32
  %index1 = getelementptr inbounds nuw i8, ptr %state, i64 2
  %1 = load i8, ptr %index1, align 2, !tbaa !10
  %conv2 = sext i8 %1 to i32
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %len.addr.0 = phi i32 [ %len, %entry ], [ %dec, %if.end ]
  %inp.0 = phi ptr [ %indata, %entry ], [ %inp.1, %if.end ]
  %outp.0 = phi ptr [ %outdata, %entry ], [ %incdec.ptr54, %if.end ]
  %step.0 = phi i32 [ %2, %entry ], [ %7, %if.end ]
  %valpred.0 = phi i32 [ %conv, %entry ], [ %valpred.1, %if.end ]
  %index.0 = phi i32 [ %conv2, %entry ], [ %index.1, %if.end ]
  %inputbuffer.0 = phi i32 [ 0, %entry ], [ %inputbuffer.1, %if.end ]
  %bufferstep.0 = phi i1 [ true, %entry ], [ %8, %if.end ]
  %cmp = icmp sgt i32 %len.addr.0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br i1 %bufferstep.0, label %if.else, label %if.end

if.else:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %inp.0, i64 1
  %3 = load i8, ptr %inp.0, align 1, !tbaa !15, !invariant.load !14
  %conv415 = zext i8 %3 to i32
  %shr = lshr i32 %conv415, 4
  br label %if.end

if.end:                                           ; preds = %for.body, %if.else
  %inp.1 = phi ptr [ %incdec.ptr, %if.else ], [ %inp.0, %for.body ]
  %inputbuffer.1 = phi i32 [ %conv415, %if.else ], [ %inputbuffer.0, %for.body ]
  %shr.sink = phi i32 [ %shr, %if.else ], [ %inputbuffer.0, %for.body ]
  %and5 = and i32 %shr.sink, 15
  %idxprom7 = zext nneg i32 %and5 to i64
  %arrayidx8 = getelementptr inbounds nuw [16 x i32], ptr @indexTable, i64 0, i64 %idxprom7
  %4 = load i32, ptr %arrayidx8, align 4, !tbaa !11, !invariant.load !14
  %add = add nsw i32 %4, %index.0
  %5 = tail call i32 @llvm.smax.i32(i32 %add, i32 noundef 0) #10
  %index.1 = tail call i32 @llvm.umin.i32(i32 %5, i32 noundef 88) #10
  %and17 = and i32 %shr.sink, 8
  %shr19 = ashr i32 %step.0, 3
  %and20 = and i32 %shr.sink, 4
  %tobool21.not = icmp eq i32 %and20, 0
  %add23 = select i1 %tobool21.not, i32 0, i32 %step.0
  %spec.select13 = add nsw i32 %add23, %shr19
  %and25 = and i32 %shr.sink, 2
  %tobool26.not = icmp eq i32 %and25, 0
  %shr28 = ashr i32 %step.0, 1
  %add29 = select i1 %tobool26.not, i32 0, i32 %shr28
  %vpdiff.1 = add nsw i32 %spec.select13, %add29
  %and31 = and i32 %shr.sink, 1
  %tobool32.not = icmp eq i32 %and31, 0
  %shr34 = ashr i32 %step.0, 2
  %add35 = select i1 %tobool32.not, i32 0, i32 %shr34
  %vpdiff.2 = add nsw i32 %vpdiff.1, %add35
  %tobool37.not = icmp eq i32 %and17, 0
  %6 = sub i32 0, %vpdiff.2
  %add40.sink.p = select i1 %tobool37.not, i32 %vpdiff.2, i32 %6
  %add40.sink = add i32 %add40.sink.p, %valpred.0
  %spec.select14 = tail call i32 @llvm.smax.i32(i32 %add40.sink, i32 noundef -32768) #10
  %valpred.1 = tail call i32 @llvm.smin.i32(i32 %spec.select14, i32 noundef 32767) #10
  %idxprom51 = zext nneg i32 %index.1 to i64
  %arrayidx52 = getelementptr inbounds nuw [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom51
  %7 = load i32, ptr %arrayidx52, align 4, !tbaa !11, !invariant.load !14
  %conv53 = trunc nsw i32 %valpred.1 to i16
  %incdec.ptr54 = getelementptr inbounds nuw i8, ptr %outp.0, i64 2
  store i16 %conv53, ptr %outp.0, align 2, !tbaa !13
  %dec = add nsw i32 %len.addr.0, -1
  %8 = xor i1 %bufferstep.0, true
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %conv55 = trunc nsw i32 %valpred.0 to i16
  store i16 %conv55, ptr %state, align 2, !tbaa !5
  %conv57 = trunc nsw i32 %index.0 to i8
  store i8 %conv57, ptr %index1, align 2, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %loop_wrap2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %loop_wrap2) #9
  %call = tail call noalias ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !19
  %1 = tail call i64 @fwrite(ptr noundef nonnull @.str.2, i64 noundef 28, i64 noundef 1, ptr noundef %0) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.3, ptr noundef nonnull %loop_wrap2) #11
  %call3 = call i32 @fclose(ptr noundef nonnull %call) #11
  br label %while.body

while.body:                                       ; preds = %if.end, %cleanup.cont
  %2 = load i32, ptr @state, align 2
  %call4 = call i64 @read(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(2000) @sbuf, i64 noundef 2000) #11
  %conv = trunc i64 %call4 to i32
  %cmp5 = icmp slt i32 %conv, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.body
  call void @perror(ptr noundef nonnull @.str.4) #12
  call void @exit(i32 noundef 1) #13
  unreachable

if.end8:                                          ; preds = %while.body
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %while.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %3 = load i64, ptr %loop_wrap2, align 8, !tbaa !22
  %div7 = lshr i32 %conv, 1
  %smax = call i64 @llvm.smax.i64(i64 %3, i64 noundef 0)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %loop_wrap1.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %exitcond.not = icmp eq i64 %loop_wrap1.0, %smax
  br i1 %exitcond.not, label %cleanup.cont, label %for.inc

for.inc:                                          ; preds = %for.cond
  store i32 %2, ptr @state, align 2
  call void @adpcm_coder(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(2000) @sbuf, ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(500) @abuf, i32 noundef %div7, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(4) @state) #11
  %inc = add nuw i64 %loop_wrap1.0, 1
  br label %for.cond, !llvm.loop !24

cleanup.cont:                                     ; preds = %for.cond
  %div156 = lshr i64 %call4, 2
  %conv16 = and i64 %div156, 536870911
  %call17 = call i64 @write(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(500) @abuf, i64 noundef %conv16) #11
  br label %while.body, !llvm.loop !25

while.end:                                        ; preds = %if.end8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %loop_wrap2) #11
  ret i32 0
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @fclose(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold
declare void @perror(ptr noundef) local_unnamed_addr #7

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { cold noreturn nounwind }

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
!14 = !{}
!15 = !{!8, !8, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !17}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS8_IO_FILE", !21, i64 0}
!21 = !{!"any pointer", !8, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !8, i64 0}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
