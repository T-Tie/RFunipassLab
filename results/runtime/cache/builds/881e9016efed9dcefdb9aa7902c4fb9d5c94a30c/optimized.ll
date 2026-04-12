; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgkiltasz.cpp"
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
NodeBlock21:
  %cash = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %cash) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %cash)
  %0 = load i32, ptr %cash, align 4, !tbaa !5
  %rem = srem i32 %0, 10
  %div = sdiv i32 %0, 10
  %rem1 = srem i32 %div, 10
  %div2 = sdiv i32 %div, 10
  %rem3 = srem i32 %div2, 10
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %rem3)
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call4, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %Pivot22 = icmp slt i32 %rem1, 5
  br i1 %Pivot22, label %NodeBlock11, label %NodeBlock19

NodeBlock19:                                      ; preds = %NodeBlock21
  %Pivot20 = icmp slt i32 %rem1, 7
  br i1 %Pivot20, label %NodeBlock13, label %NodeBlock17

NodeBlock17:                                      ; preds = %NodeBlock19
  %Pivot18 = icmp slt i32 %rem1, 8
  br i1 %Pivot18, label %sw.epilog.gvnsink.split, label %NodeBlock15

NodeBlock15:                                      ; preds = %NodeBlock17
  %Pivot16 = icmp slt i32 %rem1, 9
  br i1 %Pivot16, label %sw.bb12, label %sw.epilog.gvnsink.split

NodeBlock13:                                      ; preds = %NodeBlock19
  %Pivot14 = icmp slt i32 %rem1, 6
  br i1 %Pivot14, label %sw.bb33, label %sw.epilog.gvnsink.split

NodeBlock11:                                      ; preds = %NodeBlock21
  %Pivot12 = icmp slt i32 %rem1, 2
  br i1 %Pivot12, label %NodeBlock, label %NodeBlock9

NodeBlock9:                                       ; preds = %NodeBlock11
  %Pivot10 = icmp slt i32 %rem1, 3
  br i1 %Pivot10, label %sw.epilog.gvnsink.split, label %NodeBlock7

NodeBlock7:                                       ; preds = %NodeBlock9
  %Pivot8 = icmp slt i32 %rem1, 4
  br i1 %Pivot8, label %sw.bb47, label %sw.epilog.gvnsink.split

NodeBlock:                                        ; preds = %NodeBlock11
  %Pivot = icmp slt i32 %rem1, 1
  br i1 %Pivot, label %LeafBlock, label %sw.epilog.gvnsink.split

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %rem1, 0
  br i1 %SwitchLeaf, label %sw.epilog.gvnsink.split, label %sw.epilog

sw.bb12:                                          ; preds = %NodeBlock15
  br label %sw.epilog.gvnsink.split

sw.bb33:                                          ; preds = %NodeBlock13
  br label %sw.epilog.gvnsink.split

sw.bb47:                                          ; preds = %NodeBlock7
  br label %sw.epilog.gvnsink.split

sw.epilog.gvnsink.split:                          ; preds = %LeafBlock, %NodeBlock, %NodeBlock9, %NodeBlock7, %NodeBlock13, %NodeBlock17, %NodeBlock15, %sw.bb12, %sw.bb33, %sw.bb47
  %.sink6 = phi i32 [ 0, %sw.bb47 ], [ 1, %sw.bb33 ], [ 1, %sw.bb12 ], [ 1, %NodeBlock15 ], [ 1, %NodeBlock17 ], [ 1, %NodeBlock13 ], [ 0, %NodeBlock7 ], [ 0, %NodeBlock9 ], [ 0, %NodeBlock ], [ 0, %LeafBlock ]
  %.sink5 = phi i32 [ 1, %sw.bb47 ], [ 0, %sw.bb33 ], [ 1, %sw.bb12 ], [ 2, %NodeBlock15 ], [ 1, %NodeBlock17 ], [ 0, %NodeBlock13 ], [ 2, %NodeBlock7 ], [ 1, %NodeBlock9 ], [ 0, %NodeBlock ], [ 0, %LeafBlock ]
  %.sink = phi i32 [ 1, %sw.bb47 ], [ 0, %sw.bb33 ], [ 1, %sw.bb12 ], [ 0, %NodeBlock15 ], [ 0, %NodeBlock17 ], [ 1, %NodeBlock13 ], [ 0, %NodeBlock7 ], [ 0, %NodeBlock9 ], [ 1, %NodeBlock ], [ 0, %LeafBlock ]
  %call69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.sink6)
  %call70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call69, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call70, i32 noundef %.sink5)
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call71, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call72, i32 noundef %.sink)
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call73, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %sw.epilog

sw.epilog:                                        ; preds = %LeafBlock, %sw.epilog.gvnsink.split
  %cmp = icmp sge i32 %rem, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  %call76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call75, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %sub = sub nsw i32 %rem, 5
  %call77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call76, i32 noundef %sub)
  %call78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call77, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %call79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %call80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call79, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call80, i32 noundef %rem)
  %call82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call81, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %cash) #6
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
attributes #5 = { nofree nounwind willreturn }
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
