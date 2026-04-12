; ModuleID = '<stdin>'
source_filename = "/tmp/tmphozh3j_e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse noreturn uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %k) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %a)
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.body4

for.body4:                                        ; preds = %for.end, %for.end15
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %if.end, %for.body4
  %index.0 = phi i32 [ 0, %for.body4 ], [ %index.1, %if.end ]
  %cmp6 = icmp slt i32 1, %0
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %1 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom8
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !9
  %idxprom10 = sext i32 %index.0 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom10
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !9
  %cmp12 = icmp sgt i32 %2, %3
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %index.1 = phi i32 [ %1, %if.then ], [ %index.0, %for.body7 ]
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #5
  br label %for.cond5

for.end15:                                        ; preds = %for.cond5
  %idxprom16 = sext i32 %index.0 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom16
  %4 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !9
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom18 = sext i32 %5 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom18
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !9
  store i32 %6, ptr %arrayidx17, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx19, align 4, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %k) #5
  br label %for.body4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #3 {
for.cond.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
!9 = !{}
