; ModuleID = '<stdin>'
source_filename = "/tmp/tmpe8nwttxw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %dz = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %dz) #6
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = phi i32 [ %.pre, %entry ], [ %1, %for.inc18 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ]
  %end.0 = phi i32 [ 0, %entry ], [ %end.1, %for.inc18 ]
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end20

for.cond1:                                        ; preds = %for.cond, %if.end13
  %1 = phi i32 [ %.pre9, %if.end13 ], [ %0, %for.cond ]
  %i.1 = phi i32 [ %inc17, %if.end13 ], [ 0, %for.cond ]
  %end.1 = phi i32 [ %add16, %if.end13 ], [ %end.0, %for.cond ]
  %cmp2 = icmp slt i32 %i.1, %1
  br i1 %cmp2, label %for.body3, label %for.inc18

for.body3:                                        ; preds = %for.cond1
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %dz)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %dz) #7
  %conv = trunc i64 %call6 to i32
  %add = add nsw i32 %end.1, %conv
  %cmp8 = icmp sgt i32 %add, 79
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %putchar8 = call i32 @putchar(i32 10)
  br label %if.end13

if.else:                                          ; preds = %for.body3
  %cmp10 = icmp sgt i32 %end.1, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  %putchar = call i32 @putchar(i32 32)
  %inc = add nuw nsw i32 %end.1, 1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11, %if.then
  %end.2 = phi i32 [ 0, %if.then ], [ %inc, %if.then11 ], [ %end.1, %if.else ]
  %call15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %dz)
  %add16 = add nsw i32 %end.2, %conv
  %inc17 = add nuw nsw i32 %i.1, 1
  %.pre9 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc18:                                        ; preds = %for.cond1
  %inc19 = add nuw nsw i32 %i.1, 1
  br label %for.cond, !llvm.loop !12

for.end20:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %dz) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
