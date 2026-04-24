; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkaf2ugbt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [20001 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #3
  call void @llvm.lifetime.start.p0(i64 80004, ptr nonnull %num) #3
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %0, 0
  br i1 %cmp29, label %for.body, label %for.cond88.preheader

for.cond3.preheader:                              ; preds = %for.body
  %cmp433 = icmp sgt i32 %2, 0
  br i1 %cmp433, label %for.body6.preheader, label %for.cond88.preheader

for.body6.preheader:                              ; preds = %for.cond3.preheader
  %1 = zext nneg i32 %2 to i64
  %wide.trip.count58 = zext nneg i32 %2 to i64
  br label %for.body6

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond3.preheader, !llvm.loop !9

for.body34.preheader:                             ; preds = %cleanup
  %wide.trip.count65 = zext nneg i32 %2 to i64
  %wide.trip.count72 = zext nneg i32 %2 to i64
  br label %for.body34

for.body6:                                        ; preds = %for.body6.preheader, %cleanup
  %indvars.iv55 = phi i64 [ 0, %for.body6.preheader ], [ %indvars.iv.next56, %cleanup ]
  %indvars.iv50 = phi i64 [ 1, %for.body6.preheader ], [ %indvars.iv.next51, %cleanup ]
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %arrayidx12 = getelementptr inbounds nuw [20001 x i32], ptr %num, i64 0, i64 %indvars.iv55
  %cmp831 = icmp samesign ult i64 %indvars.iv.next56, %1
  br i1 %cmp831, label %for.body10, label %cleanup

for.body10:                                       ; preds = %for.body6, %for.inc23
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc23 ], [ %indvars.iv50, %for.body6 ]
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %4, 101
  br i1 %cmp13, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body10
  %arrayidx15 = getelementptr inbounds nuw [20001 x i32], ptr %num, i64 0, i64 %indvars.iv52
  %5 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %5, %4
  br i1 %cmp18, label %if.then19, label %for.inc23

if.then19:                                        ; preds = %if.end
  store i32 101, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %if.end, %if.then19
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count58
  br i1 %exitcond.not, label %cleanup, label %for.body10, !llvm.loop !12

cleanup:                                          ; preds = %for.inc23, %for.body10, %for.body6
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %for.body34.preheader, label %for.body6, !llvm.loop !13

for.cond88.preheader.loopexit:                    ; preds = %for.inc83
  %6 = xor i32 %sum.1, -1
  br label %for.cond88.preheader

for.cond88.preheader:                             ; preds = %entry, %for.cond3.preheader, %for.cond88.preheader.loopexit
  %7 = phi i32 [ %2, %for.cond88.preheader.loopexit ], [ %2, %for.cond3.preheader ], [ %0, %entry ]
  %sum.0.lcssa = phi i32 [ %6, %for.cond88.preheader.loopexit ], [ -1, %for.cond3.preheader ], [ -1, %entry ]
  %sub8943 = add i32 %7, %sum.0.lcssa
  %cmp9044 = icmp sgt i32 %sub8943, 0
  br i1 %cmp9044, label %for.body92, label %for.cond88.preheader.for.cond.cleanup91_crit_edge

for.cond88.preheader.for.cond.cleanup91_crit_edge: ; preds = %for.cond88.preheader
  %.pre = sext i32 %sub8943 to i64
  br label %for.cond.cleanup91

for.body34:                                       ; preds = %for.body34.preheader, %for.inc83
  %i30.041 = phi i32 [ %inc84, %for.inc83 ], [ 0, %for.body34.preheader ]
  %sum.040 = phi i32 [ %sum.1, %for.inc83 ], [ 0, %for.body34.preheader ]
  %idxprom35 = sext i32 %i30.041 to i64
  %arrayidx36 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom35
  %8 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %8, 101
  br i1 %cmp37, label %land.lhs.true, label %for.inc83

land.lhs.true:                                    ; preds = %for.body34
  %add38 = add nsw i32 %i30.041, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom39
  %9 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41.not = icmp eq i32 %9, 101
  %cmp6837 = icmp slt i32 %i30.041, %2
  br i1 %cmp41.not, label %for.cond67.preheader, label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %land.lhs.true
  br i1 %cmp6837, label %for.body46.preheader, label %for.cond.cleanup45

for.body46.preheader:                             ; preds = %for.cond43.preheader
  %10 = sub nsw i64 %wide.trip.count58, %idxprom35
  %min.iters.check83 = icmp ult i64 %10, 4
  br i1 %min.iters.check83, label %for.body46.preheader96, label %vector.ph84

vector.ph84:                                      ; preds = %for.body46.preheader
  %n.vec86 = and i64 %10, -4
  %11 = add nsw i64 %n.vec86, %idxprom35
  %invariant.op = add i64 %idxprom35, 1
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph84
  %index88 = phi i64 [ 0, %vector.ph84 ], [ %index.next91, %vector.body87 ]
  %offset.idx89 = add i64 %index88, %idxprom35
  %.reass = add i64 %index88, %invariant.op
  %12 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %.reass
  %wide.load90 = load <4 x i32>, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %offset.idx89
  store <4 x i32> %wide.load90, ptr %13, align 4, !tbaa !5
  %index.next91 = add nuw i64 %index88, 4
  %14 = icmp eq i64 %index.next91, %n.vec86
  br i1 %14, label %middle.block92, label %vector.body87, !llvm.loop !14

