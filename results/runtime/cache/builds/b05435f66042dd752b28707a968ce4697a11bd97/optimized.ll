; ModuleID = '<stdin>'
source_filename = "/tmp/tmplliewr1p.cpp"
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
  %range = alloca i32, align 4
  %a = alloca [102 x [102 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %range) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %range)
  call void @llvm.lifetime.start.p0(i64 41616, ptr nonnull %a) #5
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %a, i64 412
  br label %for.cond

for.cond:                                         ; preds = %for.end152, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc156, %for.end152 ]
  %0 = load i32, ptr %range, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1.preheader, label %for.end157

for.cond1.preheader:                              ; preds = %for.cond
  %wide.trip.count92 = zext i32 %0 to i64
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc11
  %indvars.iv89 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next90, %for.inc11 ]
  %exitcond93.not = icmp eq i64 %indvars.iv89, %wide.trip.count92
  br i1 %exitcond93.not, label %for.cond14.preheader, label %for.cond4.preheader

for.cond14.preheader:                             ; preds = %for.cond1
  %1 = add i32 %0, -1
  %2 = zext i32 %1 to i64
  br label %for.cond14

for.cond4.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv89
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count92
  br i1 %exitcond.not, label %for.inc11, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %add.ptr9 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond4
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond1, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %for.end151
  %indvars.iv148 = phi i64 [ %wide.trip.count92, %for.cond14.preheader ], [ %indvars.iv.next149, %for.end151 ]
  %indvars.iv146 = phi i64 [ %2, %for.cond14.preheader ], [ %indvars.iv.next147, %for.end151 ]
  %sum.0 = phi i32 [ 0, %for.cond14.preheader ], [ %add, %for.end151 ]
  %cmp15 = icmp sgt i64 %indvars.iv148, 1
  br i1 %cmp15, label %for.cond17, label %for.end152

for.cond17:                                       ; preds = %for.cond14, %for.end52
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %for.end52 ], [ 0, %for.cond14 ]
  %exitcond108.not = icmp eq i64 %indvars.iv104, %indvars.iv148
  br i1 %exitcond108.not, label %for.cond56, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond17
  %add.ptr24 = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv104
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv94 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next95, %for.body22 ]
  %minrow.2 = phi i32 [ 999999, %for.cond20.preheader ], [ %spec.select, %for.body22 ]
  %exitcond98.not = icmp eq i64 %indvars.iv94, %indvars.iv148
  br i1 %exitcond98.not, label %for.cond37, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %add.ptr27 = getelementptr inbounds nuw i32, ptr %add.ptr24, i64 %indvars.iv94
  %3 = load i32, ptr %add.ptr27, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %3, i32 %minrow.2)
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond20, !llvm.loop !13

for.cond37:                                       ; preds = %for.cond20, %for.body39
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body39 ], [ 0, %for.cond20 ]
  %exitcond103.not = icmp eq i64 %indvars.iv99, %indvars.iv148
  br i1 %exitcond103.not, label %for.end52, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %add.ptr44 = getelementptr inbounds nuw i32, ptr %add.ptr24, i64 %indvars.iv99
  %4 = load i32, ptr %add.ptr44, align 4, !tbaa !5
  %sub = sub nsw i32 %4, %minrow.2
  store i32 %sub, ptr %add.ptr44, align 4, !tbaa !5
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  br label %for.cond37, !llvm.loop !14

for.end52:                                        ; preds = %for.cond37
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  br label %for.cond17, !llvm.loop !15

for.cond56:                                       ; preds = %for.cond17, %for.end94
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.end94 ], [ 0, %for.cond17 ]
  %exitcond123.not = icmp eq i64 %indvars.iv119, %indvars.iv148
  br i1 %exitcond123.not, label %for.end97, label %for.cond59.preheader

for.cond59.preheader:                             ; preds = %for.cond56
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv119
  br label %for.cond59

for.cond59:                                       ; preds = %for.cond59.preheader, %for.body61
  %indvars.iv109 = phi i64 [ 0, %for.cond59.preheader ], [ %indvars.iv.next110, %for.body61 ]
  %mincol.2 = phi i32 [ 999999, %for.cond59.preheader ], [ %spec.select82, %for.body61 ]
  %exitcond113.not = icmp eq i64 %indvars.iv109, %indvars.iv148
  br i1 %exitcond113.not, label %for.cond78, label %for.body61

for.body61:                                       ; preds = %for.cond59
  %gep = getelementptr inbounds nuw [102 x i32], ptr %invariant.gep, i64 %indvars.iv109
  %5 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select82 = call i32 @llvm.smin.i32(i32 %5, i32 %mincol.2)
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  br label %for.cond59, !llvm.loop !16

