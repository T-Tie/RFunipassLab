; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8zpu5yfo.cpp"
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
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %j = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %M = alloca i32, align 4
  %j81 = alloca i32, align 4
  %n182 = alloca i32, align 4
  %n283 = alloca i32, align 4
  %M84 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc164, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc165, %for.inc164 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end166

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m2) #4
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %y, ptr noundef %m1, ptr noundef %m2)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %rem = srem i32 %1, 4
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %rem3 = srem i32 %1, 100
  %cmp4 = icmp ne i32 %rem3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %rem5 = srem i32 %1, 400
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then, label %if.else80

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n1) #4
  store i32 0, ptr %n1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n2) #4
  store i32 0, ptr %n2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %M) #4
  store i32 0, ptr %M, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %if.then
  %2 = phi i32 [ %inc, %for.inc ], [ 1, %if.then ]
  %3 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %2, %3
  br i1 %cmp8, label %for.body9, label %if.end79

for.body9:                                        ; preds = %for.cond7
  %cmp10 = icmp eq i32 %2, 2
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body9
  %4 = load i32, ptr %n1, align 4, !tbaa !5
  %add = add nsw i32 %4, 29
  store i32 %add, ptr %n1, align 4, !tbaa !5
  br label %for.inc

if.else:                                          ; preds = %for.body9
  %cmp12 = icmp eq i32 %2, 1
  br i1 %cmp12, label %if.then25, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.else
  %cmp14 = icmp eq i32 %2, 3
  br i1 %cmp14, label %if.then25, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %cmp16 = icmp eq i32 %2, 5
  br i1 %cmp16, label %if.then25, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %cmp18 = icmp eq i32 %2, 7
  br i1 %cmp18, label %if.then25, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %cmp20 = icmp eq i32 %2, 8
  br i1 %cmp20, label %if.then25, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %cmp22 = icmp eq i32 %2, 10
  br i1 %cmp22, label %if.then25, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false21
  %cmp24 = icmp eq i32 %2, 12
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %lor.lhs.false23, %lor.lhs.false21, %lor.lhs.false19, %lor.lhs.false17, %lor.lhs.false15, %lor.lhs.false13, %if.else
  %5 = load i32, ptr %n1, align 4, !tbaa !5
  %add26 = add nsw i32 %5, 31
  store i32 %add26, ptr %n1, align 4, !tbaa !5
  br label %for.inc

if.else27:                                        ; preds = %lor.lhs.false23
  %6 = load i32, ptr %n1, align 4, !tbaa !5
  %add28 = add nsw i32 %6, 30
  store i32 %add28, ptr %n1, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.else27, %if.then25
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !9

if.end79:                                         ; preds = %for.cond7
  call fastcc void @outlined_ir_func_0(ptr %j, ptr %m2, ptr %n2, i32 29, ptr %n1, ptr %M)
  call void @llvm.lifetime.end.p0(i64 4, ptr %M) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  br label %for.inc164

if.else80:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr %j81) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n182) #4
  store i32 0, ptr %n182, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n283) #4
  store i32 0, ptr %n283, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %M84) #4
  store i32 0, ptr %M84, align 4, !tbaa !5
  store i32 1, ptr %j81, align 4, !tbaa !5
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc109, %if.else80
  %7 = phi i32 [ %inc110, %for.inc109 ], [ 1, %if.else80 ]
  %8 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %7, %8
  br i1 %cmp86, label %for.body87, label %if.end162

for.body87:                                       ; preds = %for.cond85
  %cmp88 = icmp eq i32 %7, 2
  br i1 %cmp88, label %if.then89, label %if.else91

if.then89:                                        ; preds = %for.body87
  %9 = load i32, ptr %n182, align 4, !tbaa !5
  %add90 = add nsw i32 %9, 28
  store i32 %add90, ptr %n182, align 4, !tbaa !5
  br label %for.inc109

if.else91:                                        ; preds = %for.body87
  %cmp92 = icmp eq i32 %7, 1
  br i1 %cmp92, label %if.then103, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.else91
  %cmp94 = icmp eq i32 %7, 3
  br i1 %cmp94, label %if.then103, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false93
  %cmp96 = icmp eq i32 %7, 5
  br i1 %cmp96, label %if.then103, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false95
  %cmp98 = icmp eq i32 %7, 7
  br i1 %cmp98, label %if.then103, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %lor.lhs.false97
  %cmp100 = icmp eq i32 %7, 8
  br i1 %cmp100, label %if.then103, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false99
  %cmp102 = icmp eq i32 %7, 10
  br i1 %cmp102, label %if.then103, label %if.else105

if.then103:                                       ; preds = %lor.lhs.false101, %lor.lhs.false99, %lor.lhs.false97, %lor.lhs.false95, %lor.lhs.false93, %if.else91
  %10 = load i32, ptr %n182, align 4, !tbaa !5
  %add104 = add nsw i32 %10, 31
  store i32 %add104, ptr %n182, align 4, !tbaa !5
  br label %for.inc109

