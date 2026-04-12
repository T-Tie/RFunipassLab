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
define dso_local noundef i32 @main() local_unnamed_addr #0 {
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
  call void @llvm.lifetime.start.p0(i64 noundef 160, ptr noundef align 16 %sum) #5
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
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %s, align 4, !tbaa !5
  %mul = mul i32 %2, 2
  store i32 %mul, ptr %s, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr %s, align 4, !tbaa !5
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
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
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.body5
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %5, 39
  br i1 %cmp7, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond6
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [40 x i32], ptr %sum, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul9 = mul nsw i32 %6, 2
  store i32 %mul9, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %inc13 = add nsw i32 %5, 1
  store i32 %inc13, ptr %j, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !12

for.end14:                                        ; preds = %for.cond6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc30, %for.end14
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %cmp16 = icmp sle i32 %7, 39
  br i1 %cmp16, label %for.body17, label %for.end32

for.body17:                                       ; preds = %for.cond15
  %idxprom18 = sext i32 %7 to i64
  %arrayidx19 = getelementptr inbounds [40 x i32], ptr %sum, i64 0, i64 %idxprom18
  %8 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %div = sdiv i32 %8, 10
  %add = add nsw i32 %7, 1
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds [40 x i32], ptr %sum, i64 0, i64 %idxprom20
  %9 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !13
  %add22 = add nsw i32 %div, %9
  store i32 %add22, ptr %arrayidx21, align 4, !tbaa !5
  %10 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %rem = srem i32 %10, 10
  store i32 %rem, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.body17
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !14

for.end32:                                        ; preds = %for.cond15
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %4, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !15

for.end35:                                        ; preds = %for.cond3
  store i32 39, ptr %i, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end35
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %11 to i64
  %arrayidx37 = getelementptr inbounds [40 x i32], ptr %sum, i64 0, i64 %idxprom36
  %12 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !13
  %cmp38 = icmp eq i32 %12, 0
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  store i32 %11, ptr %j, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc45, %while.end
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %cmp40 = icmp sge i32 %13, 0
  br i1 %cmp40, label %for.body41, label %for.end47

for.body41:                                       ; preds = %for.cond39
  %idxprom42 = sext i32 %13 to i64
  %arrayidx43 = getelementptr inbounds [40 x i32], ptr %sum, i64 0, i64 %idxprom42
  %14 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %14)
  br label %for.inc45

for.inc45:                                        ; preds = %for.body41
  %dec46 = add nsw i32 %13, -1
  store i32 %dec46, ptr %j, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !17

for.end47:                                        ; preds = %for.cond39
  br label %if.end

if.end:                                           ; preds = %for.end47, %for.end
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

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
