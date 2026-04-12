; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4s_1mwzs.cpp"
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
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %a) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %0 = load i32, ptr %a, align 16, !tbaa !5
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %for.end27, label %if.else

if.else:                                          ; preds = %for.cond
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %1, 0
  br i1 %cmp4, label %for.cond6.preheader, label %for.inc25

for.cond6.preheader:                              ; preds = %if.else
  %smax = call i32 @llvm.smax.i32(i32 %i.0, i32 0)
  %wide.trip.count14 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %i.0 to i64
  br label %for.cond6

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc18
  %indvars.iv11 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next12, %for.inc18 ]
  %count.2 = phi i32 [ 0, %for.cond6.preheader ], [ %count.3, %for.inc18 ]
  %exitcond15.not = icmp eq i64 %indvars.iv11, %wide.trip.count14
  br i1 %exitcond15.not, label %for.end20, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond6
  %arrayidx14 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv11
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body10
  %indvars.iv = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next, %for.body10 ]
  %count.3 = phi i32 [ %count.2, %for.cond8.preheader ], [ %spec.select, %for.body10 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc18, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %arrayidx12 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %3 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %cmp15 = icmp eq i32 %2, %mul
  %inc = zext i1 %cmp15 to i32
  %spec.select = add nsw i32 %inc, %count.3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond8, !llvm.loop !9

for.inc18:                                        ; preds = %for.cond8
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond6, !llvm.loop !12

for.end20:                                        ; preds = %for.cond6
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count.2)
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call21, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc25

for.inc25:                                        ; preds = %for.end20, %if.else
  %i.1 = phi i32 [ -1, %for.end20 ], [ %i.0, %if.else ]
  %inc26 = add nsw i32 %i.1, 1
  br label %for.cond, !llvm.loop !13

for.end27:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
