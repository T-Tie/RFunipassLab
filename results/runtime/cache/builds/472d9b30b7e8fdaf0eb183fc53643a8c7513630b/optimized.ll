; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmh_eaz48.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.t = private unnamed_addr constant [400 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%c=%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [400 x i8], align 16
  %t = alloca [400 x i8], align 16
  %u = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %s) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %t) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef writeonly align 16 %t, ptr noundef readonly align 16 @__const.main.t, i64 noundef 400, i1 noundef false) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %u) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %.sink = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %.sink, 52
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %.sink to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %u, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %.sink, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %s)
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc19, %for.end
  %i.0 = phi i32 [ 0, %for.end ], [ %inc18, %for.inc19 ]
  %q.0 = phi ptr [ %t, %for.end ], [ %incdec.ptr20, %for.inc19 ]
  %f.0 = phi i32 [ 0, %for.end ], [ %f.1, %for.inc19 ]
  %0 = load i8, ptr %q.0, align 1, !tbaa !12
  %conv = sext i8 %0 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %for.body4, label %for.end21

for.body4:                                        ; preds = %for.cond2
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc16, %for.body4
  %p.0 = phi ptr [ %s, %for.body4 ], [ %incdec.ptr, %for.inc16 ]
  %f.1 = phi i32 [ %f.0, %for.body4 ], [ %f.2, %for.inc16 ]
  %1 = load i8, ptr %p.0, align 1, !tbaa !12
  %conv7 = sext i8 %1 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %for.body9, label %for.inc19

for.body9:                                        ; preds = %for.cond6
  %cmp12 = icmp eq i32 %conv7, %conv
  br i1 %cmp12, label %if.then, label %for.inc16

if.then:                                          ; preds = %for.body9
  %idxprom13 = sext i32 %i.0 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], ptr %u, i64 0, i64 %idxprom13
  %2 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %inc15 = add nsw i32 %2, 1
  store i32 %inc15, ptr %arrayidx14, align 4, !tbaa !5
  br label %for.inc16

for.inc16:                                        ; preds = %for.body9, %if.then
  %f.2 = phi i32 [ 1, %if.then ], [ %f.1, %for.body9 ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i32 1
  br label %for.cond6, !llvm.loop !13

for.inc19:                                        ; preds = %for.cond6
  %inc18 = add nsw i32 %i.0, 1
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %q.0, i32 1
  br label %for.cond2, !llvm.loop !14

for.end21:                                        ; preds = %for.cond2
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc38, %for.end21
  %j.0 = phi i32 [ 0, %for.end21 ], [ %inc37, %for.inc38 ]
  %q.1 = phi ptr [ %t, %for.end21 ], [ %incdec.ptr39, %for.inc38 ]
  %3 = load i8, ptr %q.1, align 1, !tbaa !12
  %conv24 = sext i8 %3 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %for.body26, label %for.end40

for.body26:                                       ; preds = %for.cond23
  %idxprom27 = sext i32 %j.0 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %u, i64 0, i64 %idxprom27
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %cmp29 = icmp ne i32 %4, 0
  br i1 %cmp29, label %if.then30, label %for.inc38

if.then30:                                        ; preds = %for.body26
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv24, i32 noundef %4)
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc38

for.inc38:                                        ; preds = %for.body26, %if.then30
  %inc37 = add nsw i32 %j.0, 1
  %incdec.ptr39 = getelementptr inbounds nuw i8, ptr %q.1, i32 1
  br label %for.cond23, !llvm.loop !15

for.end40:                                        ; preds = %for.cond23
  %cmp41 = icmp eq i32 %f.0, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %for.end40
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %for.end40
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %u) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %t) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %s) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree }
attributes #6 = { nounwind }

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
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
