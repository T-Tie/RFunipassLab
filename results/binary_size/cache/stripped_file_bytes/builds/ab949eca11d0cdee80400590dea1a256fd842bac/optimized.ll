; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmn1afqrr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end17

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %2, %for.end ], [ %0, %for.cond ]
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.end ], [ 0, %for.cond ]
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %2 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %cmp5 = icmp sgt i32 %2, 0
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv5, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z6changePA100_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %a, i32 noundef %1) #6
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call13)
  br label %for.cond

for.end17:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z6changePA100_ii(ptr nofree noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %b = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 dereferenceable(40000) %b) #5
  %smax = call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 0)
  %wide.trip.count43 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end27, %entry
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.end27 ], [ 0, %entry ]
  %exitcond44.not = icmp eq i64 %indvars.iv40, %wide.trip.count43
  br i1 %exitcond44.not, label %for.cond31.preheader, label %for.body

for.cond31.preheader:                             ; preds = %for.cond
  %wide.trip.count48 = zext i32 %n to i64
  br label %for.cond31

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv40
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %s.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv40, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %s.0, i32 %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv35 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next36, %for.body16 ]
  %exitcond39.not = icmp eq i64 %indvars.iv35, %wide.trip.count
  br i1 %exitcond39.not, label %for.end27, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv40, i64 %indvars.iv35
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %2, %s.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond14

for.end27:                                        ; preds = %for.cond14
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond, !llvm.loop !13

for.cond31:                                       ; preds = %for.cond31.preheader, %for.end70
  %indvars.iv55 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next56, %for.end70 ]
  %exitcond59.not = icmp eq i64 %indvars.iv55, %wide.trip.count43
  br i1 %exitcond59.not, label %for.end73, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx36 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv55
  %3 = load i32, ptr %arrayidx36, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond37

for.cond37:                                       ; preds = %for.body39, %for.body33
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.body39 ], [ 0, %for.body33 ]
  %s.1 = phi i32 [ %spec.select33, %for.body39 ], [ %3, %for.body33 ]
  %exitcond49.not = icmp eq i64 %indvars.iv45, %wide.trip.count48
  br i1 %exitcond49.not, label %for.cond56.preheader, label %for.body39

for.cond56.preheader:                             ; preds = %for.cond37
  br label %for.cond56

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv45, i64 %indvars.iv55
  %4 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !9
  %spec.select33 = tail call i32 @llvm.smin.i32(i32 %s.1, i32 %4)
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond37, !llvm.loop !14

for.cond56:                                       ; preds = %for.cond56.preheader, %for.body58
  %indvars.iv50 = phi i64 [ 0, %for.cond56.preheader ], [ %indvars.iv.next51, %for.body58 ]
  %exitcond54.not = icmp eq i64 %indvars.iv50, %wide.trip.count48
  br i1 %exitcond54.not, label %for.end70, label %for.body58

for.body58:                                       ; preds = %for.cond56
  %arrayidx62 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv50, i64 %indvars.iv55
  %5 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !9
  %sub63 = sub nsw i32 %5, %s.1
  store i32 %sub63, ptr %arrayidx62, align 4, !tbaa !5
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond56, !llvm.loop !15

for.end70:                                        ; preds = %for.cond56
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond31

for.end73:                                        ; preds = %for.cond31
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %6 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %cmp76 = icmp sgt i32 %n, 2
  br i1 %cmp76, label %if.then, label %if.end

if.then:                                          ; preds = %for.end73
  %7 = load i32, ptr %a, align 4, !tbaa !5
  store i32 %7, ptr %b, align 16, !tbaa !5
  %wide.trip.count64 = zext nneg i32 %n to i64
  br label %for.cond81

for.cond81:                                       ; preds = %for.body83, %if.then
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.body83 ], [ 2, %if.then ]
  %exitcond65.not = icmp eq i64 %indvars.iv60, %wide.trip.count64
  br i1 %exitcond65.not, label %for.cond101, label %for.body83

for.body83:                                       ; preds = %for.cond81
  %arrayidx86 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv60
  %8 = load i32, ptr %arrayidx86, align 4, !tbaa !5, !invariant.load !9
  %9 = add nsw i64 %indvars.iv60, -1
  %arrayidx90 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %9
  store i32 %8, ptr %arrayidx90, align 4, !tbaa !5
  %arrayidx92 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv60
  %10 = load i32, ptr %arrayidx92, align 4, !tbaa !5, !invariant.load !9
  %arrayidx96 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %9
  store i32 %10, ptr %arrayidx96, align 16, !tbaa !5
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond81, !llvm.loop !16

for.cond101:                                      ; preds = %for.cond81, %for.end119
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.end119 ], [ 2, %for.cond81 ]
  %exitcond77.not = icmp eq i64 %indvars.iv72, %wide.trip.count64
  br i1 %exitcond77.not, label %for.end122, label %for.cond104.preheader

for.cond104.preheader:                            ; preds = %for.cond101
  %11 = add nsw i64 %indvars.iv72, -1
  br label %for.cond104

for.cond104:                                      ; preds = %for.cond104.preheader, %for.body106
  %indvars.iv66 = phi i64 [ 2, %for.cond104.preheader ], [ %indvars.iv.next67, %for.body106 ]
  %exitcond71.not = icmp eq i64 %indvars.iv66, %wide.trip.count64
  br i1 %exitcond71.not, label %for.end119, label %for.body106

for.body106:                                      ; preds = %for.cond104
  %arrayidx110 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv72, i64 %indvars.iv66
  %12 = load i32, ptr %arrayidx110, align 4, !tbaa !5, !invariant.load !9
  %13 = add nsw i64 %indvars.iv66, -1
  %arrayidx116 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %11, i64 %13
  store i32 %12, ptr %arrayidx116, align 4, !tbaa !5
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond104, !llvm.loop !17

for.end119:                                       ; preds = %for.cond104
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond101

for.end122:                                       ; preds = %for.cond101
  %sub123 = add nsw i32 %n, -1
  %call = call noundef i32 @_Z6changePA100_ii(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %b, i32 noundef %sub123) #7
  %add = add nsw i32 %call, %6
  br label %if.end

if.end:                                           ; preds = %for.end122, %for.end73
  %f.0 = phi i32 [ %add, %for.end122 ], [ %6, %for.end73 ]
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull align 16 dereferenceable(40000) %b) #5
  ret i32 %f.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nofree nosync nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
