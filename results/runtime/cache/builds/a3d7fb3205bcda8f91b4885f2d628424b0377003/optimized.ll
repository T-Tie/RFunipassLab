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
  tail call fastcc void @outlined_ir_func_0(ptr %call)
  br label %while.body

while.body:                                       ; preds = %while.body, %entry
  %p1.0 = phi ptr [ %call, %entry ], [ %call5, %while.body ]
  %call5 = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #4
  %p6 = getelementptr inbounds nuw i8, ptr %call5, i64 88
  store ptr %p1.0, ptr %p6, align 8, !tbaa !5
  tail call fastcc void @outlined_ir_func_0(ptr %call5)
  %0 = load i8, ptr %call5, align 8, !tbaa !12, !invariant.load !13
  %cmp = icmp eq i8 %0, 101
  br i1 %cmp, label %while.cond19, label %while.body, !llvm.loop !14

while.cond19:                                     ; preds = %while.body, %while.body22
  %1 = phi ptr [ %.pre, %while.body22 ], [ %p1.0, %while.body ]
  %cmp21.not = icmp eq ptr %1, null
  br i1 %cmp21.not, label %while.end36, label %while.body22

while.body22:                                     ; preds = %while.cond19
  %name26 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %sex28 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %2 = load i8, ptr %sex28, align 8, !tbaa !17, !invariant.load !13
  %conv29 = sext i8 %2 to i32
  %age30 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %3 = load i32, ptr %age30, align 4, !tbaa !18, !invariant.load !13
  %grade31 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %add33 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %call35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %1, ptr noundef nonnull %name26, i32 noundef %conv29, i32 noundef %3, ptr noundef nonnull %grade31, ptr noundef nonnull %add33)
  %p20.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre = load ptr, ptr %p20.phi.trans.insert, align 8, !tbaa !5, !invariant.load !13
  br label %while.cond19, !llvm.loop !19

while.end36:                                      ; preds = %while.cond19
  ret i32 0
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) local_unnamed_addr #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr %0) unnamed_addr #3 {
entry_after_outline.exitStub:
  %name = getelementptr inbounds nuw i8, ptr %0, i64 20
  %sex = getelementptr inbounds nuw i8, ptr %0, i64 40
  %age = getelementptr inbounds nuw i8, ptr %0, i64 44
  %grade = getelementptr inbounds nuw i8, ptr %0, i64 48
  %add = getelementptr inbounds nuw i8, ptr %0, i64 68
  %call4 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %0, ptr noundef nonnull %name, ptr noundef nonnull %sex, ptr noundef nonnull %age, ptr noundef nonnull %grade, ptr noundef nonnull %add)
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = !{}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!6, !7, i64 40}
!18 = !{!6, !9, i64 44}
!19 = distinct !{!19, !15, !16}
