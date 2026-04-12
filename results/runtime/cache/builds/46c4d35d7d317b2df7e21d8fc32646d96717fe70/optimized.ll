; ModuleID = '<stdin>'
source_filename = "/tmp/tmplxxojseb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [400 x [3 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4800, ptr noundef nonnull align 16 %a) #4
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %a.sink = phi ptr [ %n, %entry ], [ %a, %for.cond ]
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a.sink)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond, label %for.end24

for.end24:                                        ; preds = %for.cond
  %1 = load i32, ptr %a, align 16, !tbaa !5
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1)
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %2 = load i32, ptr %arrayidx33, align 16
  %cmp34.not = icmp eq i32 %2, 1
  br label %for.cond28

for.cond28:                                       ; preds = %if.end40, %for.end24
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end40 ], [ 1, %for.end24 ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %3, 1
  br i1 %cmp29, label %for.body30, label %for.end43

for.body30:                                       ; preds = %for.cond28
  br i1 %cmp34.not, label %if.end40, label %if.then35

if.then35:                                        ; preds = %for.body30
  %arrayidx37 = getelementptr inbounds nuw [400 x [3 x i32]], ptr %a, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !9
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %4)
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %for.body30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond28

for.end43:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 noundef 4800, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{}
