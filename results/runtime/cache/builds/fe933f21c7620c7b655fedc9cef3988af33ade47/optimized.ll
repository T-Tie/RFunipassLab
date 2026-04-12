; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3s_hjf0p.cpp"
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #5
  br label %while.body

while.body:                                       ; preds = %entry, %for.end34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %while.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %for.inc [
    i32 0, label %for.end
    i32 -1, label %for.end
  ]

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.body, %for.body, %for.cond
  %1 = load i32, ptr %a, align 16, !tbaa !5
  %cmp12 = icmp eq i32 %1, -1
  br i1 %cmp12, label %while.end, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.end
  %wide.trip.count23 = and i64 %indvars.iv, 4294967295
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc32
  %indvars.iv20 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next21, %for.inc32 ]
  %sum.1 = phi i32 [ 0, %for.cond15.preheader ], [ %sum.2, %for.inc32 ]
  %exitcond24.not = icmp eq i64 %indvars.iv20, %wide.trip.count23
  br i1 %exitcond24.not, label %for.end34, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond15
  %arrayidx22 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv20
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.body20
  %indvars.iv16 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next17, %for.body20 ]
  %sum.2 = phi i32 [ %sum.1, %for.cond18.preheader ], [ %spec.select, %for.body20 ]
  %exitcond19.not = icmp eq i64 %indvars.iv16, %wide.trip.count23
  br i1 %exitcond19.not, label %for.inc32, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %arrayidx24 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv16
  %3 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %cmp25 = icmp eq i32 %2, %mul
  %inc27 = zext i1 %cmp25 to i32
  %spec.select = add nsw i32 %inc27, %sum.2
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond18, !llvm.loop !12

for.inc32:                                        ; preds = %for.cond18
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond15, !llvm.loop !13

for.end34:                                        ; preds = %for.cond15
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.1)
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call35, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.body, !llvm.loop !14

while.end:                                        ; preds = %for.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #5
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
