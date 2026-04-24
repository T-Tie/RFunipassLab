; ModuleID = '/tmp/tmpm_uffawr.cpp'
source_filename = "/tmp/tmpm_uffawr.cpp"
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
  %k = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  %3 = load i32, ptr %k, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  store i64 %4, ptr %__vla_expr1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom3
  store i32 1, ptr %arrayidx4, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc31, %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body7, label %for.end33

for.body7:                                        ; preds = %for.cond5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc28, %for.body7
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body10, label %for.end30

for.body10:                                       ; preds = %for.cond8
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %vla, i64 %idxprom11
  %15 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %vla, i64 %idxprom13
  %17 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %15, %17
  br i1 %cmp15, label %if.then, label %if.end27

if.then:                                          ; preds = %for.body10
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom16
  %19 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom18
  %21 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %add = add nsw i32 %21, 1
  %cmp20 = icmp slt i32 %19, %add
  br i1 %cmp20, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.then
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom22
  %23 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %add24 = add nsw i32 %23, 1
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom25
  store i32 %add24, ptr %arrayidx26, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then
  br label %if.end27

if.end27:                                         ; preds = %if.end, %for.body10
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %inc29 = add nsw i32 %25, 1
  store i32 %inc29, ptr %j, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !12

for.end30:                                        ; preds = %for.cond8
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !13

for.end33:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #4
  store i32 1, ptr %max, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc44, %for.end33
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %28 = load i32, ptr %k, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %27, %28
  br i1 %cmp35, label %for.body36, label %for.end46

for.body36:                                       ; preds = %for.cond34
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %29 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom37
  %30 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %31 = load i32, ptr %max, align 4, !tbaa !5
  %cmp39 = icmp sgt i32 %30, %31
  br i1 %cmp39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %for.body36
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %32 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom41
  %33 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  store i32 %33, ptr %max, align 4, !tbaa !5
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %for.body36
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %inc45 = add nsw i32 %34, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !14

for.end46:                                        ; preds = %for.cond34
  %35 = load i32, ptr %max, align 4, !tbaa !5
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %35)
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  %36 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %36)
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
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
!14 = distinct !{!14, !10, !11}
