; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqu_ydsxv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %z = alloca [1000 x i8], align 16
  %x = alloca [20 x i8], align 16
  %n = alloca i32, align 4
  %h = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %z) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %x) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %h) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %z)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %z) #8
  %conv = trunc i64 %call3 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %idxprom12 = sext i32 %0 to i64
  %arrayidx13 = getelementptr inbounds [20 x i8], ptr %x, i64 0, i64 %idxprom12
  %sext = shl i64 %call3, 32
  %1 = ashr exact i64 %sext, 32
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %2 = add i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc42 ], [ 0, %entry ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond45.preheader, label %for.body

for.cond45.preheader:                             ; preds = %for.cond
  %add52 = add i32 %sub, 1
  %3 = sext i32 %sub to i64
  %wide.trip.count82 = zext i32 %add52 to i64
  br label %for.cond45

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %4 = add nsw i64 %indvars.iv, %idxprom12
  br label %for.cond4

for.cond4:                                        ; preds = %for.body6, %for.body
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.body6 ], [ %indvars.iv, %for.body ]
  %cmp5 = icmp slt i64 %indvars.iv65, %4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [1000 x i8], ptr %z, i64 0, i64 %indvars.iv65
  %5 = load i8, ptr %arrayidx8, align 1, !tbaa !9
  %6 = sub nuw nsw i64 %indvars.iv65, %indvars.iv
  %arrayidx11 = getelementptr inbounds nuw [20 x i8], ptr %x, i64 0, i64 %6
  store i8 %5, ptr %arrayidx11, align 1, !tbaa !9
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond4, !llvm.loop !10

for.end:                                          ; preds = %for.cond4
  store i8 0, ptr %arrayidx13, align 1, !tbaa !9
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc39, %for.end
  %7 = phi i32 [ %12, %for.inc39 ], [ 0, %for.end ]
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc39 ], [ %indvars.iv, %for.end ]
  %cmp15 = icmp slt i64 %indvars.iv69, %1
  br i1 %cmp15, label %for.cond17.preheader, label %for.inc42

for.cond17.preheader:                             ; preds = %for.cond14
  %8 = add nsw i64 %indvars.iv69, %idxprom12
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body20
  %indvars.iv71 = phi i64 [ %indvars.iv69, %for.cond17.preheader ], [ %indvars.iv.next72, %for.body20 ]
  %p.0 = phi i32 [ 0, %for.cond17.preheader ], [ %spec.select, %for.body20 ]
  %cmp19 = icmp slt i64 %indvars.iv71, %8
  br i1 %cmp19, label %for.body20, label %for.end32

for.body20:                                       ; preds = %for.cond17
  %9 = sub nuw nsw i64 %indvars.iv71, %indvars.iv69
  %arrayidx23 = getelementptr inbounds nuw [20 x i8], ptr %x, i64 0, i64 %9
  %10 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx26 = getelementptr inbounds nuw [1000 x i8], ptr %z, i64 0, i64 %indvars.iv71
  %11 = load i8, ptr %arrayidx26, align 1, !tbaa !9
  %cmp28 = icmp eq i8 %10, %11
  %inc29 = zext i1 %cmp28 to i32
  %spec.select = add nuw nsw i32 %p.0, %inc29
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond17, !llvm.loop !13

for.end32:                                        ; preds = %for.cond17
  %cmp33 = icmp eq i32 %p.0, %0
  br i1 %cmp33, label %if.then34, label %for.inc39

if.then34:                                        ; preds = %for.end32
  %inc37 = add nsw i32 %7, 1
  store i32 %inc37, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc39

for.inc39:                                        ; preds = %for.end32, %if.then34
  %12 = phi i32 [ %7, %for.end32 ], [ %inc37, %if.then34 ]
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond14, !llvm.loop !14

for.inc42:                                        ; preds = %for.cond14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !15

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc84
  %indvars.iv84 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next85, %for.inc84 ]
  %exitcond88 = icmp eq i64 %indvars.iv84, %wide.trip.count
  br i1 %exitcond88, label %for.end86, label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %for.cond45
  %arrayidx56 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv84
  br label %for.cond50

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body54
  %indvars.iv79 = phi i64 [ 0, %for.cond50.preheader ], [ %indvars.iv.next80, %for.body54 ]
  %count.0 = phi i32 [ 0, %for.cond50.preheader ], [ %spec.select56, %for.body54 ]
  %dount.0 = phi i32 [ 0, %for.cond50.preheader ], [ %dount.1, %for.body54 ]
  %exitcond83 = icmp eq i64 %indvars.iv79, %wide.trip.count82
  br i1 %exitcond83, label %for.end73, label %for.body54

for.body54:                                       ; preds = %for.cond50
  %13 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %arrayidx58 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv79
  %14 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %cmp59.not = icmp sge i32 %13, %14
  %inc61 = zext i1 %cmp59.not to i32
  %spec.select56 = add nuw nsw i32 %count.0, %inc61
  %cmp67 = icmp sgt i32 %13, %14
  %inc69 = zext i1 %cmp67 to i32
  %dount.1 = add nuw nsw i32 %dount.0, %inc69
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond50, !llvm.loop !16

