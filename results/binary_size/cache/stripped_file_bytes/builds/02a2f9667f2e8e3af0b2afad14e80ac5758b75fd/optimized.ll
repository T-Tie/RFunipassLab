; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7iugsbgx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@g_pos = dso_local local_unnamed_addr global i32 38, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [40 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 160, ptr noundef nonnull %num) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %num, i8 noundef 0, i64 noundef 160, i1 noundef false)
  %arrayidx = getelementptr inbounds nuw i8, ptr %num, i64 152
  store i32 1, ptr %arrayidx, align 8, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  call void @_Z3PowPii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(160) %num, i32 noundef %0) #9
  %1 = load i32, ptr @g_pos, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 39)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %2, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [40 x i32], ptr %num, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx1, align 4, !tbaa !5, !invariant.load !9
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 160, ptr noundef nonnull %num) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z3PowPii(ptr nofree noundef captures(none) %num, i32 noundef %n) local_unnamed_addr #4 {
entry:
  %invariant.gep = getelementptr i8, ptr %num, i64 -4
  br label %tailrecurse

tailrecurse:                                      ; preds = %while.end, %entry
  %n.tr = phi i32 [ %n, %entry ], [ %sub12, %while.end ]
  %cmp = icmp eq i32 %n.tr, 0
  br i1 %cmp, label %cleanup.cont, label %for.cond

for.cond:                                         ; preds = %tailrecurse, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 39, %tailrecurse ]
  %0 = load i32, ptr @g_pos, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp1.not = icmp slt i64 %indvars.iv, %1
  br i1 %cmp1.not, label %while.cond, label %for.inc

for.inc:                                          ; preds = %for.cond
  %gep = getelementptr i32, ptr %invariant.gep, i64 %indvars.iv
  %2 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !9
  %mul = shl nsw i32 %2, 1
  %arrayidx3 = getelementptr inbounds i32, ptr %num, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx3, align 4, !tbaa !5, !invariant.load !9
  %div = sdiv i32 %3, 10
  %add = add nsw i32 %div, %mul
  store i32 %add, ptr %gep, align 4, !tbaa !5
  %rem = srem i32 %3, 10
  store i32 %rem, ptr %arrayidx3, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br label %for.cond, !llvm.loop !13

while.cond:                                       ; preds = %for.cond, %while.cond
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %while.cond ], [ 0, %for.cond ]
  %4 = trunc nuw nsw i64 %indvars.iv7 to i32
  store i32 %4, ptr @g_pos, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds nuw i32, ptr %num, i64 %indvars.iv7
  %5 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %cmp11 = icmp eq i32 %5, 0
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br i1 %cmp11, label %while.cond, label %while.end, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %sub12 = add nsw i32 %n.tr, -1
  br label %tailrecurse

cleanup.cont:                                     ; preds = %tailrecurse
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