middle.block92:                                   ; preds = %vector.body87
  %cmp.n93 = icmp eq i64 %10, %n.vec86
  br i1 %cmp.n93, label %for.cond.cleanup45, label %for.body46.preheader96

for.body46.preheader96:                           ; preds = %for.body46.preheader, %middle.block92
  %indvars.iv62.ph = phi i64 [ %idxprom35, %for.body46.preheader ], [ %11, %middle.block92 ]
  br label %for.body46

for.cond.cleanup45:                               ; preds = %for.body46, %middle.block92, %for.cond43.preheader
  %inc56 = add nsw i32 %sum.040, 1
  br label %for.inc83

for.body46:                                       ; preds = %for.body46.preheader96, %for.body46
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.body46 ], [ %indvars.iv62.ph, %for.body46.preheader96 ]
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1
  %arrayidx49 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %indvars.iv.next63
  %15 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %arrayidx51 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %indvars.iv62
  store i32 %15, ptr %arrayidx51, align 4, !tbaa !5
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %for.cond.cleanup45, label %for.body46, !llvm.loop !17

for.cond67.preheader:                             ; preds = %land.lhs.true
  br i1 %cmp6837, label %for.body70.preheader, label %for.cond.cleanup69

for.body70.preheader:                             ; preds = %for.cond67.preheader
  %16 = sub nsw i64 %wide.trip.count58, %idxprom35
  %min.iters.check = icmp ult i64 %16, 4
  br i1 %min.iters.check, label %for.body70.preheader95, label %vector.ph

vector.ph:                                        ; preds = %for.body70.preheader
  %n.vec = and i64 %16, -4
  %17 = add nsw i64 %n.vec, %idxprom35
  %invariant.op99 = add i64 %idxprom35, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %idxprom35
  %.reass100 = add i64 %index, %invariant.op99
  %18 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %.reass100
  %wide.load = load <4 x i32>, ptr %18, align 4, !tbaa !5
  %19 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %19, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %20 = icmp eq i64 %index.next, %n.vec
  br i1 %20, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %16, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup69, label %for.body70.preheader95

for.body70.preheader95:                           ; preds = %for.body70.preheader, %middle.block
  %indvars.iv69.ph = phi i64 [ %idxprom35, %for.body70.preheader ], [ %17, %middle.block ]
  br label %for.body70

for.cond.cleanup69:                               ; preds = %for.body70, %middle.block, %for.cond67.preheader
  %inc80 = add nsw i32 %sum.040, 1
  %dec = add nsw i32 %i30.041, -1
  br label %for.inc83

for.body70:                                       ; preds = %for.body70.preheader95, %for.body70
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body70 ], [ %indvars.iv69.ph, %for.body70.preheader95 ]
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, 1
  %arrayidx73 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %indvars.iv.next70
  %21 = load i32, ptr %arrayidx73, align 4, !tbaa !5
  %arrayidx75 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %indvars.iv69
  store i32 %21, ptr %arrayidx75, align 4, !tbaa !5
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %for.cond.cleanup69, label %for.body70, !llvm.loop !19

for.inc83:                                        ; preds = %for.body34, %for.cond.cleanup45, %for.cond.cleanup69
  %sum.1 = phi i32 [ %inc56, %for.cond.cleanup45 ], [ %inc80, %for.cond.cleanup69 ], [ %sum.040, %for.body34 ]
  %i30.1 = phi i32 [ %i30.041, %for.cond.cleanup45 ], [ %dec, %for.cond.cleanup69 ], [ %i30.041, %for.body34 ]
  %inc84 = add nsw i32 %i30.1, 1
  %cmp32 = icmp slt i32 %inc84, %2
  br i1 %cmp32, label %for.body34, label %for.cond88.preheader.loopexit, !llvm.loop !20

for.cond.cleanup91:                               ; preds = %for.body92, %for.cond88.preheader.for.cond.cleanup91_crit_edge
  %idxprom103.pre-phi = phi i64 [ %.pre, %for.cond88.preheader.for.cond.cleanup91_crit_edge ], [ %25, %for.body92 ]
  %arrayidx104 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom103.pre-phi
  %22 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  %call105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %22)
  call void @llvm.lifetime.end.p0(i64 80004, ptr nonnull %num) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #3
  ret i32 0

for.body92:                                       ; preds = %for.cond88.preheader, %for.body92
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body92 ], [ 0, %for.cond88.preheader ]
  %arrayidx94 = getelementptr inbounds nuw [20001 x i32], ptr %num, i64 0, i64 %indvars.iv74
  %23 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %call95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %23)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call95, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %sub89 = add i32 %24, %sum.0.lcssa
  %25 = sext i32 %sub89 to i64
  %cmp90 = icmp slt i64 %indvars.iv.next75, %25
  br i1 %cmp90, label %for.body92, label %for.cond.cleanup91, !llvm.loop !21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11, !15}
!18 = distinct !{!18, !10, !11, !15, !16}
!19 = distinct !{!19, !10, !11, !15}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
