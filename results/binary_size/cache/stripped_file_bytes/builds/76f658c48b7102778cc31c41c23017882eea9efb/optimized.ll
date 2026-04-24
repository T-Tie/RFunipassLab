; ModuleID = '/tmp/tmpxiti772x.cpp'
source_filename = "/tmp/tmpxiti772x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@num = dso_local global [1000 x i32] zeroinitializer, align 16
@jinwei = dso_local global [1000 x i32] zeroinitializer, align 16
@weishu = dso_local global i32 1, align 4
@temp = dso_local global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z8multiplyv() #0 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @weishu, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr @num, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = mul nsw i32 %3, 2
  store i32 %mul, ptr @temp, align 4, !tbaa !5
  %4 = load i32, ptr @temp, align 4, !tbaa !5
  %rem = srem i32 %4, 10
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [1000 x i32], ptr @jinwei, i64 0, i64 %idxprom1
  %6 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %add = add nsw i32 %rem, %6
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [1000 x i32], ptr @num, i64 0, i64 %idxprom3
  store i32 %add, ptr %arrayidx4, align 4, !tbaa !5
  %8 = load i32, ptr @temp, align 4, !tbaa !5
  %div = sdiv i32 %8, 10
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %add5 = add nsw i32 %9, 1
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds [1000 x i32], ptr @jinwei, i64 0, i64 %idxprom6
  store i32 %div, ptr %arrayidx7, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [1000 x i32], ptr @jinwei, i64 0, i64 %idxprom8
  %12 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [1000 x i32], ptr @num, i64 0, i64 %idxprom10
  store i32 %12, ptr %arrayidx11, align 4, !tbaa !5
  %14 = load i32, ptr @weishu, align 4, !tbaa !5
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [1000 x i32], ptr @jinwei, i64 0, i64 %idxprom12
  %15 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %15, 1
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %16 = load i32, ptr @weishu, align 4, !tbaa !5
  %add15 = add nsw i32 %16, 1
  store i32 %add15, ptr @weishu, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  store i32 1, ptr @num, align 16, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_Z8multiplyv()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr @weishu, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  store i32 %sub, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc5, %for.end
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %4, 0
  br i1 %cmp2, label %for.body3, label %for.end6

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr @num, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  br label %for.inc5

for.inc5:                                         ; preds = %for.body3
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !13

for.end6:                                         ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!13 = distinct !{!13, !10, !11}
