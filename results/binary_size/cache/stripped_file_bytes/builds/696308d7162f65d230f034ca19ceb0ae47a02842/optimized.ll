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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 80004, ptr noundef nonnull align 16 %num) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.cond
  %wide.trip.count42 = sext i32 %0 to i64
  br label %for.cond31

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.cond31:                                       ; preds = %for.cond31.preheader, %if.end82
  %sum.0 = phi i32 [ %sum.1, %if.end82 ], [ 0, %for.cond31.preheader ]
  %i30.0 = phi i32 [ %inc.i3, %if.end82 ], [ 0, %for.cond31.preheader ]
  %cmp32 = icmp slt i32 %i30.0, %0
  br i1 %cmp32, label %for.body34, label %for.cond88.preheader

for.cond88.preheader:                             ; preds = %for.cond31
  %1 = xor i32 %sum.0, -1
  br label %for.cond88

for.body34:                                       ; preds = %for.cond31
  %idxprom35 = sext i32 %i30.0 to i64
  %arrayidx36 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom35
  %2 = load i32, ptr %arrayidx36, align 4, !tbaa !5, !invariant.load !9
  %cmp37 = icmp eq i32 %2, 101
  br i1 %cmp37, label %land.lhs.true, label %if.end82

land.lhs.true:                                    ; preds = %for.body34
  %add38 = add nsw i32 %i30.0, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom39
  %3 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !9
  %cmp41.not = icmp eq i32 %3, 101
  br i1 %cmp41.not, label %for.cond67, label %for.cond43

for.cond43:                                       ; preds = %land.lhs.true, %for.inc52
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.inc52 ], [ %idxprom35, %land.lhs.true ]
  %exitcond.not = icmp eq i64 %indvars.iv33, %wide.trip.count42
  br i1 %exitcond.not, label %for.end55, label %for.inc52

for.inc52:                                        ; preds = %for.cond43
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  %arrayidx49 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %indvars.iv.next34
  %4 = load i32, ptr %arrayidx49, align 4, !tbaa !5, !invariant.load !9
  %arrayidx51 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %indvars.iv33
  store i32 %4, ptr %arrayidx51, align 4, !tbaa !5
  br label %for.cond43, !llvm.loop !10

for.end55:                                        ; preds = %for.cond43
  %inc56 = add nsw i32 %sum.0, 1
  br label %if.end82

for.cond67:                                       ; preds = %land.lhs.true, %for.inc76
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc76 ], [ %idxprom35, %land.lhs.true ]
  %exitcond43.not = icmp eq i64 %indvars.iv37, %wide.trip.count42
  br i1 %exitcond43.not, label %for.end79, label %for.inc76

for.inc76:                                        ; preds = %for.cond67
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, 1
  %arrayidx73 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %indvars.iv.next38
  %5 = load i32, ptr %arrayidx73, align 4, !tbaa !5, !invariant.load !9
  %arrayidx75 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %indvars.iv37
  store i32 %5, ptr %arrayidx75, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !13

for.end79:                                        ; preds = %for.cond67
  %inc80 = add nsw i32 %sum.0, 1
  %dec = add nsw i32 %i30.0, -1
  br label %if.end82

if.end82:                                         ; preds = %for.end79, %for.body34, %for.end55
  %sum.1 = phi i32 [ %inc56, %for.end55 ], [ %inc80, %for.end79 ], [ %sum.0, %for.body34 ]
  %i30.1 = phi i32 [ %i30.0, %for.end55 ], [ %dec, %for.end79 ], [ %i30.0, %for.body34 ]
  %inc.i3 = add nsw i32 %i30.1, 1
  br label %for.cond31

for.cond88:                                       ; preds = %for.cond88.preheader, %for.inc97
  %6 = phi i32 [ %0, %for.cond88.preheader ], [ %.pre, %for.inc97 ]
  %indvars.iv44 = phi i64 [ 0, %for.cond88.preheader ], [ %indvars.iv.next45, %for.inc97 ]
  %sub89 = add i32 %6, %1
  %7 = sext i32 %sub89 to i64
  %cmp90 = icmp slt i64 %indvars.iv44, %7
  br i1 %cmp90, label %for.inc97, label %for.end100

for.inc97:                                        ; preds = %for.cond88
  %arrayidx94 = getelementptr inbounds nuw [20001 x i32], ptr %num, i64 0, i64 %indvars.iv44
  %8 = load i32, ptr %arrayidx94, align 4, !tbaa !5, !invariant.load !9
  %call95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %call96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call95, ptr noundef nonnull @.str)
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond88, !llvm.loop !14

for.end100:                                       ; preds = %for.cond88
  %arrayidx104 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %7
  %9 = load i32, ptr %arrayidx104, align 4, !tbaa !5, !invariant.load !9
  %call105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 noundef 80004, ptr noundef nonnull %num) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
