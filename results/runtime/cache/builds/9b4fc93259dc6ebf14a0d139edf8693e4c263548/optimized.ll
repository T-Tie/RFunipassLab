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
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %s) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %s, i8 0, i64 257, i1 false)
  store i8 48, ptr %s, align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %sub) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %sub, i8 0, i64 257, i1 false)
  store i8 48, ptr %sub, align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %rep) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %rep, i8 0, i64 257, i1 false)
  store i8 48, ptr %rep, align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %temp) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %temp, i8 0, i64 257, i1 false)
  store i8 48, ptr %temp, align 16
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s, ptr noundef nonnull %sub, ptr noundef nonnull %rep)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #8
  %conv7 = trunc i64 %call6 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv7, i32 0)
  %smax22 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count24 = zext nneg i32 %smax22 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc18 ], [ 0, %entry ]
  %exitcond25.not = icmp eq i64 %indvars.iv15, %wide.trip.count24
  br i1 %exitcond25.not, label %for.end20, label %for.cond8

for.cond8:                                        ; preds = %for.cond, %for.body10
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.body10 ], [ %indvars.iv15, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %arrayidx = getelementptr inbounds nuw [257 x i8], ptr %s, i64 0, i64 %indvars.iv17
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %arrayidx12 = getelementptr inbounds nuw [257 x i8], ptr %temp, i64 0, i64 %indvars.iv
  store i8 %0, ptr %arrayidx12, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond8, !llvm.loop !8

for.end:                                          ; preds = %for.cond8
  %call16 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %temp, ptr noundef nonnull dereferenceable(1) %sub) #8
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %for.end20.split.loop.exit, label %for.inc18

for.inc18:                                        ; preds = %for.end
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond, !llvm.loop !11

for.end20.split.loop.exit:                        ; preds = %for.end
  %indvars23.le = trunc i64 %indvars.iv15 to i32
  br label %for.end20

for.end20:                                        ; preds = %for.cond, %for.end20.split.loop.exit
  %i.0.lcssa = phi i32 [ %indvars23.le, %for.end20.split.loop.exit ], [ %smax22, %for.cond ]
  %call23 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %temp, ptr noundef nonnull dereferenceable(1) %sub) #8
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %for.cond26.preheader, label %if.end37

for.cond26.preheader:                             ; preds = %for.end20
  %add = add nsw i32 %i.0.lcssa, %conv7
  %1 = zext nneg i32 %i.0.lcssa to i64
  %smax33 = call i32 @llvm.smax.i32(i32 %i.0.lcssa, i32 %add)
  %2 = sub i32 %smax33, %i.0.lcssa
  %wide.trip.count34 = zext i32 %2 to i64
  br label %for.cond26

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body28
  %indvars.iv28 = phi i64 [ %1, %for.cond26.preheader ], [ %indvars.iv.next29, %for.body28 ]
  %indvars.iv26 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next27, %for.body28 ]
  %exitcond35.not = icmp eq i64 %indvars.iv26, %wide.trip.count34
  br i1 %exitcond35.not, label %if.end37, label %for.body28

for.body28:                                       ; preds = %for.cond26
  %arrayidx30 = getelementptr inbounds nuw [257 x i8], ptr %rep, i64 0, i64 %indvars.iv26
  %3 = load i8, ptr %arrayidx30, align 1, !tbaa !5
  %arrayidx32 = getelementptr inbounds nuw [257 x i8], ptr %s, i64 0, i64 %indvars.iv28
  store i8 %3, ptr %arrayidx32, align 1, !tbaa !5
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond26, !llvm.loop !12

if.end37:                                         ; preds = %for.cond26, %for.end20
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %s)
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %temp) #7
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %rep) #7
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %sub) #7
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %s) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
