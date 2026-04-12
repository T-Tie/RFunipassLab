; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9rc8k56q.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %j) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.end27, %for.end
  %sub = sub nsw i32 %0, 1
  %cmp3 = icmp slt i32 0, %sub
  br i1 %cmp3, label %for.body4, label %for.end30

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %if.end, %for.body4
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %sub6 = sub nsw i32 %0, %2
  %sub7 = sub nsw i32 %sub6, 1
  %cmp8 = icmp slt i32 0, %sub7
  br i1 %cmp8, label %for.body9, label %for.end27

for.body9:                                        ; preds = %for.cond5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %3 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom10
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !9
  %add = add nsw i32 %3, 1
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom12
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !9
  %cmp14 = icmp slt i32 %4, %5
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  store i32 %5, ptr %arrayidx11, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx13, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body9
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #6
  br label %for.cond5

for.end27:                                        ; preds = %for.cond5
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j) #6
  br label %for.cond2

for.end30:                                        ; preds = %for.cond2
  %6 = load i32, ptr %a, align 16, !tbaa !5
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 1
  %7 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6, i32 noundef %7) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #4 {
for.cond.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
!9 = !{}
