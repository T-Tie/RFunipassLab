; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw4ndku7j.cpp"
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
  %a = alloca [110 x [110 x i32]], align 16
  %x = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 48400, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x)
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %a, i64 888
  br label %for.cond

for.cond:                                         ; preds = %for.end150, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc154, %for.end150 ]
  %0 = load i32, ptr %x, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end155, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %7, %for.end ], [ %0, %for.cond ]
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.end ], [ 1, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv39, %2
  br i1 %cmp2.not, label %for.cond14.preheader, label %for.cond4.preheader

for.cond14.preheader:                             ; preds = %for.cond1
  %3 = load i32, ptr %add.ptr100, align 8
  %4 = add i32 %1, 1
  %5 = zext i32 %4 to i64
  %6 = zext i32 %1 to i64
  br label %for.cond14

for.cond4.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv39
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %7 = phi i32 [ %1, %for.cond4.preheader ], [ %.pre, %for.body6 ]
  %indvars.iv = phi i64 [ 1, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %8 = sext i32 %7 to i64
  %cmp5.not = icmp sgt i64 %indvars.iv, %8
  br i1 %cmp5.not, label %for.end, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %add.ptr9 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %x, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond1, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %for.end148
  %indvars.iv96 = phi i64 [ %6, %for.cond14.preheader ], [ %indvars.iv.next97, %for.end148 ]
  %indvars.iv93 = phi i64 [ %5, %for.cond14.preheader ], [ %indvars.iv.next94, %for.end148 ]
  %sum.0 = phi i32 [ 0, %for.cond14.preheader ], [ %add, %for.end148 ]
  %9 = trunc nuw i64 %indvars.iv96 to i32
  %cmp15 = icmp sgt i32 %9, 1
  br i1 %cmp15, label %for.cond17, label %for.end150

for.cond17:                                       ; preds = %for.cond14, %for.end52
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.end52 ], [ 1, %for.cond14 ]
  %exitcond57 = icmp eq i64 %indvars.iv53, %indvars.iv93
  br i1 %exitcond57, label %for.cond56, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond17
  %add.ptr24 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv53
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv42 = phi i64 [ 1, %for.cond20.preheader ], [ %indvars.iv.next43, %for.body22 ]
  %min.0 = phi i32 [ 100000, %for.cond20.preheader ], [ %spec.select, %for.body22 ]
  %exitcond = icmp eq i64 %indvars.iv42, %indvars.iv93
  br i1 %exitcond, label %for.cond37.preheader, label %for.body22

for.cond37.preheader:                             ; preds = %for.cond20
  br label %for.cond37

for.body22:                                       ; preds = %for.cond20
  %add.ptr27 = getelementptr inbounds nuw i32, ptr %add.ptr24, i64 %indvars.iv42
  %10 = load i32, ptr %add.ptr27, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %10, i32 %min.0)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond20, !llvm.loop !14

for.cond37:                                       ; preds = %for.cond37.preheader, %for.body39
  %indvars.iv48 = phi i64 [ 1, %for.cond37.preheader ], [ %indvars.iv.next49, %for.body39 ]
  %exitcond52 = icmp eq i64 %indvars.iv48, %indvars.iv93
  br i1 %exitcond52, label %for.end52, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %add.ptr44 = getelementptr inbounds nuw i32, ptr %add.ptr24, i64 %indvars.iv48
  %11 = load i32, ptr %add.ptr44, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %11, %min.0
  store i32 %sub, ptr %add.ptr44, align 4, !tbaa !5
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond37, !llvm.loop !15

for.end52:                                        ; preds = %for.cond37
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond17, !llvm.loop !16

for.cond56:                                       ; preds = %for.cond17, %for.end94
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.end94 ], [ 1, %for.cond17 ]
  %exitcond72 = icmp eq i64 %indvars.iv68, %indvars.iv93
  br i1 %exitcond72, label %for.cond101, label %for.cond59.preheader

for.cond59.preheader:                             ; preds = %for.cond56
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv68
  br label %for.cond59

for.cond59:                                       ; preds = %for.cond59.preheader, %for.body61
  %indvars.iv58 = phi i64 [ 1, %for.cond59.preheader ], [ %indvars.iv.next59, %for.body61 ]
  %min.2 = phi i32 [ 100000, %for.cond59.preheader ], [ %spec.select33, %for.body61 ]
  %exitcond62 = icmp eq i64 %indvars.iv58, %indvars.iv93
  br i1 %exitcond62, label %for.cond78.preheader, label %for.body61

