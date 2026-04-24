; ModuleID = '/tmp/tmped94kt7y.cpp'
source_filename = "/tmp/tmped94kt7y.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [50 x i32], align 16
  %b = alloca [50 x i32], align 16
  %c = alloca i32, align 4
  %num = alloca i32, align 4
  %yushu = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  store i32 0, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 200, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 200, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  store i32 0, ptr %c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #3
  store i32 0, ptr %num, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %yushu) #3
  store i32 0, ptr %yushu, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 0
  store i32 1, ptr %arrayidx, align 16, !tbaa !5
  %arrayidx1 = getelementptr inbounds [50 x i32], ptr %b, i64 0, i64 0
  store i32 1, ptr %arrayidx1, align 16, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx2, align 4, !tbaa !5
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [50 x i32], ptr %b, i64 0, i64 %idxprom3
  store i32 0, ptr %arrayidx4, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc48, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body7, label %for.end50

for.body7:                                        ; preds = %for.cond5
  store i32 0, ptr %num, align 4, !tbaa !5
  store i32 0, ptr %yushu, align 4, !tbaa !5
  %6 = load i32, ptr %num, align 4, !tbaa !5
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %idxprom8
  %7 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %mul = mul nsw i32 %7, 2
  %8 = load i32, ptr %yushu, align 4, !tbaa !5
  %add = add nsw i32 %mul, %8
  store i32 %add, ptr %c, align 4, !tbaa !5
  %9 = load i32, ptr %c, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %9, 10
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body7
  %10 = load i32, ptr %c, align 4, !tbaa !5
  %11 = load i32, ptr %num, align 4, !tbaa !5
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [50 x i32], ptr %b, i64 0, i64 %idxprom11
  store i32 %10, ptr %arrayidx12, align 4, !tbaa !5
  br label %if.end17

if.else:                                          ; preds = %for.body7
  %12 = load i32, ptr %c, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %12, 10
  br i1 %cmp13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.else
  %13 = load i32, ptr %c, align 4, !tbaa !5
  %rem = srem i32 %13, 10
  %14 = load i32, ptr %num, align 4, !tbaa !5
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [50 x i32], ptr %b, i64 0, i64 %idxprom15
  store i32 %rem, ptr %arrayidx16, align 4, !tbaa !5
  %15 = load i32, ptr %c, align 4, !tbaa !5
  %div = sdiv i32 %15, 10
  store i32 %div, ptr %yushu, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  %16 = load i32, ptr %num, align 4, !tbaa !5
  %inc18 = add nsw i32 %16, 1
  store i32 %inc18, ptr %num, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end36, %if.end17
  %17 = load i32, ptr %num, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %17, 50
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, ptr %num, align 4, !tbaa !5
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %idxprom20
  %19 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %mul22 = mul nsw i32 %19, 2
  %20 = load i32, ptr %yushu, align 4, !tbaa !5
  %add23 = add nsw i32 %mul22, %20
  store i32 %add23, ptr %c, align 4, !tbaa !5
  %21 = load i32, ptr %c, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %21, 10
  br i1 %cmp24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %while.body
  %22 = load i32, ptr %c, align 4, !tbaa !5
  %23 = load i32, ptr %num, align 4, !tbaa !5
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [50 x i32], ptr %b, i64 0, i64 %idxprom26
  store i32 %22, ptr %arrayidx27, align 4, !tbaa !5
  store i32 0, ptr %yushu, align 4, !tbaa !5
  br label %if.end36

if.else28:                                        ; preds = %while.body
  %24 = load i32, ptr %c, align 4, !tbaa !5
  %cmp29 = icmp sge i32 %24, 10
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.else28
  %25 = load i32, ptr %c, align 4, !tbaa !5
  %rem31 = srem i32 %25, 10
  %26 = load i32, ptr %num, align 4, !tbaa !5
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [50 x i32], ptr %b, i64 0, i64 %idxprom32
  store i32 %rem31, ptr %arrayidx33, align 4, !tbaa !5
  %27 = load i32, ptr %c, align 4, !tbaa !5
  %div34 = sdiv i32 %27, 10
  store i32 %div34, ptr %yushu, align 4, !tbaa !5
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.else28
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then25
  %28 = load i32, ptr %num, align 4, !tbaa !5
  %inc37 = add nsw i32 %28, 1
  store i32 %inc37, ptr %num, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc45, %while.end
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %29, 50
  br i1 %cmp39, label %for.body40, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  br label %for.end47

for.body40:                                       ; preds = %for.cond38
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom41 = sext i32 %30 to i64
  %arrayidx42 = getelementptr inbounds [50 x i32], ptr %b, i64 0, i64 %idxprom41
  %31 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom43 = sext i32 %32 to i64
  %arrayidx44 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %idxprom43
  store i32 %31, ptr %arrayidx44, align 4, !tbaa !5
  br label %for.inc45

for.inc45:                                        ; preds = %for.body40
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %inc46 = add nsw i32 %33, 1
  store i32 %inc46, ptr %j, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !13

for.end47:                                        ; preds = %for.cond.cleanup
  br label %for.inc48

for.inc48:                                        ; preds = %for.end47
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %inc49 = add nsw i32 %34, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !14

for.end50:                                        ; preds = %for.cond5
  store i32 49, ptr %i, align 4, !tbaa !5
  br label %while.cond51

while.cond51:                                     ; preds = %while.body55, %for.end50
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %35, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  %idxprom52 = sext i32 %35 to i64
  %arrayidx53 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %idxprom52
  %36 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %36, 0
  br i1 %cmp54, label %while.body55, label %while.end56

while.body55:                                     ; preds = %while.cond51
  br label %while.cond51, !llvm.loop !15

while.end56:                                      ; preds = %while.cond51
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %inc57 = add nsw i32 %37, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc64, %while.end56
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %cmp59 = icmp sge i32 %38, 0
  br i1 %cmp59, label %for.body60, label %for.end66

for.body60:                                       ; preds = %for.cond58
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %39 to i64
  %arrayidx62 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %idxprom61
  %40 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %40)
  br label %for.inc64

for.inc64:                                        ; preds = %for.body60
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %dec65 = add nsw i32 %41, -1
  store i32 %dec65, ptr %i, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !16

for.end66:                                        ; preds = %for.cond58
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yushu) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 200, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 200, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
