; ModuleID = '<stdin>'
source_filename = "/tmp/tmppeboh2uh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [8 x i8] c"fail!!!\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s%s %c %d%f%s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s%s %c %d%g%s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s %s %c %d %g %s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
if.end:
  %call = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #5
  %fomer = getelementptr inbounds nuw i8, ptr %call, i64 72
  store ptr null, ptr %fomer, align 8, !tbaa !5
  %name = getelementptr inbounds nuw i8, ptr %call, i64 20
  %sex = getelementptr inbounds nuw i8, ptr %call, i64 40
  %age = getelementptr inbounds nuw i8, ptr %call, i64 44
  %score = getelementptr inbounds nuw i8, ptr %call, i64 48
  %address = getelementptr inbounds nuw i8, ptr %call, i64 52
  %call2 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %call, ptr noundef nonnull %name, ptr noundef nonnull %sex, ptr noundef nonnull %age, ptr noundef nonnull %score, ptr noundef nonnull %address)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %i.0 = phi i32 [ 1, %if.end ], [ %inc, %for.body ]
  %p.0 = phi ptr [ %call, %if.end ], [ %call4, %for.body ]
  %exitcond.not = icmp eq i32 %i.0, 1001
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call4 = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #5
  %next = getelementptr inbounds nuw i8, ptr %p.0, i64 80
  store ptr %call4, ptr %next, align 8, !tbaa !13
  %fomer6 = getelementptr inbounds nuw i8, ptr %call4, i64 72
  store ptr %p.0, ptr %fomer6, align 8, !tbaa !5
  %name9 = getelementptr inbounds nuw i8, ptr %call4, i64 20
  %sex10 = getelementptr inbounds nuw i8, ptr %call4, i64 40
  %age11 = getelementptr inbounds nuw i8, ptr %call4, i64 44
  %score12 = getelementptr inbounds nuw i8, ptr %call4, i64 48
  %address13 = getelementptr inbounds nuw i8, ptr %call4, i64 52
  %call14 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.2, ptr noundef %call4, ptr noundef nonnull %name9, ptr noundef nonnull %sex10, ptr noundef nonnull %age11, ptr noundef nonnull %score12, ptr noundef nonnull %address13)
  %0 = load i8, ptr %call4, align 8, !tbaa !14, !invariant.load !15
  %cmp16 = icmp eq i8 %0, 101
  %inc = add nuw nsw i32 %i.0, 1
  br i1 %cmp16, label %if.then17, label %for.cond, !llvm.loop !16

if.then17:                                        ; preds = %for.body
  %next.le = getelementptr inbounds nuw i8, ptr %p.0, i64 80
  store ptr null, ptr %next.le, align 8, !tbaa !13
  br label %for.end

for.end:                                          ; preds = %for.cond, %if.then17
  br label %for.cond22

for.cond22:                                       ; preds = %for.body24, %for.end
  %p.1 = phi ptr [ %p.0, %for.end ], [ %4, %for.body24 ]
  %cmp23.not = icmp eq ptr %p.1, null
  br i1 %cmp23.not, label %for.end38, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %name27 = getelementptr inbounds nuw i8, ptr %p.1, i64 20
  %sex29 = getelementptr inbounds nuw i8, ptr %p.1, i64 40
  %1 = load i8, ptr %sex29, align 8, !tbaa !19, !invariant.load !15
  %conv30 = sext i8 %1 to i32
  %age31 = getelementptr inbounds nuw i8, ptr %p.1, i64 44
  %2 = load i32, ptr %age31, align 4, !tbaa !20, !invariant.load !15
  %score32 = getelementptr inbounds nuw i8, ptr %p.1, i64 48
  %3 = load float, ptr %score32, align 8, !tbaa !21, !invariant.load !15
  %conv33 = fpext float %3 to double
  %address34 = getelementptr inbounds nuw i8, ptr %p.1, i64 52
  %call36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %p.1, ptr noundef nonnull %name27, i32 noundef %conv30, i32 noundef %2, double noundef %conv33, ptr noundef nonnull %address34)
  %fomer37 = getelementptr inbounds nuw i8, ptr %p.1, i64 72
  %4 = load ptr, ptr %fomer37, align 8, !tbaa !5, !invariant.load !15
  br label %for.cond22, !llvm.loop !22

for.end38:                                        ; preds = %for.cond22
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !11, i64 72}
!6 = !{!"_ZTSZ4mainE7student", !7, i64 0, !7, i64 20, !7, i64 40, !9, i64 44, !10, i64 48, !7, i64 52, !11, i64 72, !11, i64 80}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{!"p1 _ZTSZ4mainE7student", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!6, !11, i64 80}
!14 = !{!7, !7, i64 0}
!15 = !{}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!6, !7, i64 40}
!20 = !{!6, !9, i64 44}
!21 = !{!6, !10, i64 48}
!22 = distinct !{!22, !17, !18}
