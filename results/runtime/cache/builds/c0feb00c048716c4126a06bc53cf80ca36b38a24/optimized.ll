; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsa57m9s7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.res = private unnamed_addr constant [32 x i8] c"0000000000000000000000000000001\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %res = alloca [32 x i8], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 32, ptr noundef align 16 %res) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef writeonly align 16 %res, ptr noundef readonly align 16 @__const.main.res, i64 noundef 32, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.end ]
  %c.0 = phi i32 [ 0, %entry ], [ %c.1, %for.end ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.body3, %for.body
  %j.0 = phi i32 [ 30, %for.body ], [ %dec, %for.body3 ]
  %c.1 = phi i32 [ %c.0, %for.body ], [ %div, %for.body3 ]
  %cmp2 = icmp sge i32 %j.0, 0
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [32 x i8], ptr %res, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %sub = sub nsw i32 %conv, 48
  %mul = mul nsw i32 %sub, 2
  %add = add nsw i32 %mul, %c.1
  %rem = srem i32 %add, 10
  %add4 = add nsw i32 %rem, 48
  %conv5 = trunc i32 %add4 to i8
  store i8 %conv5, ptr %arrayidx, align 1, !tbaa !9
  %div = sdiv i32 %add, 10
  %dec = add nsw i32 %j.0, -1
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.body16, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc18, %for.body16 ]
  %cmp11 = icmp slt i32 %i.1, 31
  br i1 %cmp11, label %land.end, label %for.end19

land.end:                                         ; preds = %for.cond10
  %idxprom12 = sext i32 %i.1 to i64
  %arrayidx13 = getelementptr inbounds [32 x i8], ptr %res, i64 0, i64 %idxprom12
  %2 = load i8, ptr %arrayidx13, align 1, !tbaa !9
  %conv14 = sext i8 %2 to i32
  %cmp15 = icmp eq i32 %conv14, 48
  br i1 %cmp15, label %for.body16, label %for.end19

for.body16:                                       ; preds = %land.end
  %inc18 = add nsw i32 %i.1, 1
  br label %for.cond10, !llvm.loop !14

for.end19:                                        ; preds = %for.cond10, %land.end
  br label %for.cond20

for.cond20:                                       ; preds = %for.body22, %for.end19
  %j.1 = phi i32 [ %i.1, %for.end19 ], [ %inc29, %for.body22 ]
  %cmp21 = icmp slt i32 %j.1, 31
  %sub31 = sub nsw i32 %j.1, %i.1
  %idxprom32 = sext i32 %sub31 to i64
  br i1 %cmp21, label %for.body22, label %for.end30

for.body22:                                       ; preds = %for.cond20
  %idxprom23 = sext i32 %j.1 to i64
  %arrayidx24 = getelementptr inbounds [32 x i8], ptr %res, i64 0, i64 %idxprom23
  %3 = load i8, ptr %arrayidx24, align 1, !tbaa !9
  %arrayidx27 = getelementptr inbounds [32 x i8], ptr %res, i64 0, i64 %idxprom32
  store i8 %3, ptr %arrayidx27, align 1, !tbaa !9
  %inc29 = add nsw i32 %j.1, 1
  br label %for.cond20, !llvm.loop !15

for.end30:                                        ; preds = %for.cond20
  %arrayidx33 = getelementptr inbounds [32 x i8], ptr %res, i64 0, i64 %idxprom32
  store i8 0, ptr %arrayidx33, align 1, !tbaa !9
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %res) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 32, ptr noundef %res) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nofree willreturn }
attributes #7 = { nounwind }

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
