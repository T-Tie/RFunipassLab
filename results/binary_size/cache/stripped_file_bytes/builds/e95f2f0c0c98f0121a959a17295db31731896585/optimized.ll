; ModuleID = '<stdin>'
source_filename = "/tmp/tmpeh6lwhuj.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %shu = alloca [200 x i32], align 16
  %zi = alloca [301 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %shu) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %shu, i8 0, i64 800, i1 false)
  call void @llvm.lifetime.start.p0(i64 301, ptr nonnull %zi) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %zi)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %zi) #8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %a.0 = phi i32 [ %a.1, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %call2
  br i1 %exitcond.not, label %for.cond24, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [301 x i8], ptr %zi, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %1 = and i8 %0, -33
  %2 = add i8 %1, -65
  %or.cond19 = icmp ult i8 %2, 26
  br i1 %or.cond19, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %conv20 = zext nneg i8 %0 to i64
  %sub = add nsw i64 %conv20, -65
  %arrayidx22 = getelementptr inbounds [200 x i32], ptr %shu, i64 0, i64 %sub
  %3 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %arrayidx22, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %a.1 = phi i32 [ 1, %if.then ], [ %a.0, %for.body ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.cond24:                                       ; preds = %for.cond, %for.inc35
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc35 ], [ 0, %for.cond ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, 26
  br i1 %exitcond25.not, label %for.cond38, label %for.body26

for.body26:                                       ; preds = %for.cond24
  %arrayidx28 = getelementptr inbounds nuw [200 x i32], ptr %shu, i64 0, i64 %indvars.iv21
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !8
  %cmp29 = icmp sgt i32 %4, 0
  br i1 %cmp29, label %if.then30, label %for.inc35

if.then30:                                        ; preds = %for.body26
  %5 = trunc i64 %indvars.iv21 to i32
  %6 = add i32 %5, 65
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6, i32 noundef %4)
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26, %if.then30
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond24, !llvm.loop !13

for.cond38:                                       ; preds = %for.cond24, %for.inc50
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc50 ], [ 32, %for.cond24 ]
  %exitcond30.not = icmp eq i64 %indvars.iv26, 58
  br i1 %exitcond30.not, label %for.end52, label %for.body40

for.body40:                                       ; preds = %for.cond38
  %arrayidx42 = getelementptr inbounds nuw [200 x i32], ptr %shu, i64 0, i64 %indvars.iv26
  %7 = load i32, ptr %arrayidx42, align 4, !tbaa !8
  %cmp43 = icmp sgt i32 %7, 0
  br i1 %cmp43, label %if.then44, label %for.inc50

if.then44:                                        ; preds = %for.body40
  %8 = trunc i64 %indvars.iv26 to i32
  %9 = add i32 %8, 65
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9, i32 noundef %7)
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40, %if.then44
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond38, !llvm.loop !14

for.end52:                                        ; preds = %for.cond38
  %cmp53 = icmp eq i32 %a.0, 0
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %for.end52
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %for.end52
  call void @llvm.lifetime.end.p0(i64 301, ptr nonnull %zi) #7
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %shu) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
