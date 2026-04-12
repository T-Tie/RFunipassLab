; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvezd157u.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %year) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m2) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %m1, ptr noundef %m2)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %2 = load i32, ptr %m1, align 4, !tbaa !5
  %3 = load i32, ptr %m2, align 4, !tbaa !5
  call void @_Z9xiangguaniii(i32 noundef %1, i32 noundef %2, i32 noundef %3) #8
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %year) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z9xiangguaniii(i32 noundef %y, i32 noundef %m1, i32 noundef %m2) local_unnamed_addr #3 {
for.end39:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %x1) #7
  store i32 0, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %x2) #7
  store i32 0, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %j) #7
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %i, i32 noundef %m1, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %x1, i32 noundef %y) #9
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %j, i32 noundef %m2, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %x2, i32 noundef %y) #9
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = load i32, ptr %x2, align 4, !tbaa !5
  %sub40 = sub nsw i32 %0, %1
  %rem = srem i32 %sub40, 7
  %cmp41 = icmp eq i32 %rem, 0
  br i1 %cmp41, label %if.then42, label %if.else44

if.then42:                                        ; preds = %for.end39
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #10
  br label %if.end46

if.else44:                                        ; preds = %for.end39
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #10
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then42
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x2) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x1) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z7runniani(i32 noundef %y) local_unnamed_addr #4 {
entry:
  %rem = srem i32 %y, 4
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %rem1 = srem i32 %y, 100
  %cmp2 = icmp ne i32 %rem1, 0
  br i1 %cmp2, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %rem3 = srem i32 %y, 400
  %cmp4 = icmp eq i32 %rem3, 0
  br i1 %cmp4, label %return, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  br label %return

return:                                           ; preds = %land.lhs.true, %lor.lhs.false, %if.else
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %lor.lhs.false ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, i32 noundef %3) unnamed_addr #6 {
entry_to_outline:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry_to_outline
  %.sink = phi i32 [ 1, %entry_to_outline ], [ %inc, %for.inc ]
  store i32 %.sink, ptr %0, align 4, !tbaa !5
  %cmp = icmp slt i32 %.sink, %1
  br i1 %cmp, label %for.body, label %for.end.exitStub

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %2, align 4, !tbaa !5
  %add = add nsw i32 %4, 31
  store i32 %add, ptr %2, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %.sink, 4
  br i1 %cmp1, label %if.end.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %cmp2 = icmp eq i32 %.sink, 6
  br i1 %cmp2, label %if.end.thread, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cmp4 = icmp eq i32 %.sink, 9
  br i1 %cmp4, label %if.end.thread, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %cmp6 = icmp eq i32 %.sink, 11
  br i1 %cmp6, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %for.body, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false5
  %dec = add nsw i32 %add, -1
  store i32 %dec, ptr %2, align 4, !tbaa !5
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false5
  %cmp7 = icmp eq i32 %.sink, 2
  br i1 %cmp7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %if.end
  %call = call noundef i32 @_Z7runniani(i32 noundef %3) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %for.inc.gvnsink.split, label %if.else

if.else:                                          ; preds = %if.then8
  br label %for.inc.gvnsink.split

for.inc.gvnsink.split:                            ; preds = %if.then8, %if.else
  %.sink2 = phi i32 [ 3, %if.else ], [ 2, %if.then8 ]
  %sub10 = sub nsw i32 %add, %.sink2
  store i32 %sub10, ptr %2, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.thread, %for.inc.gvnsink.split, %if.end
  %inc = add nsw i32 %.sink, 1
  br label %for.cond, !llvm.loop !12

for.end.exitStub:                                 ; preds = %for.cond
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind }

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
