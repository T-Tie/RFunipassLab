; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4k9ky225.cpp"
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
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %a1 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %p = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %a1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %b1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %a2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %b2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %p) #3
  store i32 0, ptr %p, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %add = add nsw i32 %2, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %add8 = add nsw i32 %0, 1
  store i32 %add8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc28, %for.end9
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %4, %1
  br i1 %cmp11, label %for.body12, label %for.end30

for.body12:                                       ; preds = %for.cond10
  %5 = load i32, ptr %p, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %5, 0
  br i1 %cmp13, label %if.then, label %for.inc28

if.then:                                          ; preds = %for.body12
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %if.then
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %6, %1
  br i1 %cmp15, label %for.body16, label %for.inc28

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %4 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom17
  %idxprom19 = sext i32 %6 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %7 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %7, 0
  br i1 %cmp21, label %if.then22, label %for.inc24

if.then22:                                        ; preds = %for.body16
  store i32 %4, ptr %a1, align 4, !tbaa !5
  store i32 %6, ptr %b1, align 4, !tbaa !5
  %8 = load i32, ptr %p, align 4, !tbaa !5
  %add23 = add nsw i32 %8, 1
  store i32 %add23, ptr %p, align 4, !tbaa !5
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16, %if.then22
  %add25 = add nsw i32 %6, 1
  store i32 %add25, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !13

for.inc28:                                        ; preds = %for.body12, %for.cond14
  %add29 = add nsw i32 %4, 1
  store i32 %add29, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end30:                                        ; preds = %for.cond10
  store i32 0, ptr %p, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc52, %for.end30
  %9 = phi i32 [ %dec, %for.inc52 ], [ %sub, %for.end30 ]
  %cmp32 = icmp sge i32 %9, 0
  br i1 %cmp32, label %for.body33, label %for.end53

for.body33:                                       ; preds = %for.cond31
  %10 = load i32, ptr %p, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %10, 0
  br i1 %cmp34, label %if.then35, label %for.inc52

if.then35:                                        ; preds = %for.body33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc48, %if.then35
  %11 = phi i32 [ %sub49, %for.inc48 ], [ %sub, %if.then35 ]
  %cmp38 = icmp sge i32 %11, 0
  br i1 %cmp38, label %for.body39, label %for.inc52

for.body39:                                       ; preds = %for.cond37
  %idxprom40 = sext i32 %9 to i64
  %arrayidx41 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom40
  %idxprom42 = sext i32 %11 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %12 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %12, 0
  br i1 %cmp44, label %if.then45, label %for.inc48

if.then45:                                        ; preds = %for.body39
  store i32 %9, ptr %a2, align 4, !tbaa !5
  store i32 %11, ptr %b2, align 4, !tbaa !5
  %13 = load i32, ptr %p, align 4, !tbaa !5
  %add46 = add nsw i32 %13, 1
  store i32 %add46, ptr %p, align 4, !tbaa !5
  br label %for.inc48

for.inc48:                                        ; preds = %for.body39, %if.then45
  %sub49 = sub nsw i32 %11, 1
  br label %for.cond37, !llvm.loop !15

for.inc52:                                        ; preds = %for.body33, %for.cond37
  %dec = add nsw i32 %9, -1
  br label %for.cond31, !llvm.loop !16

for.end53:                                        ; preds = %for.cond31
  %14 = load i32, ptr %b2, align 4, !tbaa !5
  %15 = load i32, ptr %b1, align 4, !tbaa !5
  %sub54 = sub nsw i32 %14, %15
  %add55 = add nsw i32 %sub54, 1
  %16 = load i32, ptr %a1, align 4, !tbaa !5
  %17 = load i32, ptr %a2, align 4, !tbaa !5
  %sub56 = sub nsw i32 %16, %17
  %add57 = add nsw i32 %sub56, 1
  %mul = mul nsw i32 %add57, %add55
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %p) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %b2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %a2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %b1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %a1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
