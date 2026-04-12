; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8zpu5yfo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %j = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %j81 = alloca i32, align 4
  %n182 = alloca i32, align 4
  %n283 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc164, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end166

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %y) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %m1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %m2) #4
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %y, ptr noundef %m1, ptr noundef %m2)
  %2 = load i32, ptr %y, align 4, !tbaa !5
  %rem = srem i32 %2, 4
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %rem3 = srem i32 %2, 100
  %cmp4 = icmp ne i32 %rem3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %rem5 = srem i32 %2, 400
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then, label %if.else80

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %n1) #4
  store i32 0, ptr %n1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %n2) #4
  store i32 0, ptr %n2, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %if.then
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %3, %4
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %cmp10 = icmp eq i32 %3, 2
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body9
  %5 = load i32, ptr %n1, align 4, !tbaa !5
  %add = add nsw i32 %5, 29
  store i32 %add, ptr %n1, align 4, !tbaa !5
  br label %if.end29

if.else:                                          ; preds = %for.body9
  %cmp12 = icmp eq i32 %3, 1
  br i1 %cmp12, label %if.then25, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.else
  %cmp14 = icmp eq i32 %3, 3
  br i1 %cmp14, label %if.then25, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %cmp16 = icmp eq i32 %3, 5
  br i1 %cmp16, label %if.then25, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %cmp18 = icmp eq i32 %3, 7
  br i1 %cmp18, label %if.then25, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %cmp20 = icmp eq i32 %3, 8
  br i1 %cmp20, label %if.then25, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %cmp22 = icmp eq i32 %3, 10
  br i1 %cmp22, label %if.then25, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false21
  %cmp24 = icmp eq i32 %3, 12
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %lor.lhs.false23, %lor.lhs.false21, %lor.lhs.false19, %lor.lhs.false17, %lor.lhs.false15, %lor.lhs.false13, %if.else
  %6 = load i32, ptr %n1, align 4, !tbaa !5
  %add26 = add nsw i32 %6, 31
  store i32 %add26, ptr %n1, align 4, !tbaa !5
  br label %if.end

if.else27:                                        ; preds = %lor.lhs.false23
  %7 = load i32, ptr %n1, align 4, !tbaa !5
  %add28 = add nsw i32 %7, 30
  store i32 %add28, ptr %n1, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else27, %if.then25
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then11
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !9

for.end:                                          ; preds = %for.cond7
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc56, %for.end
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %8, %9
  br i1 %cmp31, label %for.body32, label %for.end58

for.body32:                                       ; preds = %for.cond30
  %cmp33 = icmp eq i32 %8, 2
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %for.body32
  %10 = load i32, ptr %n2, align 4, !tbaa !5
  %add35 = add nsw i32 %10, 29
  store i32 %add35, ptr %n2, align 4, !tbaa !5
  br label %if.end55

if.else36:                                        ; preds = %for.body32
  %cmp37 = icmp eq i32 %8, 1
  br i1 %cmp37, label %if.then50, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.else36
  %cmp39 = icmp eq i32 %8, 3
  br i1 %cmp39, label %if.then50, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false38
  %cmp41 = icmp eq i32 %8, 5
  br i1 %cmp41, label %if.then50, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false40
  %cmp43 = icmp eq i32 %8, 7
  br i1 %cmp43, label %if.then50, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false42
  %cmp45 = icmp eq i32 %8, 8
  br i1 %cmp45, label %if.then50, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false44
  %cmp47 = icmp eq i32 %8, 10
  br i1 %cmp47, label %if.then50, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false46
  %cmp49 = icmp eq i32 %8, 12
  br i1 %cmp49, label %if.then50, label %if.else52

if.then50:                                        ; preds = %lor.lhs.false48, %lor.lhs.false46, %lor.lhs.false44, %lor.lhs.false42, %lor.lhs.false40, %lor.lhs.false38, %if.else36
  %11 = load i32, ptr %n2, align 4, !tbaa !5
  %add51 = add nsw i32 %11, 31
  store i32 %add51, ptr %n2, align 4, !tbaa !5
  br label %if.end54

