; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuqrb395n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [257 x i8], align 16
  %sub = alloca [257 x i8], align 16
  %rep = alloca [257 x i8], align 16
  %temp = alloca [257 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef nonnull align 16 %s) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(257) %s, i8 noundef 0, i64 noundef 257, i1 noundef false) #7
  store i8 48, ptr %s, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef nonnull align 16 %sub) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(257) %sub, i8 noundef 0, i64 noundef 257, i1 noundef false) #7
  store i8 48, ptr %sub, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef nonnull align 16 %rep) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(257) %rep, i8 noundef 0, i64 noundef 257, i1 noundef false) #7
  store i8 48, ptr %rep, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef nonnull align 16 %temp) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(257) %temp, i8 noundef 0, i64 noundef 257, i1 noundef false) #7
  store i8 48, ptr %temp, align 16
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %s, ptr noundef nonnull align 16 %sub, ptr noundef nonnull align 16 %rep)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #8
  %conv7 = trunc i64 %call6 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv7, i32 noundef 0)
  %smax21 = call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count23 = zext nneg i32 %smax21 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc18 ], [ 0, %entry ]
  %exitcond24.not = icmp eq i64 %indvars.iv14, %wide.trip.count23
  br i1 %exitcond24.not, label %for.end20, label %for.cond8

for.cond8:                                        ; preds = %for.cond, %for.inc
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc ], [ %indvars.iv14, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond8
  %arrayidx = getelementptr inbounds nuw [257 x i8], ptr %s, i64 0, i64 %indvars.iv16
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %arrayidx12 = getelementptr inbounds nuw [257 x i8], ptr %temp, i64 0, i64 %indvars.iv
  store i8 %0, ptr %arrayidx12, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond8, !llvm.loop !9

for.end:                                          ; preds = %for.cond8
  %call16 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %temp, ptr noundef nonnull dereferenceable(1) %sub) #8
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %for.end20.split.loop.exit, label %for.inc18

for.inc18:                                        ; preds = %for.end
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond, !llvm.loop !12

for.end20.split.loop.exit:                        ; preds = %for.end
  %indvars22.le = trunc i64 %indvars.iv14 to i32
  br label %for.end20

for.end20:                                        ; preds = %for.cond, %for.end20.split.loop.exit
  %i.0.lcssa = phi i32 [ %indvars22.le, %for.end20.split.loop.exit ], [ %smax21, %for.cond ]
  %call23 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %temp, ptr noundef nonnull dereferenceable(1) %sub) #8
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %for.cond26.preheader, label %if.end37

for.cond26.preheader:                             ; preds = %for.end20
  %add = add nsw i32 %i.0.lcssa, %conv7
  %1 = zext nneg i32 %i.0.lcssa to i64
  %smax32 = call i32 @llvm.smax.i32(i32 %i.0.lcssa, i32 %add)
  %2 = sub i32 %smax32, %i.0.lcssa
  %wide.trip.count33 = zext i32 %2 to i64
  br label %for.cond26

for.cond26:                                       ; preds = %for.cond26.preheader, %for.inc33
  %indvars.iv27 = phi i64 [ %1, %for.cond26.preheader ], [ %indvars.iv.next28, %for.inc33 ]
  %indvars.iv25 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next26, %for.inc33 ]
  %exitcond34.not = icmp eq i64 %indvars.iv25, %wide.trip.count33
  br i1 %exitcond34.not, label %if.end37, label %for.inc33

for.inc33:                                        ; preds = %for.cond26
  %arrayidx30 = getelementptr inbounds nuw [257 x i8], ptr %rep, i64 0, i64 %indvars.iv25
  %3 = load i8, ptr %arrayidx30, align 1, !tbaa !5, !invariant.load !8
  %arrayidx32 = getelementptr inbounds nuw [257 x i8], ptr %s, i64 0, i64 %indvars.iv27
  store i8 %3, ptr %arrayidx32, align 1, !tbaa !5
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond26, !llvm.loop !13

if.end37:                                         ; preds = %for.cond26, %for.end20
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %s)
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef nonnull %temp) #9
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef nonnull %rep) #9
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef nonnull %sub) #9
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef nonnull %s) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

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
