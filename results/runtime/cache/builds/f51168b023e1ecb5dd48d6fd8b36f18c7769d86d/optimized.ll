; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj2hxcomj.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z5rightPcii(ptr nofree noundef nonnull captures(none) %a, i32 noundef %l, i32 noundef %t) local_unnamed_addr #0 {
entry:
  %invariant.gep = getelementptr i8, ptr %a, i64 -1
  %0 = sext i32 %l to i64
  %1 = sext i32 %t to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %0, %entry ]
  %cmp.not = icmp slt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %2 = load i8, ptr %gep, align 1, !tbaa !5, !invariant.load !8
  %arrayidx2 = getelementptr inbounds i8, ptr %a, i64 %indvars.iv
  store i8 %2, ptr %arrayidx2, align 1, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %3 = getelementptr i8, ptr %a, i64 %0
  %arrayidx4 = getelementptr i8, ptr %3, i64 1
  store i8 0, ptr %arrayidx4, align 1, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4leftPcii(ptr nofree noundef nonnull captures(none) %a, i32 noundef %l, i32 noundef %t) local_unnamed_addr #0 {
entry:
  %invariant.gep = getelementptr i8, ptr %a, i64 -1
  %invariant.gep4 = getelementptr i8, ptr %a, i64 -2
  %0 = sext i32 %t to i64
  %1 = sext i32 %l to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %0, %entry ]
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %2 = load i8, ptr %gep, align 1, !tbaa !5, !invariant.load !8
  %gep5 = getelementptr i8, ptr %invariant.gep4, i64 %indvars.iv
  store i8 %2, ptr %gep5, align 1, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %3 = getelementptr i8, ptr %a, i64 %1
  %arrayidx6 = getelementptr i8, ptr %3, i64 -1
  store i8 0, ptr %arrayidx6, align 1, !tbaa !5
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 dereferenceable(256) %a)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %c)
  %call6 = call i64 @strlen(ptr noundef nonnull align 16 dereferenceable(256) %a) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #7
  %conv9 = trunc i64 %call8 to i32
  %call11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %c) #7
  %conv12 = trunc i64 %call11 to i32
  %cmp = icmp sgt i32 %conv9, %conv12
  %0 = load i8, ptr %b, align 16
  %smax = call i32 @llvm.smax.i32(i32 %conv9, i32 1)
  %smax53 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %1 = add nuw i32 %smax53, 1
  %wide.trip.count54 = zext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc73, %entry
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc73 ], [ 1, %entry ]
  %exitcond55 = icmp eq i64 %indvars.iv48, %wide.trip.count54
  br i1 %exitcond55, label %for.end75, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv48, -1
  %arrayidx = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %cmp24 = icmp eq i8 %3, %0
  br i1 %cmp24, label %for.cond26, label %for.inc73

for.cond26:                                       ; preds = %for.body, %for.body29
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body29 ], [ 1, %for.body ]
  %d.0 = phi i32 [ %spec.select38, %for.body29 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body29

for.body29:                                       ; preds = %for.cond26
  %4 = add nuw nsw i64 %indvars.iv, %2
  %sext68 = shl i64 %4, 32
  %idxprom31 = ashr exact i64 %sext68, 32
  %arrayidx32 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom31
  %5 = load i8, ptr %arrayidx32, align 1, !tbaa !5, !invariant.load !8
  %arrayidx35 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv
  %6 = load i8, ptr %arrayidx35, align 1, !tbaa !5, !invariant.load !8
  %cmp38.not = icmp eq i8 %5, %6
  %spec.select38 = select i1 %cmp38.not, i32 %d.0, i32 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond26, !llvm.loop !13

for.end:                                          ; preds = %for.cond26
  %cmp41 = icmp eq i32 %d.0, 0
  br i1 %cmp41, label %for.cond43.preheader, label %for.inc73

for.cond43.preheader:                             ; preds = %for.end
  %invariant.gep = getelementptr i8, ptr %a, i64 -1
  %invariant.gep42 = getelementptr inbounds nuw i8, ptr %a, i64 1
  %add49 = add i64 %indvars.iv48, %call8
  %invariant.gep4.i = getelementptr i8, ptr %a, i64 -2
  %sext66 = shl i64 %add49, 32
  %7 = ashr exact i64 %sext66, 32
  %sext = shl i64 %call6, 32
  %8 = ashr exact i64 %sext, 32
  %gep = getelementptr i8, ptr %invariant.gep, i64 %8
  %cmp51 = icmp slt i32 %conv9, %conv12
  %9 = and i64 %indvars.iv48, 4294967295
  %gep43 = getelementptr i8, ptr %invariant.gep42, i64 %8
  %10 = sub i32 %conv12, %conv9
  %smax56 = call i32 @llvm.abs.i32(i32 %10, i1 false)
  %11 = add nuw i32 %smax56, 1
  br label %for.cond43

for.cond43:                                       ; preds = %for.cond43.preheader, %for.inc55
  %j.1 = phi i32 [ %inc56, %for.inc55 ], [ 1, %for.cond43.preheader ]
  %exitcond57 = icmp eq i32 %j.1, %11
  br i1 %exitcond57, label %for.cond58.preheader, label %for.body45

for.cond58.preheader:                             ; preds = %for.cond43
  %add64 = add nuw i64 %indvars.iv48, 4294967294
  %smax63 = call i32 @llvm.smax.i32(i32 %conv12, i32 0)
  %12 = add nuw i32 %smax63, 1
  %wide.trip.count64 = zext i32 %12 to i64
  br label %for.cond58

for.body45:                                       ; preds = %for.cond43
  br i1 %cmp, label %for.cond.i, label %if.end50

for.cond.i:                                       ; preds = %for.body45, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ %7, %for.body45 ]
  %cmp.not.i = icmp sgt i64 %indvars.iv.i, %8
  br i1 %cmp.not.i, label %_Z4leftPcii.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond.i
  %gep.i = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.i
  %13 = load i8, ptr %gep.i, align 1, !tbaa !5, !invariant.load !8
  %gep5.i = getelementptr i8, ptr %invariant.gep4.i, i64 %indvars.iv.i
  store i8 %13, ptr %gep5.i, align 1, !tbaa !5
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !12

