; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl_vybhzh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %i1.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc31 ]
  %jn.0 = phi i32 [ 0, %entry ], [ %jn.1, %for.inc31 ]
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i1.0, %5
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i1.0 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %rem = srem i32 %6, 2
  %cmp5 = icmp eq i32 %rem, 1
  br i1 %cmp5, label %if.then, label %for.inc31

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %jn.0, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom8
  store i32 %6, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %if.then
  %i2.0 = phi i32 [ %add, %if.then ], [ %dec, %for.inc ]
  %cmp11 = icmp sgt i32 %i2.0, 1
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond10
  %idxprom14 = sext i32 %i2.0 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom14
  %7 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %i2.0, 1
  %idxprom16 = sext i32 %sub to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom16
  %8 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !9
  %cmp18 = icmp slt i32 %7, %8
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body13
  %9 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %10 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  store i32 %10, ptr %arrayidx17, align 4, !tbaa !5
  store i32 %9, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body13, %if.then19
  %dec = add nsw i32 %i2.0, -1
  br label %for.cond10, !llvm.loop !10

for.end:                                          ; preds = %for.cond10
  br label %for.inc31

for.inc31:                                        ; preds = %for.body, %for.end
  %jn.1 = phi i32 [ %add, %for.end ], [ %jn.0, %for.body ]
  %inc = add nsw i32 %i1.0, 1
  br label %for.cond, !llvm.loop !13

for.end32:                                        ; preds = %for.cond
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc40, %for.end32
  %i3.0 = phi i32 [ 1, %for.end32 ], [ %inc41, %for.inc40 ]
  %cmp34 = icmp slt i32 %i3.0, %jn.0
  br i1 %cmp34, label %for.inc40, label %for.end42

for.inc40:                                        ; preds = %for.cond33
  %idxprom37 = sext i32 %i3.0 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom37
  %11 = load i32, ptr %arrayidx38, align 4, !tbaa !5, !invariant.load !9
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %11)
  %inc41 = add nsw i32 %i3.0, 1
  br label %for.cond33, !llvm.loop !14

for.end42:                                        ; preds = %for.cond33
  %idxprom43 = sext i32 %jn.0 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom43
  %12 = load i32, ptr %arrayidx44, align 4, !tbaa !5, !invariant.load !9
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
