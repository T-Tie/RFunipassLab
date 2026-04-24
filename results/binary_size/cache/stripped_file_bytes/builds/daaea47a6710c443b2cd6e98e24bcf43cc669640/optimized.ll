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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 80004, ptr nonnull %num) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count40 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %cleanup
  %indvars.iv36 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next37, %cleanup ]
  %indvars.iv30 = phi i64 [ 1, %for.cond3.preheader ], [ %indvars.iv.next31, %cleanup ]
  %exitcond41.not = icmp eq i64 %indvars.iv36, %wide.trip.count40
  br i1 %exitcond41.not, label %for.cond31, label %for.body6

for.body6:                                        ; preds = %for.cond3
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %arrayidx12 = getelementptr inbounds nuw [20001 x i32], ptr %num, i64 0, i64 %indvars.iv36
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc23, %for.body6
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc23 ], [ %indvars.iv30, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body10

for.body10:                                       ; preds = %for.cond7
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %2, 101
  br i1 %cmp13, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body10
  %arrayidx15 = getelementptr inbounds nuw [20001 x i32], ptr %num, i64 0, i64 %indvars.iv32
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %3, %2
  br i1 %cmp18, label %if.then19, label %for.inc23

if.then19:                                        ; preds = %if.end
  store i32 101, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %if.end, %if.then19
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond7, !llvm.loop !12

cleanup:                                          ; preds = %for.body10, %for.cond7
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond3, !llvm.loop !13

for.cond31:                                       ; preds = %for.cond3, %for.inc83
  %sum.0 = phi i32 [ %sum.1, %for.inc83 ], [ 0, %for.cond3 ]
  %i30.0 = phi i32 [ %inc84, %for.inc83 ], [ 0, %for.cond3 ]
  %cmp32 = icmp slt i32 %i30.0, %0
  br i1 %cmp32, label %for.body34, label %for.cond88.preheader

for.cond88.preheader:                             ; preds = %for.cond31
  %4 = xor i32 %sum.0, -1
  br label %for.cond88

for.body34:                                       ; preds = %for.cond31
  %idxprom35 = sext i32 %i30.0 to i64
  %arrayidx36 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom35
  %5 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %5, 101
  br i1 %cmp37, label %land.lhs.true, label %for.inc83

land.lhs.true:                                    ; preds = %for.body34
  %add38 = add nsw i32 %i30.0, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom39
  %6 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41.not = icmp eq i32 %6, 101
  %smax53 = call i32 @llvm.smax.i32(i32 %i30.0, i32 %0)
  %wide.trip.count54 = sext i32 %smax53 to i64
  br i1 %cmp41.not, label %for.cond67, label %for.cond43

for.cond43:                                       ; preds = %land.lhs.true, %for.body46
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.body46 ], [ %idxprom35, %land.lhs.true ]
  %exitcond48.not = icmp eq i64 %indvars.iv42, %wide.trip.count54
  br i1 %exitcond48.not, label %for.cond.cleanup45, label %for.body46

for.cond.cleanup45:                               ; preds = %for.cond43
  %inc56 = add nsw i32 %sum.0, 1
  br label %for.inc83

for.body46:                                       ; preds = %for.cond43
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1
  %arrayidx49 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %indvars.iv.next43
  %7 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %arrayidx51 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %indvars.iv42
  store i32 %7, ptr %arrayidx51, align 4, !tbaa !5
  br label %for.cond43, !llvm.loop !14

for.cond67:                                       ; preds = %land.lhs.true, %for.body70
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body70 ], [ %idxprom35, %land.lhs.true ]
  %exitcond55.not = icmp eq i64 %indvars.iv49, %wide.trip.count54
  br i1 %exitcond55.not, label %for.cond.cleanup69, label %for.body70

for.cond.cleanup69:                               ; preds = %for.cond67
  %inc80 = add nsw i32 %sum.0, 1
  %dec = add nsw i32 %i30.0, -1
  br label %for.inc83

for.body70:                                       ; preds = %for.cond67
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1
  %arrayidx73 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %indvars.iv.next50
  %8 = load i32, ptr %arrayidx73, align 4, !tbaa !5
  %arrayidx75 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %indvars.iv49
  store i32 %8, ptr %arrayidx75, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !15

for.inc83:                                        ; preds = %for.body34, %for.cond.cleanup45, %for.cond.cleanup69
  %sum.1 = phi i32 [ %inc56, %for.cond.cleanup45 ], [ %inc80, %for.cond.cleanup69 ], [ %sum.0, %for.body34 ]
  %i30.1 = phi i32 [ %i30.0, %for.cond.cleanup45 ], [ %dec, %for.cond.cleanup69 ], [ %i30.0, %for.body34 ]
  %inc84 = add nsw i32 %i30.1, 1
  br label %for.cond31, !llvm.loop !16

for.cond88:                                       ; preds = %for.cond88.preheader, %for.body92
  %9 = phi i32 [ %0, %for.cond88.preheader ], [ %.pre, %for.body92 ]
  %indvars.iv56 = phi i64 [ 0, %for.cond88.preheader ], [ %indvars.iv.next57, %for.body92 ]
  %sub89 = add i32 %9, %4
  %10 = sext i32 %sub89 to i64
  %cmp90 = icmp slt i64 %indvars.iv56, %10
  br i1 %cmp90, label %for.body92, label %for.cond.cleanup91

for.cond.cleanup91:                               ; preds = %for.cond88
  %arrayidx104 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %10
  %11 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  %call105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  call void @llvm.lifetime.end.p0(i64 80004, ptr nonnull %num) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0

for.body92:                                       ; preds = %for.cond88
  %arrayidx94 = getelementptr inbounds nuw [20001 x i32], ptr %num, i64 0, i64 %indvars.iv56
  %12 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %call95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call95, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond88, !llvm.loop !17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
