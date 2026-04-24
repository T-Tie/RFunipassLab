; ModuleID = '<stdin>'
source_filename = "/tmp/tmp81brhh8h.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20001 x i32], align 16
  %used = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 80004, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %used) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %used, i8 0, i64 800, i1 false), !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp212 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp212)
  br label %for.body3

for.body3:                                        ; preds = %entry, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %entry ]
  %arrayidx5 = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp2, label %for.body3, label %for.end9.loopexit, !llvm.loop !9

for.end9.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr %a, align 16, !tbaa !5
  %call11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.pre)
  %3 = load i32, ptr %a, align 16, !tbaa !5
  %idxprom13 = sext i32 %3 to i64
  %arrayidx14 = getelementptr inbounds [200 x i32], ptr %used, i64 0, i64 %idxprom13
  store i32 1, ptr %arrayidx14, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp1614 = icmp sgt i32 %4, 1
  br i1 %cmp1614, label %for.body17, label %for.end32

for.body17:                                       ; preds = %for.end9.loopexit, %for.inc30
  %5 = phi i32 [ %10, %for.inc30 ], [ %4, %for.end9.loopexit ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc30 ], [ 1, %for.end9.loopexit ]
  %arrayidx19 = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %idxprom20 = sext i32 %6 to i64
  %arrayidx21 = getelementptr inbounds [200 x i32], ptr %used, i64 0, i64 %idxprom20
  %7 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %for.inc30

if.end:                                           ; preds = %for.body17
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %8 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %9 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %idxprom28 = sext i32 %9 to i64
  %arrayidx29 = getelementptr inbounds [200 x i32], ptr %used, i64 0, i64 %idxprom28
  store i32 1, ptr %arrayidx29, align 4, !tbaa !5
  %.pre21 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.body17, %if.end
  %10 = phi i32 [ %5, %for.body17 ], [ %.pre21, %if.end ]
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %11 = sext i32 %10 to i64
  %cmp16 = icmp slt i64 %indvars.iv.next19, %11
  br i1 %cmp16, label %for.body17, label %for.end32, !llvm.loop !12

for.end32:                                        ; preds = %for.inc30, %for.end9.loopexit
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %used) #5
  call void @llvm.lifetime.end.p0(i64 80004, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

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
