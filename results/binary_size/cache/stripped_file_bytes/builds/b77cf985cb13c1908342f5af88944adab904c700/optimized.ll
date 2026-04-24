; ModuleID = '<stdin>'
source_filename = "/tmp/tmppu4kue93.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [15 x i32], align 16
  %b = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 60, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %b) #6
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %entry
  %n.0 = phi i32 [ 0, %entry ], [ %n.1, %if.end30 ]
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %b)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, ptr %b, align 4, !tbaa !9
  switch i32 %0, label %if.else26 [
    i32 -1, label %while.end
    i32 0, label %for.cond.preheader
  ]

for.cond.preheader:                               ; preds = %while.body
  %smax = call i32 @llvm.smax.i32(i32 %n.0, i32 0)
  %wide.trip.count18 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n.0 to i64
  br label %for.cond

for.cond.loopexit:                                ; preds = %for.cond5
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.cond:                                         ; preds = %for.cond.preheader, %for.cond.loopexit
  %indvars.iv15 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next16, %for.cond.loopexit ]
  %indvars.iv = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next, %for.cond.loopexit ]
  %sum.1 = phi i32 [ 0, %for.cond.preheader ], [ %sum.2, %for.cond.loopexit ]
  %exitcond19.not = icmp eq i64 %indvars.iv15, %wide.trip.count18
  br i1 %exitcond19.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.1)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end30

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv15
  br label %for.cond5

for.cond5:                                        ; preds = %for.body9, %for.body
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.body9 ], [ %indvars.iv, %for.body ]
  %sum.2 = phi i32 [ %sum.3, %for.body9 ], [ %sum.1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv12, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body9

for.body9:                                        ; preds = %for.cond5
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !9, !invariant.load !8
  %arrayidx11 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv12
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !9, !invariant.load !8
  %mul = shl nsw i32 %2, 1
  %cmp12 = icmp eq i32 %1, %mul
  %mul17 = shl nsw i32 %1, 1
  %cmp18 = icmp eq i32 %2, %mul17
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp18
  %inc = zext i1 %or.cond to i32
  %sum.3 = add nsw i32 %sum.2, %inc
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond5, !llvm.loop !15

if.else26:                                        ; preds = %while.body
  %idxprom27 = sext i32 %n.0 to i64
  %arrayidx28 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom27
  store i32 %0, ptr %arrayidx28, align 4, !tbaa !9
  %inc29 = add nsw i32 %n.0, 1
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %for.cond.cleanup
  %n.1 = phi i32 [ 0, %for.cond.cleanup ], [ %inc29, %if.else26 ]
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.body, %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 60, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
