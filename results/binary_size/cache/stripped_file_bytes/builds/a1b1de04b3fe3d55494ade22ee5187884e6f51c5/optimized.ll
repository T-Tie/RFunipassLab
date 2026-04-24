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
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef nonnull align 16 %z) #5
  call void @llvm.lifetime.start.p0(i64 noundef 20, ptr noundef nonnull align 16 %x) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %h) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %z)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %z) #7
  %conv = trunc i64 %call3 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %idxprom12 = sext i32 %0 to i64
  %arrayidx13 = getelementptr inbounds [20 x i8], ptr %x, i64 0, i64 %idxprom12
  %sext = shl i64 %call3, 32
  %1 = ashr exact i64 %sext, 32
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 noundef -1)
  %2 = add i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end41, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end41 ], [ 0, %entry ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond45.preheader, label %for.body

for.cond45.preheader:                             ; preds = %for.cond
  %add47 = add i32 %sub, 1
  %3 = sext i32 %sub to i64
  %wide.trip.count84 = zext i32 %add47 to i64
  br label %for.cond45

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %4 = add nsw i64 %indvars.iv, %idxprom12
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc ], [ %indvars.iv, %for.body ]
  %cmp5 = icmp slt i64 %indvars.iv67, %4
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [1000 x i8], ptr %z, i64 0, i64 %indvars.iv67
  %5 = load i8, ptr %arrayidx8, align 1, !tbaa !9, !invariant.load !10
  %6 = sub nuw nsw i64 %indvars.iv67, %indvars.iv
  %arrayidx11 = getelementptr inbounds nuw [20 x i8], ptr %x, i64 0, i64 %6
  store i8 %5, ptr %arrayidx11, align 1, !tbaa !9
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond4, !llvm.loop !11

for.end:                                          ; preds = %for.cond4
  store i8 0, ptr %arrayidx13, align 1, !tbaa !9
  br label %for.cond14

for.cond14:                                       ; preds = %if.end38, %for.end
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %if.end38 ], [ %indvars.iv, %for.end ]
  %cmp15 = icmp slt i64 %indvars.iv71, %1
  br i1 %cmp15, label %for.cond17.preheader, label %for.end41

for.cond17.preheader:                             ; preds = %for.cond14
  %7 = add nsw i64 %indvars.iv71, %idxprom12
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body20
  %indvars.iv73 = phi i64 [ %indvars.iv71, %for.cond17.preheader ], [ %indvars.iv.next74, %for.body20 ]
  %p.0 = phi i32 [ 0, %for.cond17.preheader ], [ %spec.select, %for.body20 ]
  %cmp19 = icmp slt i64 %indvars.iv73, %7
  br i1 %cmp19, label %for.body20, label %for.end32

for.body20:                                       ; preds = %for.cond17
  %8 = sub nuw nsw i64 %indvars.iv73, %indvars.iv71
  %arrayidx23 = getelementptr inbounds nuw [20 x i8], ptr %x, i64 0, i64 %8
  %9 = load i8, ptr %arrayidx23, align 1, !tbaa !9, !invariant.load !10
  %arrayidx26 = getelementptr inbounds nuw [1000 x i8], ptr %z, i64 0, i64 %indvars.iv73
  %10 = load i8, ptr %arrayidx26, align 1, !tbaa !9, !invariant.load !10
  %cmp28 = icmp eq i8 %9, %10
  %inc29 = zext i1 %cmp28 to i32
  %spec.select = add nuw nsw i32 %p.0, %inc29
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond17, !llvm.loop !14

for.end32:                                        ; preds = %for.cond17
  %cmp33 = icmp eq i32 %p.0, %0
  br i1 %cmp33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %for.end32
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %for.end32
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond14

for.end41:                                        ; preds = %for.cond14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.cond45:                                       ; preds = %for.cond45.preheader, %if.end83
  %indvars.iv86 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next87, %if.end83 ]
  %exitcond90 = icmp eq i64 %indvars.iv86, %wide.trip.count
  br i1 %exitcond90, label %for.end86, label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %for.cond45
  %arrayidx56 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv86
  br label %for.cond50

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body54
  %indvars.iv81 = phi i64 [ 0, %for.cond50.preheader ], [ %indvars.iv.next82, %for.body54 ]
  %count.0 = phi i32 [ 0, %for.cond50.preheader ], [ %spec.select58, %for.body54 ]
  %dount.0 = phi i32 [ 0, %for.cond50.preheader ], [ %dount.1, %for.body54 ]
  %exitcond85 = icmp eq i64 %indvars.iv81, %wide.trip.count84
  br i1 %exitcond85, label %for.end73, label %for.body54

for.body54:                                       ; preds = %for.cond50
  %11 = load i32, ptr %arrayidx56, align 4, !tbaa !5, !invariant.load !10
  %arrayidx58 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv81
  %12 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !10
  %cmp59.not = icmp sge i32 %11, %12
  %inc61 = zext i1 %cmp59.not to i32
  %spec.select58 = add nuw nsw i32 %count.0, %inc61
  %cmp67 = icmp sgt i32 %11, %12
  %inc69 = zext i1 %cmp67 to i32
  %dount.1 = add nuw nsw i32 %dount.0, %inc69
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond50, !llvm.loop !15

