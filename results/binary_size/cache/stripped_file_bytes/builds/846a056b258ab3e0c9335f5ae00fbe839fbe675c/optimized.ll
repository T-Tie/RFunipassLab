; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvdqa8qin.cpp"
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
  %N = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %result = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %result) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(400) %a, i8 noundef 0, i64 noundef 400, i1 noundef false) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  store i32 1, ptr %a, align 16, !tbaa !5
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %1 = add nuw i32 %smax, 1
  br label %for.cond

for.cond:                                         ; preds = %for.end35, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc37, %for.end35 ]
  %exitcond37 = icmp eq i32 %i.0, %1
  br i1 %exitcond37, label %while.cond, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 100
  br i1 %exitcond.not, label %for.cond8, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %mul = shl nsw i32 %2, 1
  %arrayidx7 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv
  store i32 %mul, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.cond8:                                        ; preds = %for.cond2, %if.end
  %indvars.iv28 = phi i64 [ %indvars.iv.next29.pre-phi, %if.end ], [ 0, %for.cond2 ]
  %exitcond32.not = icmp eq i64 %indvars.iv28, 100
  br i1 %exitcond32.not, label %for.cond26, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %arrayidx12 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv28
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !5, !invariant.load !9
  %cmp13 = icmp sgt i32 %3, 9
  br i1 %cmp13, label %if.then, label %for.body10.if.end_crit_edge

for.body10.if.end_crit_edge:                      ; preds = %for.body10
  %.pre = add nuw nsw i64 %indvars.iv28, 1
  br label %if.end

if.then:                                          ; preds = %for.body10
  %div25 = udiv i32 %3, 10
  %4 = add nuw nsw i64 %indvars.iv28, 1
  %arrayidx17 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !9
  %add18 = add nsw i32 %5, %div25
  store i32 %add18, ptr %arrayidx17, align 4, !tbaa !5
  %rem26 = urem i32 %3, 10
  store i32 %rem26, ptr %arrayidx12, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.body10.if.end_crit_edge, %if.then
  %indvars.iv.next29.pre-phi = phi i64 [ %.pre, %for.body10.if.end_crit_edge ], [ %4, %if.then ]
  br label %for.cond8, !llvm.loop !13

for.cond26:                                       ; preds = %for.cond8, %for.body28
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body28 ], [ 0, %for.cond8 ]
  %exitcond36.not = icmp eq i64 %indvars.iv33, 100
  br i1 %exitcond36.not, label %for.end35, label %for.body28

for.body28:                                       ; preds = %for.cond26
  %arrayidx30 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv33
  %6 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !9
  %arrayidx32 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv33
  store i32 %6, ptr %arrayidx32, align 4, !tbaa !5
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond26, !llvm.loop !14

for.end35:                                        ; preds = %for.cond26
  %inc37 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

while.cond:                                       ; preds = %for.cond, %while.cond
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %while.cond ], [ 99, %for.cond ]
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %indvars.iv38
  %7 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %7, 0
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, -1
  br i1 %cmp41, label %while.cond, label %for.cond42.preheader, !llvm.loop !16

for.cond42.preheader:                             ; preds = %while.cond
  %8 = trunc nsw i64 %indvars.iv38 to i32
  br label %for.cond42

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %j.4 = phi i32 [ %dec49, %for.body44 ], [ %8, %for.cond42.preheader ]
  %cmp43 = icmp sgt i32 %j.4, -1
  br i1 %cmp43, label %for.body44, label %for.end50

for.body44:                                       ; preds = %for.cond42
  %idxprom45 = zext nneg i32 %j.4 to i64
  %arrayidx46 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %idxprom45
  %9 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !9
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  %dec49 = add nsw i32 %j.4, -1
  br label %for.cond42, !llvm.loop !17

for.end50:                                        ; preds = %for.cond42
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %result) #9
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
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
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
