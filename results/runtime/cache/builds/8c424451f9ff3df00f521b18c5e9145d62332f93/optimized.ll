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
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv25, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count36 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre38, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv25, i64 %indvars.iv
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre38 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc28
  %indvars.iv32 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next33, %for.inc28 ]
  %a1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %a1.1, %for.inc28 ]
  %b1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %b1.1, %for.inc28 ]
  %p.0 = phi i32 [ 0, %for.cond10.preheader ], [ %p.1, %for.inc28 ]
  %exitcond37.not = icmp eq i64 %indvars.iv32, %wide.trip.count36
  br i1 %exitcond37.not, label %for.end30, label %for.body12

for.body12:                                       ; preds = %for.cond10
  %cmp13 = icmp eq i32 %p.0, 0
  br i1 %cmp13, label %for.cond14.preheader, label %for.inc28

for.cond14.preheader:                             ; preds = %for.body12
  %4 = trunc nuw nsw i64 %indvars.iv32 to i32
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv28 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next29, %for.body16 ]
  %a1.2 = phi i32 [ %a1.0, %for.cond14.preheader ], [ %a1.3, %for.body16 ]
  %b1.2 = phi i32 [ %b1.0, %for.cond14.preheader ], [ %b1.3, %for.body16 ]
  %p.2 = phi i32 [ 0, %for.cond14.preheader ], [ %p.3, %for.body16 ]
  %exitcond.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond.not, label %for.inc28, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv32, i64 %indvars.iv28
  %5 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %5, 0
  %a1.3 = select i1 %cmp21, i32 %4, i32 %a1.2
  %6 = trunc nuw nsw i64 %indvars.iv28 to i32
  %b1.3 = select i1 %cmp21, i32 %6, i32 %b1.2
  %add23 = zext i1 %cmp21 to i32
  %p.3 = add nuw nsw i32 %add23, %p.2
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond14, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond14, %for.body12
  %a1.1 = phi i32 [ %a1.0, %for.body12 ], [ %a1.2, %for.cond14 ]
  %b1.1 = phi i32 [ %b1.0, %for.body12 ], [ %b1.2, %for.cond14 ]
  %p.1 = phi i32 [ %p.0, %for.body12 ], [ %p.2, %for.cond14 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond10, !llvm.loop !14

for.end30:                                        ; preds = %for.cond10
  %sub = add nsw i32 %0, -1
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc52, %for.end30
  %a2.0 = phi i32 [ undef, %for.end30 ], [ %a2.1, %for.inc52 ]
  %b2.0 = phi i32 [ undef, %for.end30 ], [ %b2.1, %for.inc52 ]
  %p.4 = phi i32 [ 0, %for.end30 ], [ %p.5, %for.inc52 ]
  %i.2 = phi i32 [ %sub, %for.end30 ], [ %dec, %for.inc52 ]
  %cmp32 = icmp sgt i32 %i.2, -1
  br i1 %cmp32, label %for.body33, label %for.end53

for.body33:                                       ; preds = %for.cond31
  %cmp34 = icmp eq i32 %p.4, 0
  br i1 %cmp34, label %for.cond37.preheader, label %for.inc52

for.cond37.preheader:                             ; preds = %for.body33
  %idxprom40 = zext nneg i32 %i.2 to i64
  br label %for.cond37

for.cond37:                                       ; preds = %for.cond37.preheader, %for.body39
  %a2.2 = phi i32 [ %a2.3, %for.body39 ], [ %a2.0, %for.cond37.preheader ]
  %b2.2 = phi i32 [ %b2.3, %for.body39 ], [ %b2.0, %for.cond37.preheader ]
  %p.6 = phi i32 [ %p.7, %for.body39 ], [ 0, %for.cond37.preheader ]
  %j.2 = phi i32 [ %sub49, %for.body39 ], [ %sub, %for.cond37.preheader ]
  %cmp38 = icmp sgt i32 %j.2, -1
  br i1 %cmp38, label %for.body39, label %for.inc52

for.body39:                                       ; preds = %for.cond37
  %idxprom42 = zext nneg i32 %j.2 to i64
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom40, i64 %idxprom42
  %7 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %7, 0
  %a2.3 = select i1 %cmp44, i32 %i.2, i32 %a2.2
  %b2.3 = select i1 %cmp44, i32 %j.2, i32 %b2.2
  %add46 = zext i1 %cmp44 to i32
  %p.7 = add nuw nsw i32 %add46, %p.6
  %sub49 = add nsw i32 %j.2, -1
  br label %for.cond37, !llvm.loop !15

for.inc52:                                        ; preds = %for.cond37, %for.body33
  %a2.1 = phi i32 [ %a2.0, %for.body33 ], [ %a2.2, %for.cond37 ]
  %b2.1 = phi i32 [ %b2.0, %for.body33 ], [ %b2.2, %for.cond37 ]
  %p.5 = phi i32 [ %p.4, %for.body33 ], [ %p.6, %for.cond37 ]
  %dec = add nsw i32 %i.2, -1
  br label %for.cond31, !llvm.loop !16

for.end53:                                        ; preds = %for.cond31
  %b1.0.neg = sub i32 0, %b1.0
  %reass.sub = add i32 %b1.0.neg, 1
  %add55 = add i32 %reass.sub, %b2.0
  %sub56 = add i32 %a1.0, 1
  %a2.0.neg = sub i32 0, %a2.0
  %add57 = add i32 %sub56, %a2.0.neg
  %mul = mul nsw i32 %add55, %add57
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
