; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjw1g1b6q.cpp"
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
  %cocktail1 = alloca double, align 8
  %cocktail2 = alloca double, align 8
  %extra1 = alloca [10000 x double], align 16
  %extra2 = alloca [10000 x double], align 16
  %extra = alloca [10000 x double], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %cocktail1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %cocktail2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %extra1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %extra2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %extra) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %cocktail1)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 8 dereferenceable(8) %cocktail2)
  %0 = load double, ptr %cocktail2, align 8, !tbaa !5
  %1 = load double, ptr %cocktail1, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %2 = load i32, ptr %n, align 4, !tbaa !9
  %sub = add nsw i32 %2, -1
  %3 = sext i32 %sub to i64
  %cmp = icmp slt i64 %indvars.iv, %3
  br i1 %cmp, label %for.body, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond
  %div = fdiv double %0, %1
  br label %for.cond14

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10000 x double], ptr %extra1, i64 0, i64 %indvars.iv
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx)
  %arrayidx5 = getelementptr inbounds nuw [10000 x double], ptr %extra2, i64 0, i64 %indvars.iv
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call3, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx5)
  %4 = load double, ptr %arrayidx5, align 8, !tbaa !5, !invariant.load !11
  %5 = load double, ptr %arrayidx, align 8, !tbaa !5, !invariant.load !11
  %div11 = fdiv double %4, %5
  %arrayidx13 = getelementptr inbounds nuw [10000 x double], ptr %extra, i64 0, i64 %indvars.iv
  store double %div11, ptr %arrayidx13, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %if.end35
  %6 = phi i32 [ %2, %for.cond14.preheader ], [ %.pre, %if.end35 ]
  %indvars.iv10 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next11, %if.end35 ]
  %sub15 = add nsw i32 %6, -1
  %7 = sext i32 %sub15 to i64
  %cmp16 = icmp slt i64 %indvars.iv10, %7
  br i1 %cmp16, label %for.body17, label %for.end38

for.body17:                                       ; preds = %for.cond14
  %arrayidx19 = getelementptr inbounds nuw [10000 x double], ptr %extra, i64 0, i64 %indvars.iv10
  %8 = load double, ptr %arrayidx19, align 8, !tbaa !5, !invariant.load !11
  %sub20 = fsub double %8, %div
  %cmp21 = fcmp ogt double %sub20, 5.000000e-02
  br i1 %cmp21, label %if.end35.sink.split, label %if.else

if.else:                                          ; preds = %for.body17
  %cmp24 = fcmp olt double %sub20, -5.000000e-02
  br i1 %cmp24, label %if.end35.sink.split, label %if.else28

if.else28:                                        ; preds = %if.else
  %9 = call double @llvm.fabs.f64(double %sub20)
  %or.cond = fcmp ugt double %9, 5.000000e-02
  br i1 %or.cond, label %if.end35, label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %if.else28, %if.else, %for.body17
  %.str.1.sink = phi ptr [ @.str, %for.body17 ], [ @.str.1, %if.else ], [ @.str.2, %if.else28 ]
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(5) %.str.1.sink)
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.else28
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !9
  br label %for.cond14, !llvm.loop !15

for.end38:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %extra) #8
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %extra2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %extra1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %cocktail2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %cocktail1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(5) %0) unnamed_addr #5 {
if.end35.exitStub:
  %call22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull dereferenceable(5) %0)
  %call23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call22, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
