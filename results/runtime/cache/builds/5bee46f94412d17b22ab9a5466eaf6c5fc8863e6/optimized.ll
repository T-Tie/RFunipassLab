; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4pidx5mj.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %zfc1 = alloca [257 x i8], align 16
  %zfc2 = alloca [257 x i8], align 16
  %zfc3 = alloca [257 x i8], align 16
  %zichuan = alloca [257 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef align 16 %zfc1) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %zfc1, i8 noundef 0, i64 noundef 257, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef %zfc2) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %zfc2, i8 noundef 0, i64 noundef 257, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef %zfc3) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %zfc3, i8 noundef 0, i64 noundef 257, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef align 16 %zichuan) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %zichuan, i8 noundef 0, i64 noundef 257, i1 noundef false) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %zfc1)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %zfc2)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %zfc3)
  %call6 = call i64 @strlen(ptr noundef %zfc1) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef %zfc2) #7
  %conv9 = trunc i64 %call8 to i32
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc46, %if.end ]
  %sub = sub nsw i32 %conv, %conv9
  %cmp = icmp sle i32 %i.0, %sub
  br i1 %cmp, label %for.body, label %if.then49

for.body:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.body12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body12 ]
  %cmp11 = icmp slt i32 %j.0, %conv9
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %add = add nsw i32 %j.0, %i.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [257 x i8], ptr %zfc1, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %idxprom13 = sext i32 %j.0 to i64
  %arrayidx14 = getelementptr inbounds [257 x i8], ptr %zichuan, i64 0, i64 %idxprom13
  store i8 %0, ptr %arrayidx14, align 1, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %for.cond10, !llvm.loop !8

for.end:                                          ; preds = %for.cond10
  %call17 = call i32 @strcmp(ptr noundef %zichuan, ptr noundef %zfc2) #7
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %for.cond19

for.cond19:                                       ; preds = %for.body21, %if.then
  %k.0 = phi i32 [ 0, %if.then ], [ %inc27, %for.body21 ]
  %cmp20 = icmp slt i32 %k.0, %i.0
  br i1 %cmp20, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond19
  %idxprom22 = sext i32 %k.0 to i64
  %arrayidx23 = getelementptr inbounds [257 x i8], ptr %zfc1, i64 0, i64 %idxprom22
  %1 = load i8, ptr %arrayidx23, align 1, !tbaa !5
  %conv24 = sext i8 %1 to i32
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv24)
  %inc27 = add nsw i32 %k.0, 1
  br label %for.cond19, !llvm.loop !11

for.end28:                                        ; preds = %for.cond19
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %zfc3)
  %add31 = add nsw i32 %i.0, %conv9
  br label %for.cond32

for.cond32:                                       ; preds = %for.body37, %for.end28
  %t.0 = phi i32 [ %add31, %for.end28 ], [ %inc43, %for.body37 ]
  %idxprom33 = sext i32 %t.0 to i64
  %arrayidx34 = getelementptr inbounds [257 x i8], ptr %zfc1, i64 0, i64 %idxprom33
  %2 = load i8, ptr %arrayidx34, align 1, !tbaa !5
  %conv35 = sext i8 %2 to i32
  %cmp36 = icmp ne i32 %conv35, 0
  br i1 %cmp36, label %for.body37, label %if.end52

for.body37:                                       ; preds = %for.cond32
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv35)
  %inc43 = add nsw i32 %t.0, 1
  br label %for.cond32, !llvm.loop !12

if.end:                                           ; preds = %for.end
  %inc46 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

if.then49:                                        ; preds = %for.cond
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %zfc1)
  br label %if.end52

if.end52:                                         ; preds = %for.cond32, %if.then49
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef %zichuan) #8
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef %zfc3) #8
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef %zfc2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef %zfc1) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