for.cond78.preheader:                             ; preds = %for.cond59
  br label %for.cond78

for.body61:                                       ; preds = %for.cond59
  %gep = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep, i64 %indvars.iv58
  %12 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !13
  %spec.select33 = call i32 @llvm.smin.i32(i32 %12, i32 %min.2)
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond59, !llvm.loop !17

for.cond78:                                       ; preds = %for.cond78.preheader, %for.body80
  %indvars.iv63 = phi i64 [ 1, %for.cond78.preheader ], [ %indvars.iv.next64, %for.body80 ]
  %exitcond67 = icmp eq i64 %indvars.iv63, %indvars.iv93
  br i1 %exitcond67, label %for.end94, label %for.body80

for.body80:                                       ; preds = %for.cond78
  %gep35 = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep, i64 %indvars.iv63
  %13 = load i32, ptr %gep35, align 4, !tbaa !5, !invariant.load !13
  %sub86 = sub nsw i32 %13, %min.2
  store i32 %sub86, ptr %gep35, align 4, !tbaa !5
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond78, !llvm.loop !18

for.end94:                                        ; preds = %for.cond78
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond56, !llvm.loop !19

for.cond101:                                      ; preds = %for.cond56, %for.end121
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.end121 ], [ 2, %for.cond56 ]
  %exitcond82.not = icmp eq i64 %indvars.iv78, %indvars.iv96
  br i1 %exitcond82.not, label %for.cond125, label %for.cond105.preheader

for.cond105.preheader:                            ; preds = %for.cond101
  %add.ptr109 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv78
  %add.ptr110 = getelementptr inbounds nuw i8, ptr %add.ptr109, i64 440
  br label %for.cond105

for.cond105:                                      ; preds = %for.cond105.preheader, %for.body107
  %indvars.iv73 = phi i64 [ 1, %for.cond105.preheader ], [ %indvars.iv.next74, %for.body107 ]
  %exitcond77 = icmp eq i64 %indvars.iv73, %indvars.iv93
  br i1 %exitcond77, label %for.end121, label %for.body107

for.body107:                                      ; preds = %for.cond105
  %add.ptr113 = getelementptr inbounds nuw i32, ptr %add.ptr110, i64 %indvars.iv73
  %14 = load i32, ptr %add.ptr113, align 4, !tbaa !5, !invariant.load !13
  %add.ptr118 = getelementptr inbounds nuw i32, ptr %add.ptr109, i64 %indvars.iv73
  store i32 %14, ptr %add.ptr118, align 4, !tbaa !5
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond105, !llvm.loop !20

for.end121:                                       ; preds = %for.cond105
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond101, !llvm.loop !21

for.cond125:                                      ; preds = %for.cond101, %for.end145
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.end145 ], [ 2, %for.cond101 ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %indvars.iv96
  br i1 %exitcond92.not, label %for.end148, label %for.cond129.preheader

for.cond129.preheader:                            ; preds = %for.cond125
  %invariant.gep36 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv88
  br label %for.cond129

for.cond129:                                      ; preds = %for.cond129.preheader, %for.body131
  %indvars.iv83 = phi i64 [ 1, %for.cond129.preheader ], [ %indvars.iv.next84, %for.body131 ]
  %exitcond87 = icmp eq i64 %indvars.iv83, %indvars.iv93
  br i1 %exitcond87, label %for.end145, label %for.body131

for.body131:                                      ; preds = %for.cond129
  %gep37 = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep36, i64 %indvars.iv83
  %add.ptr137 = getelementptr inbounds nuw i8, ptr %gep37, i64 4
  %15 = load i32, ptr %add.ptr137, align 4, !tbaa !5, !invariant.load !13
  store i32 %15, ptr %gep37, align 4, !tbaa !5
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond129, !llvm.loop !22

for.end145:                                       ; preds = %for.cond129
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond125, !llvm.loop !23

for.end148:                                       ; preds = %for.cond125
  %add = add nsw i32 %3, %sum.0
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, -1
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, -1
  br label %for.cond14, !llvm.loop !24

for.end150:                                       ; preds = %for.cond14
  %call151 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call152 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call151, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc154 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !25

for.end155:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x) #7
  call void @llvm.lifetime.end.p0(i64 noundef 48400, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
