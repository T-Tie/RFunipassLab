; ModuleID = '<stdin>'
source_filename = "/tmp/tmpya_y7krd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"worse\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"better\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"same\0A\00", align 1
@str = private unnamed_addr constant [5 x i8] c"same\00", align 1
@str.3 = private unnamed_addr constant [7 x i8] c"better\00", align 1
@str.4 = private unnamed_addr constant [6 x i8] c"worse\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sv = alloca [1000 x [2 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 16000, ptr noundef nonnull align 16 %sv) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.end, label %for.end9

for.end:                                          ; preds = %for.cond
  %arrayidx5 = getelementptr inbounds nuw [1000 x [2 x double]], ptr %sv, i64 0, i64 %indvars.iv, i64 0
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %arrayidx5.1 = getelementptr inbounds nuw [1000 x [2 x double]], ptr %sv, i64 0, i64 %indvars.iv, i64 1
  %call6.1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5.1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sv, i64 8
  %2 = load double, ptr %arrayidx11, align 8, !tbaa !9
  %3 = load double, ptr %sv, align 16, !tbaa !9
  %div = fdiv double %2, %3
  br label %for.cond14

for.cond14:                                       ; preds = %if.end58, %for.end9
  %4 = phi i32 [ %.pre, %if.end58 ], [ %0, %for.end9 ]
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %if.end58 ], [ 1, %for.end9 ]
  %5 = sext i32 %4 to i64
  %cmp15 = icmp slt i64 %indvars.iv26, %5
  br i1 %cmp15, label %for.body16, label %for.end61

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [1000 x [2 x double]], ptr %sv, i64 0, i64 %indvars.iv26
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 8
  %6 = load double, ptr %arrayidx19, align 8, !tbaa !9, !invariant.load !11
  %7 = load double, ptr %arrayidx18, align 16, !tbaa !9, !invariant.load !11
  %div23 = fdiv double %6, %7
  %sub = fsub double %div, %div23
  %cmp24 = fcmp ogt double %sub, 0.000000e+00
  %cmp33 = fcmp ogt double %sub, 5.000000e-02
  %or.cond = and i1 %cmp24, %cmp33
  br i1 %or.cond, label %if.end58, label %if.else

if.else:                                          ; preds = %for.body16
  %cmp43 = fcmp olt double %sub, 0.000000e+00
  %sub52 = fsub double %div23, %div
  %cmp53 = fcmp ogt double %sub52, 5.000000e-02
  %or.cond21 = and i1 %cmp43, %cmp53
  %str.3.str = select i1 %or.cond21, ptr @str.3, ptr @str
  br label %if.end58

if.end58:                                         ; preds = %if.else, %for.body16
  %str.3.sink = phi ptr [ @str.4, %for.body16 ], [ %str.3.str, %if.else ]
  %puts22 = call i32 @puts(ptr nonnull dereferenceable(1) %str.3.sink)
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond14

for.end61:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 noundef 16000, ptr noundef nonnull %sv) #5
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

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #4

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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{}