_Z4leftPcii.exit:                                 ; preds = %for.cond.i
  store i8 0, ptr %gep, align 1, !tbaa !5
  br label %if.end50

if.end50:                                         ; preds = %_Z4leftPcii.exit, %for.body45
  br i1 %cmp51, label %for.cond.i3, label %for.inc55

for.cond.i3:                                      ; preds = %if.end50, %for.inc.i6
  %indvars.iv.i4 = phi i64 [ %indvars.iv.next.i8, %for.inc.i6 ], [ %8, %if.end50 ]
  %cmp.not.i5 = icmp slt i64 %indvars.iv.i4, %9
  br i1 %cmp.not.i5, label %_Z5rightPcii.exit, label %for.inc.i6

for.inc.i6:                                       ; preds = %for.cond.i3
  %gep.i7 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.i4
  %14 = load i8, ptr %gep.i7, align 1, !tbaa !5, !invariant.load !8
  %arrayidx2.i = getelementptr inbounds i8, ptr %a, i64 %indvars.iv.i4
  store i8 %14, ptr %arrayidx2.i, align 1, !tbaa !5
  %indvars.iv.next.i8 = add nsw i64 %indvars.iv.i4, -1
  br label %for.cond.i3, !llvm.loop !9

_Z5rightPcii.exit:                                ; preds = %for.cond.i3
  store i8 0, ptr %gep43, align 1, !tbaa !5
  br label %for.inc55

for.inc55:                                        ; preds = %if.end50, %_Z5rightPcii.exit
  %inc56 = add nuw i32 %j.1, 1
  br label %for.cond43, !llvm.loop !14

for.cond58:                                       ; preds = %for.cond58.preheader, %for.inc68
  %indvars.iv58 = phi i64 [ 1, %for.cond58.preheader ], [ %indvars.iv.next59, %for.inc68 ]
  %exitcond65 = icmp eq i64 %indvars.iv58, %wide.trip.count64
  br i1 %exitcond65, label %for.end75, label %for.inc68

for.inc68:                                        ; preds = %for.cond58
  %15 = add nsw i64 %indvars.iv58, -1
  %arrayidx63 = getelementptr inbounds [256 x i8], ptr %c, i64 0, i64 %15
  %16 = load i8, ptr %arrayidx63, align 1, !tbaa !5, !invariant.load !8
  %17 = add i64 %add64, %indvars.iv58
  %sext67 = shl i64 %17, 32
  %idxprom66 = ashr exact i64 %sext67, 32
  %arrayidx67 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom66
  store i8 %16, ptr %arrayidx67, align 1, !tbaa !5
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond58, !llvm.loop !15

for.inc73:                                        ; preds = %for.body, %for.end
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond, !llvm.loop !16

for.end75:                                        ; preds = %for.cond, %for.cond58
  %call77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull align 16 dereferenceable(256) %a)
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %a) #8
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
