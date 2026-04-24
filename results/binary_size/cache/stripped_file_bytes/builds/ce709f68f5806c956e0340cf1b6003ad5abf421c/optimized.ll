; ModuleID = '/tmp/tmpn5sdzby2.cpp'
source_filename = "/tmp/tmpn5sdzby2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lena = alloca i32, align 4
  %lenb = alloca i32, align 4
  %x = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lena) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lenb) #4
  %arraydecay = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [256 x i8], ptr %c, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2)
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 0
  %call4 = call i64 @strlen(ptr noundef %arraydecay3) #5
  %conv = trunc i64 %call4 to i32
  store i32 %conv, ptr %lena, align 4, !tbaa !5
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #5
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %lenb, align 4, !tbaa !5
  %0 = load i32, ptr %lena, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %lena, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 -1, ptr %x, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %lenb, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %3, %4
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %5, %6
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom11
  %7 = load i8, ptr %arrayidx12, align 1, !tbaa !9
  %conv13 = sext i8 %7 to i32
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 %idxprom14
  %9 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %conv16 = sext i8 %9 to i32
  %cmp17 = icmp ne i32 %conv13, %conv16
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  store i32 0, ptr %x, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %for.body10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !10

for.end:                                          ; preds = %if.then, %for.cond8
  %11 = load i32, ptr %x, align 4, !tbaa !5
  %cmp18 = icmp ne i32 %11, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %12, ptr %s, align 4, !tbaa !5
  br label %for.end23

if.end20:                                         ; preds = %for.end
  br label %for.inc21

for.inc21:                                        ; preds = %if.end20
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %13, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end23:                                        ; preds = %if.then19, %for.cond
  %14 = load i32, ptr %x, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %14, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %for.end23
  %arraydecay26 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 0
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay26)
  br label %if.end51

if.else:                                          ; preds = %for.end23
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc35, %if.else
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %16 = load i32, ptr %s, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %15, %16
  br i1 %cmp29, label %for.body30, label %for.end37

for.body30:                                       ; preds = %for.cond28
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %17 to i64
  %arrayidx32 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom31
  %18 = load i8, ptr %arrayidx32, align 1, !tbaa !9
  %conv33 = sext i8 %18 to i32
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv33)
  br label %for.inc35

for.inc35:                                        ; preds = %for.body30
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc36 = add nsw i32 %19, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !14

for.end37:                                        ; preds = %for.cond28
  %arraydecay38 = getelementptr inbounds [256 x i8], ptr %c, i64 0, i64 0
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay38)
  %20 = load i32, ptr %s, align 4, !tbaa !5
  %21 = load i32, ptr %lenb, align 4, !tbaa !5
  %add40 = add nsw i32 %20, %21
  store i32 %add40, ptr %i, align 4, !tbaa !5
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc48, %for.end37
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %23 = load i32, ptr %lena, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %22, %23
  br i1 %cmp42, label %for.body43, label %for.end50

for.body43:                                       ; preds = %for.cond41
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %24 to i64
  %arrayidx45 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom44
  %25 = load i8, ptr %arrayidx45, align 1, !tbaa !9
  %conv46 = sext i8 %25 to i32
  %call47 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv46)
  br label %for.inc48

for.inc48:                                        ; preds = %for.body43
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc49 = add nsw i32 %26, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !15

for.end50:                                        ; preds = %for.cond41
  br label %if.end51

if.end51:                                         ; preds = %for.end50, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lenb) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lena) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