if.else105:                                       ; preds = %lor.lhs.false101
  %11 = load i32, ptr %n182, align 4, !tbaa !5
  %add106 = add nsw i32 %11, 30
  store i32 %add106, ptr %n182, align 4, !tbaa !5
  br label %for.inc109

for.inc109:                                       ; preds = %if.then89, %if.else105, %if.then103
  %inc110 = add nsw i32 %7, 1
  store i32 %inc110, ptr %j81, align 4, !tbaa !5
  br label %for.cond85, !llvm.loop !12

if.end162:                                        ; preds = %for.cond85
  call fastcc void @outlined_ir_func_0(ptr %j81, ptr %m2, ptr %n283, i32 28, ptr %n182, ptr %M84)
  call void @llvm.lifetime.end.p0(i64 4, ptr %M84) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n283) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n182) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j81) #4
  br label %for.inc164

for.inc164:                                       ; preds = %if.end79, %if.end162
  call void @llvm.lifetime.end.p0(i64 4, ptr %m2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #4
  %inc165 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end166:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr %0, ptr %1, ptr %2, i32 %3, ptr %4, ptr %5) unnamed_addr #3 {
for.end_to_outline:
  store i32 1, ptr %0, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc56, %for.end_to_outline
  %6 = phi i32 [ %inc57, %for.inc56 ], [ 1, %for.end_to_outline ]
  %7 = load i32, ptr %1, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %6, %7
  br i1 %cmp31, label %for.body32, label %for.end58

for.body32:                                       ; preds = %for.cond30
  %cmp33 = icmp eq i32 %6, 2
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %for.body32
  %8 = load i32, ptr %2, align 4, !tbaa !5
  %add35 = add nsw i32 %8, %3
  store i32 %add35, ptr %2, align 4, !tbaa !5
  br label %for.inc56

if.else36:                                        ; preds = %for.body32
  %cmp37 = icmp eq i32 %6, 1
  br i1 %cmp37, label %if.then50, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.else36
  %cmp39 = icmp eq i32 %6, 3
  br i1 %cmp39, label %if.then50, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false38
  %cmp41 = icmp eq i32 %6, 5
  br i1 %cmp41, label %if.then50, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false40
  %cmp43 = icmp eq i32 %6, 7
  br i1 %cmp43, label %if.then50, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false42
  %cmp45 = icmp eq i32 %6, 8
  br i1 %cmp45, label %if.then50, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false44
  %cmp47 = icmp eq i32 %6, 10
  br i1 %cmp47, label %if.then50, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false46
  %cmp49 = icmp eq i32 %6, 12
  br i1 %cmp49, label %if.then50, label %if.else52

if.then50:                                        ; preds = %lor.lhs.false48, %lor.lhs.false46, %lor.lhs.false44, %lor.lhs.false42, %lor.lhs.false40, %lor.lhs.false38, %if.else36
  %9 = load i32, ptr %2, align 4, !tbaa !5
  %add51 = add nsw i32 %9, 31
  store i32 %add51, ptr %2, align 4, !tbaa !5
  br label %for.inc56

if.else52:                                        ; preds = %lor.lhs.false48
  %10 = load i32, ptr %2, align 4, !tbaa !5
  %add53 = add nsw i32 %10, 30
  store i32 %add53, ptr %2, align 4, !tbaa !5
  br label %for.inc56

for.inc56:                                        ; preds = %if.then34, %if.else52, %if.then50
  %inc57 = add nsw i32 %6, 1
  store i32 %inc57, ptr %0, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !14

for.end58:                                        ; preds = %for.cond30
  %11 = load i32, ptr %4, align 4, !tbaa !5
  %12 = load i32, ptr %2, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %11, %12
  br i1 %cmp59, label %if.then60, label %if.end68

if.then60:                                        ; preds = %for.end58
  %sub = sub nsw i32 %12, %11
  store i32 %sub, ptr %5, align 4, !tbaa !5
  %rem61 = srem i32 %sub, 7
  %cmp62 = icmp eq i32 %rem61, 0
  br i1 %cmp62, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.then60
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end68

if.else65:                                        ; preds = %if.then60
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %if.else65, %for.end58
  %cmp69 = icmp sgt i32 %11, %12
  br i1 %cmp69, label %if.then70, label %if.end79.exitStub

if.then70:                                        ; preds = %if.end68
  %sub71 = sub nsw i32 %11, %12
  store i32 %sub71, ptr %5, align 4, !tbaa !5
  %rem72 = srem i32 %sub71, 7
  %cmp73 = icmp eq i32 %rem72, 0
  br i1 %cmp73, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.then70
  %call75 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end79.exitStub

if.else76:                                        ; preds = %if.then70
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end79.exitStub

if.end79.exitStub:                                ; preds = %if.then74, %if.else76, %if.end68
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!14 = distinct !{!14, !10, !11}
