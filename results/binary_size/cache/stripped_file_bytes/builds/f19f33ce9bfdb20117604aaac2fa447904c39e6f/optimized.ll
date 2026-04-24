; ModuleID = '<stdin>'
source_filename = "/tmp/tmpceywfl_n.cpp"
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
  %str = alloca [100 x i8], align 16
  %delspace = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %str) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 %str, i64 noundef 100)
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull %delspace) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %delspace, i8 noundef 0, i64 noundef 100, i1 noundef false)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %if.end ], [ 0, %entry ]
  %i.0 = phi i32 [ %inc12, %if.end ], [ 0, %entry ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i8, ptr %str, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  switch i8 %0, label %if.end [
    i8 0, label %while.end18
    i8 32, label %while.cond6
  ]

while.cond6:                                      ; preds = %while.cond, %while.cond6
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond6 ], [ %idxprom, %while.cond ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %arrayidx8 = getelementptr inbounds i8, ptr %str, i64 %indvars.iv.next
  %1 = load i8, ptr %arrayidx8, align 1, !tbaa !5, !invariant.load !8
  %cmp10 = icmp eq i8 %1, 32
  br i1 %cmp10, label %while.cond6, label %if.end.loopexit, !llvm.loop !9

if.end.loopexit:                                  ; preds = %while.cond6
  %2 = trunc nsw i64 %indvars.iv to i32
  %sext = shl i64 %indvars.iv, 32
  %.pre = ashr exact i64 %sext, 32
  %arrayidx14.phi.trans.insert = getelementptr inbounds i8, ptr %str, i64 %.pre
  %.pre14 = load i8, ptr %arrayidx14.phi.trans.insert, align 1, !tbaa !5, !invariant.load !8
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %while.cond
  %3 = phi i8 [ %.pre14, %if.end.loopexit ], [ %0, %while.cond ]
  %i.1 = phi i32 [ %2, %if.end.loopexit ], [ %i.0, %while.cond ]
  %inc12 = add nsw i32 %i.1, 1
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %arrayidx17 = getelementptr inbounds nuw [100 x i8], ptr %delspace, i64 0, i64 %indvars.iv11
  store i8 %3, ptr %arrayidx17, align 1, !tbaa !5
  br label %while.cond, !llvm.loop !12

while.end18:                                      ; preds = %while.cond
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %delspace)
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call20, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %delspace) #6
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %str) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
