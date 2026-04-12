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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %a) #6
  store double 0.000000e+00, ptr %a, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %b) #6
  store double 0.000000e+00, ptr %b, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef align 8 %c) #6
  store double 0.000000e+00, ptr %c, align 8, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %while.cond

while.cond:                                       ; preds = %if.end42, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !9
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n, align 4, !tbaa !9
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %a)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 8 dereferenceable(8) %b)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 8 dereferenceable(8) %c)
  %1 = load double, ptr %b, align 8, !tbaa !5
  %2 = load double, ptr %a, align 8, !tbaa !5
  %mul4 = fmul double 4.000000e+00, %2
  %3 = load double, ptr %c, align 8, !tbaa !5
  %mul5 = fmul double %mul4, %3
  %neg = fneg double %mul5
  %4 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %cmp = fcmp oge double %4, 0.000000e+00
  %fneg = fneg double %1
  br i1 %cmp, label %if.then, label %if.else27

if.then:                                          ; preds = %while.body
  %cmp6 = fcmp ogt double %4, 0.000000e+00
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %call8 = call double @sqrt(double noundef %4) #7, !tbaa !9
  %add = fadd double %fneg, %call8
  %mul = fmul double 2.000000e+00, %2
  %div = fdiv double %add, %mul
  %call10 = call double @sqrt(double noundef %4) #7, !tbaa !9
  %sub = fsub double %fneg, %call10
  %div12 = fdiv double %sub, %mul
  %cmp13 = fcmp oeq double %div, 0.000000e+00
  br i1 %cmp13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then7
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then7
  %x1.0 = phi double [ 0.000000e+00, %if.then14 ], [ %div, %if.then7 ]
  %cmp15 = fcmp oeq double %div12, 0.000000e+00
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end
  %x2.0 = phi double [ 0.000000e+00, %if.then16 ], [ %div12, %if.end ]
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %x1.0, double noundef %x2.0)
  br label %if.end42

if.else:                                          ; preds = %if.then
  %mul20 = fmul double 2.000000e+00, %2
  %div21 = fdiv double %fneg, %mul20
  %cmp22 = fcmp oeq double %div21, 0.000000e+00
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.else
  %x1.1 = phi double [ 0.000000e+00, %if.then23 ], [ %div21, %if.else ]
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %x1.1)
  br label %if.end42

if.else27:                                        ; preds = %while.body
  %mul29 = fmul double 2.000000e+00, %2
  %div30 = fdiv double %fneg, %mul29
  %fneg31 = fneg double %4
  %call32 = call double @sqrt(double noundef %fneg31) #7, !tbaa !9
  %div34 = fdiv double %call32, %mul29
  %cmp35 = fcmp oeq double %div30, 0.000000e+00
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.else27
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.else27
  %x1.2 = phi double [ 0.000000e+00, %if.then36 ], [ %div30, %if.else27 ]
  %cmp38 = fcmp oeq double %div34, 0.000000e+00
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end37
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37
  %x.0 = phi double [ 0.000000e+00, %if.then39 ], [ %div34, %if.end37 ]
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %x1.2, double noundef %x.0, double noundef %x1.2, double noundef %x.0)
  br label %if.end42

if.end42:                                         ; preds = %if.end17, %if.end24, %if.end40
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3 align 2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind
declare double @sqrt(double noundef) local_unnamed_addr #5

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
