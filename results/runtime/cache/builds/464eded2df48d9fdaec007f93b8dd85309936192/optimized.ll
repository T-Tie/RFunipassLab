; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwr4qiply.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@__const.main.sum = private unnamed_addr constant <{ [10 x i32], [30 x i32] }> <{ [10 x i32] [i32 8, i32 4, i32 6, i32 3, i32 8, i32 4, i32 7, i32 4, i32 1, i32 2], [30 x i32] zeroinitializer }>, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i32, align 4
  %sum = alloca [40 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %s) #5
  call void @llvm.lifetime.start.p0(i64 noundef 160, ptr noundef %sum) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef writeonly align 16 %sum, ptr noundef readonly align 16 @__const.main.sum, i64 noundef 160, i1 noundef false) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %s, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %1, %0
  br i1 %cmp1, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %2 = load i32, ptr %s, align 4, !tbaa !5
  %mul = mul i32 %2, 2
  store i32 %mul, ptr %s, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr %s, align 4, !tbaa !5
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %3)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc33, %if.else
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 31
  %cmp4 = icmp sle i32 %4, %sub
  br i1 %cmp4, label %for.body5, label %for.end35

for.body5:                                        ; preds = %for.cond3
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.body5
  %.sink1 = phi i32 [ 0, %for.body5 ], [ %inc13, %for.inc12 ]
  %5 = phi i32 [ %inc13, %for.inc12 ], [ 0, %for.body5 ]
  store i32 %.sink1, ptr %j, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %5, 39
  br i1 %cmp7, label %for.inc12, label %for.end14

for.inc12:                                        ; preds = %for.cond6
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [40 x i32], ptr %sum, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul9 = mul nsw i32 %7, 2
  store i32 %mul9, ptr %arrayidx, align 4, !tbaa !5
  %inc13 = add nsw i32 %6, 1
  br label %for.cond6, !llvm.loop !12

for.end14:                                        ; preds = %for.cond6
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc30, %for.end14
  %.sink2 = phi i32 [ 0, %for.end14 ], [ %add, %for.inc30 ]
  %8 = phi i32 [ %add, %for.inc30 ], [ 0, %for.end14 ]
  store i32 %.sink2, ptr %j, align 4, !tbaa !5
  %cmp16 = icmp sle i32 %8, 39
  br i1 %cmp16, label %for.inc30, label %for.inc33

for.inc30:                                        ; preds = %for.cond15
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %9 to i64
  %arrayidx19 = getelementptr inbounds [40 x i32], ptr %sum, i64 0, i64 %idxprom18
  %10 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %div = sdiv i32 %10, 10
  %add = add nsw i32 %9, 1
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds [40 x i32], ptr %sum, i64 0, i64 %idxprom20
  %11 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !13
  %add22 = add nsw i32 %div, %11
  store i32 %add22, ptr %arrayidx21, align 4, !tbaa !5
  %12 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %rem = srem i32 %12, 10
  store i32 %rem, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !14

for.inc33:                                        ; preds = %for.cond15
  %inc34 = add nsw i32 %4, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !15

for.end35:                                        ; preds = %for.cond3
  store i32 39, ptr %i, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end35
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %13 to i64
  %arrayidx37 = getelementptr inbounds [40 x i32], ptr %sum, i64 0, i64 %idxprom36
  %14 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !13
  %cmp38 = icmp eq i32 %14, 0
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc45, %while.end
  %.sink = phi i32 [ %13, %while.end ], [ %dec46, %for.inc45 ]
  %15 = phi i32 [ %dec46, %for.inc45 ], [ %13, %while.end ]
  store i32 %.sink, ptr %j, align 4, !tbaa !5
  %cmp40 = icmp sge i32 %15, 0
  br i1 %cmp40, label %for.inc45, label %if.end

for.inc45:                                        ; preds = %for.cond39
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom42 = sext i32 %16 to i64
  %arrayidx43 = getelementptr inbounds [40 x i32], ptr %sum, i64 0, i64 %idxprom42
  %17 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !13
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %17)
  %dec46 = add nsw i32 %16, -1
  br label %for.cond39, !llvm.loop !17

if.end:                                           ; preds = %for.cond39, %for.end
  call void @llvm.lifetime.end.p0(i64 noundef 160, ptr noundef %sum) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %s) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8) %this, i32 noundef %__n) #4 align 2 {
entry:
  %conv = zext i32 %__n to i64
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %this, i64 noundef %conv)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
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
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
