; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6lsgghtg.cpp"
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
  %a = alloca [1000 x i32], align 16
  %N = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 999
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %a, i64 3996
  store i32 1, ptr %arrayidx1, align 4, !tbaa !5
  %.pr = load i32, ptr %N, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc14, %for.end
  %0 = phi i32 [ %dec15, %for.inc14 ], [ %.pr, %for.end ]
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %for.cond5, label %for.cond17

for.cond5:                                        ; preds = %for.cond2, %for.body7
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.body7 ], [ 999, %for.cond2 ]
  %num.0 = phi i32 [ %add, %for.body7 ], [ 0, %for.cond2 ]
  %cmp6.not = icmp eq i64 %indvars.iv15, 0
  br i1 %cmp6.not, label %for.inc14, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv15
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %mul = shl nsw i32 %1, 1
  %div = sdiv i32 %num.0, 10
  %add = add nsw i32 %mul, %div
  %rem = srem i32 %add, 10
  store i32 %rem, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next16 = add nsw i64 %indvars.iv15, -1
  br label %for.cond5, !llvm.loop !12

for.inc14:                                        ; preds = %for.cond5
  %dec15 = add nsw i32 %0, -1
  store i32 %dec15, ptr %N, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.cond17:                                       ; preds = %for.cond2, %for.cond17
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.cond17 ], [ 0, %for.cond2 ]
  %arrayidx19 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %2, 0
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br i1 %cmp20, label %for.cond17, label %for.cond25, !llvm.loop !14

for.cond25:                                       ; preds = %for.cond17, %for.body27
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body27 ], [ %indvars.iv18, %for.cond17 ]
  %cmp26 = icmp samesign ult i64 %indvars.iv21, 1000
  br i1 %cmp26, label %for.body27, label %for.end33

for.body27:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv21
  %3 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond25, !llvm.loop !15

for.end33:                                        ; preds = %for.cond25
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i13 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i13)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %a) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
