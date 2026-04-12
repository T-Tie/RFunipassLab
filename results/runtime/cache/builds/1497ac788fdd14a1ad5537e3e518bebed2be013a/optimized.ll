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
  %a.0 = phi i32 [ undef, %entry ], [ %a.1, %for.inc53 ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc54, %for.inc53 ]
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
  %spec.select9 = select i1 %cmp5, i32 %1, i32 %b.0
  %a.1 = select i1 %cmp4, i32 %1, i32 %spec.select
  %b.1 = select i1 %cmp4, i32 %2, i32 %spec.select9
  %3 = load i32, ptr %year, align 4, !tbaa !5
  %4 = and i32 %3, 3
  %cmp8 = icmp eq i32 %4, 0
  %rem9 = srem i32 %3, 100
  %cmp10 = icmp ne i32 %rem9, 0
  %or.cond = and i1 %cmp8, %cmp10
  %rem11 = srem i32 %3, 400
  %cmp12 = icmp eq i32 %rem11, 0
  %or.cond10 = or i1 %cmp12, %or.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %a.1, i32 %b.1)
  br i1 %or.cond10, label %for.cond14, label %for.cond30

for.cond14:                                       ; preds = %for.body, %for.inc
  %m.0 = phi i32 [ %inc, %for.inc ], [ %a.1, %for.body ]
  %x.1 = phi i32 [ %add18, %for.inc ], [ 0, %for.body ]
  %exitcond14.not = icmp eq i32 %m.0, %smax13
  br i1 %exitcond14.not, label %for.inc53, label %for.body16

for.body16:                                       ; preds = %for.cond14
  br label %NodeBlock33

NodeBlock33:                                      ; preds = %for.body16
  %Pivot34 = icmp slt i32 %m.0, 5
  br i1 %Pivot34, label %NodeBlock17, label %NodeBlock31

NodeBlock31:                                      ; preds = %NodeBlock33
  %Pivot32 = icmp slt i32 %m.0, 10
  br i1 %Pivot32, label %NodeBlock23, label %NodeBlock29

NodeBlock29:                                      ; preds = %NodeBlock31
  %Pivot30 = icmp slt i32 %m.0, 12
  br i1 %Pivot30, label %LeafBlock25, label %LeafBlock27

LeafBlock27:                                      ; preds = %NodeBlock29
  %SwitchLeaf28 = icmp eq i32 %m.0, 12
  br i1 %SwitchLeaf28, label %for.inc, label %sw.default

LeafBlock25:                                      ; preds = %NodeBlock29
  %SwitchLeaf26 = icmp eq i32 %m.0, 10
  br i1 %SwitchLeaf26, label %for.inc, label %sw.default

NodeBlock23:                                      ; preds = %NodeBlock31
  %Pivot24 = icmp slt i32 %m.0, 7
  br i1 %Pivot24, label %LeafBlock19, label %LeafBlock21

LeafBlock21:                                      ; preds = %NodeBlock23
  %SwitchLeaf22 = icmp sle i32 %m.0, 8
  br i1 %SwitchLeaf22, label %for.inc, label %sw.default

LeafBlock19:                                      ; preds = %NodeBlock23
  %SwitchLeaf20 = icmp eq i32 %m.0, 5
  br i1 %SwitchLeaf20, label %for.inc, label %sw.default

NodeBlock17:                                      ; preds = %NodeBlock33
  %Pivot18 = icmp slt i32 %m.0, 2
  br i1 %Pivot18, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock17
  %Pivot = icmp slt i32 %m.0, 3
  br i1 %Pivot, label %sw.bb17, label %LeafBlock15

LeafBlock15:                                      ; preds = %NodeBlock
  %SwitchLeaf16 = icmp eq i32 %m.0, 3
  br i1 %SwitchLeaf16, label %for.inc, label %sw.default

LeafBlock:                                        ; preds = %NodeBlock17
  %SwitchLeaf = icmp eq i32 %m.0, 1
  br i1 %SwitchLeaf, label %for.inc, label %sw.default

sw.bb17:                                          ; preds = %NodeBlock
  br label %for.inc

sw.default:                                       ; preds = %LeafBlock27, %LeafBlock25, %LeafBlock21, %LeafBlock19, %LeafBlock15, %LeafBlock
  br label %for.inc

for.inc:                                          ; preds = %LeafBlock27, %LeafBlock25, %LeafBlock21, %LeafBlock19, %LeafBlock15, %LeafBlock, %sw.bb17, %sw.default
  %.sink2 = phi i32 [ 29, %sw.bb17 ], [ 30, %sw.default ], [ 31, %LeafBlock ], [ 31, %LeafBlock15 ], [ 31, %LeafBlock19 ], [ 31, %LeafBlock21 ], [ 31, %LeafBlock25 ], [ 31, %LeafBlock27 ]
  %add18 = add nuw nsw i32 %.sink2, %x.1
  %inc = add i32 %m.0, 1
  br label %for.cond14, !llvm.loop !9

