; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdnoy7aas.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %N, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  %cmp27 = icmp sgt i32 %3, 0
  br i1 %cmp27, label %for.body, label %for.cond25.preheader.for.end53_crit_edge

for.cond3.preheader:                              ; preds = %for.body
  %cmp429 = icmp sgt i32 %5, 0
  br i1 %cmp429, label %for.body13.preheader, label %for.cond25.preheader.for.end53_crit_edge

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %N, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %for.cond3.preheader, !llvm.loop !9

for.body13.preheader:                             ; preds = %for.cond3.preheader
  %7 = zext nneg i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %vla1, i8 0, i64 %8, i1 false), !tbaa !5
  %wide.trip.count = zext nneg i32 %5 to i64
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %for.body13.preheader80, label %vector.ph

vector.ph:                                        ; preds = %for.body13.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  %invariant.gep = getelementptr i8, ptr %vla1, i64 4
  %invariant.gep85 = getelementptr i8, ptr %vla1, i64 8
  %invariant.gep87 = getelementptr i8, ptr %vla1, i64 12
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue79, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue79 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %pred.store.continue79 ]
  %9 = getelementptr inbounds nuw i32, ptr %vla, i64 %index
  %wide.load = load <4 x i32>, ptr %9, align 16, !tbaa !5
  %10 = and <4 x i32> %wide.load, splat (i32 -2147483647)
  %11 = icmp eq <4 x i32> %10, splat (i32 1)
  %12 = extractelement <4 x i1> %11, i64 0
  br i1 %12, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %13 = getelementptr inbounds nuw i32, ptr %vla1, i64 %index
  %14 = extractelement <4 x i32> %wide.load, i64 0
  store i32 %14, ptr %13, align 16, !tbaa !5
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %15 = extractelement <4 x i1> %11, i64 1
  br i1 %15, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index
  %16 = extractelement <4 x i32> %wide.load, i64 1
  store i32 %16, ptr %gep, align 4, !tbaa !5
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue
  %17 = extractelement <4 x i1> %11, i64 2
  br i1 %17, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %gep86 = getelementptr i32, ptr %invariant.gep85, i64 %index
  %18 = extractelement <4 x i32> %wide.load, i64 2
  store i32 %18, ptr %gep86, align 8, !tbaa !5
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %19 = extractelement <4 x i1> %11, i64 3
  br i1 %19, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %gep88 = getelementptr i32, ptr %invariant.gep87, i64 %index
  %20 = extractelement <4 x i32> %wide.load, i64 3
  store i32 %20, ptr %gep88, align 4, !tbaa !5
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %21 = zext <4 x i1> %11 to <4 x i32>
  %predphi = add <4 x i32> %vec.phi, %21
  %index.next = add nuw i64 %index, 4
  %22 = icmp eq i64 %index.next, %n.vec
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %pred.store.continue79
  %23 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond25.preheader, label %for.body13.preheader80

for.body13.preheader80:                           ; preds = %for.body13.preheader, %middle.block
  %indvars.iv49.ph = phi i64 [ 0, %for.body13.preheader ], [ %n.vec, %middle.block ]
  %a.032.ph = phi i32 [ 0, %for.body13.preheader ], [ %23, %middle.block ]
  br label %for.body13

for.cond25.preheader:                             ; preds = %for.inc22, %middle.block
  %a.1.lcssa = phi i32 [ %23, %middle.block ], [ %a.1, %for.inc22 ]
  %cmp2637.not = icmp eq i32 %5, 1
  br i1 %cmp2637.not, label %for.cond25.preheader.for.end53_crit_edge, label %for.cond28.preheader.preheader

for.cond25.preheader.for.end53_crit_edge:         ; preds = %for.cond3.preheader, %entry, %for.cond25.preheader
  %a.0.lcssa71 = phi i32 [ %a.1.lcssa, %for.cond25.preheader ], [ 0, %entry ], [ 0, %for.cond3.preheader ]
  %24 = phi i32 [ %5, %for.cond25.preheader ], [ %3, %entry ], [ %5, %for.cond3.preheader ]
  %.pre63 = add nsw i32 %24, -1
  br label %for.end53

for.cond28.preheader.preheader:                   ; preds = %for.cond25.preheader
  %25 = add nsw i32 %5, -1
  br label %for.cond28.preheader

for.body13:                                       ; preds = %for.body13.preheader80, %for.inc22
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc22 ], [ %indvars.iv49.ph, %for.body13.preheader80 ]
  %a.032 = phi i32 [ %a.1, %for.inc22 ], [ %a.032.ph, %for.body13.preheader80 ]
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv49
  %26 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %27 = and i32 %26, -2147483647
  %cmp16 = icmp eq i32 %27, 1
  br i1 %cmp16, label %if.then, label %for.inc22

