; ModuleID = '/tmp/tmpvwvsr6ec.cpp'
source_filename = "/tmp/tmpvwvsr6ec.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"x1=%.5lf;x2=%.5lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"x1=x2=%.5lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"x1=%.5lf+%.5lfi;x2=%.5lf-%.5lfi\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [100 x double], align 16
  %b = alloca [100 x double], align 16
  %c = alloca [100 x double], align 16
  %x1 = alloca [100 x double], align 16
  %x2 = alloca [100 x double], align 16
  %s = alloca [100 x double], align 16
  %t = alloca [100 x double], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr %x1) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr %x2) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr %t) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom3
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4)
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom6
  %6 = load double, ptr %arrayidx7, align 8, !tbaa !9
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom8
  %8 = load double, ptr %arrayidx9, align 8, !tbaa !9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom10
  %10 = load double, ptr %arrayidx11, align 8, !tbaa !9
  %mul12 = fmul double 4.000000e+00, %10
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom13
  %12 = load double, ptr %arrayidx14, align 8, !tbaa !9
  %mul15 = fmul double %mul12, %12
  %neg = fneg double %mul15
  %13 = call double @llvm.fmuladd.f64(double %6, double %8, double %neg)
  %cmp16 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom17
  %15 = load double, ptr %arrayidx18, align 8, !tbaa !9
  %fneg = fneg double %15
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom19
  %17 = load double, ptr %arrayidx20, align 8, !tbaa !9
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom21
  %19 = load double, ptr %arrayidx22, align 8, !tbaa !9
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom23
  %21 = load double, ptr %arrayidx24, align 8, !tbaa !9
  %mul25 = fmul double 4.000000e+00, %21
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %22 to i64
  %arrayidx27 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom26
  %23 = load double, ptr %arrayidx27, align 8, !tbaa !9
  %mul28 = fmul double %mul25, %23
  %neg29 = fneg double %mul28
  %24 = call double @llvm.fmuladd.f64(double %17, double %19, double %neg29)
  %call30 = call double @sqrt(double noundef %24) #5, !tbaa !5
  %add = fadd double %fneg, %call30
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom31
  %26 = load double, ptr %arrayidx32, align 8, !tbaa !9
  %mul = fmul double 2.000000e+00, %26
  %div = fdiv double %add, %mul
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds [100 x double], ptr %x1, i64 0, i64 %idxprom33
  store double %div, ptr %arrayidx34, align 8, !tbaa !9
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom35
  %29 = load double, ptr %arrayidx36, align 8, !tbaa !9
  %fneg37 = fneg double %29
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %30 to i64
  %arrayidx39 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom38
  %31 = load double, ptr %arrayidx39, align 8, !tbaa !9
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom40
  %33 = load double, ptr %arrayidx41, align 8, !tbaa !9
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %34 to i64
  %arrayidx44 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom43
  %35 = load double, ptr %arrayidx44, align 8, !tbaa !9
  %mul45 = fmul double 4.000000e+00, %35
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %36 to i64
  %arrayidx47 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom46
  %37 = load double, ptr %arrayidx47, align 8, !tbaa !9
  %mul48 = fmul double %mul45, %37
  %neg49 = fneg double %mul48
  %38 = call double @llvm.fmuladd.f64(double %31, double %33, double %neg49)
  %call50 = call double @sqrt(double noundef %38) #5, !tbaa !5
  %sub = fsub double %fneg37, %call50
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom51
  %40 = load double, ptr %arrayidx52, align 8, !tbaa !9
  %mul53 = fmul double 2.000000e+00, %40
  %div54 = fdiv double %sub, %mul53
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %41 to i64
  %arrayidx56 = getelementptr inbounds [100 x double], ptr %x2, i64 0, i64 %idxprom55
  store double %div54, ptr %arrayidx56, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %42 to i64
  %arrayidx58 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom57
  %43 = load double, ptr %arrayidx58, align 8, !tbaa !9
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %44 to i64
  %arrayidx60 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom59
  %45 = load double, ptr %arrayidx60, align 8, !tbaa !9
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %46 to i64
  %arrayidx63 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom62
  %47 = load double, ptr %arrayidx63, align 8, !tbaa !9
  %mul64 = fmul double 4.000000e+00, %47
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %48 to i64
  %arrayidx66 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom65
  %49 = load double, ptr %arrayidx66, align 8, !tbaa !9
  %mul67 = fmul double %mul64, %49
  %neg68 = fneg double %mul67
  %50 = call double @llvm.fmuladd.f64(double %43, double %45, double %neg68)
  %cmp69 = fcmp oeq double %50, 0.000000e+00
  br i1 %cmp69, label %if.then70, label %if.end82

