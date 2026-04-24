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
  %call = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #8
  store ptr %call, ptr @p2, align 8, !tbaa !5
  store ptr %call, ptr @p1, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %call)
  %0 = load ptr, ptr @p1, align 8, !tbaa !5
  %name = getelementptr inbounds nuw i8, ptr %0, i64 30
  %call3 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %name)
  tail call fastcc void @outlined_ir_func_1(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) @head)
  %1 = load ptr, ptr @head, align 8, !tbaa !5
  %next = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr null, ptr %next, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %call9 = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #9
  store ptr %call9, ptr @p1, align 8, !tbaa !5
  %2 = load ptr, ptr @p2, align 8, !tbaa !5
  %next10 = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %call9, ptr %next10, align 8, !tbaa !10
  %call13 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.4, ptr noundef %call9)
  %3 = load ptr, ptr @p1, align 8, !tbaa !5
  %4 = load i8, ptr %3, align 8, !tbaa !14, !invariant.load !15
  %cmp = icmp eq i8 %4, 101
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %5 = load i8, ptr %arrayidx16, align 1, !tbaa !14, !invariant.load !15
  %cmp18 = icmp eq i8 %5, 110
  br i1 %cmp18, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %6 = load i8, ptr %arrayidx21, align 2, !tbaa !14, !invariant.load !15
  %cmp23 = icmp eq i8 %6, 100
  br i1 %cmp23, label %print, label %if.end

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true, %for.cond
  %name25 = getelementptr inbounds nuw i8, ptr %3, i64 30
  %call27 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %name25)
  tail call fastcc void @outlined_ir_func_1(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) @p2)
  br label %for.cond, !llvm.loop !16

print:                                            ; preds = %land.lhs.true19
  %7 = load ptr, ptr @p2, align 8, !tbaa !5
  %next24 = getelementptr inbounds nuw i8, ptr %7, i64 104
  store ptr null, ptr %next24, align 8, !tbaa !10
  %8 = load ptr, ptr @head, align 8, !tbaa !5
  tail call void @_Z6resultP3stu(ptr nofree noundef nonnull align 8 dereferenceable(112) %8) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z6resultP3stu(ptr nofree noundef nonnull align 8 dereferenceable(112) %x) local_unnamed_addr #3 {
entry:
  %next = getelementptr inbounds nuw i8, ptr %x, i64 104
  %0 = load ptr, ptr %next, align 8, !tbaa !10
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull align 8 dereferenceable(112) %x) #10
  tail call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull align 8 dereferenceable(112) %x) #10
  %putchar = tail call i32 @putchar(i32 noundef 10) #10
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @_Z6resultP3stu(ptr nofree noundef nonnull align 8 dereferenceable(112) %0) #10
  %call13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull align 8 dereferenceable(112) %x) #10
  tail call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull align 8 dereferenceable(112) %x) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %putchar1 = tail call i32 @putchar(i32 noundef 10) #10
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: minsize mustprogress nofree nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 {
if.then_after_outline.exitStub:
  %name = getelementptr inbounds nuw i8, ptr %0, i64 30
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull align 2 dereferenceable(82) %name) #10
  %sex = getelementptr inbounds nuw i8, ptr %0, i64 60
  %1 = load i8, ptr %sex, align 4, !tbaa !19, !invariant.load !15
  %conv = sext i8 %1 to i32
  %putchar = tail call i32 @putchar(i32 noundef %conv) #10
  %age = getelementptr inbounds nuw i8, ptr %0, i64 64
  %2 = load i32, ptr %age, align 8, !tbaa !20, !invariant.load !15
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %2) #10
  %score = getelementptr inbounds nuw i8, ptr %0, i64 68
  %3 = load float, ptr %score, align 4, !tbaa !21, !invariant.load !15
  %conv5 = fpext float %3 to double
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %conv5) #10
  %add = getelementptr inbounds nuw i8, ptr %0, i64 72
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %add) #10
  ret void
}

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_1(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #6 {
entry_after_outline.exitStub:
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
  store ptr %5, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

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
!15 = !{}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!11, !8, i64 60}
!20 = !{!11, !12, i64 64}
!21 = !{!11, !13, i64 68}
