; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9u97oujt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %percent = alloca double, align 8
  %a = alloca [501 x i8], align 16
  %b = alloca [501 x i8], align 16
  %number = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %percent) #4
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef align 16 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %number) #4
  store i32 0, ptr %number, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 8 %percent)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a)
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %b)
  %call5 = call i64 @strlen(ptr noundef %a) #5
  %call7 = call i64 @strlen(ptr noundef %b) #5
  %cmp = icmp ne i64 %call5, %call7
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %cmp9 = icmp ne i32 %conv, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %cmp13 = icmp eq i32 %conv, 65
  br i1 %cmp13, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %cmp17 = icmp eq i32 %conv, 84
  br i1 %cmp17, label %land.lhs.true, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %cmp22 = icmp eq i32 %conv, 67
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false18
  %cmp27 = icmp eq i32 %conv, 71
  br i1 %cmp27, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false23, %lor.lhs.false18, %lor.lhs.false, %for.body
  %arrayidx29 = getelementptr inbounds [501 x i8], ptr %b, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx29, align 1, !tbaa !9
  %conv30 = sext i8 %2 to i32
  %cmp31 = icmp eq i32 %conv30, 65
  br i1 %cmp31, label %for.inc, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %land.lhs.true
  %cmp36 = icmp eq i32 %conv30, 84
  br i1 %cmp36, label %for.inc, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false32
  %cmp41 = icmp eq i32 %conv30, 67
  br i1 %cmp41, label %for.inc, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false37
  %cmp46 = icmp eq i32 %conv30, 71
  br i1 %cmp46, label %for.inc, label %cleanup

for.inc:                                          ; preds = %lor.lhs.false42, %lor.lhs.false37, %lor.lhs.false32, %land.lhs.true
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc66, %for.end
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %3 to i64
  %arrayidx52 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom51
  %4 = load i8, ptr %arrayidx52, align 1, !tbaa !9, !invariant.load !13
  %conv53 = sext i8 %4 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %for.body55, label %for.end68

for.body55:                                       ; preds = %for.cond50
  %arrayidx60 = getelementptr inbounds [501 x i8], ptr %b, i64 0, i64 %idxprom51
  %5 = load i8, ptr %arrayidx60, align 1, !tbaa !9
  %conv61 = sext i8 %5 to i32
  %cmp62 = icmp eq i32 %conv53, %conv61
  br i1 %cmp62, label %if.then63, label %for.inc66

if.then63:                                        ; preds = %for.body55
  %6 = load i32, ptr %number, align 4, !tbaa !5
  %inc64 = add nsw i32 %6, 1
  store i32 %inc64, ptr %number, align 4, !tbaa !5
  br label %for.inc66

for.inc66:                                        ; preds = %for.body55, %if.then63
  %inc67 = add nsw i32 %3, 1
  store i32 %inc67, ptr %i, align 4, !tbaa !5
  br label %for.cond50, !llvm.loop !14

for.end68:                                        ; preds = %for.cond50
  %7 = load i32, ptr %number, align 4, !tbaa !5
  %conv69 = sitofp i32 %7 to double
  %conv72 = uitofp i64 %call5 to double
  %8 = load double, ptr %percent, align 8, !tbaa !15
  %mul = fmul double %conv72, %8
  %cmp73 = fcmp ogt double %conv69, %mul
  br i1 %cmp73, label %cleanup, label %if.else76

if.else76:                                        ; preds = %for.end68
  br label %cleanup

cleanup:                                          ; preds = %for.end68, %lor.lhs.false23, %lor.lhs.false42, %entry, %if.else76
  %.str.4.sink = phi ptr [ @.str.4, %if.else76 ], [ @.str.2, %entry ], [ @.str.2, %lor.lhs.false42 ], [ @.str.2, %lor.lhs.false23 ], [ @.str.3, %for.end68 ]
  %call77 = call i32 (ptr, ...) @printf(ptr noundef %.str.4.sink)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %number) #6
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %percent) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind willreturn memory(read) }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{}
!14 = distinct !{!14, !11, !12}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !7, i64 0}
