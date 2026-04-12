; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgcf8dzgb.cpp"
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
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %a.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 100
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %sub = sub nsw i32 %0, 100
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %inc = add nsw i32 %a.0, 1
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %b.0 = phi i32 [ 0, %while.end ], [ %inc5, %while.body3 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %1, 50
  br i1 %cmp2, label %while.body3, label %while.end6

while.body3:                                      ; preds = %while.cond1
  %sub4 = sub nsw i32 %1, 50
  store i32 %sub4, ptr %n, align 4, !tbaa !5
  %inc5 = add nsw i32 %b.0, 1
  br label %while.cond1, !llvm.loop !12

while.end6:                                       ; preds = %while.cond1
  br label %while.cond7

while.cond7:                                      ; preds = %while.body9, %while.end6
  %c.0 = phi i32 [ 0, %while.end6 ], [ %inc11, %while.body9 ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp8 = icmp sge i32 %2, 20
  br i1 %cmp8, label %while.body9, label %while.end12

while.body9:                                      ; preds = %while.cond7
  %sub10 = sub nsw i32 %2, 20
  store i32 %sub10, ptr %n, align 4, !tbaa !5
  %inc11 = add nsw i32 %c.0, 1
  br label %while.cond7, !llvm.loop !13

while.end12:                                      ; preds = %while.cond7
  br label %while.cond13

while.cond13:                                     ; preds = %while.body15, %while.end12
  %d.0 = phi i32 [ 0, %while.end12 ], [ %inc17, %while.body15 ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %3, 10
  br i1 %cmp14, label %while.body15, label %while.end18

while.body15:                                     ; preds = %while.cond13
  %sub16 = sub nsw i32 %3, 10
  store i32 %sub16, ptr %n, align 4, !tbaa !5
  %inc17 = add nsw i32 %d.0, 1
  br label %while.cond13, !llvm.loop !14

while.end18:                                      ; preds = %while.cond13
  br label %while.cond19

while.cond19:                                     ; preds = %while.body21, %while.end18
  %e.0 = phi i32 [ 0, %while.end18 ], [ %inc23, %while.body21 ]
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp sge i32 %4, 5
  br i1 %cmp20, label %while.body21, label %while.end24

while.body21:                                     ; preds = %while.cond19
  %sub22 = sub nsw i32 %4, 5
  store i32 %sub22, ptr %n, align 4, !tbaa !5
  %inc23 = add nsw i32 %e.0, 1
  br label %while.cond19, !llvm.loop !15

while.end24:                                      ; preds = %while.cond19
  br label %while.cond25

while.cond25:                                     ; preds = %while.body27, %while.end24
  %f.0 = phi i32 [ 0, %while.end24 ], [ %inc29, %while.body27 ]
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp26 = icmp sge i32 %5, 1
  br i1 %cmp26, label %while.body27, label %while.end30

while.body27:                                     ; preds = %while.cond25
  %sub28 = sub nsw i32 %5, 1
  store i32 %sub28, ptr %n, align 4, !tbaa !5
  %inc29 = add nsw i32 %f.0, 1
  br label %while.cond25, !llvm.loop !16

while.end30:                                      ; preds = %while.cond25
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %a.0)
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call31, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call32, i32 noundef %b.0)
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call33, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call34, i32 noundef %c.0)
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call35, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call36, i32 noundef %d.0)
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call37, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call38, i32 noundef %e.0)
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call39, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call40, i32 noundef %f.0)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
