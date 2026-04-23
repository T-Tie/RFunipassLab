; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9jyiknei.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [501 x i8], align 16
  %str = alloca [500 x [5 x i8]], align 16
  %a = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef nonnull align 16 %s) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2500, ptr noundef nonnull align 16 %str) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %a) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %conv = trunc i64 %call3 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2500) %str, i8 noundef 0, i64 noundef 2500, i1 noundef false)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 noundef -1)
  %1 = add i32 %smax, 1
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond5.preheader, label %for.inc

for.cond5.preheader:                              ; preds = %for.cond
  %smax49 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count50 = zext nneg i32 %smax49 to i64
  br label %for.cond5

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc22
  %indvars.iv52 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next53, %for.inc22 ]
  %exitcond56 = icmp eq i64 %indvars.iv52, %wide.trip.count
  br i1 %exitcond56, label %for.cond25.preheader, label %for.cond9

for.cond25.preheader:                             ; preds = %for.cond5
  %smax70 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  %wide.trip.count71 = zext nneg i32 %smax70 to i64
  %wide.trip.count67 = zext i32 %sub to i64
  br label %for.cond25

for.cond9:                                        ; preds = %for.cond5, %for.inc19
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc19 ], [ 0, %for.cond5 ]
  %exitcond51.not = icmp eq i64 %indvars.iv43, %wide.trip.count50
  br i1 %exitcond51.not, label %for.inc22, label %for.inc19

for.inc19:                                        ; preds = %for.cond9
  %2 = add nuw nsw i64 %indvars.iv43, %indvars.iv52
  %arrayidx13 = getelementptr inbounds nuw [501 x i8], ptr %s, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx13, align 1, !tbaa !12, !invariant.load !13
  %arrayidx17 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvars.iv52, i64 %indvars.iv43
  store i8 %3, ptr %arrayidx17, align 1, !tbaa !12
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond9, !llvm.loop !14

for.inc22:                                        ; preds = %for.cond9
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond5, !llvm.loop !15

for.cond25:                                       ; preds = %for.cond25.preheader, %for.inc69
  %indvars.iv62 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next63, %for.inc69 ]
  %exitcond72.not = icmp eq i64 %indvars.iv62, %wide.trip.count71
  br i1 %exitcond72.not, label %for.end71, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond25
  %arrayidx35 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvars.iv62
  %arrayidx54 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv62
  br label %for.cond30

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc66
  %indvars.iv64 = phi i64 [ %indvars.iv62, %for.cond30.preheader ], [ %indvars.iv.next65, %for.inc66 ]
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond68.not = icmp eq i64 %indvars.iv64, %wide.trip.count67
  br i1 %exitcond68.not, label %for.inc69, label %for.body33

for.body33:                                       ; preds = %for.cond30
  %4 = load i8, ptr %arrayidx35, align 1, !tbaa !12, !invariant.load !13
  %cmp38.not = icmp eq i8 %4, 48
  br i1 %cmp38.not, label %for.inc66, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body33
  %arrayidx40 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvars.iv.next65
  %5 = load i8, ptr %arrayidx40, align 1, !tbaa !12, !invariant.load !13
  %cmp43.not = icmp eq i8 %5, 48
  br i1 %cmp43.not, label %for.inc66, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true
  %call51 = call i32 @strcmp(ptr noundef nonnull readonly captures(none) dereferenceable(1) %arrayidx35, ptr noundef nonnull readonly captures(none) dereferenceable(1) %arrayidx40) #8
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then, label %for.inc66

if.then:                                          ; preds = %land.lhs.true44
  %6 = load i32, ptr %arrayidx54, align 4, !tbaa !5, !invariant.load !13
  %inc55 = add nsw i32 %6, 1
  store i32 %inc55, ptr %arrayidx54, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc63, %if.then
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc63 ], [ 0, %if.then ]
  %exitcond61.not = icmp eq i64 %indvars.iv57, %wide.trip.count50
  br i1 %exitcond61.not, label %for.inc66, label %for.inc63

for.inc63:                                        ; preds = %for.cond56
  %arrayidx62 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvars.iv.next65, i64 %indvars.iv57
  store i8 48, ptr %arrayidx62, align 1, !tbaa !12
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond56, !llvm.loop !16

for.inc66:                                        ; preds = %for.cond56, %for.body33, %land.lhs.true, %land.lhs.true44
  br label %for.cond30, !llvm.loop !17

for.inc69:                                        ; preds = %for.cond30
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond25, !llvm.loop !18

for.end71:                                        ; preds = %for.cond25
  %7 = load i32, ptr %a, align 16, !tbaa !5
  %8 = add nuw i32 %smax70, 1
  %wide.trip.count76 = zext i32 %8 to i64
  br label %for.cond73

for.cond73:                                       ; preds = %for.body76, %for.end71
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.body76 ], [ 1, %for.end71 ]
  %m.0 = phi i32 [ %spec.select, %for.body76 ], [ %7, %for.end71 ]
  %exitcond77 = icmp eq i64 %indvars.iv73, %wide.trip.count76
  br i1 %exitcond77, label %for.end86, label %for.body76

for.body76:                                       ; preds = %for.cond73
  %arrayidx78 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv73
  %9 = load i32, ptr %arrayidx78, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smax.i32(i32 %m.0, i32 %9)
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond73, !llvm.loop !19

for.end86:                                        ; preds = %for.cond73
  %cmp87 = icmp slt i32 %m.0, 2
  br i1 %cmp87, label %if.then88, label %if.else

if.then88:                                        ; preds = %for.end86
  %puts41 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @str) #9
  br label %cleanup

if.else:                                          ; preds = %for.end86
  %call90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %m.0) #9
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc104, %if.else
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.inc104 ], [ 0, %if.else ]
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %sub92 = sub nsw i32 %conv, %10
  %11 = sext i32 %sub92 to i64
  %cmp93.not = icmp sgt i64 %indvars.iv78, %11
  br i1 %cmp93.not, label %cleanup, label %for.body94

for.body94:                                       ; preds = %for.cond91
  %arrayidx96 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv78
  %12 = load i32, ptr %arrayidx96, align 4, !tbaa !5, !invariant.load !13
  %cmp97 = icmp eq i32 %12, %m.0
  br i1 %cmp97, label %if.then98, label %for.inc104

if.then98:                                        ; preds = %for.body94
  %arrayidx100 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvars.iv78
  %puts = call i32 @puts(ptr noundef nonnull readonly captures(none) dereferenceable(1) %arrayidx100) #9
  br label %for.inc104

for.inc104:                                       ; preds = %for.body94, %if.then98
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond91, !llvm.loop !20

cleanup:                                          ; preds = %for.cond91, %if.then88
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 2500, ptr noundef nonnull %str) #9
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef nonnull %s) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
