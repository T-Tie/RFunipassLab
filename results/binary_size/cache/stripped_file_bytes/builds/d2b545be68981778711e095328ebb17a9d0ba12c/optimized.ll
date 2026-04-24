; ModuleID = '<stdin>'
source_filename = "/tmp/tmppo7ggh5u.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [256 x i8], align 16
  %s1 = alloca [256 x i8], align 16
  %t = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s1) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %t) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s, ptr noundef nonnull %s1, ptr noundef nonnull %t)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s1) #7
  %conv = trunc i64 %call4 to i32
  %0 = add i32 %conv, -2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc ], [ 2, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %k.0 = phi i32 [ %k.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %s, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %idxprom11 = sext i32 %k.0 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], ptr %s1, i64 0, i64 %idxprom11
  %2 = load i8, ptr %arrayidx12, align 1, !tbaa !5
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %k.0, 1
  %cmp14 = icmp eq i32 %k.0, %0
  br i1 %cmp14, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %k.1 = phi i32 [ %inc, %if.then ], [ 0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next21 = add i64 %indvars.iv20, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then, %for.cond
  %call20 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #7
  %cmp21.not = icmp ugt i64 %call20, %indvars.iv
  br i1 %cmp21.not, label %for.cond26.preheader, label %if.then22

for.cond26.preheader:                             ; preds = %for.end
  %reass.sub = sub i64 %indvars.iv, %call4
  %add = shl i64 %reass.sub, 32
  %sext = add i64 %add, 8589934592
  %3 = ashr exact i64 %sext, 32
  br label %for.cond26

if.then22:                                        ; preds = %for.end
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %s)
  br label %if.end54

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %indvars.iv17 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next18, %for.body29 ]
  %cmp28 = icmp slt i64 %indvars.iv17, %3
  br i1 %cmp28, label %for.body29, label %for.end36

for.body29:                                       ; preds = %for.cond26
  %arrayidx31 = getelementptr inbounds nuw [256 x i8], ptr %s, i64 0, i64 %indvars.iv17
  %4 = load i8, ptr %arrayidx31, align 1, !tbaa !5
  %conv32 = sext i8 %4 to i32
  %putchar15 = call i32 @putchar(i32 %conv32)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond26, !llvm.loop !11

for.end36:                                        ; preds = %for.cond26
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %t)
  br label %for.cond40

for.cond40:                                       ; preds = %for.body45, %for.end36
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.body45 ], [ %indvars.iv20, %for.end36 ]
  %call43 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #7
  %cmp44 = icmp ugt i64 %call43, %indvars.iv22
  br i1 %cmp44, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond40
  %arrayidx47 = getelementptr inbounds nuw [256 x i8], ptr %s, i64 0, i64 %indvars.iv22
  %5 = load i8, ptr %arrayidx47, align 1, !tbaa !5
  %conv48 = sext i8 %5 to i32
  %putchar14 = call i32 @putchar(i32 %conv48)
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond40, !llvm.loop !12

for.end52:                                        ; preds = %for.cond40
  %putchar = call i32 @putchar(i32 10)
  br label %if.end54

if.end54:                                         ; preds = %for.end52, %if.then22
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %t) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s1) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s) #6
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
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
