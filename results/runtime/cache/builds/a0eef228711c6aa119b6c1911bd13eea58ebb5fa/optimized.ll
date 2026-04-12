; ModuleID = '<stdin>'
source_filename = "/tmp/tmp290nbhih.cpp"
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
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m2) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc54, %for.inc53 ]
  %a.0 = phi i32 [ undef, %entry ], [ %a.1, %for.inc53 ]
  %b.0 = phi i32 [ undef, %entry ], [ %b.1, %for.inc53 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end55, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %m1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %2 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %1, %2
  %cmp5 = icmp slt i32 %2, %1
  %spec.select = select i1 %cmp5, i32 %2, i32 %a.0
  %spec.select56 = select i1 %cmp5, i32 %1, i32 %b.0
  %a.1 = select i1 %cmp4, i32 %1, i32 %spec.select
  %b.1 = select i1 %cmp4, i32 %2, i32 %spec.select56
  %3 = load i32, ptr %year, align 4, !tbaa !5
  %4 = and i32 %3, 3
  %cmp8 = icmp eq i32 %4, 0
  %rem9 = srem i32 %3, 100
  %cmp10 = icmp ne i32 %rem9, 0
  %or.cond = and i1 %cmp8, %cmp10
  %rem11 = srem i32 %3, 400
  %cmp12 = icmp eq i32 %rem11, 0
  %or.cond57 = or i1 %cmp12, %or.cond
  %smax58 = call i32 @llvm.smax.i32(i32 %a.1, i32 %b.1)
  br i1 %or.cond57, label %for.cond14, label %for.cond30

for.cond14:                                       ; preds = %for.body, %for.inc
  %x.1 = phi i32 [ %add, %for.inc ], [ 0, %for.body ]
  %5 = phi i32 [ %inc, %for.inc ], [ %a.1, %for.body ]
  %exitcond59.not = icmp eq i32 %5, %smax58
  br i1 %exitcond59.not, label %for.inc53, label %NodeBlock19

NodeBlock19:                                      ; preds = %for.cond14
  %Pivot20 = icmp slt i32 %5, 5
  br i1 %Pivot20, label %NodeBlock3, label %NodeBlock17

NodeBlock17:                                      ; preds = %NodeBlock19
  %Pivot18 = icmp samesign ult i32 %5, 10
  br i1 %Pivot18, label %NodeBlock9, label %NodeBlock15

NodeBlock15:                                      ; preds = %NodeBlock17
  %Pivot16 = icmp samesign ult i32 %5, 12
  br i1 %Pivot16, label %LeafBlock11, label %LeafBlock13

LeafBlock13:                                      ; preds = %NodeBlock15
  %SwitchLeaf14 = icmp eq i32 %5, 12
  br i1 %SwitchLeaf14, label %for.inc, label %sw.default

LeafBlock11:                                      ; preds = %NodeBlock15
  %SwitchLeaf12 = icmp eq i32 %5, 10
  br i1 %SwitchLeaf12, label %for.inc, label %sw.default

NodeBlock9:                                       ; preds = %NodeBlock17
  %Pivot10 = icmp samesign ult i32 %5, 7
  br i1 %Pivot10, label %LeafBlock5, label %LeafBlock7

LeafBlock7:                                       ; preds = %NodeBlock9
  %SwitchLeaf8.not = icmp eq i32 %5, 9
  br i1 %SwitchLeaf8.not, label %sw.default, label %for.inc

LeafBlock5:                                       ; preds = %NodeBlock9
  %SwitchLeaf6 = icmp eq i32 %5, 5
  br i1 %SwitchLeaf6, label %for.inc, label %sw.default

NodeBlock3:                                       ; preds = %NodeBlock19
  %Pivot4 = icmp slt i32 %5, 2
  br i1 %Pivot4, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock3
  %switch.selectcmp = icmp eq i32 %5, 3
  %switch.select = select i1 %switch.selectcmp, i32 31, i32 30
  %switch.selectcmp61 = icmp eq i32 %5, 2
  %switch.select62 = select i1 %switch.selectcmp61, i32 29, i32 %switch.select
  br label %for.inc

LeafBlock:                                        ; preds = %NodeBlock3
  %SwitchLeaf = icmp eq i32 %5, 1
  br i1 %SwitchLeaf, label %for.inc, label %sw.default

sw.default:                                       ; preds = %LeafBlock13, %LeafBlock11, %LeafBlock7, %LeafBlock5, %LeafBlock
  br label %for.inc

for.inc:                                          ; preds = %LeafBlock, %LeafBlock5, %LeafBlock7, %LeafBlock11, %LeafBlock13, %NodeBlock, %sw.default
  %.sink = phi i32 [ 30, %sw.default ], [ %switch.select62, %NodeBlock ], [ 31, %LeafBlock13 ], [ 31, %LeafBlock11 ], [ 31, %LeafBlock7 ], [ 31, %LeafBlock5 ], [ 31, %LeafBlock ]
  %add = add nsw i32 %x.1, %.sink
  %inc = add i32 %5, 1
  br label %for.cond14, !llvm.loop !9

for.cond30:                                       ; preds = %for.body, %for.inc40
  %x.3 = phi i32 [ %add34, %for.inc40 ], [ 0, %for.body ]
  %6 = phi i32 [ %inc41, %for.inc40 ], [ %a.1, %for.body ]
  %exitcond.not = icmp eq i32 %6, %smax58
  br i1 %exitcond.not, label %for.inc53, label %NodeBlock43

NodeBlock43:                                      ; preds = %for.cond30
  %Pivot44 = icmp slt i32 %6, 5
  br i1 %Pivot44, label %NodeBlock27, label %NodeBlock41

NodeBlock41:                                      ; preds = %NodeBlock43
  %Pivot42 = icmp samesign ult i32 %6, 10
  br i1 %Pivot42, label %NodeBlock33, label %NodeBlock39

NodeBlock39:                                      ; preds = %NodeBlock41
  %Pivot40 = icmp samesign ult i32 %6, 12
  br i1 %Pivot40, label %LeafBlock35, label %LeafBlock37

LeafBlock37:                                      ; preds = %NodeBlock39
  %SwitchLeaf38 = icmp eq i32 %6, 12
  br i1 %SwitchLeaf38, label %for.inc40, label %sw.default37

LeafBlock35:                                      ; preds = %NodeBlock39
  %SwitchLeaf36 = icmp eq i32 %6, 10
  br i1 %SwitchLeaf36, label %for.inc40, label %sw.default37

NodeBlock33:                                      ; preds = %NodeBlock41
  %Pivot34 = icmp samesign ult i32 %6, 7
  br i1 %Pivot34, label %LeafBlock29, label %LeafBlock31

LeafBlock31:                                      ; preds = %NodeBlock33
  %SwitchLeaf32.not = icmp eq i32 %6, 9
  br i1 %SwitchLeaf32.not, label %sw.default37, label %for.inc40

LeafBlock29:                                      ; preds = %NodeBlock33
  %SwitchLeaf30 = icmp eq i32 %6, 5
  br i1 %SwitchLeaf30, label %for.inc40, label %sw.default37

NodeBlock27:                                      ; preds = %NodeBlock43
  %Pivot28 = icmp slt i32 %6, 2
  br i1 %Pivot28, label %LeafBlock21, label %NodeBlock25

NodeBlock25:                                      ; preds = %NodeBlock27
  %switch.selectcmp63 = icmp eq i32 %6, 3
  %switch.select64 = select i1 %switch.selectcmp63, i32 31, i32 30
  %switch.selectcmp65 = icmp eq i32 %6, 2
  %switch.select66 = select i1 %switch.selectcmp65, i32 28, i32 %switch.select64
  br label %for.inc40

LeafBlock21:                                      ; preds = %NodeBlock27
  %SwitchLeaf22 = icmp eq i32 %6, 1
  br i1 %SwitchLeaf22, label %for.inc40, label %sw.default37

sw.default37:                                     ; preds = %LeafBlock37, %LeafBlock35, %LeafBlock31, %LeafBlock29, %LeafBlock21
  br label %for.inc40

for.inc40:                                        ; preds = %LeafBlock21, %LeafBlock29, %LeafBlock31, %LeafBlock35, %LeafBlock37, %NodeBlock25, %sw.default37
  %.sink60 = phi i32 [ 30, %sw.default37 ], [ %switch.select66, %NodeBlock25 ], [ 31, %LeafBlock37 ], [ 31, %LeafBlock35 ], [ 31, %LeafBlock31 ], [ 31, %LeafBlock29 ], [ 31, %LeafBlock21 ]
  %add34 = add nsw i32 %x.3, %.sink60
  %inc41 = add i32 %6, 1
  br label %for.cond30, !llvm.loop !12

for.inc53:                                        ; preds = %for.cond30, %for.cond14
  %x.3.lcssa.sink = phi i32 [ %x.1, %for.cond14 ], [ %x.3, %for.cond30 ]
  %rem43 = srem i32 %x.3.lcssa.sink, 7
  %cmp44 = icmp eq i32 %rem43, 0
  %.str..str.167 = select i1 %cmp44, ptr @.str, ptr @.str.1
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %.str..str.167)
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call46, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc54 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end55:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
