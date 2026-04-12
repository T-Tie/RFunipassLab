; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnm6ajy2m.cpp"
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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %cmp.not = icmp eq i64 %indvars.iv, %4
  br i1 %cmp.not, label %while.cond, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

while.cond:                                       ; preds = %for.cond, %cleanup
  %5 = phi i32 [ %9, %cleanup ], [ %3, %for.cond ]
  %i.1 = phi i32 [ %spec.select, %cleanup ], [ 1, %for.cond ]
  %cmp2 = icmp slt i32 %i.1, %5
  br i1 %cmp2, label %for.cond3.preheader, label %for.cond29

for.cond3.preheader:                              ; preds = %while.cond
  %idxprom6 = zext nneg i32 %i.1 to i64
  %arrayidx7 = getelementptr inbounds nuw i32, ptr %vla, i64 %idxprom6
  %6 = load i32, ptr %arrayidx7, align 4, !tbaa !5, !invariant.load !12
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.cond3.preheader
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body5 ], [ 0, %for.cond3.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %idxprom6
  br i1 %exitcond.not, label %cleanup, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv23
  %7 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %cmp10 = icmp eq i32 %6, %7
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br i1 %cmp10, label %for.cond11.preheader, label %for.cond3, !llvm.loop !13

for.cond11.preheader:                             ; preds = %for.body5
  %sub = add nsw i32 %5, -1
  %wide.trip.count29 = zext i32 %sub to i64
  br label %for.cond11

for.cond11:                                       ; preds = %for.cond11.preheader, %for.body14
  %indvars.iv26 = phi i64 [ %idxprom6, %for.cond11.preheader ], [ %indvars.iv.next27, %for.body14 ]
  %exitcond30.not = icmp eq i64 %indvars.iv26, %wide.trip.count29
  br i1 %exitcond30.not, label %for.cond.cleanup13, label %for.body14

for.cond.cleanup13:                               ; preds = %for.cond11
  store i32 %sub, ptr %n, align 4, !tbaa !5
  br label %cleanup

for.body14:                                       ; preds = %for.cond11
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %arrayidx16 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv.next27
  %8 = load i32, ptr %arrayidx16, align 4, !tbaa !5, !invariant.load !12
  %arrayidx18 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv26
  store i32 %8, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !14

cleanup:                                          ; preds = %for.cond3, %for.cond.cleanup13
  %9 = phi i32 [ %sub, %for.cond.cleanup13 ], [ %5, %for.cond3 ]
  %cmp25 = icmp eq i32 %9, %5
  %inc27 = zext i1 %cmp25 to i32
  %spec.select = add nuw nsw i32 %i.1, %inc27
  br label %while.cond, !llvm.loop !15

for.cond29:                                       ; preds = %while.cond, %for.body32
  %10 = phi i32 [ %.pre, %for.body32 ], [ %5, %while.cond ]
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.body32 ], [ 0, %while.cond ]
  %sub30 = add nsw i32 %10, -1
  %11 = sext i32 %sub30 to i64
  %cmp31 = icmp slt i64 %indvars.iv31, %11
  br i1 %cmp31, label %for.body32, label %for.end39

for.body32:                                       ; preds = %for.cond29
  %arrayidx34 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv31
  %12 = load i32, ptr %arrayidx34, align 4, !tbaa !5, !invariant.load !12
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call35, ptr noundef nonnull dereferenceable(2) @.str)
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !16

for.end39:                                        ; preds = %for.cond29
  %arrayidx42 = getelementptr inbounds i32, ptr %vla, i64 %11
  %13 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !12
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call43, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
