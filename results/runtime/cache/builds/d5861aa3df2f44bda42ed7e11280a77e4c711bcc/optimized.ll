; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjoeiciju.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %dna1 = alloca [500 x i8], align 16
  %dna2 = alloca [500 x i8], align 16
  %a = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef align 16 %dna1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef align 16 %dna2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 8 %a)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %dna1)
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %dna2)
  %call5 = call i64 @strlen(ptr noundef %dna1) #6
  %conv = trunc i64 %call5 to i32
  %call7 = call i64 @strlen(ptr noundef %dna2) #6
  %conv8 = trunc i64 %call7 to i32
  %cmp = icmp eq i32 %conv, %conv8
  br i1 %cmp, label %if.then, label %if.end119

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc105, %for.inc ]
  %t.0 = phi i32 [ 0, %if.then ], [ %t.3, %for.inc ]
  %cmp9 = icmp slt i32 %i.0, %conv
  br i1 %cmp9, label %for.body, label %if.then107

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x i8], ptr %dna1, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %conv10 = sext i8 %0 to i32
  %cmp11 = icmp eq i32 %conv10, 65
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %cmp15 = icmp eq i32 %conv10, 84
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %cmp20 = icmp eq i32 %conv10, 71
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false16
  %cmp25 = icmp eq i32 %conv10, 67
  br i1 %cmp25, label %land.lhs.true, label %if.end63

land.lhs.true:                                    ; preds = %lor.lhs.false21, %lor.lhs.false16, %lor.lhs.false, %for.body
  %arrayidx27 = getelementptr inbounds [500 x i8], ptr %dna2, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx27, align 1, !tbaa !5, !invariant.load !8
  %conv28 = sext i8 %1 to i32
  %cmp29 = icmp eq i32 %conv28, 65
  br i1 %cmp29, label %if.then45, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true
  %cmp34 = icmp eq i32 %conv28, 84
  br i1 %cmp34, label %if.then45, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false30
  %cmp39 = icmp eq i32 %conv28, 71
  br i1 %cmp39, label %if.then45, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false35
  %2 = load i8, ptr %arrayidx27, align 1, !tbaa !5
  %conv43 = sext i8 %2 to i32
  %cmp44 = icmp eq i32 %conv43, 67
  br i1 %cmp44, label %if.then45, label %if.end63

if.then45:                                        ; preds = %lor.lhs.false40, %lor.lhs.false35, %lor.lhs.false30, %land.lhs.true
  %cmp52 = icmp eq i32 %conv10, %conv28
  br i1 %cmp52, label %if.then53, label %if.end

if.then53:                                        ; preds = %if.then45
  %inc = add nsw i32 %t.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then53, %if.then45
  %t.2 = phi i32 [ %inc, %if.then53 ], [ %t.0, %if.then45 ]
  %cmp60 = icmp ne i32 %conv10, %conv28
  br i1 %cmp60, label %for.inc, label %if.end63

if.end63:                                         ; preds = %if.end, %lor.lhs.false40, %lor.lhs.false21
  %t.1 = phi i32 [ %t.2, %if.end ], [ %t.0, %lor.lhs.false40 ], [ %t.0, %lor.lhs.false21 ]
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv66 = sext i8 %3 to i32
  %cmp67 = icmp ne i32 %conv66, 65
  br i1 %cmp67, label %land.lhs.true68, label %lor.lhs.false83

land.lhs.true68:                                  ; preds = %if.end63
  %cmp72 = icmp ne i32 %conv66, 84
  br i1 %cmp72, label %land.lhs.true73, label %lor.lhs.false83

land.lhs.true73:                                  ; preds = %land.lhs.true68
  %cmp77 = icmp ne i32 %conv66, 71
  br i1 %cmp77, label %land.lhs.true78, label %lor.lhs.false83

land.lhs.true78:                                  ; preds = %land.lhs.true73
  %cmp82 = icmp ne i32 %conv66, 67
  br i1 %cmp82, label %if.end119, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %land.lhs.true78, %land.lhs.true73, %land.lhs.true68, %if.end63
  %arrayidx85 = getelementptr inbounds [500 x i8], ptr %dna2, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx85, align 1, !tbaa !5
  %conv86 = sext i8 %4 to i32
  %cmp87 = icmp ne i32 %conv86, 65
  br i1 %cmp87, label %land.lhs.true88, label %for.inc

land.lhs.true88:                                  ; preds = %lor.lhs.false83
  %cmp92 = icmp ne i32 %conv86, 84
  br i1 %cmp92, label %land.lhs.true93, label %for.inc

land.lhs.true93:                                  ; preds = %land.lhs.true88
  %cmp97 = icmp ne i32 %conv86, 71
  br i1 %cmp97, label %land.lhs.true98, label %for.inc

land.lhs.true98:                                  ; preds = %land.lhs.true93
  %cmp102 = icmp ne i32 %conv86, 67
  br i1 %cmp102, label %if.end119, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false83, %land.lhs.true88, %land.lhs.true93, %land.lhs.true98, %if.end
  %t.3 = phi i32 [ %t.2, %if.end ], [ %t.1, %land.lhs.true98 ], [ %t.1, %land.lhs.true93 ], [ %t.1, %land.lhs.true88 ], [ %t.1, %lor.lhs.false83 ]
  %inc105 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

if.then107:                                       ; preds = %for.cond
  %conv108 = sitofp i32 %t.0 to double
  %conv109 = sitofp i32 %conv to double
  %div = fdiv double %conv108, %conv109
  %5 = load double, ptr %a, align 8, !tbaa !12
  %cmp110 = fcmp ogt double %div, %5
  br i1 %cmp110, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.then107
  %call112 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #7
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then107
  %6 = load double, ptr %a, align 8, !tbaa !12
  %cmp114 = fcmp ole double %div, %6
  br i1 %cmp114, label %if.then115, label %if.end119

if.then115:                                       ; preds = %if.end113
  %call116 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #7
  br label %if.end119

if.end119:                                        ; preds = %land.lhs.true98, %land.lhs.true78, %if.then115, %if.end113, %entry
  %phiofops = phi i1 [ false, %entry ], [ false, %if.end113 ], [ false, %if.then115 ], [ true, %land.lhs.true78 ], [ true, %land.lhs.true98 ]
  %cmp120 = icmp ne i32 %conv, %conv8
  br i1 %cmp120, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end119
  %call122 = call i32 (ptr, ...) @printf(ptr noundef @.str.4) #7
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end119
  br i1 %phiofops, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end123
  %call126 = call i32 (ptr, ...) @printf(ptr noundef @.str.4) #7
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end123
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef %dna2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef %dna1) #7
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
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
