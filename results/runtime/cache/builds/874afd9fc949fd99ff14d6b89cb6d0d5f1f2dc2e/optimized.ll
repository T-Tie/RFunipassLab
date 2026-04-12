; ModuleID = '<stdin>'
source_filename = "/tmp/tmphhthk0zo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6stubidiiPA150_i(i32 noundef %x, i32 noundef %y, ptr noundef %z) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %cmp = icmp slt i32 0, %x
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %y
  br i1 %cmp2, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond1
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [150 x i32], ptr %z, i64 %idxprom
  %idxprom5 = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds [150 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx6)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #7
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %a = alloca [150 x [150 x i32]], align 16
  %b = alloca [150 x [150 x i32]], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 90000, ptr noundef nonnull align 16 captures(none) dereferenceable(90000) %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 90000, ptr noundef nonnull align 16 captures(none) dereferenceable(90000) %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %p) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %q) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %k) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef align 4 %m, ptr noundef align 4 %n)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  call void @_Z6stubidiiPA150_i(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 16 dereferenceable(90000) %a)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %q, ptr noundef %p)
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = load i32, ptr %p, align 4, !tbaa !5
  call void @_Z6stubidiiPA150_i(i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 16 dereferenceable(90000) %b)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end28, %entry
  %4 = load i32, ptr %m, align 4, !tbaa !5
  %cmp = icmp slt i32 0, %4
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc26, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc27, %for.inc26 ]
  %5 = load i32, ptr %p, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %j.0, %5
  br i1 %cmp4, label %for.body5, label %for.end28

for.body5:                                        ; preds = %for.cond3
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.body8, %for.body5
  %z.0 = phi i32 [ 0, %for.body5 ], [ %add, %for.body8 ]
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7 = icmp slt i32 0, %6
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [150 x [150 x i32]], ptr %a, i64 0, i64 %idxprom
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [150 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %9 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !12
  %arrayidx12 = getelementptr inbounds [150 x [150 x i32]], ptr %b, i64 0, i64 %idxprom9
  %idxprom13 = sext i32 %j.0 to i64
  %arrayidx14 = getelementptr inbounds [150 x i32], ptr %arrayidx12, i64 0, i64 %idxprom13
  %10 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !12
  %mul = mul nsw i32 %9, %10
  %add = add nsw i32 %z.0, %mul
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %k) #7
  br label %for.cond6

for.end:                                          ; preds = %for.cond6
  %sub = sub nsw i32 %5, 1
  %cmp15 = icmp slt i32 %j.0, %sub
  br i1 %cmp15, label %for.inc26, label %if.else

if.else:                                          ; preds = %for.end
  %cmp18 = icmp eq i32 %j.0, %sub
  br i1 %cmp18, label %land.lhs.true, label %if.else23

land.lhs.true:                                    ; preds = %if.else
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %12 = load i32, ptr %m, align 4, !tbaa !5
  %sub19 = sub nsw i32 %12, 1
  %cmp20 = icmp slt i32 %11, %sub19
  br i1 %cmp20, label %for.inc26, label %if.else23

if.else23:                                        ; preds = %land.lhs.true, %if.else
  br label %for.inc26

for.inc26:                                        ; preds = %land.lhs.true, %for.end, %if.else23
  %.str.sink = phi ptr [ @.str, %if.else23 ], [ @.str.2, %for.end ], [ @.str.3, %land.lhs.true ]
  %call24 = call i32 (ptr, ...) @printf(ptr noundef %.str.sink, i32 noundef %z.0) #7
  %inc27 = add nsw i32 %j.0, 1
  br label %for.cond3, !llvm.loop !13

for.end28:                                        ; preds = %for.cond3
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #7
  br label %for.cond

for.end31:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %k) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %q) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %p) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m) #7
  call void @llvm.lifetime.end.p0(i64 noundef 90000, ptr noundef captures(none) %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 90000, ptr noundef captures(none) %a) #7
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #5 {
for.cond.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc8 = add nsw i32 %1, 1
  store i32 %inc8, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{}
!13 = distinct !{!13, !10, !11}
