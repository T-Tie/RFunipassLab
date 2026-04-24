; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0p4yarhe.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@p1 = dso_local local_unnamed_addr global ptr null, align 8
@p2 = dso_local local_unnamed_addr global ptr null, align 8
@head = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #6
  store ptr %call, ptr @p2, align 8, !tbaa !5
  store ptr %call, ptr @p1, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %call)
  %0 = load ptr, ptr @p1, align 8, !tbaa !5
  %name = getelementptr inbounds nuw i8, ptr %0, i64 30
  %call3 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %name)
  %1 = load ptr, ptr @p1, align 8, !tbaa !5
  %sex = getelementptr inbounds nuw i8, ptr %1, i64 60
  %call4 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %sex)
  %2 = load ptr, ptr @p1, align 8, !tbaa !5
  %age = getelementptr inbounds nuw i8, ptr %2, i64 64
  %call5 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.2, ptr noundef nonnull %age)
  %3 = load ptr, ptr @p1, align 8, !tbaa !5
  %score = getelementptr inbounds nuw i8, ptr %3, i64 68
  %call6 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.3, ptr noundef nonnull %score)
  %4 = load ptr, ptr @p1, align 8, !tbaa !5
  %add = getelementptr inbounds nuw i8, ptr %4, i64 72
  %call8 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.4, ptr noundef nonnull %add)
  %5 = load ptr, ptr @p1, align 8, !tbaa !5
  store ptr %5, ptr @head, align 8, !tbaa !5
  %next = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr null, ptr %next, align 8, !tbaa !10
  %.pre = load ptr, ptr @p2, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %6 = phi ptr [ %17, %if.end ], [ %.pre, %entry ]
  %call9 = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #6
  store ptr %call9, ptr @p1, align 8, !tbaa !5
  %next10 = getelementptr inbounds nuw i8, ptr %6, i64 104
  store ptr %call9, ptr %next10, align 8, !tbaa !10
  %call13 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.4, ptr noundef %call9)
  %7 = load ptr, ptr @p1, align 8, !tbaa !5
  %8 = load i8, ptr %7, align 8, !tbaa !14
  %cmp = icmp eq i8 %8, 101
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %7, i64 1
  %9 = load i8, ptr %arrayidx16, align 1, !tbaa !14
  %cmp18 = icmp eq i8 %9, 110
  br i1 %cmp18, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %10 = load i8, ptr %arrayidx21, align 2, !tbaa !14
  %cmp23 = icmp eq i8 %10, 100
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true19
  %11 = load ptr, ptr @p2, align 8, !tbaa !5
  %next24 = getelementptr inbounds nuw i8, ptr %11, i64 104
  store ptr null, ptr %next24, align 8, !tbaa !10
  %12 = load ptr, ptr @head, align 8, !tbaa !5
  tail call void @_Z6resultP3stu(ptr noundef %12)
  ret i32 0

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true, %for.cond
  %name25 = getelementptr inbounds nuw i8, ptr %7, i64 30
  %call27 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %name25)
  %13 = load ptr, ptr @p1, align 8, !tbaa !5
  %sex28 = getelementptr inbounds nuw i8, ptr %13, i64 60
  %call29 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %sex28)
  %14 = load ptr, ptr @p1, align 8, !tbaa !5
  %age30 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %call31 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.2, ptr noundef nonnull %age30)
  %15 = load ptr, ptr @p1, align 8, !tbaa !5
  %score32 = getelementptr inbounds nuw i8, ptr %15, i64 68
  %call33 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.3, ptr noundef nonnull %score32)
  %16 = load ptr, ptr @p1, align 8, !tbaa !5
  %add34 = getelementptr inbounds nuw i8, ptr %16, i64 72
  %call36 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.4, ptr noundef nonnull %add34)
  %17 = load ptr, ptr @p1, align 8, !tbaa !5
  store ptr %17, ptr @p2, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !15
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z6resultP3stu(ptr noundef %x) local_unnamed_addr #3 {
entry:
  %next = getelementptr inbounds nuw i8, ptr %x, i64 104
  %0 = load ptr, ptr %next, align 8, !tbaa !10
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %x)
  %name = getelementptr inbounds nuw i8, ptr %x, i64 30
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %name)
  %sex = getelementptr inbounds nuw i8, ptr %x, i64 60
  %1 = load i8, ptr %sex, align 4, !tbaa !18
  %conv = sext i8 %1 to i32
  %putchar14 = tail call i32 @putchar(i32 %conv)
  %age = getelementptr inbounds nuw i8, ptr %x, i64 64
  %2 = load i32, ptr %age, align 8, !tbaa !19
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %2)
  %score = getelementptr inbounds nuw i8, ptr %x, i64 68
  %3 = load float, ptr %score, align 4, !tbaa !20
  %conv5 = fpext float %3 to double
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %conv5)
  %add = getelementptr inbounds nuw i8, ptr %x, i64 72
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %add)
  %putchar15 = tail call i32 @putchar(i32 10)
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @_Z6resultP3stu(ptr noundef nonnull %0)
  %call13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %x)
  %name14 = getelementptr inbounds nuw i8, ptr %x, i64 30
  %call16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %name14)
  %sex17 = getelementptr inbounds nuw i8, ptr %x, i64 60
  %4 = load i8, ptr %sex17, align 4, !tbaa !18
  %conv18 = sext i8 %4 to i32
  %putchar = tail call i32 @putchar(i32 %conv18)
  %age20 = getelementptr inbounds nuw i8, ptr %x, i64 64
  %5 = load i32, ptr %age20, align 8, !tbaa !19
  %call21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %5)
  %score22 = getelementptr inbounds nuw i8, ptr %x, i64 68
  %6 = load float, ptr %score22, align 4, !tbaa !20
  %conv23 = fpext float %6 to double
  %call24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %conv23)
  %add25 = getelementptr inbounds nuw i8, ptr %x, i64 72
  %call27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %add25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %putchar16 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS3stu", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !6, i64 104}
!11 = !{!"_ZTS3stu", !8, i64 0, !8, i64 30, !8, i64 60, !12, i64 64, !13, i64 68, !8, i64 72, !6, i64 104}
!12 = !{!"int", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!11, !8, i64 60}
!19 = !{!11, !12, i64 64}
!20 = !{!11, !13, i64 68}
