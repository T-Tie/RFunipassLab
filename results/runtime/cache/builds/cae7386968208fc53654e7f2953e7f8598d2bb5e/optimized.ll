; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfwx1s0w8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.b = private unnamed_addr constant <{ i8, [25 x i8] }> <{ i8 97, [25 x i8] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %a = alloca [301 x i8], align 16
  %b = alloca [26 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 301, ptr noundef nonnull align 16 %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(301) %a, i8 noundef 0, i64 noundef 301, i1 noundef false) #6
  store i8 48, ptr %a, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 26, ptr noundef nonnull align 16 %b) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(26) %b, ptr noundef nonnull readonly align 16 dereferenceable(26) @__const.main.b, i64 noundef 26, i1 noundef false) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv26 = phi i32 [ %indvars.iv.next27, %for.inc ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [301 x i8], ptr %a, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp = icmp eq i8 %0, 10
  br i1 %cmp, label %for.cond4.preheader, label %for.inc

for.cond4.preheader:                              ; preds = %for.cond
  %wide.trip.count = zext i32 %indvars.iv26 to i64
  br label %for.cond4

for.inc:                                          ; preds = %for.cond
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next27 = add nuw i32 %indvars.iv26, 1
  br label %for.cond, !llvm.loop !8

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body
  %indvars.iv23 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next24, %for.body ]
  %s.0 = phi i32 [ 0, %for.cond4.preheader ], [ %s.1, %for.body ]
  %exitcond = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond, label %for.end18, label %for.body

for.body:                                         ; preds = %for.cond4
  %arrayidx7 = getelementptr inbounds nuw [301 x i8], ptr %a, i64 0, i64 %indvars.iv23
  %1 = load i8, ptr %arrayidx7, align 1, !tbaa !5
  %2 = add i8 %1, -97
  %or.cond = icmp ult i8 %2, 26
  %add = zext i1 %or.cond to i32
  %s.1 = add nuw nsw i32 %add, %s.0
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond4, !llvm.loop !11

for.end18:                                        ; preds = %for.cond4
  %cmp19 = icmp eq i32 %s.0, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.end18
  %call21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.end18
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc58, %if.end22
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc58 ], [ 0, %if.end22 ]
  %exitcond37.not = icmp eq i64 %indvars.iv34, 26
  br i1 %exitcond37.not, label %for.end60, label %for.body25

for.body25:                                       ; preds = %for.cond23
  store i8 97, ptr %b, align 16, !tbaa !5
  %arrayidx28 = getelementptr inbounds nuw [26 x i8], ptr %b, i64 0, i64 %indvars.iv34
  %3 = load i8, ptr %arrayidx28, align 1, !tbaa !5
  %add30 = add i8 %3, 1
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %arrayidx34 = getelementptr inbounds nuw [26 x i8], ptr %b, i64 0, i64 %indvars.iv.next35
  store i8 %add30, ptr %arrayidx34, align 1, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.body37, %for.body25
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.body37 ], [ 0, %for.body25 ]
  %n.0 = phi i32 [ %spec.select, %for.body37 ], [ 0, %for.body25 ]
  %exitcond33 = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond33, label %for.end50, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx39 = getelementptr inbounds nuw [301 x i8], ptr %a, i64 0, i64 %indvars.iv28
  %4 = load i8, ptr %arrayidx39, align 1, !tbaa !5
  %cmp44 = icmp eq i8 %4, %3
  %inc46 = zext i1 %cmp44 to i32
  %spec.select = add nuw nsw i32 %inc46, %n.0
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond35, !llvm.loop !12

for.end50:                                        ; preds = %for.cond35
  %cmp51.not = icmp eq i32 %n.0, 0
  br i1 %cmp51.not, label %for.inc58, label %if.then52

if.then52:                                        ; preds = %for.end50
  %conv29 = sext i8 %3 to i32
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %conv29, i32 noundef %n.0)
  br label %for.inc58

for.inc58:                                        ; preds = %for.end50, %if.then52
  br label %for.cond23, !llvm.loop !13

for.end60:                                        ; preds = %for.cond23
  call void @llvm.lifetime.end.p0(i64 noundef 26, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 301, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind }

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
!13 = distinct !{!13, !9, !10}