for.cond30:                                       ; preds = %for.body, %for.inc40
  %m.1 = phi i32 [ %inc41, %for.inc40 ], [ %a.1, %for.body ]
  %x.4 = phi i32 [ %add36, %for.inc40 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i32 %m.1, %smax13
  br i1 %exitcond.not, label %for.inc53, label %for.body32

for.body32:                                       ; preds = %for.cond30
  br label %NodeBlock57

NodeBlock57:                                      ; preds = %for.body32
  %Pivot58 = icmp slt i32 %m.1, 5
  br i1 %Pivot58, label %NodeBlock41, label %NodeBlock55

NodeBlock55:                                      ; preds = %NodeBlock57
  %Pivot56 = icmp slt i32 %m.1, 10
  br i1 %Pivot56, label %NodeBlock47, label %NodeBlock53

NodeBlock53:                                      ; preds = %NodeBlock55
  %Pivot54 = icmp slt i32 %m.1, 12
  br i1 %Pivot54, label %LeafBlock49, label %LeafBlock51

LeafBlock51:                                      ; preds = %NodeBlock53
  %SwitchLeaf52 = icmp eq i32 %m.1, 12
  br i1 %SwitchLeaf52, label %for.inc40, label %sw.default37

LeafBlock49:                                      ; preds = %NodeBlock53
  %SwitchLeaf50 = icmp eq i32 %m.1, 10
  br i1 %SwitchLeaf50, label %for.inc40, label %sw.default37

NodeBlock47:                                      ; preds = %NodeBlock55
  %Pivot48 = icmp slt i32 %m.1, 7
  br i1 %Pivot48, label %LeafBlock43, label %LeafBlock45

LeafBlock45:                                      ; preds = %NodeBlock47
  %SwitchLeaf46 = icmp sle i32 %m.1, 8
  br i1 %SwitchLeaf46, label %for.inc40, label %sw.default37

LeafBlock43:                                      ; preds = %NodeBlock47
  %SwitchLeaf44 = icmp eq i32 %m.1, 5
  br i1 %SwitchLeaf44, label %for.inc40, label %sw.default37

NodeBlock41:                                      ; preds = %NodeBlock57
  %Pivot42 = icmp slt i32 %m.1, 2
  br i1 %Pivot42, label %LeafBlock35, label %NodeBlock39

NodeBlock39:                                      ; preds = %NodeBlock41
  %Pivot40 = icmp slt i32 %m.1, 3
  br i1 %Pivot40, label %sw.bb35, label %LeafBlock37

LeafBlock37:                                      ; preds = %NodeBlock39
  %SwitchLeaf38 = icmp eq i32 %m.1, 3
  br i1 %SwitchLeaf38, label %for.inc40, label %sw.default37

LeafBlock35:                                      ; preds = %NodeBlock41
  %SwitchLeaf36 = icmp eq i32 %m.1, 1
  br i1 %SwitchLeaf36, label %for.inc40, label %sw.default37

sw.bb35:                                          ; preds = %NodeBlock39
  br label %for.inc40

sw.default37:                                     ; preds = %LeafBlock51, %LeafBlock49, %LeafBlock45, %LeafBlock43, %LeafBlock37, %LeafBlock35
  br label %for.inc40

for.inc40:                                        ; preds = %LeafBlock51, %LeafBlock49, %LeafBlock45, %LeafBlock43, %LeafBlock37, %LeafBlock35, %sw.bb35, %sw.default37
  %.sink = phi i32 [ 28, %sw.bb35 ], [ 30, %sw.default37 ], [ 31, %LeafBlock35 ], [ 31, %LeafBlock37 ], [ 31, %LeafBlock43 ], [ 31, %LeafBlock45 ], [ 31, %LeafBlock49 ], [ 31, %LeafBlock51 ]
  %add36 = add nuw nsw i32 %.sink, %x.4
  %inc41 = add i32 %m.1, 1
  br label %for.cond30, !llvm.loop !12

for.inc53:                                        ; preds = %for.cond30, %for.cond14
  %x.4.lcssa.sink = phi i32 [ %x.1, %for.cond14 ], [ %x.4, %for.cond30 ]
  %rem43 = urem i32 %x.4.lcssa.sink, 7
  %cmp44 = icmp eq i32 %rem43, 0
  %spec.select12 = select i1 %cmp44, ptr @.str, ptr @.str.1
  %call49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %spec.select12)
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call49, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
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
