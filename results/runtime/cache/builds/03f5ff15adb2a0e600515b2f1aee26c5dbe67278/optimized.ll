; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvkhgegmx.cpp"
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
  %m = alloca i32, align 4
  %a = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m) #5
  br label %while.cond

while.cond:                                       ; preds = %for.end29, %entry
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  %0 = load i32, ptr %m, align 4
  %cmp = icmp ne i32 %0, -1
  %or.cond.not = select i1 %call1, i1 %cmp, i1 false
  br i1 %or.cond.not, label %if.end, label %while.end32

if.end:                                           ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 noundef 60, ptr noundef nonnull %a) #6
  br label %while.cond2

while.cond2:                                      ; preds = %if.end12, %if.end
  %indvars.iv8 = phi i32 [ %indvars.iv.next9, %if.end12 ], [ 1, %if.end ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end12 ], [ 0, %if.end ]
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %vtable4 = load ptr, ptr %call3, align 8, !tbaa !5
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8, !invariant.load !8
  %add.ptr7 = getelementptr inbounds i8, ptr %call3, i64 %vbase.offset6
  %call8 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr7)
  br i1 %call8, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond2
  %1 = load i32, ptr %m, align 4, !tbaa !9
  %cmp10 = icmp eq i32 %1, 0
  br i1 %cmp10, label %while.end, label %if.end12

if.end12:                                         ; preds = %while.body9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx13 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  store i32 %1, ptr %arrayidx13, align 4, !tbaa !9
  %indvars.iv.next9 = add nuw i32 %indvars.iv8, 1
  br label %while.cond2, !llvm.loop !12

while.end:                                        ; preds = %while.body9, %while.cond2
  %wide.trip.count14 = zext i32 %indvars.iv8 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %while.end
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc27 ], [ 0, %while.end ]
  %count.0 = phi i32 [ %count.1, %for.inc27 ], [ 0, %while.end ]
  %exitcond15 = icmp eq i64 %indvars.iv10, %wide.trip.count14
  br i1 %exitcond15, label %for.end29, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond
  %arrayidx19 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv10
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !9, !invariant.load !8
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body17
  %indvars.iv5 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next6, %for.body17 ]
  %count.1 = phi i32 [ %count.0, %for.cond15.preheader ], [ %spec.select, %for.body17 ]
  %exitcond = icmp eq i64 %indvars.iv5, %wide.trip.count14
  br i1 %exitcond, label %for.inc27, label %for.body17

for.body17:                                       ; preds = %for.cond15
  %arrayidx21 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv5
  %3 = load i32, ptr %arrayidx21, align 4, !tbaa !9, !invariant.load !8
  %mul = shl nsw i32 %3, 1
  %cmp22 = icmp eq i32 %2, %mul
  %inc24 = zext i1 %cmp22 to i32
  %spec.select = add nsw i32 %count.1, %inc24
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond15, !llvm.loop !15

for.inc27:                                        ; preds = %for.cond15
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond, !llvm.loop !16

for.end29:                                        ; preds = %for.cond
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count.0)
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call30, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 60, ptr noundef nonnull %a) #6
  br label %while.cond, !llvm.loop !17

while.end32:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = distinct !{!17, !13, !14}
