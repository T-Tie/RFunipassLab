; ModuleID = '<stdin>'
source_filename = "/tmp/tmp10ok174u.cpp"
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
  %a = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %a, i8 0, i64 64, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %for.end23, %entry
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  %0 = load i32, ptr %a, align 16
  %cmp = icmp ne i32 %0, -1
  %or.cond.not = select i1 %call1, i1 %cmp, i1 false
  br i1 %or.cond.not, label %do.cond, label %while.end

do.cond:                                          ; preds = %while.cond, %do.cond
  %indvars.iv16 = phi i32 [ %indvars.iv.next17, %do.cond ], [ 1, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.cond ], [ 0, %while.cond ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  %call4 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx3)
  %1 = load i32, ptr %arrayidx3, align 4, !tbaa !8
  %cmp7.not = icmp eq i32 %1, 0
  %indvars.iv.next17 = add nuw i32 %indvars.iv16, 1
  br i1 %cmp7.not, label %for.cond.preheader, label %do.cond, !llvm.loop !11

for.cond.preheader:                               ; preds = %do.cond
  %wide.trip.count22 = zext i32 %indvars.iv16 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc21
  %indvars.iv18 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next19, %for.inc21 ]
  %sum.0 = phi i32 [ 0, %for.cond.preheader ], [ %sum.1, %for.inc21 ]
  %exitcond23 = icmp eq i64 %indvars.iv18, %wide.trip.count22
  br i1 %exitcond23, label %for.end23, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond
  %arrayidx16 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv18
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.preheader, %for.inc
  %indvars.iv13 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next14, %for.inc ]
  %sum.1 = phi i32 [ %sum.0, %for.cond9.preheader ], [ %sum.2, %for.inc ]
  %exitcond = icmp eq i64 %indvars.iv13, %wide.trip.count22
  br i1 %exitcond, label %for.inc21, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %cmp12.not = icmp eq i64 %indvars.iv13, %indvars.iv18
  br i1 %cmp12.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body11
  %arrayidx14 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv13
  %2 = load i32, ptr %arrayidx14, align 4, !tbaa !8
  %3 = load i32, ptr %arrayidx16, align 4, !tbaa !8
  %mul = shl nsw i32 %3, 1
  %cmp17 = icmp eq i32 %2, %mul
  %add = zext i1 %cmp17 to i32
  %spec.select = add nsw i32 %add, %sum.1
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body11
  %sum.2 = phi i32 [ %sum.1, %for.body11 ], [ %spec.select, %land.lhs.true ]
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond9, !llvm.loop !14

for.inc21:                                        ; preds = %for.cond9
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond, !llvm.loop !15

for.end23:                                        ; preds = %for.cond
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
