; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6z9d2or9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %a2.0 = phi i32 [ 0, %entry ], [ %a2.1, %for.end ]
  %a1.0 = phi i32 [ 0, %entry ], [ %a1.1, %for.end ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc12, %for.end ]
  %b1.0 = phi i32 [ 0, %entry ], [ %b1.1, %for.end ]
  %b2.0 = phi i32 [ 0, %entry ], [ %b2.1, %for.end ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %add = add nsw i32 %0, 1
  %cmp = icmp slt i32 %i.0, %add
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %if.end10, %for.body
  %a2.1 = phi i32 [ %a2.0, %for.body ], [ %a2.23, %if.end10 ]
  %a1.1 = phi i32 [ %a1.0, %for.body ], [ %a1.25, %if.end10 ]
  %j.0 = phi i32 [ 1, %for.body ], [ %inc, %if.end10 ]
  %b1.1 = phi i32 [ %b1.0, %for.body ], [ %b1.2, %if.end10 ]
  %b2.1 = phi i32 [ %b2.0, %for.body ], [ %b2.2, %if.end10 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %add2 = add nsw i32 %1, 1
  %cmp3 = icmp slt i32 %j.0, %add2
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x)
  %2 = load i32, ptr %x, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %2, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %for.body4
  %cmp7 = icmp eq i32 %a1.1, 0
  br i1 %cmp7, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.then, %for.body4
  %a1.25 = phi i32 [ %a1.1, %for.body4 ], [ %a1.1, %land.lhs.true ], [ %i.0, %if.then ]
  %a2.23 = phi i32 [ %a2.1, %for.body4 ], [ %a2.1, %land.lhs.true ], [ %j.0, %if.then ]
  %b1.2 = phi i32 [ %b1.1, %for.body4 ], [ %i.0, %if.then ], [ %i.0, %land.lhs.true ]
  %b2.2 = phi i32 [ %b2.1, %for.body4 ], [ %j.0, %if.then ], [ %j.0, %land.lhs.true ]
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %inc12 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  %sub = sub nsw i32 %b1.0, %a1.0
  %sub14 = sub nsw i32 %sub, 1
  %sub15 = sub nsw i32 %b2.0, %a2.0
  %sub16 = sub nsw i32 %sub15, 1
  %mul = mul nsw i32 %sub14, %sub16
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %mul) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
