; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3dqaugn1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca i32, align 4
  %a2 = alloca i8, i32 0, align 4
  %a1 = alloca i8, i32 0, align 4
  %n = alloca i32, align 4
  %word = alloca [500 x [40 x i8]], align 16
  %para = alloca [50 x [82 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #6
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 20000, ptr noundef %word) #6
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %word, i8 noundef 0, i64 noundef 20000, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4100, ptr noundef %para) #6
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %para, i8 noundef 0, i64 noundef 4100, i1 noundef false) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [500 x [40 x i8]], ptr %word, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call7 = call ptr @strcat(ptr noundef %para, ptr noundef %word) #8
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc40, %for.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %2, %3
  br i1 %cmp9, label %for.body10, label %for.end42

for.body10:                                       ; preds = %for.cond8
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom11 = sext i32 %4 to i64
  %arrayidx12 = getelementptr inbounds [50 x [82 x i8]], ptr %para, i64 0, i64 %idxprom11
  %call14 = call i64 @strlen(ptr noundef %arrayidx12) #9
  %idxprom15 = sext i32 %2 to i64
  %arrayidx16 = getelementptr inbounds [500 x [40 x i8]], ptr %word, i64 0, i64 %idxprom15
  %call18 = call i64 @strlen(ptr noundef %arrayidx16) #9
  %add = add i64 %call14, %call18
  %add19 = add i64 %add, 1
  %cmp20 = icmp ule i64 %add19, 80
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body10
  %call24 = call ptr @strcat(ptr noundef %arrayidx12, ptr noundef @.str.2) #8
  %call31 = call ptr @strcat(ptr noundef %arrayidx12, ptr noundef %arrayidx16) #8
  br label %for.inc40

if.else:                                          ; preds = %for.body10
  %inc32 = add nsw i32 %4, 1
  store i32 %inc32, ptr %k, align 4, !tbaa !5
  %idxprom33 = sext i32 %inc32 to i64
  %arrayidx34 = getelementptr inbounds [50 x [82 x i8]], ptr %para, i64 0, i64 %idxprom33
  %call39 = call ptr @strcat(ptr noundef %arrayidx34, ptr noundef %arrayidx16) #8
  br label %for.inc40

for.inc40:                                        ; preds = %if.then, %if.else
  %inc41 = add nsw i32 %2, 1
  store i32 %inc41, ptr %i, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !12

for.end42:                                        ; preds = %for.cond8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc50, %for.end42
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %cmp44 = icmp sle i32 %5, %6
  br i1 %cmp44, label %for.inc50, label %for.end52

for.inc50:                                        ; preds = %for.cond43
  %idxprom46 = sext i32 %5 to i64
  %arrayidx47 = getelementptr inbounds [50 x [82 x i8]], ptr %para, i64 0, i64 %idxprom46
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arrayidx47)
  %inc51 = add nsw i32 %5, 1
  store i32 %inc51, ptr %i, align 4, !tbaa !5
  br label %for.cond43, !llvm.loop !13

for.end52:                                        ; preds = %for.cond43
  call void @llvm.lifetime.end.p0(i64 noundef 4100, ptr noundef %para) #8
  call void @llvm.lifetime.end.p0(i64 noundef 20000, ptr noundef %word) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
