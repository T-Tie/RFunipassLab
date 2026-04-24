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
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x)
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %a, i64 888
  br label %for.cond

for.cond:                                         ; preds = %for.end150, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc154, %for.end150 ]
  %0 = load i32, ptr %x, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end155, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc11
  %1 = phi i32 [ %6, %for.inc11 ], [ %0, %for.cond ]
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.inc11 ], [ 1, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv87, %2
  br i1 %cmp2.not, label %for.cond14.preheader, label %for.cond4.preheader

for.cond14.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, 1
  %4 = zext i32 %3 to i64
  %5 = zext i32 %1 to i64
  br label %for.cond14

for.cond4.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv87
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %6 = phi i32 [ %1, %for.cond4.preheader ], [ %.pre, %for.body6 ]
  %indvars.iv = phi i64 [ 1, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %7 = sext i32 %6 to i64
  %cmp5.not = icmp sgt i64 %indvars.iv, %7
  br i1 %cmp5.not, label %for.inc11, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %add.ptr9 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %x, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond4
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond1, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc149
  %indvars.iv144 = phi i64 [ %5, %for.cond14.preheader ], [ %indvars.iv.next145, %for.inc149 ]
  %indvars.iv141 = phi i64 [ %4, %for.cond14.preheader ], [ %indvars.iv.next142, %for.inc149 ]
  %sum.0 = phi i32 [ 0, %for.cond14.preheader ], [ %add, %for.inc149 ]
  %8 = trunc nuw i64 %indvars.iv144 to i32
  %cmp15 = icmp sgt i32 %8, 1
  br i1 %cmp15, label %for.cond17, label %for.end150

for.cond17:                                       ; preds = %for.cond14, %for.inc53
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.inc53 ], [ 1, %for.cond14 ]
  %exitcond105 = icmp eq i64 %indvars.iv101, %indvars.iv141
  br i1 %exitcond105, label %for.cond56, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond17
  %add.ptr24 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv101
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv90 = phi i64 [ 1, %for.cond20.preheader ], [ %indvars.iv.next91, %for.body22 ]
  %min.0 = phi i32 [ 100000, %for.cond20.preheader ], [ %spec.select, %for.body22 ]
  %exitcond = icmp eq i64 %indvars.iv90, %indvars.iv141
  br i1 %exitcond, label %for.cond37, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %add.ptr27 = getelementptr inbounds nuw i32, ptr %add.ptr24, i64 %indvars.iv90
  %9 = load i32, ptr %add.ptr27, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %9, i32 %min.0)
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond20, !llvm.loop !13

for.cond37:                                       ; preds = %for.cond20, %for.body39
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.body39 ], [ 1, %for.cond20 ]
  %exitcond100 = icmp eq i64 %indvars.iv96, %indvars.iv141
  br i1 %exitcond100, label %for.inc53, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %add.ptr44 = getelementptr inbounds nuw i32, ptr %add.ptr24, i64 %indvars.iv96
  %10 = load i32, ptr %add.ptr44, align 4, !tbaa !5
  %sub = sub nsw i32 %10, %min.0
  store i32 %sub, ptr %add.ptr44, align 4, !tbaa !5
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond37, !llvm.loop !14

for.inc53:                                        ; preds = %for.cond37
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond17, !llvm.loop !15

for.cond56:                                       ; preds = %for.cond17, %for.inc95
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.inc95 ], [ 1, %for.cond17 ]
  %exitcond120 = icmp eq i64 %indvars.iv116, %indvars.iv141
  br i1 %exitcond120, label %for.end97, label %for.cond59.preheader

for.cond59.preheader:                             ; preds = %for.cond56
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv116
  br label %for.cond59

for.cond59:                                       ; preds = %for.cond59.preheader, %for.body61
  %indvars.iv106 = phi i64 [ 1, %for.cond59.preheader ], [ %indvars.iv.next107, %for.body61 ]
  %min.2 = phi i32 [ 100000, %for.cond59.preheader ], [ %spec.select80, %for.body61 ]
  %exitcond110 = icmp eq i64 %indvars.iv106, %indvars.iv141
  br i1 %exitcond110, label %for.cond78, label %for.body61

