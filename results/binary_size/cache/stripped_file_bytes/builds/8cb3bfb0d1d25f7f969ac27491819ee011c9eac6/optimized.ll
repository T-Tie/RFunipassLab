; ModuleID = '<stdin>'
source_filename = "/tmp/tmpked8pq11.cpp"
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
  %a = alloca [20 x i32], align 16
  br label %while.body

while.body:                                       ; preds = %cleanup.cont, %entry
  call void @llvm.lifetime.start.p0(i64 noundef 80, ptr noundef nonnull align 16 %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(80) %a, i8 noundef 0, i64 noundef 80, i1 noundef false) #7
  br label %do.cond

do.cond:                                          ; preds = %while.body, %do.cond
  %indvars.iv = phi i64 [ 0, %while.body ], [ %indvars.iv.next, %do.cond ]
  %arrayidx = getelementptr inbounds nuw [20 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.cond, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  %cmp6 = icmp eq i32 %0, -1
  br i1 %cmp6, label %while.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  %wide.trip.count26 = and i64 %indvars.iv, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc23
  %indvars.iv22 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next23, %for.inc23 ]
  %sum.0 = phi i32 [ 0, %for.cond.preheader ], [ %sum.1, %for.inc23 ]
  %exitcond27.not = icmp eq i64 %indvars.iv22, %wide.trip.count26
  br i1 %exitcond27.not, label %cleanup.cont, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond
  %arrayidx15 = getelementptr inbounds nuw [20 x i32], ptr %a, i64 0, i64 %indvars.iv22
  %1 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !12
  %mul = shl nsw i32 %1, 1
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body13
  %indvars.iv17 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next18, %for.body13 ]
  %sum.1 = phi i32 [ %sum.0, %for.cond9.preheader ], [ %spec.select, %for.body13 ]
  %exitcond.not = icmp eq i64 %indvars.iv17, %wide.trip.count26
  br i1 %exitcond.not, label %for.inc23, label %for.body13

for.body13:                                       ; preds = %for.cond9
  %arrayidx17 = getelementptr inbounds nuw [20 x i32], ptr %a, i64 0, i64 %indvars.iv17
  %2 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !12
  %cmp18 = icmp eq i32 %mul, %2
  %inc20 = zext i1 %cmp18 to i32
  %spec.select = add nsw i32 %sum.1, %inc20
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond9, !llvm.loop !13

for.inc23:                                        ; preds = %for.cond9
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond, !llvm.loop !14

cleanup.cont:                                     ; preds = %for.cond
  %call26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call26, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 80, ptr noundef nonnull %a) #8
  br label %while.body, !llvm.loop !15

while.end:                                        ; preds = %do.end
  call void @llvm.lifetime.end.p0(i64 noundef 80, ptr noundef nonnull %a) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
attributes #8 = { nounwind }

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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