for.end73:                                        ; preds = %for.cond50
  %cmp76 = icmp eq i32 %count.0, %add47
  %cmp77 = icmp ne i32 %dount.0, 0
  %or.cond = select i1 %cmp76, i1 %cmp77, i1 false
  br i1 %or.cond, label %if.then78, label %if.end83

if.then78:                                        ; preds = %for.end73
  %idxprom79 = and i64 %indvars.iv86, 4294967295
  %arrayidx80 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %idxprom79
  %13 = load i32, ptr %arrayidx80, align 4, !tbaa !5, !invariant.load !10
  %call81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %13) #8
  br label %for.end86

if.end83:                                         ; preds = %for.end73
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond45

for.end86:                                        ; preds = %for.cond45, %if.then78
  %indvars.iv86114 = phi i64 [ %indvars.iv86, %if.then78 ], [ %wide.trip.count, %for.cond45 ]
  %14 = add i32 %conv, 1
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc138, %for.end86
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.inc138 ], [ 0, %for.end86 ]
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %sub88 = sub nsw i32 %conv, %15
  %add89 = add nsw i32 %sub88, 1
  %16 = sext i32 %sub88 to i64
  %cmp90.not = icmp sgt i64 %indvars.iv103, %16
  br i1 %cmp90.not, label %for.end140, label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %for.cond87
  %arrayidx98 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv103
  %17 = sub i32 %14, %15
  %wide.trip.count94 = zext i32 %17 to i64
  br label %for.cond92

for.cond92:                                       ; preds = %for.cond92.preheader, %for.body96
  %indvars.iv91 = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next92, %for.body96 ]
  %count.2 = phi i32 [ 0, %for.cond92.preheader ], [ %spec.select59, %for.body96 ]
  %dount.2 = phi i32 [ 0, %for.cond92.preheader ], [ %dount.3, %for.body96 ]
  %exitcond95 = icmp eq i64 %indvars.iv91, %wide.trip.count94
  br i1 %exitcond95, label %for.end115, label %for.body96

for.body96:                                       ; preds = %for.cond92
  %18 = load i32, ptr %arrayidx98, align 4, !tbaa !5, !invariant.load !10
  %arrayidx100 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv91
  %19 = load i32, ptr %arrayidx100, align 4, !tbaa !5, !invariant.load !10
  %cmp101.not = icmp sge i32 %18, %19
  %inc103 = zext i1 %cmp101.not to i32
  %spec.select59 = add nuw nsw i32 %count.2, %inc103
  %cmp109 = icmp sgt i32 %18, %19
  %inc111 = zext i1 %cmp109 to i32
  %dount.3 = add nuw nsw i32 %dount.2, %inc111
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond92, !llvm.loop !16

for.end115:                                       ; preds = %for.cond92
  %cmp116 = icmp ne i32 %dount.2, 0
  %cmp120 = icmp eq i32 %count.2, %add89
  %or.cond60 = select i1 %cmp116, i1 %cmp120, i1 false
  br i1 %or.cond60, label %for.cond122.preheader, label %for.inc138

for.cond122.preheader:                            ; preds = %for.end115
  %smax100 = call i32 @llvm.smax.i32(i32 %15, i32 noundef 0)
  %wide.trip.count101 = zext nneg i32 %smax100 to i64
  br label %for.cond122

for.cond122:                                      ; preds = %for.cond122.preheader, %for.inc130
  %indvars.iv96 = phi i64 [ 0, %for.cond122.preheader ], [ %indvars.iv.next97, %for.inc130 ]
  %exitcond102.not = icmp eq i64 %indvars.iv96, %wide.trip.count101
  br i1 %exitcond102.not, label %for.end132, label %for.inc130

for.inc130:                                       ; preds = %for.cond122
  %20 = add nuw nsw i64 %indvars.iv96, %indvars.iv103
  %arrayidx127 = getelementptr inbounds nuw [1000 x i8], ptr %z, i64 0, i64 %20
  %21 = load i8, ptr %arrayidx127, align 1, !tbaa !9
  %arrayidx129 = getelementptr inbounds nuw [20 x i8], ptr %x, i64 0, i64 %indvars.iv96
  store i8 %21, ptr %arrayidx129, align 1, !tbaa !9
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond122, !llvm.loop !17

for.end132:                                       ; preds = %for.cond122
  %idxprom133 = sext i32 %15 to i64
  %arrayidx134 = getelementptr inbounds [20 x i8], ptr %x, i64 0, i64 %idxprom133
  store i8 0, ptr %arrayidx134, align 1, !tbaa !9
  %puts = call i32 @puts(ptr noundef nonnull readonly captures(none) dereferenceable(1) %x) #8
  br label %for.inc138

for.inc138:                                       ; preds = %for.end115, %for.end132
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond87, !llvm.loop !18

for.end140:                                       ; preds = %for.cond87
  %cmp48.not107 = icmp sgt i64 %indvars.iv86114, %3
  br i1 %cmp48.not107, label %if.then142, label %if.end144

if.then142:                                       ; preds = %for.end140
  %call143 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) #8
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %for.end140
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %h) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 20, ptr noundef nonnull %x) #8
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef nonnull %z) #8
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