for.end73:                                        ; preds = %for.cond50
  %cmp76 = icmp eq i32 %count.0, %add52
  %cmp77 = icmp ne i32 %dount.0, 0
  %or.cond = select i1 %cmp76, i1 %cmp77, i1 false
  br i1 %or.cond, label %if.then78, label %for.inc84

if.then78:                                        ; preds = %for.end73
  %idxprom79 = and i64 %indvars.iv84, 4294967295
  %arrayidx80 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %idxprom79
  %15 = load i32, ptr %arrayidx80, align 4, !tbaa !5
  %call81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %15)
  br label %for.end86

for.inc84:                                        ; preds = %for.end73
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond45, !llvm.loop !17

for.end86:                                        ; preds = %for.cond45, %if.then78
  %cmp48.not105 = icmp sgt i64 %indvars.iv84, %3
  %16 = add i32 %conv, 1
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc138, %for.end86
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.inc138 ], [ 0, %for.end86 ]
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %sub88 = sub nsw i32 %conv, %17
  %18 = sext i32 %sub88 to i64
  %cmp90.not = icmp sgt i64 %indvars.iv101, %18
  br i1 %cmp90.not, label %for.end140, label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %for.cond87
  %arrayidx98 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv101
  %19 = sub i32 %16, %17
  %wide.trip.count92 = zext i32 %19 to i64
  br label %for.cond92

for.cond92:                                       ; preds = %for.cond92.preheader, %for.body96
  %indvars.iv89 = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next90, %for.body96 ]
  %count.2 = phi i32 [ 0, %for.cond92.preheader ], [ %spec.select57, %for.body96 ]
  %dount.2 = phi i32 [ 0, %for.cond92.preheader ], [ %dount.3, %for.body96 ]
  %exitcond93 = icmp eq i64 %indvars.iv89, %wide.trip.count92
  br i1 %exitcond93, label %for.end115, label %for.body96

for.body96:                                       ; preds = %for.cond92
  %20 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %arrayidx100 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv89
  %21 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %cmp101.not = icmp sge i32 %20, %21
  %inc103 = zext i1 %cmp101.not to i32
  %spec.select57 = add nuw nsw i32 %count.2, %inc103
  %cmp109 = icmp sgt i32 %20, %21
  %inc111 = zext i1 %cmp109 to i32
  %dount.3 = add nuw nsw i32 %dount.2, %inc111
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond92, !llvm.loop !18

for.end115:                                       ; preds = %for.cond92
  %add94 = add nsw i32 %sub88, 1
  %cmp116.not = icmp ne i32 %dount.2, 0
  %cmp120 = icmp eq i32 %count.2, %add94
  %or.cond58 = select i1 %cmp116.not, i1 %cmp120, i1 false
  br i1 %or.cond58, label %for.cond122.preheader, label %for.inc138

for.cond122.preheader:                            ; preds = %for.end115
  %smax98 = call i32 @llvm.smax.i32(i32 %17, i32 0)
  %wide.trip.count99 = zext nneg i32 %smax98 to i64
  br label %for.cond122

for.cond122:                                      ; preds = %for.cond122.preheader, %for.body124
  %indvars.iv94 = phi i64 [ 0, %for.cond122.preheader ], [ %indvars.iv.next95, %for.body124 ]
  %exitcond100.not = icmp eq i64 %indvars.iv94, %wide.trip.count99
  br i1 %exitcond100.not, label %for.end132, label %for.body124

for.body124:                                      ; preds = %for.cond122
  %22 = add nuw nsw i64 %indvars.iv94, %indvars.iv101
  %arrayidx127 = getelementptr inbounds nuw [1000 x i8], ptr %z, i64 0, i64 %22
  %23 = load i8, ptr %arrayidx127, align 1, !tbaa !9
  %arrayidx129 = getelementptr inbounds nuw [20 x i8], ptr %x, i64 0, i64 %indvars.iv94
  store i8 %23, ptr %arrayidx129, align 1, !tbaa !9
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond122, !llvm.loop !19

for.end132:                                       ; preds = %for.cond122
  %idxprom133 = sext i32 %17 to i64
  %arrayidx134 = getelementptr inbounds [20 x i8], ptr %x, i64 0, i64 %idxprom133
  store i8 0, ptr %arrayidx134, align 1, !tbaa !9
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %x)
  br label %for.inc138

for.inc138:                                       ; preds = %for.end115, %for.end132
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond87, !llvm.loop !20

for.end140:                                       ; preds = %for.cond87
  br i1 %cmp48.not105, label %if.then142, label %if.end144

if.then142:                                       ; preds = %for.end140
  %call143 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %for.end140
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %h) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %x) #7
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %z) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
