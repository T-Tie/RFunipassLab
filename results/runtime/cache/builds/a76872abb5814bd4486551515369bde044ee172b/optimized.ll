; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkgw6rosy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [100 x [100 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %num) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(80000) %num, i8 noundef 0, i64 noundef 80000, i1 noundef false) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %sqrtf = call float @sqrtf(float noundef -1.000000e+00) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %1
  br i1 %cmp.not.not, label %for.body, label %for.cond74

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x [100 x double]], ptr %num, i64 0, i64 %indvars.iv
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 8
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 16
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx5, ptr noundef nonnull %arrayidx8)
  %2 = load double, ptr %arrayidx, align 16, !tbaa !9
  %3 = load double, ptr %arrayidx5, align 8, !tbaa !9
  %4 = load double, ptr %arrayidx8, align 16, !tbaa !9
  %mul19 = fmul double %2, 4.000000e+00
  %5 = fneg double %4
  %neg = fmul double %mul19, %5
  %6 = call double @llvm.fmuladd.f64(double %3, double %3, double %neg)
  %cmp21 = fcmp ult double %6, 0.000000e+00
  %7 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 24
  br i1 %cmp21, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %fneg = fneg double %3
  %call25 = call double @sqrt(double noundef %6) #9, !tbaa !5
  %add = fsub double %call25, %3
  %mul = fmul double %2, 2.000000e+00
  %div = fdiv double %add, %mul
  store double %div, ptr %7, align 8, !tbaa !9
  %call34 = call double @sqrt(double noundef %6) #9, !tbaa !5
  %sub35 = fsub double %fneg, %call34
  %div37 = fdiv double %sub35, %mul
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 32
  store double %div37, ptr %arrayidx40, align 16, !tbaa !9
  br label %for.inc

if.else:                                          ; preds = %for.body
  %cmp41 = fcmp oeq double %3, 0.000000e+00
  %.pre61 = fneg double %3
  %.pre62 = fmul double %2, 2.000000e+00
  %div49 = fdiv double %.pre61, %.pre62
  %div49.sink = select i1 %cmp41, double 0.000000e+00, double %div49
  store double %div49.sink, ptr %7, align 8, !tbaa !9
  %neg56 = fmul double %3, %.pre61
  %8 = call double @llvm.fmuladd.f64(double %mul19, double %4, double %neg56)
  %call57 = call double @sqrt(double noundef %8) #9, !tbaa !5
  %div59 = fdiv double %call57, %.pre62
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 32
  store double %div59, ptr %arrayidx62, align 16, !tbaa !9
  %call67 = call double @sqrt(double noundef %8) #9, !tbaa !5
  %div69 = fdiv double %call67, %.pre62
  %arrayidx72 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 40
  store double %div69, ptr %arrayidx72, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !11

for.cond74:                                       ; preds = %for.cond, %for.inc132
  %9 = phi i32 [ %.pre, %for.inc132 ], [ %0, %for.cond ]
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc132 ], [ 0, %for.cond ]
  %10 = sext i32 %9 to i64
  %cmp76.not.not = icmp slt i64 %indvars.iv58, %10
  br i1 %cmp76.not.not, label %for.body77, label %for.end134

for.body77:                                       ; preds = %for.cond74
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x double]], ptr %num, i64 0, i64 %indvars.iv58
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %arrayidx79, i64 8
  %11 = load double, ptr %arrayidx80, align 8, !tbaa !9
  %12 = load double, ptr %arrayidx79, align 16, !tbaa !9
  %mul88 = fmul double %12, 4.000000e+00
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %arrayidx79, i64 16
  %13 = load double, ptr %arrayidx91, align 16, !tbaa !9
  %14 = fneg double %13
  %neg93 = fmul double %mul88, %14
  %15 = call double @llvm.fmuladd.f64(double %11, double %11, double %neg93)
  %cmp94 = fcmp ult double %15, 0.000000e+00
  %arrayidx120 = getelementptr inbounds nuw i8, ptr %arrayidx79, i64 24
  %16 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %arrayidx123 = getelementptr inbounds nuw i8, ptr %arrayidx79, i64 32
  %17 = load double, ptr %arrayidx123, align 16, !tbaa !9
  br i1 %cmp94, label %if.else117, label %if.then95

if.then95:                                        ; preds = %for.body77
  %cmp102 = fcmp une double %16, %17
  br i1 %cmp102, label %if.then103, label %if.else111

if.then103:                                       ; preds = %if.then95
  %call110 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %16, double noundef %17)
  br label %for.inc132

if.else111:                                       ; preds = %if.then95
  %call115 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %16)
  br label %for.inc132

if.else117:                                       ; preds = %for.body77
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %arrayidx79, i64 40
  %18 = load double, ptr %arrayidx129, align 8, !tbaa !9
  %call130 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %16, double noundef %17, double noundef %16, double noundef %18)
  br label %for.inc132

for.inc132:                                       ; preds = %if.else117, %if.else111, %if.then103
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond74, !llvm.loop !14

for.end134:                                       ; preds = %for.cond74
  call void @outlined_ir_func_0()
  call void @outlined_ir_func_0()
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %num) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind
declare double @sqrt(double noundef) local_unnamed_addr #5

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) local_unnamed_addr #3

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal void @outlined_ir_func_0() #6 {
for.end134_after_outline.exitStub:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i1 = call i32 @getc(ptr noundef %0)
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nofree willreturn }
attributes #9 = { nounwind }

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
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
