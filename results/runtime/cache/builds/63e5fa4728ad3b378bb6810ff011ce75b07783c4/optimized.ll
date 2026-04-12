; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz_yurje1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z3maxPiii(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %a, i32 noundef %n, i32 noundef %m) local_unnamed_addr #0 {
entry:
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %m
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds i32, ptr %a, i64 1
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5, !invariant.load !9
  store i32 %1, ptr %y, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 %0, ptr %y, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %n
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %a, i64 %idxprom
  %3 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %cmp5 = icmp eq i32 %3, %m
  br i1 %cmp5, label %for.inc, label %if.end7

if.end7:                                          ; preds = %for.body
  %4 = load i32, ptr %y, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %3, %4
  br i1 %cmp10, label %if.then11, label %for.inc

if.then11:                                        ; preds = %if.end7
  store i32 %3, ptr %y, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %if.then11, %for.body
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %y, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %y) #4
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca [100 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 captures(none) dereferenceable(400) %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef nonnull %arrayidx)
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %call2 = call noundef i32 @_Z3maxPiii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(400) %a, i32 noundef %1, i32 noundef 0) #5
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call2)
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %call5 = call noundef i32 @_Z3maxPiii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(400) %a, i32 noundef %2, i32 noundef %call2) #5
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call5)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %a) #5
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