if.then70:                                        ; preds = %if.end
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom71 = sext i32 %51 to i64
  %arrayidx72 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom71
  %52 = load double, ptr %arrayidx72, align 8, !tbaa !9
  %fneg73 = fneg double %52
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom74 = sext i32 %53 to i64
  %arrayidx75 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom74
  %54 = load double, ptr %arrayidx75, align 8, !tbaa !9
  %mul76 = fmul double 2.000000e+00, %54
  %div77 = fdiv double %fneg73, %mul76
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom78 = sext i32 %55 to i64
  %arrayidx79 = getelementptr inbounds [100 x double], ptr %x2, i64 0, i64 %idxprom78
  store double %div77, ptr %arrayidx79, align 8, !tbaa !9
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom80 = sext i32 %56 to i64
  %arrayidx81 = getelementptr inbounds [100 x double], ptr %x1, i64 0, i64 %idxprom80
  store double %div77, ptr %arrayidx81, align 8, !tbaa !9
  br label %if.end82

if.end82:                                         ; preds = %if.then70, %if.end
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %57 to i64
  %arrayidx84 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom83
  %58 = load double, ptr %arrayidx84, align 8, !tbaa !9
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom85 = sext i32 %59 to i64
  %arrayidx86 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom85
  %60 = load double, ptr %arrayidx86, align 8, !tbaa !9
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom88 = sext i32 %61 to i64
  %arrayidx89 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom88
  %62 = load double, ptr %arrayidx89, align 8, !tbaa !9
  %mul90 = fmul double 4.000000e+00, %62
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom91 = sext i32 %63 to i64
  %arrayidx92 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom91
  %64 = load double, ptr %arrayidx92, align 8, !tbaa !9
  %mul93 = fmul double %mul90, %64
  %neg94 = fneg double %mul93
  %65 = call double @llvm.fmuladd.f64(double %58, double %60, double %neg94)
  %cmp95 = fcmp olt double %65, 0.000000e+00
  br i1 %cmp95, label %if.then96, label %if.end126

if.then96:                                        ; preds = %if.end82
  %66 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom97 = sext i32 %66 to i64
  %arrayidx98 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom97
  %67 = load double, ptr %arrayidx98, align 8, !tbaa !9
  %fneg99 = fneg double %67
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom100 = sext i32 %68 to i64
  %arrayidx101 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom100
  %69 = load double, ptr %arrayidx101, align 8, !tbaa !9
  %mul102 = fmul double 2.000000e+00, %69
  %div103 = fdiv double %fneg99, %mul102
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom104 = sext i32 %70 to i64
  %arrayidx105 = getelementptr inbounds [100 x double], ptr %s, i64 0, i64 %idxprom104
  store double %div103, ptr %arrayidx105, align 8, !tbaa !9
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom106 = sext i32 %71 to i64
  %arrayidx107 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom106
  %72 = load double, ptr %arrayidx107, align 8, !tbaa !9
  %73 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom108 = sext i32 %73 to i64
  %arrayidx109 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom108
  %74 = load double, ptr %arrayidx109, align 8, !tbaa !9
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom111 = sext i32 %75 to i64
  %arrayidx112 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom111
  %76 = load double, ptr %arrayidx112, align 8, !tbaa !9
  %mul113 = fmul double 4.000000e+00, %76
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom114 = sext i32 %77 to i64
  %arrayidx115 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom114
  %78 = load double, ptr %arrayidx115, align 8, !tbaa !9
  %mul116 = fmul double %mul113, %78
  %neg117 = fneg double %mul116
  %79 = call double @llvm.fmuladd.f64(double %72, double %74, double %neg117)
  %fneg118 = fneg double %79
  %call119 = call double @sqrt(double noundef %fneg118) #5, !tbaa !5
  %80 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom120 = sext i32 %80 to i64
  %arrayidx121 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom120
  %81 = load double, ptr %arrayidx121, align 8, !tbaa !9
  %mul122 = fmul double 2.000000e+00, %81
  %div123 = fdiv double %call119, %mul122
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom124 = sext i32 %82 to i64
  %arrayidx125 = getelementptr inbounds [100 x double], ptr %t, i64 0, i64 %idxprom124
  store double %div123, ptr %arrayidx125, align 8, !tbaa !9
  br label %if.end126

if.end126:                                        ; preds = %if.then96, %if.end82
  br label %for.inc

for.inc:                                          ; preds = %if.end126
  %83 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %83, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc192, %for.end
  %84 = load i32, ptr %i, align 4, !tbaa !5
  %85 = load i32, ptr %n, align 4, !tbaa !5
  %cmp128 = icmp slt i32 %84, %85
  br i1 %cmp128, label %for.body129, label %for.end194

for.body129:                                      ; preds = %for.cond127
  %86 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom130 = sext i32 %86 to i64
  %arrayidx131 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom130
  %87 = load double, ptr %arrayidx131, align 8, !tbaa !9
  %88 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom132 = sext i32 %88 to i64
  %arrayidx133 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom132
  %89 = load double, ptr %arrayidx133, align 8, !tbaa !9
  %90 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom135 = sext i32 %90 to i64
  %arrayidx136 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom135
  %91 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %mul137 = fmul double 4.000000e+00, %91
  %92 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom138 = sext i32 %92 to i64
  %arrayidx139 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom138
  %93 = load double, ptr %arrayidx139, align 8, !tbaa !9
  %mul140 = fmul double %mul137, %93
  %neg141 = fneg double %mul140
  %94 = call double @llvm.fmuladd.f64(double %87, double %89, double %neg141)
  %cmp142 = fcmp ogt double %94, 0.000000e+00
  br i1 %cmp142, label %if.then143, label %if.end149

