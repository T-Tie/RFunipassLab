; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8hka8wjz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [20000 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %1 = load i32, ptr %a, align 16, !tbaa !5
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.end24, %for.end
  %.pre2223 = phi i32 [ %.pre2224, %for.end24 ], [ %.pre, %for.end ]
  %2 = phi i32 [ %5, %for.end24 ], [ %.pre, %for.end ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.end24 ], [ 0, %for.end ]
  %cmp5 = icmp sgt i32 %2, 0
  br i1 %cmp5, label %for.cond7.preheader, label %for.end27

for.cond7.preheader:                              ; preds = %for.cond4
  %arrayidx11 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %3 = add nuw i64 %indvars.iv18, 4294967295
  %4 = and i64 %3, 4294967295
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7.preheader, %if.end21
  %.pre2224 = phi i32 [ %.pre2223, %for.cond7.preheader ], [ %.pre22, %if.end21 ]
  %5 = phi i32 [ %2, %for.cond7.preheader ], [ %.pre22, %if.end21 ]
  %indvars.iv15 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next16, %if.end21 ]
  %cmp8 = icmp sgt i32 %5, 0
  br i1 %cmp8, label %for.body9, label %for.end24

for.body9:                                        ; preds = %for.cond7
  %6 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !9
  %arrayidx13 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv15
  %7 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !9
  %cmp14 = icmp eq i32 %6, %7
  br i1 %cmp14, label %for.end24, label %if.end

if.end:                                           ; preds = %for.body9
  %cmp15 = icmp eq i64 %indvars.iv15, %4
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end
  %putchar = call i32 @putchar(i32 noundef 32) #4
  %call20 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %6)
  %.pre22.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end
  %.pre22 = phi i32 [ %.pre22.pre, %if.then16 ], [ %.pre2224, %if.end ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond7

for.end24:                                        ; preds = %for.body9, %for.cond7
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond4

for.end27:                                        ; preds = %for.cond4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
