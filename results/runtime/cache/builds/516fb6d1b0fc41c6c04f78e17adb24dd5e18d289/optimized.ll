; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6qfz3a0a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [9 x i8] c"%s\0A%s\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [300 x i8], align 16
  %b = alloca [50 x i8], align 16
  %c = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef align 16 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %a, ptr noundef align 16 %b, ptr noundef %c)
  %call4 = call i64 @strlen(ptr noundef %b) #6
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef %a) #6
  %conv7 = trunc i64 %call6 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %phiofops = phi i1 [ true, %entry ], [ false, %for.inc20 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ]
  %cmp = icmp slt i32 %i.0, %conv7
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %k.0 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc ]
  %j.0 = phi i32 [ %i.0, %for.body ], [ %inc, %for.inc ]
  %cmp9 = icmp slt i32 %k.0, %conv
  br i1 %cmp9, label %for.body10, label %if.then24.loopexit

for.body10:                                       ; preds = %for.cond8
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv11 = sext i8 %0 to i32
  %idxprom12 = sext i32 %k.0 to i64
  %arrayidx13 = getelementptr inbounds [50 x i8], ptr %b, i64 0, i64 %idxprom12
  %1 = load i8, ptr %arrayidx13, align 1, !tbaa !5
  %conv14 = sext i8 %1 to i32
  %cmp15 = icmp ne i32 %conv11, %conv14
  br i1 %cmp15, label %for.inc20, label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %j.0, 1
  %inc16 = add nsw i32 %k.0, 1
  br label %for.cond8, !llvm.loop !8

for.inc20:                                        ; preds = %for.body10
  %inc21 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end22:                                        ; preds = %for.cond
  %phiofops.lcssa = phi i1 [ %phiofops, %for.cond ]
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ]
  br i1 %phiofops.lcssa, label %if.then24, label %if.end36

if.then24.loopexit:                               ; preds = %for.cond8
  %i.0.lcssa5 = phi i32 [ %i.0, %for.cond8 ]
  br label %if.then24

if.then24:                                        ; preds = %if.then24.loopexit, %for.end22
  %i.06 = phi i32 [ %i.0.lcssa5, %if.then24.loopexit ], [ %i.0.lcssa, %for.end22 ]
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc32, %if.then24
  %d.0 = phi i32 [ %i.06, %if.then24 ], [ %inc33, %for.inc32 ]
  %e.0 = phi i32 [ 0, %if.then24 ], [ %inc34, %for.inc32 ]
  %add = add nsw i32 %i.06, %conv
  %cmp26 = icmp slt i32 %d.0, %add
  br i1 %cmp26, label %for.inc32, label %if.end36.loopexit

for.inc32:                                        ; preds = %for.cond25
  %idxprom28 = sext i32 %e.0 to i64
  %arrayidx29 = getelementptr inbounds [50 x i8], ptr %c, i64 0, i64 %idxprom28
  %2 = load i8, ptr %arrayidx29, align 1, !tbaa !5
  %idxprom30 = sext i32 %d.0 to i64
  %arrayidx31 = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 %idxprom30
  store i8 %2, ptr %arrayidx31, align 1, !tbaa !5
  %inc33 = add nsw i32 %d.0, 1
  %inc34 = add nsw i32 %e.0, 1
  br label %for.cond25, !llvm.loop !12

if.end36.loopexit:                                ; preds = %for.cond25
  br label %if.end36

if.end36:                                         ; preds = %if.end36.loopexit, %for.end22
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef %a) #7
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
