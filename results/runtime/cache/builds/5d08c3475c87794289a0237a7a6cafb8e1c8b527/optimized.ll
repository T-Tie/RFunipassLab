; ModuleID = '<stdin>'
source_filename = "/tmp/tmpln8306rb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%s %s %c %d %s %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s %s %c %d %s %s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #4
  %p = getelementptr inbounds nuw i8, ptr %call, i64 88
  store ptr null, ptr %p, align 8, !tbaa !5
  %name = getelementptr inbounds nuw i8, ptr %call, i64 20
  %sex = getelementptr inbounds nuw i8, ptr %call, i64 40
  %age = getelementptr inbounds nuw i8, ptr %call, i64 44
  %grade = getelementptr inbounds nuw i8, ptr %call, i64 48
  %add = getelementptr inbounds nuw i8, ptr %call, i64 68
  %call4 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %call, ptr noundef nonnull %name, ptr noundef nonnull %sex, ptr noundef nonnull %age, ptr noundef nonnull %grade, ptr noundef nonnull %add)
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %p1.0 = phi ptr [ %call, %entry ], [ %call5, %while.cond ]
  %call5 = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #4
  %p6 = getelementptr inbounds nuw i8, ptr %call5, i64 88
  store ptr %p1.0, ptr %p6, align 8, !tbaa !5
  %name9 = getelementptr inbounds nuw i8, ptr %call5, i64 20
  %sex11 = getelementptr inbounds nuw i8, ptr %call5, i64 40
  %age12 = getelementptr inbounds nuw i8, ptr %call5, i64 44
  %grade13 = getelementptr inbounds nuw i8, ptr %call5, i64 48
  %add15 = getelementptr inbounds nuw i8, ptr %call5, i64 68
  %call17 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %call5, ptr noundef nonnull %name9, ptr noundef nonnull %sex11, ptr noundef nonnull %age12, ptr noundef nonnull %grade13, ptr noundef nonnull %add15)
  %0 = load i8, ptr %call5, align 8, !tbaa !12
  %cmp = icmp eq i8 %0, 101
  br i1 %cmp, label %while.cond19, label %while.cond, !llvm.loop !13

while.cond19:                                     ; preds = %while.cond, %while.body22
  %p1.1 = phi ptr [ %1, %while.body22 ], [ %call5, %while.cond ]
  %p20 = getelementptr inbounds nuw i8, ptr %p1.1, i64 88
  %1 = load ptr, ptr %p20, align 8, !tbaa !5
  %cmp21.not = icmp eq ptr %1, null
  br i1 %cmp21.not, label %while.end36, label %while.body22

while.body22:                                     ; preds = %while.cond19
  %name26 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %sex28 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %2 = load i8, ptr %sex28, align 8, !tbaa !16
  %conv29 = sext i8 %2 to i32
  %age30 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %3 = load i32, ptr %age30, align 4, !tbaa !17
  %grade31 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %add33 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %call35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %1, ptr noundef nonnull %name26, i32 noundef %conv29, i32 noundef %3, ptr noundef nonnull %grade31, ptr noundef nonnull %add33)
  br label %while.cond19, !llvm.loop !18

while.end36:                                      ; preds = %while.cond19
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !10, i64 88}
!6 = !{!"_ZTS3stu", !7, i64 0, !7, i64 20, !7, i64 40, !9, i64 44, !7, i64 48, !7, i64 68, !10, i64 88}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"p1 _ZTS3stu", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!6, !7, i64 40}
!17 = !{!6, !9, i64 44}
!18 = distinct !{!18, !14, !15}
