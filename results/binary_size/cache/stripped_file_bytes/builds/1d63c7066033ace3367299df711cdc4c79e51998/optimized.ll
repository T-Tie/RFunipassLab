; ModuleID = '/tmp/tmpudolr0q2.cpp'
source_filename = "/tmp/tmpudolr0q2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.point = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sz = alloca [100 x %struct.point], align 16
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %xsz = alloca [100 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 2400, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #3
  store i32 0, ptr %count, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom
  %a = getelementptr inbounds nuw %struct.point, ptr %arrayidx, i32 0, i32 0
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom1
  %b = getelementptr inbounds nuw %struct.point, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom3
  %c = getelementptr inbounds nuw %struct.point, ptr %arrayidx4, i32 0, i32 2
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom5
  %d = getelementptr inbounds nuw %struct.point, ptr %arrayidx6, i32 0, i32 3
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom7
  %e = getelementptr inbounds nuw %struct.point, ptr %arrayidx8, i32 0, i32 4
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom9
  %f = getelementptr inbounds nuw %struct.point, ptr %arrayidx10, i32 0, i32 5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %a, ptr noundef %b, ptr noundef %c, ptr noundef %d, ptr noundef %e, ptr noundef %f)
  %7 = load i32, ptr %count, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %count, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom11
  %a13 = getelementptr inbounds nuw %struct.point, ptr %arrayidx12, i32 0, i32 0
  %9 = load i32, ptr %a13, align 8, !tbaa !9
  %cmp14 = icmp eq i32 %9, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom15
  %b17 = getelementptr inbounds nuw %struct.point, ptr %arrayidx16, i32 0, i32 1
  %11 = load i32, ptr %b17, align 4, !tbaa !11
  %cmp18 = icmp eq i32 %11, 0
  br i1 %cmp18, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom20
  %c22 = getelementptr inbounds nuw %struct.point, ptr %arrayidx21, i32 0, i32 2
  %13 = load i32, ptr %c22, align 8, !tbaa !12
  %cmp23 = icmp eq i32 %13, 0
  br i1 %cmp23, label %land.lhs.true24, label %if.end

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %14 to i64
  %arrayidx26 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom25
  %d27 = getelementptr inbounds nuw %struct.point, ptr %arrayidx26, i32 0, i32 3
  %15 = load i32, ptr %d27, align 4, !tbaa !13
  %cmp28 = icmp eq i32 %15, 0
  br i1 %cmp28, label %land.lhs.true29, label %if.end

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %16 to i64
  %arrayidx31 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom30
  %e32 = getelementptr inbounds nuw %struct.point, ptr %arrayidx31, i32 0, i32 4
  %17 = load i32, ptr %e32, align 8, !tbaa !14
  %cmp33 = icmp eq i32 %17, 0
  br i1 %cmp33, label %land.lhs.true34, label %if.end

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %18 to i64
  %arrayidx36 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom35
  %f37 = getelementptr inbounds nuw %struct.point, ptr %arrayidx36, i32 0, i32 5
  %19 = load i32, ptr %f37, align 4, !tbaa !15
  %cmp38 = icmp eq i32 %19, 0
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true34
  br label %for.end

if.end:                                           ; preds = %land.lhs.true34, %land.lhs.true29, %land.lhs.true24, %land.lhs.true19, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc39 = add nsw i32 %20, 1
  store i32 %inc39, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %if.then, %for.cond
  call void @llvm.lifetime.start.p0(i64 400, ptr %xsz) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc75, %for.end
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %22 = load i32, ptr %count, align 4, !tbaa !5
  %sub = sub nsw i32 %22, 1
  %cmp41 = icmp slt i32 %21, %sub
  br i1 %cmp41, label %for.body42, label %for.end77

