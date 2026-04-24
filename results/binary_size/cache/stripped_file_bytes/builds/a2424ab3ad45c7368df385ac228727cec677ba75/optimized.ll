; ModuleID = '<stdin>'
source_filename = "/tmp/tmpts_yddjh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [20 x i8] c"%lf\0A%lf\0A%lf\0A%lf\0A%lf\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Invalid input\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.4lf\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %e = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %e) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, ptr noundef nonnull %d, ptr noundef nonnull %e)
  %0 = load double, ptr %a, align 8, !tbaa !5
  %1 = load double, ptr %b, align 8, !tbaa !5
  %add = fadd double %0, %1
  %2 = load double, ptr %c, align 8, !tbaa !5
  %add1 = fadd double %add, %2
  %3 = load double, ptr %d, align 8, !tbaa !5
  %add2 = fadd double %add1, %3
  %div = fmul double %add2, 5.000000e-01
  %4 = load double, ptr %e, align 8, !tbaa !5
  %mul = fmul double %4, 0x400921FB4D12D84A
  %div3 = fdiv double %mul, 3.600000e+02
  %call4 = call double @cos(double noundef %div3) #6, !tbaa !9
  %sub = fsub double %div, %0
  %sub5 = fsub double %div, %1
  %mul6 = fmul double %sub, %sub5
  %sub7 = fsub double %div, %2
  %mul8 = fmul double %sub7, %mul6
  %sub9 = fsub double %div, %3
  %mul11 = fmul double %0, %1
  %mul12 = fmul double %mul11, %2
  %mul13 = fmul double %mul12, %3
  %mul14 = fmul double %mul13, %call4
  %5 = fneg double %call4
  %neg = fmul double %mul14, %5
  %6 = call double @llvm.fmuladd.f64(double %mul8, double %sub9, double %neg)
  %cmp = fcmp olt double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %if.end

if.else:                                          ; preds = %entry
  %call30 = call double @sqrt(double noundef %6) #6, !tbaa !9
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %call30)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr @stdin, align 8, !tbaa !11
  %call.i = call i32 @getc(ptr noundef %7)
  %8 = load ptr, ptr @stdin, align 8, !tbaa !11
  %call.i11 = call i32 @getc(ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %e) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
