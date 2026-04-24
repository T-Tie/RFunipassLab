; ModuleID = '<stdin>'
source_filename = "/tmp/tmp20hb142r.cpp"
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
  %length = alloca i32, align 4
  %a = alloca [110 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %length) #8
  store i32 0, ptr %length, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 440, ptr noundef nonnull align 16 dereferenceable(440) %a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(440) %a, i8 noundef 0, i64 noundef 440, i1 noundef false) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %length)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %length, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [110 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

while.cond:                                       ; preds = %while.cond3, %while.cond.preheader
  %sec.0 = phi i32 [ 1, %while.cond.preheader ], [ %mul, %while.cond3 ]
  %cmp2 = icmp slt i32 %sec.0, %0
  br i1 %cmp2, label %while.cond3.preheader, label %while.end25

while.cond3.preheader:                            ; preds = %while.cond
  %mul = shl i32 %sec.0, 1
  %2 = sext i32 %mul to i64
  %3 = sext i32 %sec.0 to i64
  br label %while.cond3

while.cond3:                                      ; preds = %while.cond3.preheader, %if.end
  %indvars.iv20 = phi i64 [ 0, %while.cond3.preheader ], [ %indvars.iv.next21, %if.end ]
  %4 = add nuw nsw i64 %indvars.iv20, %3
  %cmp5 = icmp slt i64 %4, %1
  br i1 %cmp5, label %while.body6, label %while.cond, !llvm.loop !12

while.body6:                                      ; preds = %while.cond3
  %arrayidx8 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %indvars.iv20
  %5 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !13
  %arrayidx11 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %4
  %6 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !13
  %cmp12 = icmp slt i32 %5, %6
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.body6
  store i32 %6, ptr %arrayidx8, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx11, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body6
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, %2
  br label %while.cond3, !llvm.loop !14

while.end25:                                      ; preds = %while.cond
  %7 = load i32, ptr %a, align 16, !tbaa !5
  call fastcc void @outlined_ir_func_0.2(i32 noundef %7)
  %div18 = lshr i32 %sec.0, 2
  %idxprom29 = zext nneg i32 %div18 to i64
  %arrayidx30 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 0, i64 %idxprom29
  %8 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !13
  %mul31 = shl nuw nsw i32 %div18, 1
  %idxprom32 = zext nneg i32 %mul31 to i64
  %arrayidx33 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 0, i64 %idxprom32
  %9 = load i32, ptr %arrayidx33, align 4, !tbaa !5, !invariant.load !13
  %. = call i32 @llvm.smax.i32(i32 %8, i32 %9)
  call fastcc void @outlined_ir_func_0.2(i32 noundef %.)
  call void @llvm.lifetime.end.p0(i64 noundef 440, ptr noundef nonnull %a) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %length) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0.2(i32 noundef %0) unnamed_addr #6 {
while.end25_after_outline.exitStub:
  %call27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %0)
  %call28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call27, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree }
attributes #10 = { nounwind }

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
