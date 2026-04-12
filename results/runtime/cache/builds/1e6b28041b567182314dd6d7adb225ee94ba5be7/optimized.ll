; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwhi9r9p6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %zfc = alloca [256 x i8], align 16
  %wt = alloca [256 x i8], align 16
  %tar = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef align 16 %zfc) #6
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef align 16 %wt) #6
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef align 16 %tar) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %j) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %zfc)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %wt)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %tar)
  %call6 = call i64 @strlen(ptr noundef %zfc) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef %wt) #7
  %conv9 = trunc i64 %call8 to i32
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end34, %entry
  %sub = sub nsw i32 %conv, %conv9
  %add = add nsw i32 %sub, 1
  %cmp = icmp slt i32 0, %add
  br i1 %cmp, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %0, ptr %j, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %if.end, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %add11 = add nsw i32 %0, %conv9
  %cmp12 = icmp slt i32 %1, %add11
  br i1 %cmp12, label %for.body13, label %if.then21

for.body13:                                       ; preds = %for.cond10
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %zfc, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %conv14 = sext i8 %2 to i32
  %sub15 = sub nsw i32 %1, %0
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr %wt, i64 0, i64 %idxprom16
  %3 = load i8, ptr %arrayidx17, align 1, !tbaa !9, !invariant.load !10
  %conv18 = sext i8 %3 to i32
  %cmp19 = icmp ne i32 %conv14, %conv18
  br i1 %cmp19, label %if.end34, label %if.end

if.end:                                           ; preds = %for.body13
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j) #8
  br label %for.cond10

if.then21:                                        ; preds = %for.cond10
  store i32 %0, ptr %j, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.body25, %if.then21
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %4, %add11
  br i1 %cmp24, label %for.body25, label %for.end37

for.body25:                                       ; preds = %for.cond22
  %sub26 = sub nsw i32 %4, %0
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds [256 x i8], ptr %tar, i64 0, i64 %idxprom27
  %5 = load i8, ptr %arrayidx28, align 1, !tbaa !9, !invariant.load !10
  %idxprom29 = sext i32 %4 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], ptr %zfc, i64 0, i64 %idxprom29
  store i8 %5, ptr %arrayidx30, align 1, !tbaa !9
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j) #8
  br label %for.cond22

if.end34:                                         ; preds = %for.body13
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #8
  br label %for.cond

for.end37:                                        ; preds = %for.cond22, %for.cond
  %call39 = call i32 @puts(ptr noundef %zfc) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %tar) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %wt) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %zfc) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #5 {
for.cond10.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{}
