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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %year) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m2) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %b.0 = phi i32 [ undef, %entry ], [ %b.1, %for.inc53 ]
  %a.0 = phi i32 [ undef, %entry ], [ %a.1, %for.inc53 ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc54, %for.inc53 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %m1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %2 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %1, %2
  br i1 %cmp4, label %if.end7, label %if.else

if.else:                                          ; preds = %for.body
  %cmp5 = icmp slt i32 %2, %1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %for.body, %if.else, %if.then6
  %b.1 = phi i32 [ %1, %if.then6 ], [ %b.0, %if.else ], [ %2, %for.body ]
  %a.1 = phi i32 [ %2, %if.then6 ], [ %a.0, %if.else ], [ %1, %for.body ]
  %3 = load i32, ptr %year, align 4, !tbaa !5
  %rem = srem i32 %3, 4
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end7
  %rem9 = srem i32 %3, 100
  %cmp10 = icmp ne i32 %rem9, 0
  br i1 %cmp10, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end7
  %rem11 = srem i32 %3, 400
  %cmp12 = icmp eq i32 %rem11, 0
  br i1 %cmp12, label %if.then13, label %if.else29

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.then13
  %m.0 = phi i32 [ %a.1, %if.then13 ], [ %inc, %for.inc ]
  %x.1 = phi i32 [ 0, %if.then13 ], [ %add18, %for.inc ]
  %cmp15 = icmp slt i32 %m.0, %b.1
  br i1 %cmp15, label %NodeBlock32, label %for.end

NodeBlock32:                                      ; preds = %for.cond14
  %Pivot33 = icmp slt i32 %m.0, 5
  br i1 %Pivot33, label %NodeBlock16, label %NodeBlock30

NodeBlock30:                                      ; preds = %NodeBlock32
  %Pivot31 = icmp slt i32 %m.0, 10
  br i1 %Pivot31, label %NodeBlock22, label %NodeBlock28

NodeBlock28:                                      ; preds = %NodeBlock30
  %Pivot29 = icmp slt i32 %m.0, 12
  br i1 %Pivot29, label %LeafBlock24, label %LeafBlock26

LeafBlock26:                                      ; preds = %NodeBlock28
  %SwitchLeaf27 = icmp eq i32 %m.0, 12
  br i1 %SwitchLeaf27, label %for.inc, label %sw.default

LeafBlock24:                                      ; preds = %NodeBlock28
  %SwitchLeaf25 = icmp eq i32 %m.0, 10
  br i1 %SwitchLeaf25, label %for.inc, label %sw.default

NodeBlock22:                                      ; preds = %NodeBlock30
  %Pivot23 = icmp slt i32 %m.0, 7
  br i1 %Pivot23, label %LeafBlock18, label %LeafBlock20

LeafBlock20:                                      ; preds = %NodeBlock22
  %SwitchLeaf21 = icmp sle i32 %m.0, 8
  br i1 %SwitchLeaf21, label %for.inc, label %sw.default

LeafBlock18:                                      ; preds = %NodeBlock22
  %SwitchLeaf19 = icmp eq i32 %m.0, 5
  br i1 %SwitchLeaf19, label %for.inc, label %sw.default

NodeBlock16:                                      ; preds = %NodeBlock32
  %Pivot17 = icmp slt i32 %m.0, 2
  br i1 %Pivot17, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock16
  %Pivot = icmp slt i32 %m.0, 3
  br i1 %Pivot, label %for.inc, label %LeafBlock14

LeafBlock14:                                      ; preds = %NodeBlock
  %SwitchLeaf15 = icmp eq i32 %m.0, 3
  br i1 %SwitchLeaf15, label %for.inc, label %sw.default

LeafBlock:                                        ; preds = %NodeBlock16
  %SwitchLeaf = icmp eq i32 %m.0, 1
  br i1 %SwitchLeaf, label %for.inc, label %sw.default

sw.default:                                       ; preds = %LeafBlock26, %LeafBlock24, %LeafBlock20, %LeafBlock18, %LeafBlock14, %LeafBlock
  br label %for.inc

for.inc:                                          ; preds = %NodeBlock, %LeafBlock, %LeafBlock14, %LeafBlock18, %LeafBlock20, %LeafBlock24, %LeafBlock26, %sw.default
  %.sink13 = phi i32 [ 30, %sw.default ], [ 31, %LeafBlock26 ], [ 31, %LeafBlock24 ], [ 31, %LeafBlock20 ], [ 31, %LeafBlock18 ], [ 31, %LeafBlock14 ], [ 31, %LeafBlock ], [ 29, %NodeBlock ]
  %add18 = add nsw i32 %x.1, %.sink13
  %inc = add nsw i32 %m.0, 1
  br label %for.cond14, !llvm.loop !9

for.end:                                          ; preds = %for.cond14
  %rem20 = srem i32 %x.1, 7
  %cmp21 = icmp eq i32 %rem20, 0
  br i1 %cmp21, label %for.inc53, label %if.else25

if.else25:                                        ; preds = %for.end
  br label %for.inc53

if.else29:                                        ; preds = %lor.lhs.false
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc40, %if.else29
  %m.1 = phi i32 [ %a.1, %if.else29 ], [ %inc41, %for.inc40 ]
  %x.2 = phi i32 [ 0, %if.else29 ], [ %add36, %for.inc40 ]
  %cmp31 = icmp slt i32 %m.1, %b.1
  br i1 %cmp31, label %NodeBlock56, label %for.end42

NodeBlock56:                                      ; preds = %for.cond30
  %Pivot57 = icmp slt i32 %m.1, 5
  br i1 %Pivot57, label %NodeBlock40, label %NodeBlock54

NodeBlock54:                                      ; preds = %NodeBlock56
  %Pivot55 = icmp slt i32 %m.1, 10
  br i1 %Pivot55, label %NodeBlock46, label %NodeBlock52

NodeBlock52:                                      ; preds = %NodeBlock54
  %Pivot53 = icmp slt i32 %m.1, 12
  br i1 %Pivot53, label %LeafBlock48, label %LeafBlock50

LeafBlock50:                                      ; preds = %NodeBlock52
  %SwitchLeaf51 = icmp eq i32 %m.1, 12
  br i1 %SwitchLeaf51, label %for.inc40, label %sw.default37

LeafBlock48:                                      ; preds = %NodeBlock52
  %SwitchLeaf49 = icmp eq i32 %m.1, 10
  br i1 %SwitchLeaf49, label %for.inc40, label %sw.default37

NodeBlock46:                                      ; preds = %NodeBlock54
  %Pivot47 = icmp slt i32 %m.1, 7
  br i1 %Pivot47, label %LeafBlock42, label %LeafBlock44

LeafBlock44:                                      ; preds = %NodeBlock46
  %SwitchLeaf45 = icmp sle i32 %m.1, 8
  br i1 %SwitchLeaf45, label %for.inc40, label %sw.default37

LeafBlock42:                                      ; preds = %NodeBlock46
  %SwitchLeaf43 = icmp eq i32 %m.1, 5
  br i1 %SwitchLeaf43, label %for.inc40, label %sw.default37

NodeBlock40:                                      ; preds = %NodeBlock56
  %Pivot41 = icmp slt i32 %m.1, 2
  br i1 %Pivot41, label %LeafBlock34, label %NodeBlock38

NodeBlock38:                                      ; preds = %NodeBlock40
  %Pivot39 = icmp slt i32 %m.1, 3
  br i1 %Pivot39, label %for.inc40, label %LeafBlock36

LeafBlock36:                                      ; preds = %NodeBlock38
  %SwitchLeaf37 = icmp eq i32 %m.1, 3
  br i1 %SwitchLeaf37, label %for.inc40, label %sw.default37

LeafBlock34:                                      ; preds = %NodeBlock40
  %SwitchLeaf35 = icmp eq i32 %m.1, 1
  br i1 %SwitchLeaf35, label %for.inc40, label %sw.default37

sw.default37:                                     ; preds = %LeafBlock50, %LeafBlock48, %LeafBlock44, %LeafBlock42, %LeafBlock36, %LeafBlock34
  br label %for.inc40

for.inc40:                                        ; preds = %NodeBlock38, %LeafBlock34, %LeafBlock36, %LeafBlock42, %LeafBlock44, %LeafBlock48, %LeafBlock50, %sw.default37
  %.sink11 = phi i32 [ 30, %sw.default37 ], [ 31, %LeafBlock50 ], [ 31, %LeafBlock48 ], [ 31, %LeafBlock44 ], [ 31, %LeafBlock42 ], [ 31, %LeafBlock36 ], [ 31, %LeafBlock34 ], [ 28, %NodeBlock38 ]
  %add36 = add nsw i32 %x.2, %.sink11
  %inc41 = add nsw i32 %m.1, 1
  br label %for.cond30, !llvm.loop !12

for.end42:                                        ; preds = %for.cond30
  %rem43 = srem i32 %x.2, 7
  %cmp44 = icmp eq i32 %rem43, 0
  br i1 %cmp44, label %for.inc53, label %if.else48

if.else48:                                        ; preds = %for.end42
  br label %for.inc53

for.inc53:                                        ; preds = %if.else48, %for.end42, %if.else25, %for.end
  %.str.1.sink.sink = phi ptr [ @.str.1, %if.else25 ], [ @.str, %for.end ], [ @.str.1, %if.else48 ], [ @.str, %for.end42 ]
  %call49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %.str.1.sink.sink)
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call49, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc54 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end55:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %year) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