for.cond78:                                       ; preds = %for.cond59, %for.body80
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %for.body80 ], [ 0, %for.cond59 ]
  %exitcond118.not = icmp eq i64 %indvars.iv114, %indvars.iv148
  br i1 %exitcond118.not, label %for.end94, label %for.body80

for.body80:                                       ; preds = %for.cond78
  %gep85 = getelementptr inbounds nuw [102 x i32], ptr %invariant.gep, i64 %indvars.iv114
  %6 = load i32, ptr %gep85, align 4, !tbaa !5
  %sub86 = sub nsw i32 %6, %mincol.2
  store i32 %sub86, ptr %gep85, align 4, !tbaa !5
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %for.cond78, !llvm.loop !17

for.end94:                                        ; preds = %for.cond78
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  br label %for.cond56, !llvm.loop !18

for.end97:                                        ; preds = %for.cond56
  %7 = load i32, ptr %add.ptr100, align 4, !tbaa !5
  %add = add nsw i32 %7, %sum.0
  %cmp101 = icmp eq i64 %indvars.iv148, 2
  br i1 %cmp101, label %for.end152, label %for.cond104

for.cond104:                                      ; preds = %for.end97, %for.inc125
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.inc125 ], [ 1, %for.end97 ]
  %exitcond135 = icmp eq i64 %indvars.iv129, %indvars.iv146
  br i1 %exitcond135, label %for.cond128, label %for.cond108.preheader

for.cond108.preheader:                            ; preds = %for.cond104
  %add.ptr112 = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv129
  %add.ptr113 = getelementptr inbounds nuw i8, ptr %add.ptr112, i64 408
  br label %for.cond108

for.cond108:                                      ; preds = %for.cond108.preheader, %for.body110
  %indvars.iv124 = phi i64 [ 0, %for.cond108.preheader ], [ %indvars.iv.next125, %for.body110 ]
  %exitcond128.not = icmp eq i64 %indvars.iv124, %indvars.iv148
  br i1 %exitcond128.not, label %for.inc125, label %for.body110

for.body110:                                      ; preds = %for.cond108
  %add.ptr116 = getelementptr inbounds nuw i32, ptr %add.ptr113, i64 %indvars.iv124
  %8 = load i32, ptr %add.ptr116, align 4, !tbaa !5
  %add.ptr121 = getelementptr inbounds nuw i32, ptr %add.ptr112, i64 %indvars.iv124
  store i32 %8, ptr %add.ptr121, align 4, !tbaa !5
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  br label %for.cond108, !llvm.loop !19

for.inc125:                                       ; preds = %for.cond108
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  br label %for.cond104, !llvm.loop !20

for.cond128:                                      ; preds = %for.cond104, %for.inc149
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %for.inc149 ], [ 1, %for.cond104 ]
  %exitcond145 = icmp eq i64 %indvars.iv141, %indvars.iv146
  br i1 %exitcond145, label %for.end151, label %for.cond132.preheader

for.cond132.preheader:                            ; preds = %for.cond128
  %invariant.gep86 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv141
  br label %for.cond132

for.cond132:                                      ; preds = %for.cond132.preheader, %for.body134
  %indvars.iv136 = phi i64 [ 0, %for.cond132.preheader ], [ %indvars.iv.next137, %for.body134 ]
  %exitcond140.not = icmp eq i64 %indvars.iv136, %indvars.iv148
  br i1 %exitcond140.not, label %for.inc149, label %for.body134

for.body134:                                      ; preds = %for.cond132
  %gep87 = getelementptr inbounds nuw [102 x i32], ptr %invariant.gep86, i64 %indvars.iv136
  %add.ptr140 = getelementptr inbounds nuw i8, ptr %gep87, i64 4
  %9 = load i32, ptr %add.ptr140, align 4, !tbaa !5
  store i32 %9, ptr %gep87, align 4, !tbaa !5
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  br label %for.cond132, !llvm.loop !21

for.inc149:                                       ; preds = %for.cond132
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  br label %for.cond128, !llvm.loop !22

for.end151:                                       ; preds = %for.cond128
  %indvars.iv.next149 = add nsw i64 %indvars.iv148, -1
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, -1
  br label %for.cond14, !llvm.loop !23

for.end152:                                       ; preds = %for.end97, %for.cond14
  %sum.1 = phi i32 [ %add, %for.end97 ], [ %sum.0, %for.cond14 ]
  %call153 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.1)
  %vtable.i = load ptr, ptr %call153, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call153, i64 %vbase.offset.i
  %call.i83 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call153, i8 noundef signext %call.i83)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc156 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !26

for.end157:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 41616, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %range) #5
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
