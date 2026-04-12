; ModuleID = '<stdin>'
source_filename = "/tmp/tmp24ykvobt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [26 x i8], align 16
  %b = alloca [26 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %a, i8 0, i64 26, i1 false)
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %b, i8 0, i64 26, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc ]
  %exitcond.not = icmp eq i32 %i.0, 300
  br i1 %exitcond.not, label %for.cond27.preheader, label %for.body

for.cond27.preheader:                             ; preds = %for.body, %for.cond
  br label %for.cond27

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = tail call i32 @getc(ptr noundef %0)
  %sext = shl i32 %call.i, 24
  %cmp2 = icmp eq i32 %sext, 167772160
  br i1 %cmp2, label %for.cond27.preheader, label %if.end

if.end:                                           ; preds = %for.body
  %conv1 = ashr exact i32 %sext, 24
  %conv = trunc i32 %call.i to i8
  %1 = add nsw i32 %conv1, -65
  %or.cond = icmp ult i32 %1, 26
  br i1 %or.cond, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  %conv9 = add i8 %conv, -65
  %idxprom = zext i8 %conv9 to i64
  %arrayidx = getelementptr inbounds nuw [26 x i8], ptr %b, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %inc = add i8 %2, 1
  store i8 %inc, ptr %arrayidx, align 1, !tbaa !10
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end
  %temp.0 = phi i8 [ %conv9, %if.then7 ], [ %conv, %if.end ]
  %3 = add i8 %temp.0, -97
  %or.cond1 = icmp ult i8 %3, 26
  br i1 %or.cond1, label %if.then17, label %for.inc

if.then17:                                        ; preds = %if.end11
  %idxprom22 = zext nneg i8 %3 to i64
  %arrayidx23 = getelementptr inbounds nuw [26 x i8], ptr %a, i64 0, i64 %idxprom22
  %4 = load i8, ptr %arrayidx23, align 1, !tbaa !10
  %inc24 = add i8 %4, 1
  store i8 %inc24, ptr %arrayidx23, align 1, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %if.then17
  %inc26 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.cond27:                                       ; preds = %for.cond27.preheader, %for.inc38
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc38 ], [ 0, %for.cond27.preheader ]
  %test.0 = phi i32 [ %test.1, %for.inc38 ], [ 1, %for.cond27.preheader ]
  %exitcond24.not = icmp eq i64 %indvars.iv, 26
  br i1 %exitcond24.not, label %for.cond41, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw [26 x i8], ptr %b, i64 0, i64 %indvars.iv
  %5 = load i8, ptr %arrayidx31, align 1, !tbaa !10
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.inc38, label %if.then32

if.then32:                                        ; preds = %for.body29
  %conv35 = sext i8 %5 to i32
  %6 = trunc i64 %indvars.iv to i32
  %7 = add i32 %6, 65
  %call36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7, i32 noundef %conv35)
  br label %for.inc38

for.inc38:                                        ; preds = %for.body29, %if.then32
  %test.1 = phi i32 [ 0, %if.then32 ], [ %test.0, %for.body29 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond27, !llvm.loop !14

for.cond41:                                       ; preds = %for.cond27, %for.inc54
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc54 ], [ 0, %for.cond27 ]
  %test.2 = phi i32 [ %test.3, %for.inc54 ], [ %test.0, %for.cond27 ]
  %exitcond29.not = icmp eq i64 %indvars.iv25, 26
  br i1 %exitcond29.not, label %for.end56, label %for.body43

for.body43:                                       ; preds = %for.cond41
  %arrayidx45 = getelementptr inbounds nuw [26 x i8], ptr %a, i64 0, i64 %indvars.iv25
  %8 = load i8, ptr %arrayidx45, align 1, !tbaa !10
  %tobool46.not = icmp eq i8 %8, 0
  br i1 %tobool46.not, label %for.inc54, label %if.then47

if.then47:                                        ; preds = %for.body43
  %conv51 = sext i8 %8 to i32
  %9 = trunc i64 %indvars.iv25 to i32
  %10 = add i32 %9, 97
  %call52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %10, i32 noundef %conv51)
  br label %for.inc54

for.inc54:                                        ; preds = %for.body43, %if.then47
  %test.3 = phi i32 [ 0, %if.then47 ], [ %test.2, %for.body43 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond41, !llvm.loop !15

for.end56:                                        ; preds = %for.cond41
  %tobool57.not = icmp eq i32 %test.2, 0
  br i1 %tobool57.not, label %if.end60, label %if.then58

if.then58:                                        ; preds = %for.end56
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %for.end56
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
