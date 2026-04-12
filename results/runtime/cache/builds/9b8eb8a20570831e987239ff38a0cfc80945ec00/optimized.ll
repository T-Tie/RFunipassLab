; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz1g1_ufw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [40 x i8], align 16
  %s0 = alloca [40 x i8], align 16
  %s1 = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef align 16 %s) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef align 16 %s0) #7
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef %s1) #7
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %s1, i8 noundef 0, i64 noundef 10000, i1 noundef false) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %s)
  %call3 = call i64 @strlen(ptr noundef %s) #9
  %conv = trunc i64 %call3 to i32
  %call6 = call ptr @strcat(ptr noundef %s1, ptr noundef %s) #10
  br label %for.cond

for.cond:                                         ; preds = %for.inc44, %entry
  %d.0 = phi i32 [ %conv, %entry ], [ %d.1, %for.inc44 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc45, %for.inc44 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 1
  %cmp = icmp slt i32 %i.0, %sub
  br i1 %cmp, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %s)
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [40 x i8], ptr %s, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv10 = sext i8 %1 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond9
  %arrayidx16 = getelementptr inbounds [40 x i8], ptr %s0, i64 0, i64 %idxprom
  store i8 %1, ptr %arrayidx16, align 1, !tbaa !9
  %inc = add nsw i32 %j.0, 1
  br label %for.cond9, !llvm.loop !10

for.end:                                          ; preds = %for.cond9
  %conv18 = sext i32 %d.0 to i64
  %call20 = call i64 @strlen(ptr noundef %s) #9
  %add = add i64 %conv18, %call20
  %add21 = add i64 %add, 1
  %conv22 = trunc i64 %add21 to i32
  %cmp23 = icmp sle i32 %conv22, 80
  %2 = getelementptr inbounds [40 x i8], ptr %s0, i64 0, i64 %idxprom
  store i8 0, ptr %2, align 1, !tbaa !9
  br i1 %cmp23, label %if.end, label %if.then32

if.end:                                           ; preds = %for.end
  %call27 = call ptr @strcat(ptr noundef %s1, ptr noundef @.str.2) #10
  %call30 = call ptr @strcat(ptr noundef %s1, ptr noundef readonly captures(none) %s0) #10
  br label %for.inc44

if.then32:                                        ; preds = %for.end
  %call36 = call ptr @strcat(ptr noundef %s1, ptr noundef @.str.3) #10
  %call39 = call ptr @strcat(ptr noundef %s1, ptr noundef readonly captures(none) %s0) #10
  %call41 = call i64 @strlen(ptr noundef readonly captures(none) %s0) #9
  %conv42 = trunc i64 %call41 to i32
  br label %for.inc44

for.inc44:                                        ; preds = %if.then32, %if.end
  %d.1 = phi i32 [ %conv42, %if.then32 ], [ %conv22, %if.end ]
  %inc45 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end46:                                        ; preds = %for.cond
  %call48 = call i32 @puts(ptr noundef %s1) #10
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %s1) #10
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef %s0) #10
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef %s) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
