; ModuleID = '<stdin>'
source_filename = "/tmp/tmpib6v4hq_.cpp"
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
@.str = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"same\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca float, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca float, i64 %4, align 16
  %vla2 = alloca float, i64 %4, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = phi i32 [ %.pre, %for.inc ], [ %3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %6 = sext i32 %5 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %6
  br i1 %cmp.not, label %for.cond13.preheader, label %for.inc

for.cond13.preheader:                             ; preds = %for.cond
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %vla2, i64 4
  br label %for.cond13

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw float, ptr %vla, i64 %indvars.iv
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %arrayidx5 = getelementptr inbounds nuw float, ptr %vla1, i64 %indvars.iv
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %call3, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %7 = load float, ptr %arrayidx5, align 4, !tbaa !9
  %8 = load float, ptr %arrayidx, align 4, !tbaa !9
  %div = fdiv float %7, %8
  %arrayidx12 = getelementptr inbounds nuw float, ptr %vla2, i64 %indvars.iv
  store float %div, ptr %arrayidx12, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body15
  %9 = phi i32 [ %5, %for.cond13.preheader ], [ %.pre5, %for.body15 ]
  %indvars.iv2 = phi i64 [ 2, %for.cond13.preheader ], [ %indvars.iv.next3, %for.body15 ]
  %10 = sext i32 %9 to i64
  %cmp14.not = icmp sgt i64 %indvars.iv2, %10
  br i1 %cmp14.not, label %for.end37, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx17 = getelementptr inbounds nuw float, ptr %vla2, i64 %indvars.iv2
  %11 = load float, ptr %arrayidx17, align 4, !tbaa !9
  %12 = load float, ptr %arrayidx18, align 4, !tbaa !9
  %sub = fsub float %11, %12
  %conv = fpext float %sub to double
  %cmp19 = fcmp ogt double %conv, 5.000000e-02
  %sub25 = fsub float %12, %11
  %conv26 = fpext float %sub25 to double
  %cmp27 = fcmp ogt double %conv26, 5.000000e-02
  %.str.1..str.2 = select i1 %cmp27, ptr @.str.1, ptr @.str.2
  %.str.sink = select i1 %cmp19, ptr @.str, ptr %.str.1..str.2
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %.str.sink)
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call20, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %.pre5 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !14

for.end37:                                        ; preds = %for.cond13
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