for.body42:                                       ; preds = %for.cond40
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %23 to i64
  %arrayidx44 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom43
  %a45 = getelementptr inbounds nuw %struct.point, ptr %arrayidx44, i32 0, i32 0
  %24 = load i32, ptr %a45, align 8, !tbaa !9
  %sub46 = sub nsw i32 12, %24
  %sub47 = sub nsw i32 %sub46, 1
  %mul = mul nsw i32 %sub47, 3600
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %25 to i64
  %arrayidx49 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom48
  %b50 = getelementptr inbounds nuw %struct.point, ptr %arrayidx49, i32 0, i32 1
  %26 = load i32, ptr %b50, align 4, !tbaa !11
  %sub51 = sub nsw i32 60, %26
  %sub52 = sub nsw i32 %sub51, 1
  %mul53 = mul nsw i32 %sub52, 60
  %add = add nsw i32 %mul, %mul53
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom54 = sext i32 %27 to i64
  %arrayidx55 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom54
  %c56 = getelementptr inbounds nuw %struct.point, ptr %arrayidx55, i32 0, i32 2
  %28 = load i32, ptr %c56, align 8, !tbaa !12
  %sub57 = sub nsw i32 60, %28
  %add58 = add nsw i32 %add, %sub57
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %29 to i64
  %arrayidx60 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom59
  %d61 = getelementptr inbounds nuw %struct.point, ptr %arrayidx60, i32 0, i32 3
  %30 = load i32, ptr %d61, align 4, !tbaa !13
  %mul62 = mul nsw i32 3600, %30
  %add63 = add nsw i32 %add58, %mul62
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %31 to i64
  %arrayidx65 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom64
  %e66 = getelementptr inbounds nuw %struct.point, ptr %arrayidx65, i32 0, i32 4
  %32 = load i32, ptr %e66, align 8, !tbaa !14
  %mul67 = mul nsw i32 60, %32
  %add68 = add nsw i32 %add63, %mul67
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom69 = sext i32 %33 to i64
  %arrayidx70 = getelementptr inbounds [100 x %struct.point], ptr %sz, i64 0, i64 %idxprom69
  %f71 = getelementptr inbounds nuw %struct.point, ptr %arrayidx70, i32 0, i32 5
  %34 = load i32, ptr %f71, align 4, !tbaa !15
  %add72 = add nsw i32 %add68, %34
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom73 = sext i32 %35 to i64
  %arrayidx74 = getelementptr inbounds [100 x i32], ptr %xsz, i64 0, i64 %idxprom73
  store i32 %add72, ptr %arrayidx74, align 4, !tbaa !5
  br label %for.inc75

for.inc75:                                        ; preds = %for.body42
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc76 = add nsw i32 %36, 1
  store i32 %inc76, ptr %i, align 4, !tbaa !5
  br label %for.cond40, !llvm.loop !19

for.end77:                                        ; preds = %for.cond40
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc85, %for.end77
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %38 = load i32, ptr %count, align 4, !tbaa !5
  %sub79 = sub nsw i32 %38, 1
  %cmp80 = icmp slt i32 %37, %sub79
  br i1 %cmp80, label %for.body81, label %for.end87

for.body81:                                       ; preds = %for.cond78
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom82 = sext i32 %39 to i64
  %arrayidx83 = getelementptr inbounds [100 x i32], ptr %xsz, i64 0, i64 %idxprom82
  %40 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %call84 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %40)
  br label %for.inc85

for.inc85:                                        ; preds = %for.body81
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %inc86 = add nsw i32 %41, 1
  store i32 %inc86, ptr %i, align 4, !tbaa !5
  br label %for.cond78, !llvm.loop !20

for.end87:                                        ; preds = %for.cond78
  call void @llvm.lifetime.end.p0(i64 400, ptr %xsz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 2400, ptr %sz) #3
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
!9 = !{!10, !6, i64 0}
!10 = !{!"_ZTSZ4mainE5point", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!11 = !{!10, !6, i64 4}
!12 = !{!10, !6, i64 8}
!13 = !{!10, !6, i64 12}
!14 = !{!10, !6, i64 16}
!15 = !{!10, !6, i64 20}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !17, !18}
!20 = distinct !{!20, !17, !18}
