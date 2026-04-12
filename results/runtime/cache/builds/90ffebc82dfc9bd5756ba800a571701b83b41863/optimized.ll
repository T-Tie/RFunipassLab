; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw5gpxjng.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z3shii(i32 noundef %a) local_unnamed_addr #0 {
entry:
  %conv.i = sitofp i32 %a to double
  %call.i = tail call noundef double @sqrt(double noundef %conv.i) #7, !tbaa !5
  %conv = fptosi double %call.i to i32
  %0 = and i32 %a, 1
  %cmp = icmp slt i32 %conv, 2
  %cmp1 = icmp eq i32 %0, 0
  %brmerge = or i1 %cmp, %cmp1
  call void @llvm.assume(i1 %brmerge)
  %.mux = zext i1 %cmp to i32
  ret i32 %.mux
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3shuii(i32 noundef %m, i32 noundef %k) local_unnamed_addr #0 {
entry:
  %conv = sitofp i32 %k to double
  %conv.i = sitofp i32 %m to double
  br label %for.cond

for.cond:                                         ; preds = %if.end9, %entry
  %a.0 = phi i32 [ 1, %entry ], [ %a.1, %if.end9 ]
  %j.0 = phi i32 [ %k, %entry ], [ %inc.i, %if.end9 ]
  %call.i = tail call noundef double @sqrt(double noundef %conv.i) #7, !tbaa !5
  %cmp = fcmp ult double %call.i, %conv
  br i1 %cmp, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %m, %j.0
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %for.body
  %div = sdiv i32 %m, %j.0
  %cmp2.not = icmp slt i32 %div, %k
  br i1 %cmp2.not, label %if.end9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %inc = add nsw i32 %a.0, 1
  %conv.i.i = sitofp i32 %div to double
  %call.i.i = tail call noundef double @sqrt(double noundef %conv.i.i) #7, !tbaa !5
  %conv.i1 = fptosi double %call.i.i to i32
  %0 = and i32 %div, 1
  %cmp.i = icmp slt i32 %conv.i1, 2
  %cmp1.i = icmp eq i32 %0, 0
  %brmerge.i = or i1 %cmp1.i, %cmp.i
  tail call void @llvm.assume(i1 %brmerge.i)
  br i1 %cmp.i, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.then
  %call8 = tail call noundef i32 @_Z3shuii(i32 noundef %div, i32 noundef %j.0) #7
  %add = add i32 %call8, %a.0
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then6, %land.lhs.true, %for.body
  %a.1 = phi i32 [ %add, %if.then6 ], [ %inc, %if.then ], [ %a.0, %land.lhs.true ], [ %a.0, %for.body ]
  %inc.i = add nsw i32 %j.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 %a.0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %m) #7
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m)
  %1 = load i32, ptr %m, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z3shuii(i32 noundef %1, i32 noundef 2) #7
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nofree nounwind }

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
