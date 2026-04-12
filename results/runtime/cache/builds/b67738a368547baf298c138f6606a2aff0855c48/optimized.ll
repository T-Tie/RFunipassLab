; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_d8jufk1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [17 x i8] c"x1=%.5f;x2=%.5f\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"x1=x2=%.5f\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"x1=%.5f+%.5fi;x2=%.5f-%.5fi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %a) #6
  store double 0.000000e+00, ptr %a, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %b) #6
  store double 0.000000e+00, ptr %b, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %c) #6
  store double 0.000000e+00, ptr %c, align 8, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %while.cond

while.cond:                                       ; preds = %if.end42, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !9
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %a)
  %call.i1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i, ptr noundef nonnull align 8 dereferenceable(8) %b)
  %call.i2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i1, ptr noundef nonnull align 8 dereferenceable(8) %c)
  %1 = load double, ptr %b, align 8, !tbaa !5
  %2 = load double, ptr %a, align 8, !tbaa !5
  %mul4 = fmul double %2, 4.000000e+00
  %3 = load double, ptr %c, align 8, !tbaa !5
  %4 = fneg double %3
  %neg = fmul double %mul4, %4
  %5 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %cmp = fcmp ult double %5, 0.000000e+00
  %fneg28 = fneg double %1
  br i1 %cmp, label %if.else27, label %if.then

if.then:                                          ; preds = %while.body
  %cmp6 = fcmp ogt double %5, 0.000000e+00
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %call8 = call double @sqrt(double noundef %5) #7, !tbaa !9
  %add = fsub double %call8, %1
  %mul = fmul double %2, 2.000000e+00
  %div = fdiv double %add, %mul
  %sub = fsub double %fneg28, %call8
  %div12 = fdiv double %sub, %mul
  %cmp13 = fcmp oeq double %div, 0.000000e+00
  %x1.0 = select i1 %cmp13, double 0.000000e+00, double %div
  %cmp15 = fcmp oeq double %div12, 0.000000e+00
  %x2.0 = select i1 %cmp15, double 0.000000e+00, double %div12
  %call18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %x1.0, double noundef %x2.0) #8
  br label %if.end42

if.else:                                          ; preds = %if.then
  %mul20 = fmul double %2, 2.000000e+00
  %div21 = fdiv double %fneg28, %mul20
  %cmp22 = fcmp oeq double %div21, 0.000000e+00
  %x1.1 = select i1 %cmp22, double 0.000000e+00, double %div21
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %x1.1) #8
  br label %if.end42

if.else27:                                        ; preds = %while.body
  %mul29 = fmul double %2, 2.000000e+00
  %div30 = fdiv double %fneg28, %mul29
  %fneg31 = fneg double %5
  %call32 = call double @sqrt(double noundef %fneg31) #7, !tbaa !9
  %div34 = fdiv double %call32, %mul29
  %cmp35 = fcmp oeq double %div30, 0.000000e+00
  %x1.2 = select i1 %cmp35, double 0.000000e+00, double %div30
  %cmp38 = fcmp oeq double %div34, 0.000000e+00
  %x.0 = select i1 %cmp38, double 0.000000e+00, double %div34
  %call41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %x1.2, double noundef %x.0, double noundef %x1.2, double noundef %x.0) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then7, %if.else, %if.else27
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind memory(write) }
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
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
