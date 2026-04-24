; ModuleID = '/tmp/tmpsp4_q79y.cpp'
source_filename = "/tmp/tmpsp4_q79y.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [25 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [25 x i32], align 16
  %n = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 100, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #3
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [25 x i32], ptr %s, i64 0, i64 %idxprom2
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  store i32 0, ptr %max, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %idxprom7
  %7 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %idxprom9
  %9 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp11 = icmp sge i32 %7, %9
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body6
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [25 x i32], ptr %s, i64 0, i64 %idxprom12
  %11 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %12 = load i32, ptr %max, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %11, %12
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [25 x i32], ptr %s, i64 0, i64 %idxprom15
  %14 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  store i32 %14, ptr %max, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %16 = load i32, ptr %max, align 4, !tbaa !5
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [25 x i32], ptr %s, i64 0, i64 %idxprom17
  %18 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add = add nsw i32 %18, %16
  store i32 %add, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc20 = add nsw i32 %19, 1
  store i32 %inc20, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end21:                                        ; preds = %for.cond
  store i32 0, ptr %max, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc32, %for.end21
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %20, %21
  br i1 %cmp23, label %for.body24, label %for.end34

for.body24:                                       ; preds = %for.cond22
  %22 = load i32, ptr %max, align 4, !tbaa !5
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [25 x i32], ptr %s, i64 0, i64 %idxprom25
  %24 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %22, %24
  br i1 %cmp27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %for.body24
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds [25 x i32], ptr %s, i64 0, i64 %idxprom29
  %26 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  store i32 %26, ptr %max, align 4, !tbaa !5
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %for.body24
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %27, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !13

for.end34:                                        ; preds = %for.cond22
  %28 = load i32, ptr %max, align 4, !tbaa !5
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 100, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 100, ptr %s) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