if.then143:                                       ; preds = %for.body129
  %95 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom144 = sext i32 %95 to i64
  %arrayidx145 = getelementptr inbounds [100 x double], ptr %x1, i64 0, i64 %idxprom144
  %96 = load double, ptr %arrayidx145, align 8, !tbaa !9
  %97 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom146 = sext i32 %97 to i64
  %arrayidx147 = getelementptr inbounds [100 x double], ptr %x2, i64 0, i64 %idxprom146
  %98 = load double, ptr %arrayidx147, align 8, !tbaa !9
  %call148 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %96, double noundef %98)
  br label %if.end149

if.end149:                                        ; preds = %if.then143, %for.body129
  %99 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom150 = sext i32 %99 to i64
  %arrayidx151 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom150
  %100 = load double, ptr %arrayidx151, align 8, !tbaa !9
  %101 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom152 = sext i32 %101 to i64
  %arrayidx153 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom152
  %102 = load double, ptr %arrayidx153, align 8, !tbaa !9
  %103 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom155 = sext i32 %103 to i64
  %arrayidx156 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom155
  %104 = load double, ptr %arrayidx156, align 8, !tbaa !9
  %mul157 = fmul double 4.000000e+00, %104
  %105 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom158 = sext i32 %105 to i64
  %arrayidx159 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom158
  %106 = load double, ptr %arrayidx159, align 8, !tbaa !9
  %mul160 = fmul double %mul157, %106
  %neg161 = fneg double %mul160
  %107 = call double @llvm.fmuladd.f64(double %100, double %102, double %neg161)
  %cmp162 = fcmp oeq double %107, 0.000000e+00
  br i1 %cmp162, label %if.then163, label %if.end167

if.then163:                                       ; preds = %if.end149
  %108 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom164 = sext i32 %108 to i64
  %arrayidx165 = getelementptr inbounds [100 x double], ptr %x1, i64 0, i64 %idxprom164
  %109 = load double, ptr %arrayidx165, align 8, !tbaa !9
  %call166 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %109)
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %if.end149
  %110 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom168 = sext i32 %110 to i64
  %arrayidx169 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom168
  %111 = load double, ptr %arrayidx169, align 8, !tbaa !9
  %112 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom170 = sext i32 %112 to i64
  %arrayidx171 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom170
  %113 = load double, ptr %arrayidx171, align 8, !tbaa !9
  %114 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom173 = sext i32 %114 to i64
  %arrayidx174 = getelementptr inbounds [100 x double], ptr %a, i64 0, i64 %idxprom173
  %115 = load double, ptr %arrayidx174, align 8, !tbaa !9
  %mul175 = fmul double 4.000000e+00, %115
  %116 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom176 = sext i32 %116 to i64
  %arrayidx177 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom176
  %117 = load double, ptr %arrayidx177, align 8, !tbaa !9
  %mul178 = fmul double %mul175, %117
  %neg179 = fneg double %mul178
  %118 = call double @llvm.fmuladd.f64(double %111, double %113, double %neg179)
  %cmp180 = fcmp olt double %118, 0.000000e+00
  br i1 %cmp180, label %if.then181, label %if.end191

if.then181:                                       ; preds = %if.end167
  %119 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom182 = sext i32 %119 to i64
  %arrayidx183 = getelementptr inbounds [100 x double], ptr %s, i64 0, i64 %idxprom182
  %120 = load double, ptr %arrayidx183, align 8, !tbaa !9
  %121 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom184 = sext i32 %121 to i64
  %arrayidx185 = getelementptr inbounds [100 x double], ptr %t, i64 0, i64 %idxprom184
  %122 = load double, ptr %arrayidx185, align 8, !tbaa !9
  %123 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom186 = sext i32 %123 to i64
  %arrayidx187 = getelementptr inbounds [100 x double], ptr %s, i64 0, i64 %idxprom186
  %124 = load double, ptr %arrayidx187, align 8, !tbaa !9
  %125 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom188 = sext i32 %125 to i64
  %arrayidx189 = getelementptr inbounds [100 x double], ptr %t, i64 0, i64 %idxprom188
  %126 = load double, ptr %arrayidx189, align 8, !tbaa !9
  %call190 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %120, double noundef %122, double noundef %124, double noundef %126)
  br label %if.end191

if.end191:                                        ; preds = %if.then181, %if.end167
  br label %for.inc192

for.inc192:                                       ; preds = %if.end191
  %127 = load i32, ptr %i, align 4, !tbaa !5
  %inc193 = add nsw i32 %127, 1
  store i32 %inc193, ptr %i, align 4, !tbaa !5
  br label %for.cond127, !llvm.loop !14

for.end194:                                       ; preds = %for.cond127
  call void @llvm.lifetime.end.p0(i64 800, ptr %t) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr %x2) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr %x1) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
