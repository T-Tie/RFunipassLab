; ModuleID = '/tmp/tmptrlf9uf1.cpp'
source_filename = "/tmp/tmptrlf9uf1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [6 x [200 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %h = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4800, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #3
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 200
  br i1 %cmp, label %for.body, label %for.end62

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %m, align 4, !tbaa !5
  store i32 0, ptr %n, align 4, !tbaa !5
  store i32 0, ptr %h, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, 6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 %idxprom
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [200 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 0
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [200 x i32], ptr %arrayidx6, i64 0, i64 %idxprom7
  %6 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %arrayidx10 = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 1
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [200 x i32], ptr %arrayidx10, i64 0, i64 %idxprom11
  %8 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %8, 0
  br i1 %cmp13, label %land.lhs.true14, label %if.else

land.lhs.true14:                                  ; preds = %land.lhs.true
  %arrayidx15 = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 2
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %9 to i64
  %arrayidx17 = getelementptr inbounds [200 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %10 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %10, 0
  br i1 %cmp18, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %arrayidx20 = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 3
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom21 = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds [200 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %12 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %12, 0
  br i1 %cmp23, label %land.lhs.true24, label %if.else

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %arrayidx25 = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 4
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom26 = sext i32 %13 to i64
  %arrayidx27 = getelementptr inbounds [200 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %14 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %14, 0
  br i1 %cmp28, label %land.lhs.true29, label %if.else

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %arrayidx30 = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 5
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom31 = sext i32 %15 to i64
  %arrayidx32 = getelementptr inbounds [200 x i32], ptr %arrayidx30, i64 0, i64 %idxprom31
  %16 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %16, 0
  br i1 %cmp33, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true29
  br label %for.end62

if.else:                                          ; preds = %land.lhs.true29, %land.lhs.true24, %land.lhs.true19, %land.lhs.true14, %land.lhs.true, %for.end
  %arrayidx34 = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 0
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom35 = sext i32 %17 to i64
  %arrayidx36 = getelementptr inbounds [200 x i32], ptr %arrayidx34, i64 0, i64 %idxprom35
  %18 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %mul = mul nsw i32 %18, 3600
  %arrayidx37 = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 1
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom38 = sext i32 %19 to i64
  %arrayidx39 = getelementptr inbounds [200 x i32], ptr %arrayidx37, i64 0, i64 %idxprom38
  %20 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %mul40 = mul nsw i32 %20, 60
  %add = add nsw i32 %mul, %mul40
  %arrayidx41 = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 2
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom42 = sext i32 %21 to i64
  %arrayidx43 = getelementptr inbounds [200 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %22 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %add44 = add nsw i32 %add, %22
  store i32 %add44, ptr %m, align 4, !tbaa !5
  %arrayidx45 = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 3
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %23 to i64
  %arrayidx47 = getelementptr inbounds [200 x i32], ptr %arrayidx45, i64 0, i64 %idxprom46
  %24 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %add48 = add nsw i32 %24, 12
  %mul49 = mul nsw i32 %add48, 3600
  %arrayidx50 = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 4
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom51 = sext i32 %25 to i64
  %arrayidx52 = getelementptr inbounds [200 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %26 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %mul53 = mul nsw i32 %26, 60
  %add54 = add nsw i32 %mul49, %mul53
  %arrayidx55 = getelementptr inbounds [6 x [200 x i32]], ptr %a, i64 0, i64 5
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom56 = sext i32 %27 to i64
  %arrayidx57 = getelementptr inbounds [200 x i32], ptr %arrayidx55, i64 0, i64 %idxprom56
  %28 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %add58 = add nsw i32 %add54, %28
  store i32 %add58, ptr %n, align 4, !tbaa !5
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %30 = load i32, ptr %m, align 4, !tbaa !5
  %sub = sub nsw i32 %29, %30
  store i32 %sub, ptr %h, align 4, !tbaa !5
  %31 = load i32, ptr %h, align 4, !tbaa !5
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %31)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc60

for.inc60:                                        ; preds = %if.end
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %inc61 = add nsw i32 %32, 1
  store i32 %inc61, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end62:                                        ; preds = %if.then, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4800, ptr %a) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
