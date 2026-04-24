; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7o3e_gp1.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %re = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %re) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 100
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %re, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  switch i32 %0, label %if.else8 [
    i32 0, label %if.then
    i32 1, label %if.then5
  ]

if.then:                                          ; preds = %for.end
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(2) @.str)
  br label %if.end56

if.then5:                                         ; preds = %for.end
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(2) @.str.1)
  br label %if.end56

if.else8:                                         ; preds = %for.end
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %re, i64 396
  store i32 2, ptr %arrayidx9, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 noundef %0, i32 noundef 1)
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc35, %if.else8
  %i.0 = phi i32 [ 1, %if.else8 ], [ %inc36, %for.inc35 ]
  %exitcond29.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond29.not, label %while.cond38, label %while.cond

while.cond:                                       ; preds = %for.cond10, %while.body
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %while.body ], [ 99, %for.cond10 ]
  %cmp13.not = icmp eq i64 %indvars.iv22, 0
  br i1 %cmp13.not, label %while.cond18, label %while.body

while.body:                                       ; preds = %while.cond
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %re, i64 0, i64 %indvars.iv22
  %1 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !12
  %mul = shl nsw i32 %1, 1
  store i32 %mul, ptr %arrayidx15, align 4, !tbaa !5
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, -1
  br label %while.cond, !llvm.loop !13

while.cond18:                                     ; preds = %while.cond, %if.end
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.pre-phi, %if.end ], [ 99, %while.cond ]
  %cmp19.not = icmp eq i64 %indvars.iv25, 0
  br i1 %cmp19.not, label %for.inc35, label %while.body20

while.body20:                                     ; preds = %while.cond18
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %re, i64 0, i64 %indvars.iv25
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !12
  %cmp23 = icmp sgt i32 %2, 9
  br i1 %cmp23, label %if.then24, label %while.body20.if.end_crit_edge

while.body20.if.end_crit_edge:                    ; preds = %while.body20
  %.pre = add nsw i64 %indvars.iv25, -1
  br label %if.end

if.then24:                                        ; preds = %while.body20
  %div19 = udiv i32 %2, 10
  %3 = add nsw i64 %indvars.iv25, -1
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %re, i64 0, i64 %3
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !12
  %add = add nsw i32 %4, %div19
  store i32 %add, ptr %arrayidx28, align 4, !tbaa !5
  %rem20 = urem i32 %2, 10
  store i32 %rem20, ptr %arrayidx22, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %while.body20.if.end_crit_edge, %if.then24
  %indvars.iv.next26.pre-phi = phi i64 [ %.pre, %while.body20.if.end_crit_edge ], [ %3, %if.then24 ]
  br label %while.cond18, !llvm.loop !14

for.inc35:                                        ; preds = %while.cond18
  %inc36 = add nuw i32 %i.0, 1
  br label %for.cond10, !llvm.loop !15

while.cond38:                                     ; preds = %for.cond10, %while.cond38
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %while.cond38 ], [ 0, %for.cond10 ]
  %arrayidx40 = getelementptr inbounds nuw [100 x i32], ptr %re, i64 0, i64 %indvars.iv30
  %5 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !12
  %cmp41 = icmp eq i32 %5, 0
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br i1 %cmp41, label %while.cond38, label %for.cond45, !llvm.loop !16

for.cond45:                                       ; preds = %while.cond38, %for.inc51
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.inc51 ], [ %indvars.iv30, %while.cond38 ]
  %cmp46 = icmp samesign ult i64 %indvars.iv33, 100
  br i1 %cmp46, label %for.inc51, label %for.end53

for.inc51:                                        ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds nuw [100 x i32], ptr %re, i64 0, i64 %indvars.iv33
  %6 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %6)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond45, !llvm.loop !17

for.end53:                                        ; preds = %for.cond45
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end56

if.end56:                                         ; preds = %for.end53, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %re) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(2) %0) unnamed_addr #5 {
if.end56.exitStub:
  %call2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(2) %0)
  %call3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call2, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
