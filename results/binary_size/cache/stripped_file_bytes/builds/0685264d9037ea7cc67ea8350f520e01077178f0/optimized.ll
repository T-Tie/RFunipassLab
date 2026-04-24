; ModuleID = '/tmp/tmpeh6lwhuj.cpp'
source_filename = "/tmp/tmpeh6lwhuj.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"No\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  %shu = alloca [200 x i32], align 16
  %zi = alloca [301 x i8], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #5
  store i32 0, ptr %a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr %shu) #5
  call void @llvm.memset.p0.i64(ptr align 16 %shu, i8 0, i64 800, i1 false)
  call void @llvm.lifetime.start.p0(i64 301, ptr %zi) #5
  %arraydecay = getelementptr inbounds [301 x i8], ptr %zi, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %arraydecay1 = getelementptr inbounds [301 x i8], ptr %zi, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1) #6
  %cmp = icmp ult i64 %conv, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [301 x i8], ptr %zi, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp sgt i32 %conv3, 64
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [301 x i8], ptr %zi, i64 0, i64 %idxprom5
  %4 = load i8, ptr %arrayidx6, align 1, !tbaa !9
  %conv7 = sext i8 %4 to i32
  %cmp8 = icmp slt i32 %conv7, 91
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [301 x i8], ptr %zi, i64 0, i64 %idxprom9
  %6 = load i8, ptr %arrayidx10, align 1, !tbaa !9
  %conv11 = sext i8 %6 to i32
  %cmp12 = icmp sgt i32 %conv11, 96
  br i1 %cmp12, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [301 x i8], ptr %zi, i64 0, i64 %idxprom14
  %8 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %conv16 = sext i8 %8 to i32
  %cmp17 = icmp slt i32 %conv16, 123
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true13, %land.lhs.true
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %9 to i64
  %arrayidx19 = getelementptr inbounds [301 x i8], ptr %zi, i64 0, i64 %idxprom18
  %10 = load i8, ptr %arrayidx19, align 1, !tbaa !9
  %conv20 = sext i8 %10 to i32
  %sub = sub nsw i32 %conv20, 65
  %idxprom21 = sext i32 %sub to i64
  %arrayidx22 = getelementptr inbounds [200 x i32], ptr %shu, i64 0, i64 %idxprom21
  %11 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %arrayidx22, align 4, !tbaa !5
  store i32 1, ptr %a, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true13, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %12, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc35, %for.end
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %13, 26
  br i1 %cmp25, label %for.body26, label %for.end37

for.body26:                                       ; preds = %for.cond24
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %14 to i64
  %arrayidx28 = getelementptr inbounds [200 x i32], ptr %shu, i64 0, i64 %idxprom27
  %15 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %15, 0
  br i1 %cmp29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %for.body26
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %16, 65
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %17 to i64
  %arrayidx32 = getelementptr inbounds [200 x i32], ptr %shu, i64 0, i64 %idxprom31
  %18 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add, i32 noundef %18)
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %for.body26
  br label %for.inc35

for.inc35:                                        ; preds = %if.end34
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc36 = add nsw i32 %19, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !13

for.end37:                                        ; preds = %for.cond24
  store i32 32, ptr %i, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc50, %for.end37
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %20, 58
  br i1 %cmp39, label %for.body40, label %for.end52

for.body40:                                       ; preds = %for.cond38
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %21 to i64
  %arrayidx42 = getelementptr inbounds [200 x i32], ptr %shu, i64 0, i64 %idxprom41
  %22 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %22, 0
  br i1 %cmp43, label %if.then44, label %if.end49

if.then44:                                        ; preds = %for.body40
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %add45 = add nsw i32 %23, 65
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %24 to i64
  %arrayidx47 = getelementptr inbounds [200 x i32], ptr %shu, i64 0, i64 %idxprom46
  %25 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add45, i32 noundef %25)
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %for.body40
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc51 = add nsw i32 %26, 1
  store i32 %inc51, ptr %i, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !14

for.end52:                                        ; preds = %for.cond38
  %27 = load i32, ptr %a, align 4, !tbaa !5
  %cmp53 = icmp eq i32 %27, 0
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %for.end52
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %for.end52
  call void @llvm.lifetime.end.p0(i64 301, ptr %zi) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr %shu) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
