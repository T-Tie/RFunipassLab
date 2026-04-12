; ModuleID = '<stdin>'
source_filename = "/tmp/tmphnm36q2w.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z1DPiii(ptr nofree noundef readonly captures(none) %h, i32 noundef %i, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %i, %n
  br i1 %cmp, label %for.cond.preheader, label %if.end12

for.cond.preheader:                               ; preds = %entry
  %invariant.gep = getelementptr i8, ptr %h, i64 -4
  %0 = sext i32 %i to i64
  %gep = getelementptr i32, ptr %invariant.gep, i64 %0
  %wide.trip.count = sext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %if.end11
  %indvars.iv = phi i64 [ %0, %for.cond.preheader ], [ %indvars.iv.next, %if.end11 ]
  %z.1 = phi i32 [ 1, %for.cond.preheader ], [ %z.2, %if.end11 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.end12, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i32, ptr %h, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %2 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !9
  %cmp6.not = icmp sgt i32 %1, %2
  br i1 %cmp6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %for.body
  %3 = trunc nsw i64 %indvars.iv.next to i32
  %call = tail call noundef i32 @_Z1DPiii(ptr nofree noundef nonnull readonly captures(none) %h, i32 noundef %3, i32 noundef %n) #6
  %add8 = add nsw i32 %call, 1
  %spec.select = tail call i32 @llvm.smax.i32(i32 %z.1, i32 %add8)
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %for.body
  %z.2 = phi i32 [ %z.1, %for.body ], [ %spec.select, %if.then7 ]
  br label %for.cond

if.end12:                                         ; preds = %for.cond, %entry
  %z.0 = phi i32 [ 1, %entry ], [ %z.1, %for.cond ]
  ret i32 %z.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %h = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 captures(none) dereferenceable(100) %h) #7
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %h.sink = phi ptr [ %n, %entry ], [ %h, %for.cond ]
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %h.sink)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond, label %for.end10

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull captures(none) %h) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nosync nounwind }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
