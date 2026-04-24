; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_9s95ecz.cpp"
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3cmpPKvS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %a, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %b) #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !5, !invariant.load !9
  %1 = load i32, ptr %b, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z5chuliPii(ptr nofree noundef readonly captures(none) %p, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %invariant.gep = getelementptr i8, ptr %p, i64 -4
  %0 = sext i32 %i to i64
  %gep = getelementptr i32, ptr %invariant.gep, i64 %0
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %i, i32 noundef 0)
  %wide.trip.count21 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %i to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc25 ], [ 0, %entry ]
  %count.0 = phi i32 [ %count.1, %for.inc25 ], [ 0, %entry ]
  %exitcond22.not = icmp eq i64 %indvars.iv, %wide.trip.count21
  br i1 %exitcond22.not, label %cleanup29, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %mul = shl nsw i32 %1, 1
  %2 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !9
  %cmp3 = icmp sgt i32 %mul, %2
  br i1 %cmp3, label %cleanup29, label %for.cond4

for.cond4:                                        ; preds = %for.body, %if.end15
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %if.end15 ], [ %indvars.iv, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv17, %wide.trip.count
  br i1 %exitcond.not, label %for.inc25, label %for.body7

for.body7:                                        ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv17
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !9
  %cmp13 = icmp eq i32 %3, %mul
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.body7
  %inc = add nsw i32 %count.0, 1
  br label %for.inc25

if.end15:                                         ; preds = %for.body7
  %cmp21 = icmp sgt i32 %3, %mul
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br i1 %cmp21, label %for.inc25, label %for.cond4, !llvm.loop !10

for.inc25:                                        ; preds = %if.end15, %for.cond4, %if.then14
  %count.1 = phi i32 [ %inc, %if.then14 ], [ %count.0, %for.cond4 ], [ %count.0, %if.end15 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

cleanup29:                                        ; preds = %for.cond, %for.body
  ret i32 %count.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca [20 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 80, ptr noundef nonnull align 16 captures(none) dereferenceable(80) %a) #7
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(80) %a)
  %vtable = load ptr, ptr %call, align 8, !tbaa !14
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !9
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  %0 = load i32, ptr %a, align 16
  %cmp = icmp ne i32 %0, -1
  %or.cond = select i1 %call1, i1 %cmp, i1 false
  br i1 %or.cond, label %while.cond3, label %while.end20

while.cond3:                                      ; preds = %while.cond, %while.body15
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body15 ], [ 1, %while.cond ]
  %arrayidx4 = getelementptr inbounds nuw [20 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx4)
  %vtable6 = load ptr, ptr %call5, align 8, !tbaa !14
  %vbase.offset.ptr7 = getelementptr i8, ptr %vtable6, i64 -24
  %vbase.offset8 = load i64, ptr %vbase.offset.ptr7, align 8, !invariant.load !9
  %add.ptr9 = getelementptr inbounds i8, ptr %call5, i64 %vbase.offset8
  %call10 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr9)
  br i1 %call10, label %land.end14, label %while.end

land.end14:                                       ; preds = %while.cond3
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.end, label %while.body15

while.body15:                                     ; preds = %land.end14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %while.cond3, !llvm.loop !16

while.end:                                        ; preds = %while.cond3, %land.end14
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  call void @qsort(ptr noundef nonnull align 16 dereferenceable(80) %a, i64 noundef %indvars.iv, i64 noundef 4, ptr noundef nonnull @_Z3cmpPKvS0_)
  %call17 = call noundef i32 @_Z5chuliPii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(80) %a, i32 noundef %2) #8
  %call18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call17)
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call18, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.cond, !llvm.loop !17

while.end20:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 80, ptr noundef nonnull align 16 dereferenceable(80) %a) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #4 align 2

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
