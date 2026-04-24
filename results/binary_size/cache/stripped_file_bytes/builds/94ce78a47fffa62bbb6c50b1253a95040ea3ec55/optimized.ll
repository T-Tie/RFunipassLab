; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb6ol11lh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [1000 x i8], align 16
  %a = alloca [300 x i8], align 16
  %b = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef nonnull align 16 %s) #6
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 %b) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %s)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b)
  %call5 = call i32 @getchar()
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %call7.fr = freeze i64 %call7
  %conv = trunc i64 %call7.fr to i32
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %conv10 = trunc i64 %call9 to i32
  %call12 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #8
  %conv13 = trunc i64 %call12 to i32
  %0 = load i8, ptr %a, align 16
  %smax = call i32 @llvm.smax.i32(i32 %conv10, i32 1)
  %smax32 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count34 = zext nneg i32 %smax32 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc35, %entry
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc35 ], [ 0, %entry ]
  %n.0 = phi i32 [ %n.1, %for.inc35 ], [ 0, %entry ]
  %exitcond35.not = icmp eq i64 %indvars.iv30, %wide.trip.count34
  br i1 %exitcond35.not, label %for.end37, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx15 = getelementptr inbounds nuw [1000 x i8], ptr %s, i64 0, i64 %indvars.iv30
  %1 = load i8, ptr %arrayidx15, align 1, !tbaa !5, !invariant.load !8
  %cmp17 = icmp eq i8 %0, %1
  br i1 %cmp17, label %for.cond18.preheader, label %if.end31

for.cond18.preheader:                             ; preds = %for.body
  %2 = add i32 %n.0, %smax
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.body20
  %indvars.iv = phi i64 [ 1, %for.cond18.preheader ], [ %indvars.iv.next, %for.body20 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.end31, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %3 = add nuw nsw i64 %indvars.iv, %indvars.iv30
  %arrayidx22 = getelementptr inbounds nuw [1000 x i8], ptr %s, i64 0, i64 %3
  %4 = load i8, ptr %arrayidx22, align 1, !tbaa !5, !invariant.load !8
  %arrayidx25 = getelementptr inbounds nuw [300 x i8], ptr %a, i64 0, i64 %indvars.iv
  %5 = load i8, ptr %arrayidx25, align 1, !tbaa !5, !invariant.load !8
  %cmp27 = icmp eq i8 %4, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp27, label %for.cond18, label %if.end31, !llvm.loop !9

if.end31:                                         ; preds = %for.cond18, %for.body20, %for.body
  %n.1 = phi i32 [ %n.0, %for.body ], [ 0, %for.body20 ], [ %2, %for.cond18 ]
  %cmp32 = icmp eq i32 %n.1, %conv10
  br i1 %cmp32, label %for.end37.split.loop.exit, label %for.inc35

for.inc35:                                        ; preds = %if.end31
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond, !llvm.loop !12

for.end37.split.loop.exit:                        ; preds = %if.end31
  %6 = trunc nuw nsw i64 %indvars.iv30 to i32
  br label %for.end37

for.end37:                                        ; preds = %for.cond, %for.end37.split.loop.exit
  %i.0.lcssa = phi i32 [ %6, %for.end37.split.loop.exit ], [ %smax32, %for.cond ]
  %cmp39.not = icmp eq i32 %i.0.lcssa, 0
  %7 = load i8, ptr %s, align 16
  %conv43 = sext i8 %7 to i32
  br i1 %cmp39.not, label %for.cond49.preheader, label %for.cond38

for.cond38:                                       ; preds = %for.end37, %for.cond38
  %putchar26 = call i32 @putchar(i32 %conv43)
  %call45.i = call i32 @getchar(), !noalias !13
  br label %for.cond38

for.cond49.preheader:                             ; preds = %for.end37
  %cmp50.not = icmp eq i32 %conv, 0
  %8 = load i8, ptr %b, align 16
  %conv55 = sext i8 %8 to i32
  br i1 %cmp50.not, label %for.end75.split, label %for.cond49.preheader27

for.cond49.preheader27:                           ; preds = %for.cond49.preheader
  %smax36 = call i32 @llvm.smax.i32(i32 %conv13, i32 0)
  br label %for.cond49

for.cond49:                                       ; preds = %for.cond49.preheader27, %for.body52
  %k.2 = phi i32 [ %inc47.i3, %for.body52 ], [ 0, %for.cond49.preheader27 ]
  %exitcond37.not = icmp eq i32 %k.2, %smax36
  br i1 %exitcond37.not, label %for.cond62.preheader, label %for.body52

for.cond62.preheader:                             ; preds = %for.cond49
  %sext = shl i64 %call9, 32
  %9 = ashr exact i64 %sext, 32
  %smax41 = call i32 @llvm.smax.i32(i32 %conv10, i32 %conv)
  %wide.trip.count42 = sext i32 %smax41 to i64
  br label %for.cond62

for.body52:                                       ; preds = %for.cond49
  %putchar25 = call i32 @putchar(i32 %conv55)
  %call45.i2 = call i32 @getchar(), !noalias !16
  %inc47.i3 = add nuw i32 %k.2, 1
  br label %for.cond49

for.cond62:                                       ; preds = %for.cond62.preheader, %for.body67
  %indvars.iv38 = phi i64 [ %9, %for.cond62.preheader ], [ %indvars.iv.next39, %for.body67 ]
  %exitcond43.not = icmp eq i64 %indvars.iv38, %wide.trip.count42
  br i1 %exitcond43.not, label %for.end75.split, label %for.body67

for.body67:                                       ; preds = %for.cond62
  %arrayidx69 = getelementptr inbounds [1000 x i8], ptr %s, i64 0, i64 %indvars.iv38
  %10 = load i8, ptr %arrayidx69, align 1, !tbaa !5, !invariant.load !8
  %conv70 = sext i8 %10 to i32
  %putchar = call i32 @putchar(i32 %conv70)
  %call45.i4 = call i32 @getchar(), !noalias !19
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, 1
  br label %for.cond62

for.end75.split:                                  ; preds = %for.cond62, %for.cond49.preheader
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef nonnull %s) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = !{!14}
!14 = distinct !{!14, !15, !"outlined_ir_func_0: argument 0"}
!15 = distinct !{!15, !"outlined_ir_func_0"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"outlined_ir_func_0: argument 0"}
!18 = distinct !{!18, !"outlined_ir_func_0"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"outlined_ir_func_0: argument 0"}
!21 = distinct !{!21, !"outlined_ir_func_0"}
