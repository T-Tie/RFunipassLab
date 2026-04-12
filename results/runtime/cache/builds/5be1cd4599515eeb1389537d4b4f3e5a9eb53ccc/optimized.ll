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
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.inc7 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %add, %for.inc ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %add = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %add8 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc28, %for.end9
  %b1.0 = phi i32 [ undef, %for.end9 ], [ %b1.1, %for.inc28 ]
  %a1.0 = phi i32 [ undef, %for.end9 ], [ %a1.1, %for.inc28 ]
  %i.1 = phi i32 [ 0, %for.end9 ], [ %add29, %for.inc28 ]
  %p.0 = phi i32 [ 0, %for.end9 ], [ %p.1, %for.inc28 ]
  %cmp11 = icmp slt i32 %i.1, %0
  br i1 %cmp11, label %for.body12, label %for.end30

for.body12:                                       ; preds = %for.cond10
  %cmp13 = icmp eq i32 %p.0, 0
  br i1 %cmp13, label %if.then, label %if.end27

if.then:                                          ; preds = %for.body12
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %if.then
  %b1.2 = phi i32 [ %b1.0, %if.then ], [ %b1.3, %for.inc24 ]
  %a1.2 = phi i32 [ %a1.0, %if.then ], [ %a1.3, %for.inc24 ]
  %j.1 = phi i32 [ 0, %if.then ], [ %add25, %for.inc24 ]
  %p.2 = phi i32 [ 0, %if.then ], [ %p.3, %for.inc24 ]
  %cmp15 = icmp slt i32 %j.1, %0
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %i.1 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom17
  %idxprom19 = sext i32 %j.1 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %2, 0
  br i1 %cmp21, label %if.then22, label %if.end

if.then22:                                        ; preds = %for.body16
  %add23 = add nsw i32 %p.2, 1
  br label %if.end

if.end:                                           ; preds = %if.then22, %for.body16
  %b1.3 = phi i32 [ %j.1, %if.then22 ], [ %b1.2, %for.body16 ]
  %a1.3 = phi i32 [ %i.1, %if.then22 ], [ %a1.2, %for.body16 ]
  %p.3 = phi i32 [ %add23, %if.then22 ], [ %p.2, %for.body16 ]
  br label %for.inc24

for.inc24:                                        ; preds = %if.end
  %add25 = add nsw i32 %j.1, 1
  br label %for.cond14, !llvm.loop !13

for.end26:                                        ; preds = %for.cond14
  br label %if.end27

if.end27:                                         ; preds = %for.end26, %for.body12
  %b1.1 = phi i32 [ %b1.2, %for.end26 ], [ %b1.0, %for.body12 ]
  %a1.1 = phi i32 [ %a1.2, %for.end26 ], [ %a1.0, %for.body12 ]
  %p.1 = phi i32 [ %p.2, %for.end26 ], [ %p.0, %for.body12 ]
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %add29 = add nsw i32 %i.1, 1
  br label %for.cond10, !llvm.loop !14

for.end30:                                        ; preds = %for.cond10
  %sub = sub nsw i32 %0, 1
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc52, %for.end30
  %a2.0 = phi i32 [ undef, %for.end30 ], [ %a2.1, %for.inc52 ]
  %i.2 = phi i32 [ %sub, %for.end30 ], [ %dec, %for.inc52 ]
  %b2.0 = phi i32 [ undef, %for.end30 ], [ %b2.1, %for.inc52 ]
  %p.4 = phi i32 [ 0, %for.end30 ], [ %p.5, %for.inc52 ]
  %cmp32 = icmp sge i32 %i.2, 0
  br i1 %cmp32, label %for.body33, label %for.end53

for.body33:                                       ; preds = %for.cond31
  %cmp34 = icmp eq i32 %p.4, 0
  br i1 %cmp34, label %if.then35, label %if.end51

if.then35:                                        ; preds = %for.body33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc48, %if.then35
  %a2.2 = phi i32 [ %a2.0, %if.then35 ], [ %a2.3, %for.inc48 ]
  %j.2 = phi i32 [ %sub, %if.then35 ], [ %sub49, %for.inc48 ]
  %b2.2 = phi i32 [ %b2.0, %if.then35 ], [ %b2.3, %for.inc48 ]
  %p.6 = phi i32 [ 0, %if.then35 ], [ %p.7, %for.inc48 ]
  %cmp38 = icmp sge i32 %j.2, 0
  br i1 %cmp38, label %for.body39, label %for.end50

for.body39:                                       ; preds = %for.cond37
  %idxprom40 = sext i32 %i.2 to i64
  %arrayidx41 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom40
  %idxprom42 = sext i32 %j.2 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %3 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %3, 0
  br i1 %cmp44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %for.body39
  %add46 = add nsw i32 %p.6, 1
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %for.body39
  %a2.3 = phi i32 [ %i.2, %if.then45 ], [ %a2.2, %for.body39 ]
  %b2.3 = phi i32 [ %j.2, %if.then45 ], [ %b2.2, %for.body39 ]
  %p.7 = phi i32 [ %add46, %if.then45 ], [ %p.6, %for.body39 ]
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %sub49 = sub nsw i32 %j.2, 1
  br label %for.cond37, !llvm.loop !15

for.end50:                                        ; preds = %for.cond37
  br label %if.end51

if.end51:                                         ; preds = %for.end50, %for.body33
  %a2.1 = phi i32 [ %a2.2, %for.end50 ], [ %a2.0, %for.body33 ]
  %b2.1 = phi i32 [ %b2.2, %for.end50 ], [ %b2.0, %for.body33 ]
  %p.5 = phi i32 [ %p.6, %for.end50 ], [ %p.4, %for.body33 ]
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %dec = add nsw i32 %i.2, -1
  br label %for.cond31, !llvm.loop !16

for.end53:                                        ; preds = %for.cond31
  %sub54 = sub nsw i32 %b2.0, %b1.0
  %add55 = add nsw i32 %sub54, 1
  %sub56 = sub nsw i32 %a1.0, %a2.0
  %add57 = add nsw i32 %sub56, 1
  %mul = mul nsw i32 %add57, %add55
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
