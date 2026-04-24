; ModuleID = '<stdin>'
source_filename = "/tmp/tmphmeehz_2.cpp"
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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end138, %entry
  %1 = phi i32 [ %dec141, %for.end138 ], [ %0, %entry ]
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %3
  %vla = alloca i32, i64 %5, align 16
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %while.body
  %6 = phi i32 [ %10, %for.inc7 ], [ %.pre, %while.body ]
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc7 ], [ 0, %while.body ]
  %7 = sext i32 %6 to i64
  %cmp = icmp slt i64 %indvars.iv19, %7
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %arrayidx93 = getelementptr inbounds nuw i32, ptr %vla, i64 %3
  %arrayidx94 = getelementptr inbounds nuw i8, ptr %arrayidx93, i64 4
  %8 = zext i32 %6 to i64
  br label %for.cond10

for.cond1.preheader:                              ; preds = %for.cond
  %9 = mul nuw nsw i64 %indvars.iv19, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %9
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %10 = phi i32 [ %6, %for.cond1.preheader ], [ %.pre75, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %11 = sext i32 %10 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %11
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre75 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc137
  %indvars.iv72 = phi i64 [ %8, %for.cond10.preheader ], [ %indvars.iv.next73, %for.inc137 ]
  %sum.0 = phi i32 [ 0, %for.cond10.preheader ], [ %add, %for.inc137 ]
  %12 = trunc nuw i64 %indvars.iv72 to i32
  %cmp11 = icmp sgt i32 %12, 1
  br i1 %cmp11, label %for.cond13, label %for.end138

for.cond13:                                       ; preds = %for.cond10, %for.inc48
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc48 ], [ 0, %for.cond10 ]
  %exitcond34.not = icmp eq i64 %indvars.iv30, %indvars.iv72
  br i1 %exitcond34.not, label %for.cond51, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %13 = mul nuw nsw i64 %indvars.iv30, %3
  %arrayidx17 = getelementptr inbounds nuw i32, ptr %vla, i64 %13
  %14 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond19

for.cond19:                                       ; preds = %for.body21, %for.body15
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.body21 ], [ 1, %for.body15 ]
  %min.0 = phi i32 [ %spec.select, %for.body21 ], [ %14, %for.body15 ]
  %exitcond.not = icmp eq i64 %indvars.iv22, %indvars.iv72
  br i1 %exitcond.not, label %for.cond34.preheader, label %for.body21

for.cond34.preheader:                             ; preds = %for.cond19
  br label %for.cond34

for.body21:                                       ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw i32, ptr %arrayidx17, i64 %indvars.iv22
  %15 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %15, i32 %min.0)
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond19, !llvm.loop !14

for.cond34:                                       ; preds = %for.cond34.preheader, %for.inc45
  %indvars.iv25 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next26, %for.inc45 ]
  %exitcond29.not = icmp eq i64 %indvars.iv25, %indvars.iv72
  br i1 %exitcond29.not, label %for.inc48, label %for.inc45

for.inc45:                                        ; preds = %for.cond34
  %arrayidx40 = getelementptr inbounds nuw i32, ptr %arrayidx17, i64 %indvars.iv25
  %16 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %16, %min.0
  store i32 %sub, ptr %arrayidx40, align 4, !tbaa !5
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond34, !llvm.loop !15

for.inc48:                                        ; preds = %for.cond34
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond13, !llvm.loop !16

for.cond51:                                       ; preds = %for.cond13, %for.inc90
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.inc90 ], [ 0, %for.cond13 ]
  %exitcond49.not = icmp eq i64 %indvars.iv45, %indvars.iv72
  br i1 %exitcond49.not, label %for.end92, label %for.body53

for.body53:                                       ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv45
  %17 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond58

for.cond58:                                       ; preds = %for.body60, %for.body53
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.body60 ], [ 1, %for.body53 ]
  %min54.0 = phi i32 [ %spec.select15, %for.body60 ], [ %17, %for.body53 ]
  %exitcond39.not = icmp eq i64 %indvars.iv35, %indvars.iv72
  br i1 %exitcond39.not, label %for.cond75.preheader, label %for.body60

for.cond75.preheader:                             ; preds = %for.cond58
  br label %for.cond75

for.body60:                                       ; preds = %for.cond58
  %18 = mul nuw nsw i64 %indvars.iv35, %3
  %gep = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %18
  %19 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !13
  %spec.select15 = call i32 @llvm.smin.i32(i32 %19, i32 %min54.0)
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond58, !llvm.loop !17

