; ModuleID = '<stdin>'
source_filename = "/tmp/tmppeboh2uh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str.1 = private unnamed_addr constant [15 x i8] c"%s%s %c %d%f%s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s%s %c %d%g%s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s %s %c %d %g %s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
if.end:
  %call = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #4
  %fomer = getelementptr inbounds nuw i8, ptr %call, i64 72
  store ptr null, ptr %fomer, align 8, !tbaa !5
  %name = getelementptr inbounds nuw i8, ptr %call, i64 20
  %sex = getelementptr inbounds nuw i8, ptr %call, i64 40
  %age = getelementptr inbounds nuw i8, ptr %call, i64 44
  %score = getelementptr inbounds nuw i8, ptr %call, i64 48
  %address = getelementptr inbounds nuw i8, ptr %call, i64 52
  %call2 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %call, ptr noundef nonnull %name, ptr noundef nonnull %sex, ptr noundef nonnull %age, ptr noundef nonnull %score, ptr noundef nonnull %address)
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 1001
  br i1 %exitcond.not, label %for.end38, label %for.body, !llvm.loop !13

for.body:                                         ; preds = %if.end, %for.cond
  %p.031 = phi ptr [ %call, %if.end ], [ %call4, %for.cond ]
  %i.030 = phi i32 [ 1, %if.end ], [ %inc, %for.cond ]
  %call4 = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #4
  %next = getelementptr inbounds nuw i8, ptr %p.031, i64 80
  store ptr %call4, ptr %next, align 8, !tbaa !16
  %fomer6 = getelementptr inbounds nuw i8, ptr %call4, i64 72
  store ptr %p.031, ptr %fomer6, align 8, !tbaa !5
  %name9 = getelementptr inbounds nuw i8, ptr %call4, i64 20
  %sex10 = getelementptr inbounds nuw i8, ptr %call4, i64 40
  %age11 = getelementptr inbounds nuw i8, ptr %call4, i64 44
  %score12 = getelementptr inbounds nuw i8, ptr %call4, i64 48
  %address13 = getelementptr inbounds nuw i8, ptr %call4, i64 52
  %call14 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.2, ptr noundef %call4, ptr noundef nonnull %name9, ptr noundef nonnull %sex10, ptr noundef nonnull %age11, ptr noundef nonnull %score12, ptr noundef nonnull %address13)
  %0 = load i8, ptr %call4, align 8, !tbaa !17
  %cmp16 = icmp eq i8 %0, 101
  br i1 %cmp16, label %for.body24.preheader, label %for.cond

for.body24.preheader:                             ; preds = %for.body
  %fomer6.le = getelementptr inbounds nuw i8, ptr %call4, i64 72
  %1 = load ptr, ptr %fomer6.le, align 8, !tbaa !5
  %next19 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %next19, align 8, !tbaa !16
  br label %for.body24

for.body24:                                       ; preds = %for.body24.preheader, %for.body24
  %p.133 = phi ptr [ %5, %for.body24 ], [ %1, %for.body24.preheader ]
  %name27 = getelementptr inbounds nuw i8, ptr %p.133, i64 20
  %sex29 = getelementptr inbounds nuw i8, ptr %p.133, i64 40
  %2 = load i8, ptr %sex29, align 8, !tbaa !18
  %conv30 = sext i8 %2 to i32
  %age31 = getelementptr inbounds nuw i8, ptr %p.133, i64 44
  %3 = load i32, ptr %age31, align 4, !tbaa !19
  %score32 = getelementptr inbounds nuw i8, ptr %p.133, i64 48
  %4 = load float, ptr %score32, align 8, !tbaa !20
  %conv33 = fpext float %4 to double
  %address34 = getelementptr inbounds nuw i8, ptr %p.133, i64 52
  %call36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %p.133, ptr noundef nonnull %name27, i32 noundef %conv30, i32 noundef %3, double noundef %conv33, ptr noundef nonnull %address34)
  %fomer37 = getelementptr inbounds nuw i8, ptr %p.133, i64 72
  %5 = load ptr, ptr %fomer37, align 8, !tbaa !5
  %cmp23.not = icmp eq ptr %5, null
  br i1 %cmp23.not, label %for.end38, label %for.body24, !llvm.loop !21

for.end38:                                        ; preds = %for.cond, %for.body24
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }

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
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!6, !11, i64 80}
!17 = !{!7, !7, i64 0}
!18 = !{!6, !7, i64 40}
!19 = !{!6, !9, i64 44}
!20 = !{!6, !10, i64 48}
!21 = distinct !{!21, !14, !15}