if.else52:                                        ; preds = %lor.lhs.false48
  %12 = load i32, ptr %n2, align 4, !tbaa !5
  %add53 = add nsw i32 %12, 30
  store i32 %add53, ptr %n2, align 4, !tbaa !5
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.then50
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then34
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %inc57 = add nsw i32 %8, 1
  store i32 %inc57, ptr %j, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !12

for.end58:                                        ; preds = %for.cond30
  %13 = load i32, ptr %n1, align 4, !tbaa !5
  %14 = load i32, ptr %n2, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %13, %14
  br i1 %cmp59, label %if.then60, label %if.end68

if.then60:                                        ; preds = %for.end58
  %sub = sub nsw i32 %14, %13
  %rem61 = srem i32 %sub, 7
  %cmp62 = icmp eq i32 %rem61, 0
  br i1 %cmp62, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.then60
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end67

if.else65:                                        ; preds = %if.then60
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end67

if.end67:                                         ; preds = %if.else65, %if.then63
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %for.end58
  %cmp69 = icmp sgt i32 %13, %14
  br i1 %cmp69, label %if.then70, label %if.end79

if.then70:                                        ; preds = %if.end68
  %sub71 = sub nsw i32 %13, %14
  %rem72 = srem i32 %sub71, 7
  %cmp73 = icmp eq i32 %rem72, 0
  br i1 %cmp73, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.then70
  %call75 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end78

if.else76:                                        ; preds = %if.then70
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end78

if.end78:                                         ; preds = %if.else76, %if.then74
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end68
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  br label %if.end163

if.else80:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j81) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %n182) #4
  store i32 0, ptr %n182, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %n283) #4
  store i32 0, ptr %n283, align 4, !tbaa !5
  store i32 1, ptr %j81, align 4, !tbaa !5
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc109, %if.else80
  %15 = load i32, ptr %j81, align 4, !tbaa !5
  %16 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %15, %16
  br i1 %cmp86, label %for.body87, label %for.end111

for.body87:                                       ; preds = %for.cond85
  %cmp88 = icmp eq i32 %15, 2
  br i1 %cmp88, label %if.then89, label %if.else91

if.then89:                                        ; preds = %for.body87
  %17 = load i32, ptr %n182, align 4, !tbaa !5
  %add90 = add nsw i32 %17, 28
  store i32 %add90, ptr %n182, align 4, !tbaa !5
  br label %if.end108

if.else91:                                        ; preds = %for.body87
  %cmp92 = icmp eq i32 %15, 1
  br i1 %cmp92, label %if.then103, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.else91
  %cmp94 = icmp eq i32 %15, 3
  br i1 %cmp94, label %if.then103, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false93
  %cmp96 = icmp eq i32 %15, 5
  br i1 %cmp96, label %if.then103, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false95
  %cmp98 = icmp eq i32 %15, 7
  br i1 %cmp98, label %if.then103, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %lor.lhs.false97
  %cmp100 = icmp eq i32 %15, 8
  br i1 %cmp100, label %if.then103, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false99
  %cmp102 = icmp eq i32 %15, 10
  br i1 %cmp102, label %if.then103, label %if.else105

if.then103:                                       ; preds = %lor.lhs.false101, %lor.lhs.false99, %lor.lhs.false97, %lor.lhs.false95, %lor.lhs.false93, %if.else91
  %18 = load i32, ptr %n182, align 4, !tbaa !5
  %add104 = add nsw i32 %18, 31
  store i32 %add104, ptr %n182, align 4, !tbaa !5
  br label %if.end107

if.else105:                                       ; preds = %lor.lhs.false101
  %19 = load i32, ptr %n182, align 4, !tbaa !5
  %add106 = add nsw i32 %19, 30
  store i32 %add106, ptr %n182, align 4, !tbaa !5
  br label %if.end107

if.end107:                                        ; preds = %if.else105, %if.then103
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then89
  br label %for.inc109

for.inc109:                                       ; preds = %if.end108
  %inc110 = add nsw i32 %15, 1
  store i32 %inc110, ptr %j81, align 4, !tbaa !5
  br label %for.cond85, !llvm.loop !13

