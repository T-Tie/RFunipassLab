; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl5d7yq8e.cpp"
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
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %k) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %b) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %c) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %m)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %1 = load i32, ptr %m, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %2
  br i1 %cmp3, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv14, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %k)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc27 ], [ 0, %for.end10 ]
  %3 = load i32, ptr %m, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp14 = icmp slt i64 %indvars.iv20, %4
  br i1 %cmp14, label %for.cond16, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond13
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = load i32, ptr %k, align 4
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 0)
  %smax30 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %smax36 = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %wide.trip.count37 = zext nneg i32 %smax36 to i64
  %wide.trip.count31 = zext nneg i32 %smax30 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.inc24
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc24 ], [ 0, %for.cond13 ]
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp17 = icmp slt i64 %indvars.iv17, %8
  br i1 %cmp17, label %for.inc24, label %for.inc27

for.inc24:                                        ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv20, i64 %indvars.iv17
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond16, !llvm.loop !12

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond13, !llvm.loop !13

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc61
  %indvars.iv33 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next34, %for.inc61 ]
  %exitcond38.not = icmp eq i64 %indvars.iv33, %wide.trip.count37
  br i1 %exitcond38.not, label %for.cond64, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.inc58
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc58 ], [ 0, %for.cond30 ]
  %exitcond32.not = icmp eq i64 %indvars.iv27, %wide.trip.count31
  br i1 %exitcond32.not, label %for.inc61, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33
  %arrayidx42 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv33, i64 %indvars.iv27
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc55
  %indvars.iv23 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next24, %for.inc55 ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond.not, label %for.inc58, label %for.inc55

for.inc55:                                        ; preds = %for.cond36
  %9 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !14
  %arrayidx46 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 %indvars.iv23
  %10 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !14
  %arrayidx50 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv23, i64 %indvars.iv27
  %11 = load i32, ptr %arrayidx50, align 4, !tbaa !5, !invariant.load !14
  %mul = mul nsw i32 %11, %10
  %add = add nsw i32 %mul, %9
  store i32 %add, ptr %arrayidx42, align 4, !tbaa !5
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond36, !llvm.loop !15

for.inc58:                                        ; preds = %for.cond36
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond33, !llvm.loop !16

for.inc61:                                        ; preds = %for.cond33
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond30, !llvm.loop !17

for.cond64:                                       ; preds = %for.cond30, %for.end78
  %12 = phi i32 [ %.pre, %for.end78 ], [ %5, %for.cond30 ]
  %cmp65 = icmp sgt i32 %12, 0
  br i1 %cmp65, label %for.cond67, label %for.end88

for.cond67:                                       ; preds = %for.cond64, %for.body69
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body69 ], [ 0, %for.cond64 ]
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %cmp68 = icmp sgt i32 %13, 1
  br i1 %cmp68, label %for.body69, label %for.end78

for.body69:                                       ; preds = %for.cond67
  %arrayidx73 = getelementptr inbounds nuw [100 x i32], ptr %c, i64 0, i64 %indvars.iv39
  %14 = load i32, ptr %arrayidx73, align 4, !tbaa !5, !invariant.load !14
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %14)
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call74, ptr noundef nonnull @.str)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond67

for.end78:                                        ; preds = %for.cond67
  %sub = add nsw i32 %13, -1
  %idxprom82 = sext i32 %sub to i64
  %arrayidx83 = getelementptr inbounds [100 x i32], ptr %c, i64 0, i64 %idxprom82
  %15 = load i32, ptr %arrayidx83, align 4, !tbaa !5, !invariant.load !14
  %call84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %15)
  %call85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call84, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond64

for.end88:                                        ; preds = %for.cond64
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %c) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %k) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
