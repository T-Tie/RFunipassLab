; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_5zu3n03.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %year = alloca i32, align 4
  %montho = alloca i32, align 4
  %montht = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %year) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %montho) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %montht) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %montho, ptr noundef %montht)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %2 = load i32, ptr %montht, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z8DiJiTianiii(i32 noundef %1, i32 noundef %2, i32 noundef 1) #6
  %3 = load i32, ptr %year, align 4, !tbaa !5
  %4 = load i32, ptr %montho, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z8DiJiTianiii(i32 noundef %3, i32 noundef %4, i32 noundef 1) #6
  %sub = sub nsw i32 %call2, %call3
  %rem = srem i32 %sub, 7
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #6
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %montht) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %montho) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %year) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z8DiJiTianiii(i32 noundef %year, i32 noundef %month, i32 noundef %day) local_unnamed_addr #3 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %result.0 = phi i32 [ 0, %entry ], [ %result.1, %for.inc ]
  %0 = phi i32 [ %inc, %for.inc ], [ 1, %entry ]
  %cmp = icmp slt i32 %0, %month
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %for.inc.gvnsink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %cmp2 = icmp eq i32 %0, 3
  br i1 %cmp2, label %for.inc.gvnsink.split, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cmp4 = icmp eq i32 %0, 5
  br i1 %cmp4, label %for.inc.gvnsink.split, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %cmp6 = icmp eq i32 %0, 7
  br i1 %cmp6, label %for.inc.gvnsink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %cmp8 = icmp eq i32 %0, 8
  br i1 %cmp8, label %for.inc.gvnsink.split, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %cmp10 = icmp eq i32 %0, 10
  br i1 %cmp10, label %for.inc.gvnsink.split, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %cmp12 = icmp eq i32 %0, 12
  br i1 %cmp12, label %for.inc.gvnsink.split, label %if.else

if.else:                                          ; preds = %lor.lhs.false11
  %cmp13 = icmp eq i32 %0, 4
  br i1 %cmp13, label %for.inc.gvnsink.split, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.else
  %cmp15 = icmp eq i32 %0, 6
  br i1 %cmp15, label %for.inc.gvnsink.split, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %cmp17 = icmp eq i32 %0, 9
  br i1 %cmp17, label %for.inc.gvnsink.split, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %cmp19 = icmp eq i32 %0, 11
  br i1 %cmp19, label %for.inc.gvnsink.split, label %if.else22

if.else22:                                        ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %0, 2
  br i1 %cmp23, label %if.then24, label %for.inc

if.then24:                                        ; preds = %if.else22
  %rem = srem i32 %year, 400
  %cmp25 = icmp eq i32 %rem, 0
  br i1 %cmp25, label %for.inc.gvnsink.split, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.then24
  %rem27 = srem i32 %year, 4
  %cmp28 = icmp eq i32 %rem27, 0
  br i1 %cmp28, label %land.lhs.true, label %if.else33

land.lhs.true:                                    ; preds = %lor.lhs.false26
  %rem29 = srem i32 %year, 100
  %cmp30 = icmp ne i32 %rem29, 0
  br i1 %cmp30, label %for.inc.gvnsink.split, label %if.else33

if.else33:                                        ; preds = %land.lhs.true, %lor.lhs.false26
  br label %for.inc.gvnsink.split

for.inc.gvnsink.split:                            ; preds = %if.then24, %land.lhs.true, %if.else, %lor.lhs.false14, %lor.lhs.false16, %lor.lhs.false18, %for.body, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false5, %lor.lhs.false7, %lor.lhs.false9, %lor.lhs.false11, %if.else33
  %.sink1 = phi i32 [ 28, %if.else33 ], [ 31, %lor.lhs.false11 ], [ 31, %lor.lhs.false9 ], [ 31, %lor.lhs.false7 ], [ 31, %lor.lhs.false5 ], [ 31, %lor.lhs.false3 ], [ 31, %lor.lhs.false ], [ 31, %for.body ], [ 30, %lor.lhs.false18 ], [ 30, %lor.lhs.false16 ], [ 30, %lor.lhs.false14 ], [ 30, %if.else ], [ 29, %land.lhs.true ], [ 29, %if.then24 ]
  %add34 = add nsw i32 %result.0, %.sink1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.gvnsink.split, %if.else22
  %result.1 = phi i32 [ %add34, %for.inc.gvnsink.split ], [ %result.0, %if.else22 ]
  %inc = add nsw i32 %0, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %add38 = add nsw i32 %result.0, %day
  ret i32 %add38
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
!12 = distinct !{!12, !10, !11}
