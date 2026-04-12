; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuw11o_u0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  %j = alloca i32, align 4
  %total1 = alloca i32, align 4
  %total2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %year) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %month1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %month2) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc95, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end97

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %total1) #5
  store i32 0, ptr %total1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %total2) #5
  store i32 0, ptr %total2, align 4, !tbaa !5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %month1, ptr noundef %month2)
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %.sink = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %2 = load i32, ptr %month1, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %.sink, %2
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %cmp5 = icmp eq i32 %.sink, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body4
  %cmp6 = icmp eq i32 %.sink, 3
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %cmp8 = icmp eq i32 %.sink, 5
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %cmp10 = icmp eq i32 %.sink, 7
  br i1 %cmp10, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %cmp12 = icmp eq i32 %.sink, 8
  br i1 %cmp12, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %cmp14 = icmp eq i32 %.sink, 10
  br i1 %cmp14, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %cmp16 = icmp eq i32 %.sink, 12
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false15, %lor.lhs.false13, %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false, %for.body4
  %3 = load i32, ptr %total1, align 4, !tbaa !5
  %add = add nsw i32 %3, 31
  store i32 %add, ptr %total1, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false15
  %cmp17 = icmp eq i32 %.sink, 4
  br i1 %cmp17, label %for.inc.gvnsink.split, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end
  %cmp19 = icmp eq i32 %.sink, 6
  br i1 %cmp19, label %for.inc.gvnsink.split, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %cmp21 = icmp eq i32 %.sink, 9
  br i1 %cmp21, label %for.inc.gvnsink.split, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %cmp23 = icmp eq i32 %.sink, 11
  br i1 %cmp23, label %for.inc.gvnsink.split, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false22
  %cmp27 = icmp eq i32 %.sink, 2
  br i1 %cmp27, label %if.then28, label %for.inc

if.then28:                                        ; preds = %if.end26
  %4 = load i32, ptr %year, align 4, !tbaa !5
  %rem = srem i32 %4, 4
  %cmp29 = icmp eq i32 %rem, 0
  br i1 %cmp29, label %land.lhs.true, label %lor.lhs.false32

land.lhs.true:                                    ; preds = %if.then28
  %rem30 = srem i32 %4, 100
  %cmp31 = icmp ne i32 %rem30, 0
  br i1 %cmp31, label %for.inc.gvnsink.split, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %land.lhs.true, %if.then28
  %rem33 = srem i32 %4, 400
  %cmp34 = icmp eq i32 %rem33, 0
  br i1 %cmp34, label %for.inc.gvnsink.split, label %if.else

if.else:                                          ; preds = %lor.lhs.false32
  br label %for.inc.gvnsink.split

for.inc.gvnsink.split:                            ; preds = %land.lhs.true, %lor.lhs.false32, %lor.lhs.false22, %lor.lhs.false20, %lor.lhs.false18, %if.end, %if.else
  %.sink9 = phi i32 [ 28, %if.else ], [ 30, %if.end ], [ 30, %lor.lhs.false18 ], [ 30, %lor.lhs.false20 ], [ 30, %lor.lhs.false22 ], [ 29, %lor.lhs.false32 ], [ 29, %land.lhs.true ]
  %5 = load i32, ptr %total1, align 4, !tbaa !5
  %add37 = add nsw i32 %5, %.sink9
  store i32 %add37, ptr %total1, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.inc.gvnsink.split, %if.end26
  %inc = add nsw i32 %.sink, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc85, %for.end
  %.sink5 = phi i32 [ 1, %for.end ], [ %inc86, %for.inc85 ]
  %6 = load i32, ptr %month2, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %.sink5, %6
  br i1 %cmp41, label %for.body42, label %for.end87

