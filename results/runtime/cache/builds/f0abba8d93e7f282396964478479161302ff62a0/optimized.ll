; ModuleID = '<stdin>'
source_filename = "/tmp/tmplz4eld01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [25 x i32] zeroinitializer, align 16
@num = dso_local global i32 0, align 4
@b = dso_local local_unnamed_addr global [25 x i32] zeroinitializer, align 16
@i = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@k = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @num)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr @i, align 4, !tbaa !5
  %0 = load i32, ptr @num, align 4, !tbaa !5
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %storemerge to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom
  %call1 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %1 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom2 = sext i32 %1 to i64
  %arrayidx3 = getelementptr inbounds [25 x i32], ptr @b, i64 0, i64 %idxprom2
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr @b, align 16, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc29, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc29 ], [ 1, %for.end ]
  %max.0 = phi i32 [ %max.1, %for.inc29 ], [ 0, %for.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end31, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds nuw [25 x i32], ptr @a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds nuw [25 x i32], ptr @b, i64 0, i64 %indvars.iv
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7.preheader, %for.inc27
  %indvars.iv3 = phi i64 [ %indvars.iv, %for.cond7.preheader ], [ %indvars.iv.next4, %for.inc27 ]
  %max.1 = phi i32 [ %max.0, %for.cond7.preheader ], [ %max.2, %for.inc27 ]
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, -1
  %cmp8 = icmp sgt i64 %indvars.iv3, 0
  br i1 %cmp8, label %for.body9, label %for.inc29

for.body9:                                        ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %indvars.iv.next4
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp14.not = icmp slt i32 %3, %2
  br i1 %cmp14.not, label %for.inc27, label %if.then

if.then:                                          ; preds = %for.body9
  %arrayidx16 = getelementptr inbounds [25 x i32], ptr @b, i64 0, i64 %indvars.iv.next4
  %4 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %add = add nsw i32 %4, 1
  store i32 %add, ptr @k, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %cmp19.not = icmp slt i32 %4, %5
  br i1 %cmp19.not, label %for.inc27, label %if.then20

if.then20:                                        ; preds = %if.then
  store i32 %add, ptr %arrayidx18, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smax.i32(i32 %add, i32 %max.1)
  br label %for.inc27

for.inc27:                                        ; preds = %if.then20, %for.body9, %if.then
  %max.2 = phi i32 [ %max.1, %if.then ], [ %max.1, %for.body9 ], [ %spec.select, %if.then20 ]
  br label %for.cond7, !llvm.loop !12

for.inc29:                                        ; preds = %for.cond7
  store i32 -1, ptr @j, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !13

for.end31:                                        ; preds = %for.cond4
  store i32 %smax, ptr @i, align 4, !tbaa !5
  %call32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %call33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call32, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