if.then:                                          ; preds = %for.body13
  %inc17 = add nsw i32 %a.032, 1
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv49
  store i32 %26, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc22

for.inc22:                                        ; preds = %for.body13, %if.then
  %a.1 = phi i32 [ %inc17, %if.then ], [ %a.032, %for.body13 ]
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count
  br i1 %exitcond.not, label %for.cond25.preheader, label %for.body13, !llvm.loop !15

for.cond28.preheader:                             ; preds = %for.cond28.preheader.preheader, %for.inc51
  %indvars.iv55 = phi i32 [ %25, %for.cond28.preheader.preheader ], [ %indvars.iv.next56, %for.inc51 ]
  %k.038 = phi i32 [ 1, %for.cond28.preheader.preheader ], [ %inc52, %for.inc51 ]
  %cmp2935 = icmp sgt i32 %5, %k.038
  br i1 %cmp2935, label %for.body30.preheader, label %for.inc51

for.body30.preheader:                             ; preds = %for.cond28.preheader
  %wide.trip.count57 = zext i32 %indvars.iv55 to i64
  %.pre = load i32, ptr %vla1, align 16, !tbaa !5
  br label %for.body30

for.body30:                                       ; preds = %for.body30.preheader, %for.inc48
  %28 = phi i32 [ %.pre, %for.body30.preheader ], [ %30, %for.inc48 ]
  %indvars.iv52 = phi i64 [ 0, %for.body30.preheader ], [ %indvars.iv.next53, %for.inc48 ]
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %arrayidx34 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv.next53
  %29 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %28, %29
  br i1 %cmp35, label %if.then36, label %for.inc48

if.then36:                                        ; preds = %for.body30
  %arrayidx32 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv52
  store i32 %28, ptr %arrayidx34, align 4, !tbaa !5
  store i32 %29, ptr %arrayidx32, align 4, !tbaa !5
  br label %for.inc48

for.inc48:                                        ; preds = %for.body30, %if.then36
  %30 = phi i32 [ %29, %for.body30 ], [ %28, %if.then36 ]
  %exitcond58.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count57
  br i1 %exitcond58.not, label %for.inc51, label %for.body30, !llvm.loop !16

for.inc51:                                        ; preds = %for.inc48, %for.cond28.preheader
  %inc52 = add nuw nsw i32 %k.038, 1
  %indvars.iv.next56 = add i32 %indvars.iv55, -1
  %exitcond59.not = icmp eq i32 %inc52, %5
  br i1 %exitcond59.not, label %for.end53, label %for.cond28.preheader, !llvm.loop !17

for.end53:                                        ; preds = %for.inc51, %for.cond25.preheader.for.end53_crit_edge
  %a.0.lcssa70 = phi i32 [ %a.0.lcssa71, %for.cond25.preheader.for.end53_crit_edge ], [ %a.1.lcssa, %for.inc51 ]
  %31 = phi i32 [ %24, %for.cond25.preheader.for.end53_crit_edge ], [ %5, %for.inc51 ]
  %sub5639.pre-phi = phi i32 [ %.pre63, %for.cond25.preheader.for.end53_crit_edge ], [ %25, %for.inc51 ]
  %sub54 = sub nsw i32 %31, %a.0.lcssa70
  %cmp5740 = icmp slt i32 %sub54, %sub5639.pre-phi
  br i1 %cmp5740, label %for.body58.preheader, label %for.end53.for.end64_crit_edge

for.end53.for.end64_crit_edge:                    ; preds = %for.end53
  %.pre64 = sext i32 %sub5639.pre-phi to i64
  br label %for.end64

for.body58.preheader:                             ; preds = %for.end53
  %32 = sext i32 %sub54 to i64
  br label %for.body58

for.body58:                                       ; preds = %for.body58.preheader, %for.body58
  %indvars.iv60 = phi i64 [ %32, %for.body58.preheader ], [ %indvars.iv.next61, %for.body58 ]
  %arrayidx60 = getelementptr inbounds i32, ptr %vla1, i64 %indvars.iv60
  %33 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %33)
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 1
  %34 = load i32, ptr %N, align 4, !tbaa !5
  %sub56 = add nsw i32 %34, -1
  %35 = sext i32 %sub56 to i64
  %cmp57 = icmp slt i64 %indvars.iv.next61, %35
  br i1 %cmp57, label %for.body58, label %for.end64, !llvm.loop !18

for.end64:                                        ; preds = %for.body58, %for.end53.for.end64_crit_edge
  %idxprom66.pre-phi = phi i64 [ %.pre64, %for.end53.for.end64_crit_edge ], [ %35, %for.body58 ]
  %arrayidx67 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom66.pre-phi
  %36 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %call68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %36)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
