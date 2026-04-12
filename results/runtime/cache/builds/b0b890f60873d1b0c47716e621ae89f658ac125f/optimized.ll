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
  %spec.select17 = select i1 %cmp5, i32 %1, i32 %b.0
  %a.1 = select i1 %cmp4, i32 %1, i32 %spec.select
  %b.1 = select i1 %cmp4, i32 %2, i32 %spec.select17
  %3 = load i32, ptr %year, align 4, !tbaa !5
  %4 = and i32 %3, 3
  %cmp8 = icmp eq i32 %4, 0
  %rem9 = srem i32 %3, 100
  %cmp10 = icmp ne i32 %rem9, 0
  %or.cond = and i1 %cmp8, %cmp10
  %rem11 = srem i32 %3, 400
  %cmp12 = icmp eq i32 %rem11, 0
  %or.cond18 = or i1 %cmp12, %or.cond
  %smax19 = call i32 @llvm.smax.i32(i32 %a.1, i32 %b.1)
  br i1 %or.cond18, label %for.cond14, label %for.cond30

for.cond14:                                       ; preds = %for.body, %for.inc
  %x.1 = phi i32 [ %add, %for.inc ], [ 0, %for.body ]
  %m.0 = phi i32 [ %inc, %for.inc ], [ %a.1, %for.body ]
  %exitcond20.not = icmp eq i32 %m.0, %smax19
  br i1 %exitcond20.not, label %for.inc53, label %for.body16

for.body16:                                       ; preds = %for.cond14
  switch i32 %m.0, label %sw.default [
    i32 1, label %for.inc
    i32 3, label %for.inc
    i32 5, label %for.inc
    i32 7, label %for.inc
    i32 8, label %for.inc
    i32 10, label %for.inc
    i32 12, label %for.inc
    i32 2, label %sw.bb17
  ]

sw.bb17:                                          ; preds = %for.body16
  br label %for.inc

sw.default:                                       ; preds = %for.body16
  br label %for.inc

for.inc:                                          ; preds = %for.body16, %for.body16, %for.body16, %for.body16, %for.body16, %for.body16, %for.body16, %sw.bb17, %sw.default
  %.sink = phi i32 [ 29, %sw.bb17 ], [ 30, %sw.default ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ]
  %add = add nuw nsw i32 %.sink, %x.1
  %inc = add i32 %m.0, 1
  br label %for.cond14, !llvm.loop !9

for.cond30:                                       ; preds = %for.body, %for.inc40
  %x.4 = phi i32 [ %add34, %for.inc40 ], [ 0, %for.body ]
  %m.1 = phi i32 [ %inc41, %for.inc40 ], [ %a.1, %for.body ]
  %exitcond.not = icmp eq i32 %m.1, %smax19
  br i1 %exitcond.not, label %for.inc53, label %for.body32

for.body32:                                       ; preds = %for.cond30
  switch i32 %m.1, label %sw.default37 [
    i32 1, label %for.inc40
    i32 3, label %for.inc40
    i32 5, label %for.inc40
    i32 7, label %for.inc40
    i32 8, label %for.inc40
    i32 10, label %for.inc40
    i32 12, label %for.inc40
    i32 2, label %sw.bb35
  ]

sw.bb35:                                          ; preds = %for.body32
  br label %for.inc40

sw.default37:                                     ; preds = %for.body32
  br label %for.inc40

for.inc40:                                        ; preds = %for.body32, %for.body32, %for.body32, %for.body32, %for.body32, %for.body32, %for.body32, %sw.bb35, %sw.default37
  %.sink21 = phi i32 [ 28, %sw.bb35 ], [ 30, %sw.default37 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ]
  %add34 = add nuw nsw i32 %.sink21, %x.4
  %inc41 = add i32 %m.1, 1
  br label %for.cond30, !llvm.loop !12

for.inc53:                                        ; preds = %for.cond30, %for.cond14
  %x.4.lcssa.sink = phi i32 [ %x.1, %for.cond14 ], [ %x.4, %for.cond30 ]
  %rem43 = srem i32 %x.4.lcssa.sink, 7
  %cmp44 = icmp eq i32 %rem43, 0
  %.str..str.122 = select i1 %cmp44, ptr @.str, ptr @.str.1
  %call26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %.str..str.122)
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call26, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc54 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end55:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