for.body42:                                       ; preds = %for.cond40
  %cmp43 = icmp eq i32 %.sink5, 1
  br i1 %cmp43, label %if.then56, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %for.body42
  %cmp45 = icmp eq i32 %.sink5, 3
  br i1 %cmp45, label %if.then56, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false44
  %cmp47 = icmp eq i32 %.sink5, 5
  br i1 %cmp47, label %if.then56, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false46
  %cmp49 = icmp eq i32 %.sink5, 7
  br i1 %cmp49, label %if.then56, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false48
  %cmp51 = icmp eq i32 %.sink5, 8
  br i1 %cmp51, label %if.then56, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false50
  %cmp53 = icmp eq i32 %.sink5, 10
  br i1 %cmp53, label %if.then56, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false52
  %cmp55 = icmp eq i32 %.sink5, 12
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %lor.lhs.false54, %lor.lhs.false52, %lor.lhs.false50, %lor.lhs.false48, %lor.lhs.false46, %lor.lhs.false44, %for.body42
  %7 = load i32, ptr %total2, align 4, !tbaa !5
  %add57 = add nsw i32 %7, 31
  store i32 %add57, ptr %total2, align 4, !tbaa !5
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %lor.lhs.false54
  %cmp59 = icmp eq i32 %.sink5, 4
  br i1 %cmp59, label %for.inc85.gvnsink.split, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end58
  %cmp61 = icmp eq i32 %.sink5, 6
  br i1 %cmp61, label %for.inc85.gvnsink.split, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false60
  %cmp63 = icmp eq i32 %.sink5, 9
  br i1 %cmp63, label %for.inc85.gvnsink.split, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false62
  %cmp65 = icmp eq i32 %.sink5, 11
  br i1 %cmp65, label %for.inc85.gvnsink.split, label %if.end68

if.end68:                                         ; preds = %lor.lhs.false64
  %cmp69 = icmp eq i32 %.sink5, 2
  br i1 %cmp69, label %if.then70, label %for.inc85

if.then70:                                        ; preds = %if.end68
  %8 = load i32, ptr %year, align 4, !tbaa !5
  %rem71 = srem i32 %8, 4
  %cmp72 = icmp eq i32 %rem71, 0
  br i1 %cmp72, label %land.lhs.true73, label %lor.lhs.false76

land.lhs.true73:                                  ; preds = %if.then70
  %rem74 = srem i32 %8, 100
  %cmp75 = icmp ne i32 %rem74, 0
  br i1 %cmp75, label %for.inc85.gvnsink.split, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %land.lhs.true73, %if.then70
  %rem77 = srem i32 %8, 400
  %cmp78 = icmp eq i32 %rem77, 0
  br i1 %cmp78, label %for.inc85.gvnsink.split, label %if.else81

if.else81:                                        ; preds = %lor.lhs.false76
  br label %for.inc85.gvnsink.split

for.inc85.gvnsink.split:                          ; preds = %land.lhs.true73, %lor.lhs.false76, %lor.lhs.false64, %lor.lhs.false62, %lor.lhs.false60, %if.end58, %if.else81
  %.sink7 = phi i32 [ 28, %if.else81 ], [ 30, %if.end58 ], [ 30, %lor.lhs.false60 ], [ 30, %lor.lhs.false62 ], [ 30, %lor.lhs.false64 ], [ 29, %lor.lhs.false76 ], [ 29, %land.lhs.true73 ]
  %9 = load i32, ptr %total2, align 4, !tbaa !5
  %add82 = add nsw i32 %9, %.sink7
  store i32 %add82, ptr %total2, align 4, !tbaa !5
  br label %for.inc85

for.inc85:                                        ; preds = %for.inc85.gvnsink.split, %if.end68
  %inc86 = add nsw i32 %.sink5, 1
  br label %for.cond40, !llvm.loop !12

for.end87:                                        ; preds = %for.cond40
  %10 = load i32, ptr %total1, align 4, !tbaa !5
  %11 = load i32, ptr %total2, align 4, !tbaa !5
  %sub = sub nsw i32 %10, %11
  %rem88 = srem i32 %sub, 7
  %cmp89 = icmp eq i32 %rem88, 0
  br i1 %cmp89, label %if.then90, label %if.else92

if.then90:                                        ; preds = %for.end87
  %call91 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5
  br label %for.inc95

if.else92:                                        ; preds = %for.end87
  %call93 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5
  br label %for.inc95

for.inc95:                                        ; preds = %if.then90, %if.else92
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %total2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %total1) #5
  %inc96 = add nsw i32 %0, 1
  store i32 %inc96, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end97:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %month2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %month1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %year) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