for.cond75:                                       ; preds = %for.cond75.preheader, %for.inc87
  %indvars.iv40 = phi i64 [ 0, %for.cond75.preheader ], [ %indvars.iv.next41, %for.inc87 ]
  %exitcond44.not = icmp eq i64 %indvars.iv40, %indvars.iv72
  br i1 %exitcond44.not, label %for.inc90, label %for.inc87

for.inc87:                                        ; preds = %for.cond75
  %20 = mul nuw nsw i64 %indvars.iv40, %3
  %gep17 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %20
  %21 = load i32, ptr %gep17, align 4, !tbaa !5, !invariant.load !13
  %sub82 = sub nsw i32 %21, %min54.0
  store i32 %sub82, ptr %gep17, align 4, !tbaa !5
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond75, !llvm.loop !18

for.inc90:                                        ; preds = %for.cond75
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond51, !llvm.loop !19

for.end92:                                        ; preds = %for.cond51
  %22 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc113, %for.end92
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc113 ], [ 2, %for.end92 ]
  %exitcond59.not = icmp eq i64 %indvars.iv55, %indvars.iv72
  br i1 %exitcond59.not, label %for.cond116, label %for.cond98.preheader

for.cond98.preheader:                             ; preds = %for.cond95
  %invariant.gep = getelementptr i32, ptr %vla, i64 %indvars.iv55
  br label %for.cond98

for.cond98:                                       ; preds = %for.cond98.preheader, %for.inc110
  %indvars.iv50 = phi i64 [ 0, %for.cond98.preheader ], [ %indvars.iv.next51, %for.inc110 ]
  %exitcond54.not = icmp eq i64 %indvars.iv50, %indvars.iv72
  br i1 %exitcond54.not, label %for.inc113, label %for.inc110

for.inc110:                                       ; preds = %for.cond98
  %23 = mul nuw nsw i64 %indvars.iv50, %3
  %gep77 = getelementptr i32, ptr %invariant.gep, i64 %23
  %24 = load i32, ptr %gep77, align 4, !tbaa !5, !invariant.load !13
  %arrayidx109 = getelementptr i8, ptr %gep77, i64 -4
  store i32 %24, ptr %arrayidx109, align 4, !tbaa !5
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond98, !llvm.loop !20

for.inc113:                                       ; preds = %for.cond98
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond95, !llvm.loop !21

for.cond116:                                      ; preds = %for.cond95, %for.inc134
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.inc134 ], [ 2, %for.cond95 ]
  %exitcond70.not = icmp eq i64 %indvars.iv65, %indvars.iv72
  br i1 %exitcond70.not, label %for.inc137, label %for.cond119.preheader

for.cond119.preheader:                            ; preds = %for.cond116
  %25 = mul nuw nsw i64 %indvars.iv65, %3
  %arrayidx123 = getelementptr inbounds nuw i32, ptr %vla, i64 %25
  %26 = add nsw i64 %indvars.iv65, -1
  %27 = mul nuw nsw i64 %26, %3
  %arrayidx128 = getelementptr inbounds i32, ptr %vla, i64 %27
  br label %for.cond119

for.cond119:                                      ; preds = %for.cond119.preheader, %for.inc131
  %indvars.iv60 = phi i64 [ 0, %for.cond119.preheader ], [ %indvars.iv.next61, %for.inc131 ]
  %exitcond64.not = icmp eq i64 %indvars.iv60, %indvars.iv72
  br i1 %exitcond64.not, label %for.inc134, label %for.inc131

for.inc131:                                       ; preds = %for.cond119
  %arrayidx125 = getelementptr inbounds nuw i32, ptr %arrayidx123, i64 %indvars.iv60
  %28 = load i32, ptr %arrayidx125, align 4, !tbaa !5, !invariant.load !13
  %arrayidx130 = getelementptr inbounds nuw i32, ptr %arrayidx128, i64 %indvars.iv60
  store i32 %28, ptr %arrayidx130, align 4, !tbaa !5
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond119, !llvm.loop !22

for.inc134:                                       ; preds = %for.cond119
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond116, !llvm.loop !23

for.inc137:                                       ; preds = %for.cond116
  %add = add nsw i32 %22, %sum.0
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1
  br label %for.cond10, !llvm.loop !24

for.end138:                                       ; preds = %for.cond10
  %call139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call139, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %dec141 = add nsw i32 %1, -1
  call void @llvm.stackrestore.p0(ptr %4)
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
