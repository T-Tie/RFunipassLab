; ModuleID = '/tmp/tmpielsqmwx.cpp'
source_filename = "/tmp/tmpielsqmwx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [1000 x [1000 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4000000, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %s1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %s2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %l1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %l2) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc74, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %9, 1
  %cmp11 = icmp slt i32 %8, %sub
  br i1 %cmp11, label %for.body12, label %for.end76

for.body12:                                       ; preds = %for.cond10
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc71, %for.body12
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %sub14 = sub nsw i32 %11, 1
  %cmp15 = icmp slt i32 %10, %sub14
  br i1 %cmp15, label %for.body16, label %for.end73

for.body16:                                       ; preds = %for.cond13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom17
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [1000 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %14 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %14, 255
  br i1 %cmp21, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body16
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom22
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %sub24 = sub nsw i32 %16, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds [1000 x i32], ptr %arrayidx23, i64 0, i64 %idxprom25
  %17 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %17, 0
  br i1 %cmp27, label %land.lhs.true28, label %if.end

land.lhs.true28:                                  ; preds = %land.lhs.true
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %sub29 = sub nsw i32 %18, 1
  %idxprom30 = sext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom30
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom32 = sext i32 %19 to i64
  %arrayidx33 = getelementptr inbounds [1000 x i32], ptr %arrayidx31, i64 0, i64 %idxprom32
  %20 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %20, 0
  br i1 %cmp34, label %land.lhs.true35, label %if.end

land.lhs.true35:                                  ; preds = %land.lhs.true28
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %sub36 = sub nsw i32 %21, 1
  %idxprom37 = sext i32 %sub36 to i64
  %arrayidx38 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom37
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %sub39 = sub nsw i32 %22, 1
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds [1000 x i32], ptr %arrayidx38, i64 0, i64 %idxprom40
  %23 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %23, 0
  br i1 %cmp42, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true35
  %24 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %24, ptr %s1, align 4, !tbaa !5
  %25 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %25, ptr %l1, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true35, %land.lhs.true28, %land.lhs.true, %for.body16
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %26 to i64
  %arrayidx44 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom43
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom45 = sext i32 %27 to i64
  %arrayidx46 = getelementptr inbounds [1000 x i32], ptr %arrayidx44, i64 0, i64 %idxprom45
  %28 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %28, 0
  br i1 %cmp47, label %land.lhs.true48, label %if.end70

land.lhs.true48:                                  ; preds = %if.end
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %29 to i64
  %arrayidx50 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom49
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %30, 1
  %idxprom51 = sext i32 %add to i64
  %arrayidx52 = getelementptr inbounds [1000 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %31 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %cmp53 = icmp eq i32 %31, 255
  br i1 %cmp53, label %land.lhs.true54, label %if.end70

land.lhs.true54:                                  ; preds = %land.lhs.true48
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %add55 = add nsw i32 %32, 1
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom56
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom58 = sext i32 %33 to i64
  %arrayidx59 = getelementptr inbounds [1000 x i32], ptr %arrayidx57, i64 0, i64 %idxprom58
  %34 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %34, 255
  br i1 %cmp60, label %land.lhs.true61, label %if.end70

land.lhs.true61:                                  ; preds = %land.lhs.true54
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %add62 = add nsw i32 %35, 1
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom63
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %add65 = add nsw i32 %36, 1
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds [1000 x i32], ptr %arrayidx64, i64 0, i64 %idxprom66
  %37 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %cmp68 = icmp eq i32 %37, 255
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %land.lhs.true61
  %38 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %38, ptr %s2, align 4, !tbaa !5
  %39 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %39, ptr %l2, align 4, !tbaa !5
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %land.lhs.true61, %land.lhs.true54, %land.lhs.true48, %if.end
  br label %for.inc71

for.inc71:                                        ; preds = %if.end70
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %inc72 = add nsw i32 %40, 1
  store i32 %inc72, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end73:                                        ; preds = %for.cond13
  br label %for.inc74

for.inc74:                                        ; preds = %for.end73
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %inc75 = add nsw i32 %41, 1
  store i32 %inc75, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end76:                                        ; preds = %for.cond10
  %42 = load i32, ptr %s2, align 4, !tbaa !5
  %43 = load i32, ptr %s1, align 4, !tbaa !5
  %sub77 = sub nsw i32 %42, %43
  %44 = load i32, ptr %l2, align 4, !tbaa !5
  %45 = load i32, ptr %l1, align 4, !tbaa !5
  %sub78 = sub nsw i32 %44, %45
  %mul = mul nsw i32 %sub77, %sub78
  %call79 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr %l2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %l1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %s2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %s1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4000000, ptr %a) #3
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