for.body61:                                       ; preds = %for.cond59
  %gep = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep, i64 %indvars.iv106
  %11 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select80 = call i32 @llvm.smin.i32(i32 %11, i32 %min.2)
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond59, !llvm.loop !16

for.cond78:                                       ; preds = %for.cond59, %for.body80
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.body80 ], [ 1, %for.cond59 ]
  %exitcond115 = icmp eq i64 %indvars.iv111, %indvars.iv141
  br i1 %exitcond115, label %for.inc95, label %for.body80

for.body80:                                       ; preds = %for.cond78
  %gep83 = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep, i64 %indvars.iv111
  %12 = load i32, ptr %gep83, align 4, !tbaa !5
  %sub86 = sub nsw i32 %12, %min.2
  store i32 %sub86, ptr %gep83, align 4, !tbaa !5
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %for.cond78, !llvm.loop !17

for.inc95:                                        ; preds = %for.cond78
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  br label %for.cond56, !llvm.loop !18

for.end97:                                        ; preds = %for.cond56
  %13 = load i32, ptr %add.ptr100, align 8, !tbaa !5
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc122, %for.end97
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %for.inc122 ], [ 2, %for.end97 ]
  %exitcond130.not = icmp eq i64 %indvars.iv126, %indvars.iv144
  br i1 %exitcond130.not, label %for.cond125, label %for.cond105.preheader

for.cond105.preheader:                            ; preds = %for.cond101
  %add.ptr109 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv126
  %add.ptr110 = getelementptr inbounds nuw i8, ptr %add.ptr109, i64 440
  br label %for.cond105

for.cond105:                                      ; preds = %for.cond105.preheader, %for.body107
  %indvars.iv121 = phi i64 [ 1, %for.cond105.preheader ], [ %indvars.iv.next122, %for.body107 ]
  %exitcond125 = icmp eq i64 %indvars.iv121, %indvars.iv141
  br i1 %exitcond125, label %for.inc122, label %for.body107

for.body107:                                      ; preds = %for.cond105
  %add.ptr113 = getelementptr inbounds nuw i32, ptr %add.ptr110, i64 %indvars.iv121
  %14 = load i32, ptr %add.ptr113, align 4, !tbaa !5
  %add.ptr118 = getelementptr inbounds nuw i32, ptr %add.ptr109, i64 %indvars.iv121
  store i32 %14, ptr %add.ptr118, align 4, !tbaa !5
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %for.cond105, !llvm.loop !19

for.inc122:                                       ; preds = %for.cond105
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  br label %for.cond101, !llvm.loop !20

for.cond125:                                      ; preds = %for.cond101, %for.inc146
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %for.inc146 ], [ 2, %for.cond101 ]
  %exitcond140.not = icmp eq i64 %indvars.iv136, %indvars.iv144
  br i1 %exitcond140.not, label %for.inc149, label %for.cond129.preheader

for.cond129.preheader:                            ; preds = %for.cond125
  %invariant.gep84 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv136
  br label %for.cond129

for.cond129:                                      ; preds = %for.cond129.preheader, %for.body131
  %indvars.iv131 = phi i64 [ 1, %for.cond129.preheader ], [ %indvars.iv.next132, %for.body131 ]
  %exitcond135 = icmp eq i64 %indvars.iv131, %indvars.iv141
  br i1 %exitcond135, label %for.inc146, label %for.body131

for.body131:                                      ; preds = %for.cond129
  %gep85 = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep84, i64 %indvars.iv131
  %add.ptr137 = getelementptr inbounds nuw i8, ptr %gep85, i64 4
  %15 = load i32, ptr %add.ptr137, align 4, !tbaa !5
  store i32 %15, ptr %gep85, align 4, !tbaa !5
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  br label %for.cond129, !llvm.loop !21

for.inc146:                                       ; preds = %for.cond129
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  br label %for.cond125, !llvm.loop !22

for.inc149:                                       ; preds = %for.cond125
  %add = add nsw i32 %13, %sum.0
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, -1
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1
  br label %for.cond14, !llvm.loop !23

for.end150:                                       ; preds = %for.cond14
  %call151 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call151, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call151, i64 %vbase.offset.i
  %call.i81 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call151, i8 noundef signext %call.i81)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc154 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !26

for.end155:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %a) #5
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!13 = distinct !{!13, !10, !11}
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
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = distinct !{!26, !10, !11}