for.end111:                                       ; preds = %for.cond85
  store i32 1, ptr %j81, align 4, !tbaa !5
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc138, %for.end111
  %20 = load i32, ptr %j81, align 4, !tbaa !5
  %21 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %20, %21
  br i1 %cmp113, label %for.body114, label %for.end140

for.body114:                                      ; preds = %for.cond112
  %cmp115 = icmp eq i32 %20, 2
  br i1 %cmp115, label %if.then116, label %if.else118

if.then116:                                       ; preds = %for.body114
  %22 = load i32, ptr %n283, align 4, !tbaa !5
  %add117 = add nsw i32 %22, 28
  store i32 %add117, ptr %n283, align 4, !tbaa !5
  br label %if.end137

if.else118:                                       ; preds = %for.body114
  %cmp119 = icmp eq i32 %20, 1
  br i1 %cmp119, label %if.then132, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %if.else118
  %cmp121 = icmp eq i32 %20, 3
  br i1 %cmp121, label %if.then132, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false120
  %cmp123 = icmp eq i32 %20, 5
  br i1 %cmp123, label %if.then132, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %lor.lhs.false122
  %cmp125 = icmp eq i32 %20, 7
  br i1 %cmp125, label %if.then132, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false124
  %cmp127 = icmp eq i32 %20, 8
  br i1 %cmp127, label %if.then132, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %lor.lhs.false126
  %cmp129 = icmp eq i32 %20, 10
  br i1 %cmp129, label %if.then132, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %lor.lhs.false128
  %cmp131 = icmp eq i32 %20, 12
  br i1 %cmp131, label %if.then132, label %if.else134

if.then132:                                       ; preds = %lor.lhs.false130, %lor.lhs.false128, %lor.lhs.false126, %lor.lhs.false124, %lor.lhs.false122, %lor.lhs.false120, %if.else118
  %23 = load i32, ptr %n283, align 4, !tbaa !5
  %add133 = add nsw i32 %23, 31
  store i32 %add133, ptr %n283, align 4, !tbaa !5
  br label %if.end136

if.else134:                                       ; preds = %lor.lhs.false130
  %24 = load i32, ptr %n283, align 4, !tbaa !5
  %add135 = add nsw i32 %24, 30
  store i32 %add135, ptr %n283, align 4, !tbaa !5
  br label %if.end136

if.end136:                                        ; preds = %if.else134, %if.then132
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.then116
  br label %for.inc138

for.inc138:                                       ; preds = %if.end137
  %inc139 = add nsw i32 %20, 1
  store i32 %inc139, ptr %j81, align 4, !tbaa !5
  br label %for.cond112, !llvm.loop !14

for.end140:                                       ; preds = %for.cond112
  %25 = load i32, ptr %n182, align 4, !tbaa !5
  %26 = load i32, ptr %n283, align 4, !tbaa !5
  %cmp141 = icmp slt i32 %25, %26
  br i1 %cmp141, label %if.then142, label %if.end151

if.then142:                                       ; preds = %for.end140
  %sub143 = sub nsw i32 %26, %25
  %rem144 = srem i32 %sub143, 7
  %cmp145 = icmp eq i32 %rem144, 0
  br i1 %cmp145, label %if.then146, label %if.else148

if.then146:                                       ; preds = %if.then142
  %call147 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end150

if.else148:                                       ; preds = %if.then142
  %call149 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end150

if.end150:                                        ; preds = %if.else148, %if.then146
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %for.end140
  %cmp152 = icmp sgt i32 %25, %26
  br i1 %cmp152, label %if.then153, label %if.end162

if.then153:                                       ; preds = %if.end151
  %sub154 = sub nsw i32 %25, %26
  %rem155 = srem i32 %sub154, 7
  %cmp156 = icmp eq i32 %rem155, 0
  br i1 %cmp156, label %if.then157, label %if.else159

if.then157:                                       ; preds = %if.then153
  %call158 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end161

if.else159:                                       ; preds = %if.then153
  %call160 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end161

if.end161:                                        ; preds = %if.else159, %if.then157
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.end151
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n283) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n182) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j81) #4
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.end79
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y) #4
  br label %for.inc164

for.inc164:                                       ; preds = %if.end163
  %inc165 = add nsw i32 %0, 1
  store i32 %inc165, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end166:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
