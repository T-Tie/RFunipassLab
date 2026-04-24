; ModuleID = '<stdin>'
source_filename = "/tmp/tmp97wllapo.cpp"
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
  %n = alloca i32, align 4
  %num = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %num) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %smax11 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %1 = add nuw i32 %smax11, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc34, %for.inc33 ]
  %len.0 = phi i32 [ undef, %entry ], [ %len.1, %for.inc33 ]
  %exitcond12 = icmp eq i32 %i.0, %1
  br i1 %exitcond12, label %for.cond36.preheader, label %for.cond1

for.cond36.preheader:                             ; preds = %for.cond
  br label %for.cond36

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %dec, %for.inc ], [ 999, %for.cond ]
  %cmp2 = icmp sgt i32 %2, -1
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = zext nneg i32 %2 to i64
  %arrayidx4 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %cmp5.not = icmp eq i32 %3, 0
  br i1 %cmp5.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body3
  %dec = add nsw i32 %2, -1
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.body3, %for.cond1
  %len.1 = phi i32 [ %len.0, %for.cond1 ], [ %2, %for.body3 ]
  %smax = call i32 @llvm.smax.i32(i32 %len.1, i32 -1)
  %4 = add i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc11, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc11 ], [ 0, %for.end ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond13, label %for.inc11

for.inc11:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %mul = shl nsw i32 %5, 1
  store i32 %mul, ptr %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !13

for.cond13:                                       ; preds = %for.cond6, %for.inc30
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.inc30 ], [ 0, %for.cond6 ]
  %exitcond10 = icmp eq i64 %indvars.iv6, %wide.trip.count
  br i1 %exitcond10, label %for.inc33, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx17 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %indvars.iv6
  %6 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !9
  %cmp18 = icmp sgt i32 %6, 9
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br i1 %cmp18, label %if.then19, label %for.inc30

if.then19:                                        ; preds = %for.body15
  %div3 = udiv i32 %6, 10
  %arrayidx23 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %indvars.iv.next7
  %7 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !9
  %add24 = add nsw i32 %7, %div3
  store i32 %add24, ptr %arrayidx23, align 4, !tbaa !5
  %rem4 = urem i32 %6, 10
  store i32 %rem4, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.body15, %if.then19
  br label %for.cond13, !llvm.loop !14

for.inc33:                                        ; preds = %for.cond13
  %inc34 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc44
  %8 = phi i32 [ %dec45, %for.inc44 ], [ 999, %for.cond36.preheader ]
  %cmp37 = icmp sgt i32 %8, -1
  br i1 %cmp37, label %for.body38, label %for.end46

for.body38:                                       ; preds = %for.cond36
  %idxprom39 = zext nneg i32 %8 to i64
  %arrayidx40 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %idxprom39
  %9 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !9
  %cmp41.not = icmp eq i32 %9, 0
  br i1 %cmp41.not, label %for.inc44, label %for.end46

for.inc44:                                        ; preds = %for.body38
  %dec45 = add nsw i32 %8, -1
  br label %for.cond36, !llvm.loop !16

for.end46:                                        ; preds = %for.body38, %for.cond36
  %len.2 = phi i32 [ %len.0, %for.cond36 ], [ %8, %for.body38 ]
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc53, %for.end46
  %10 = phi i32 [ %dec54, %for.inc53 ], [ %len.2, %for.end46 ]
  %cmp48 = icmp sgt i32 %10, -1
  br i1 %cmp48, label %for.inc53, label %for.end55

for.inc53:                                        ; preds = %for.cond47
  %idxprom50 = zext nneg i32 %10 to i64
  %arrayidx51 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %idxprom50
  %11 = load i32, ptr %arrayidx51, align 4, !tbaa !5, !invariant.load !9
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  %dec54 = add nsw i32 %10, -1
  br label %for.cond47, !llvm.loop !17

for.end55:                                        ; preds = %for.cond47
  %call56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %num) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
