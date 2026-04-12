; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0wd3iyfs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %q = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef align 16 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef %c) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %a, ptr noundef align 16 %b, ptr noundef %c)
  %call4 = call i64 @strlen(ptr noundef %b) #5
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef %a) #5
  %conv7 = trunc i64 %call6 to i32
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %q) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %k) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %conv7
  br i1 %cmp, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv8 = sext i8 %1 to i32
  %2 = load i8, ptr %b, align 16, !tbaa !9
  %conv10 = sext i8 %2 to i32
  %cmp11 = icmp eq i32 %conv8, %conv10
  br i1 %cmp11, label %if.then, label %for.inc26

if.then:                                          ; preds = %for.body
  store i32 1, ptr %k, align 4, !tbaa !5
  store i32 %0, ptr %j, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %if.then
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %0, %conv
  %cmp13 = icmp slt i32 %3, %add
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond12
  %sub = sub nsw i32 %3, %0
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 %idxprom15
  %4 = load i8, ptr %arrayidx16, align 1, !tbaa !9
  %conv17 = sext i8 %4 to i32
  %idxprom18 = sext i32 %3 to i64
  %arrayidx19 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom18
  %5 = load i8, ptr %arrayidx19, align 1, !tbaa !9
  %conv20 = sext i8 %5 to i32
  %cmp21 = icmp ne i32 %conv17, %conv20
  br i1 %cmp21, label %if.then22, label %for.inc

if.then22:                                        ; preds = %for.body14
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body14, %if.then22
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !10

for.end:                                          ; preds = %for.cond12
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %for.end28.thread, label %for.inc26

for.end28.thread:                                 ; preds = %for.end
  store i32 %0, ptr %q, align 4, !tbaa !5
  br label %if.then30

for.inc26:                                        ; preds = %for.body, %for.end
  store i32 0, ptr %k, align 4, !tbaa !5
  %inc27 = add nsw i32 %0, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end28:                                        ; preds = %for.cond
  %.pr = load i32, ptr %k, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %.pr, 0
  br i1 %tobool29, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.end28.thread, %for.end28
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc38, %if.then30
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %8 = load i32, ptr %q, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %7, %8
  br i1 %cmp32, label %for.inc38, label %for.end40

for.inc38:                                        ; preds = %for.cond31
  %idxprom34 = sext i32 %7 to i64
  %arrayidx35 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom34
  %9 = load i8, ptr %arrayidx35, align 1, !tbaa !9
  %conv36 = sext i8 %9 to i32
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv36)
  %inc39 = add nsw i32 %7, 1
  store i32 %inc39, ptr %i, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !14

for.end40:                                        ; preds = %for.cond31
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %c)
  %add43 = add nsw i32 %8, %conv
  store i32 %add43, ptr %i, align 4, !tbaa !5
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc51, %for.end40
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %10, %conv7
  br i1 %cmp45, label %for.inc51, label %if.end56

for.inc51:                                        ; preds = %for.cond44
  %idxprom47 = sext i32 %10 to i64
  %arrayidx48 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom47
  %11 = load i8, ptr %arrayidx48, align 1, !tbaa !9
  %conv49 = sext i8 %11 to i32
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv49)
  %inc52 = add nsw i32 %10, 1
  store i32 %inc52, ptr %i, align 4, !tbaa !5
  br label %for.cond44, !llvm.loop !15

if.else:                                          ; preds = %for.end28
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %a)
  br label %if.end56

if.end56:                                         ; preds = %for.cond44, %if.else
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %q) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %a) #6
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
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

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
