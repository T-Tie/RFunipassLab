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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %range) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %range)
  call void @llvm.lifetime.start.p0(i64 noundef 41616, ptr noundef nonnull %a) #6
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %a, i64 412
  br label %for.cond

for.cond:                                         ; preds = %for.inc155, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc156, %for.inc155 ]
  %0 = load i32, ptr %range, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1.preheader, label %for.end157

for.cond1.preheader:                              ; preds = %for.cond
  %wide.trip.count78 = zext i32 %0 to i64
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc11
  %indvars.iv75 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next76, %for.inc11 ]
  %exitcond79.not = icmp eq i64 %indvars.iv75, %wide.trip.count78
  br i1 %exitcond79.not, label %for.cond14.preheader, label %for.cond4.preheader

for.cond14.preheader:                             ; preds = %for.cond1
  %1 = load i32, ptr %add.ptr100, align 4
  %2 = add i32 %0, -1
  %3 = zext i32 %2 to i64
  %4 = add i32 %0, -2
  %umin = call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %5 = mul i32 %1, %umin
  br label %for.cond14

for.cond4.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv75
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count78
  br i1 %exitcond.not, label %for.inc11, label %for.inc

for.inc:                                          ; preds = %for.cond4
  %add.ptr9 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond4
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond1, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %for.end151
  %indvars.iv134 = phi i64 [ %wide.trip.count78, %for.cond14.preheader ], [ %indvars.iv.next135, %for.end151 ]
  %indvars.iv132 = phi i64 [ %3, %for.cond14.preheader ], [ %indvars.iv.next133, %for.end151 ]
  %sum.0 = phi i32 [ 0, %for.cond14.preheader ], [ %add, %for.end151 ]
  %cmp15 = icmp sgt i64 %indvars.iv134, 1
  br i1 %cmp15, label %for.cond17, label %for.inc155

for.cond17:                                       ; preds = %for.cond14, %for.inc53
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.inc53 ], [ 0, %for.cond14 ]
  %exitcond94.not = icmp eq i64 %indvars.iv90, %indvars.iv134
  br i1 %exitcond94.not, label %for.cond56, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond17
  %add.ptr24 = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv90
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv80 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next81, %for.body22 ]
  %minrow.2 = phi i32 [ 999999, %for.cond20.preheader ], [ %spec.select, %for.body22 ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %indvars.iv134
  br i1 %exitcond84.not, label %for.cond37.preheader, label %for.body22

for.cond37.preheader:                             ; preds = %for.cond20
  br label %for.cond37

for.body22:                                       ; preds = %for.cond20
  %add.ptr27 = getelementptr inbounds nuw i32, ptr %add.ptr24, i64 %indvars.iv80
  %6 = load i32, ptr %add.ptr27, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %6, i32 %minrow.2)
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond20, !llvm.loop !14

for.cond37:                                       ; preds = %for.cond37.preheader, %for.inc50
  %indvars.iv85 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next86, %for.inc50 ]
  %exitcond89.not = icmp eq i64 %indvars.iv85, %indvars.iv134
  br i1 %exitcond89.not, label %for.inc53, label %for.inc50

for.inc50:                                        ; preds = %for.cond37
  %add.ptr44 = getelementptr inbounds nuw i32, ptr %add.ptr24, i64 %indvars.iv85
  %7 = load i32, ptr %add.ptr44, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %7, %minrow.2
  store i32 %sub, ptr %add.ptr44, align 4, !tbaa !5
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond37, !llvm.loop !15

for.inc53:                                        ; preds = %for.cond37
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond17, !llvm.loop !16

for.cond56:                                       ; preds = %for.cond17, %for.inc95
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.inc95 ], [ 0, %for.cond17 ]
  %exitcond109.not = icmp eq i64 %indvars.iv105, %indvars.iv134
  br i1 %exitcond109.not, label %for.end97, label %for.cond59.preheader

for.cond59.preheader:                             ; preds = %for.cond56
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv105
  br label %for.cond59

for.cond59:                                       ; preds = %for.cond59.preheader, %for.body61
  %indvars.iv95 = phi i64 [ 0, %for.cond59.preheader ], [ %indvars.iv.next96, %for.body61 ]
  %mincol.2 = phi i32 [ 999999, %for.cond59.preheader ], [ %spec.select69, %for.body61 ]
  %exitcond99.not = icmp eq i64 %indvars.iv95, %indvars.iv134
  br i1 %exitcond99.not, label %for.cond78.preheader, label %for.body61

for.cond78.preheader:                             ; preds = %for.cond59
  br label %for.cond78

for.body61:                                       ; preds = %for.cond59
  %gep = getelementptr inbounds nuw [102 x i32], ptr %invariant.gep, i64 %indvars.iv95
  %8 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !13
  %spec.select69 = call i32 @llvm.smin.i32(i32 %8, i32 %mincol.2)
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %for.cond59, !llvm.loop !17

for.cond78:                                       ; preds = %for.cond78.preheader, %for.inc92
  %indvars.iv100 = phi i64 [ 0, %for.cond78.preheader ], [ %indvars.iv.next101, %for.inc92 ]
  %exitcond104.not = icmp eq i64 %indvars.iv100, %indvars.iv134
  br i1 %exitcond104.not, label %for.inc95, label %for.inc92

for.inc92:                                        ; preds = %for.cond78
  %gep71 = getelementptr inbounds nuw [102 x i32], ptr %invariant.gep, i64 %indvars.iv100
  %9 = load i32, ptr %gep71, align 4, !tbaa !5, !invariant.load !13
  %sub86 = sub nsw i32 %9, %mincol.2
  store i32 %sub86, ptr %gep71, align 4, !tbaa !5
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond78, !llvm.loop !18

for.inc95:                                        ; preds = %for.cond78
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond56, !llvm.loop !19

for.end97:                                        ; preds = %for.cond56
  %add = add nsw i32 %1, %sum.0
  %cmp101 = icmp eq i64 %indvars.iv134, 2
  br i1 %cmp101, label %for.inc155, label %for.cond104

for.cond104:                                      ; preds = %for.end97, %for.inc125
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.inc125 ], [ 1, %for.end97 ]
  %exitcond121 = icmp eq i64 %indvars.iv115, %indvars.iv132
  br i1 %exitcond121, label %for.cond128, label %for.cond108.preheader

for.cond108.preheader:                            ; preds = %for.cond104
  %add.ptr112 = getelementptr inbounds nuw [102 x i32], ptr %a, i64 %indvars.iv115
  %add.ptr113 = getelementptr inbounds nuw i8, ptr %add.ptr112, i64 408
  br label %for.cond108

for.cond108:                                      ; preds = %for.cond108.preheader, %for.inc122
  %indvars.iv110 = phi i64 [ 0, %for.cond108.preheader ], [ %indvars.iv.next111, %for.inc122 ]
  %exitcond114.not = icmp eq i64 %indvars.iv110, %indvars.iv134
  br i1 %exitcond114.not, label %for.inc125, label %for.inc122

for.inc122:                                       ; preds = %for.cond108
  %add.ptr116 = getelementptr inbounds nuw i32, ptr %add.ptr113, i64 %indvars.iv110
  %10 = load i32, ptr %add.ptr116, align 4, !tbaa !5, !invariant.load !13
  %add.ptr121 = getelementptr inbounds nuw i32, ptr %add.ptr112, i64 %indvars.iv110
  store i32 %10, ptr %add.ptr121, align 4, !tbaa !5
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %for.cond108, !llvm.loop !20

for.inc125:                                       ; preds = %for.cond108
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  br label %for.cond104, !llvm.loop !21

for.cond128:                                      ; preds = %for.cond104, %for.inc149
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.inc149 ], [ 1, %for.cond104 ]
  %exitcond131 = icmp eq i64 %indvars.iv127, %indvars.iv132
  br i1 %exitcond131, label %for.end151, label %for.cond132.preheader

for.cond132.preheader:                            ; preds = %for.cond128
  %invariant.gep72 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv127
  br label %for.cond132

for.cond132:                                      ; preds = %for.cond132.preheader, %for.inc146
  %indvars.iv122 = phi i64 [ 0, %for.cond132.preheader ], [ %indvars.iv.next123, %for.inc146 ]
  %exitcond126.not = icmp eq i64 %indvars.iv122, %indvars.iv134
  br i1 %exitcond126.not, label %for.inc149, label %for.inc146

for.inc146:                                       ; preds = %for.cond132
  %gep73 = getelementptr inbounds nuw [102 x i32], ptr %invariant.gep72, i64 %indvars.iv122
  %add.ptr140 = getelementptr inbounds nuw i8, ptr %gep73, i64 4
  %11 = load i32, ptr %add.ptr140, align 4, !tbaa !5, !invariant.load !13
  store i32 %11, ptr %gep73, align 4, !tbaa !5
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  br label %for.cond132, !llvm.loop !22

for.inc149:                                       ; preds = %for.cond132
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  br label %for.cond128, !llvm.loop !23

for.end151:                                       ; preds = %for.cond128
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, -1
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, -1
  br label %for.cond14, !llvm.loop !24

for.inc155:                                       ; preds = %for.cond14, %for.end97
  %sum.1 = phi i32 [ %5, %for.cond14 ], [ %add, %for.end97 ]
  %call153 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.1)
  %vtable.i = load ptr, ptr %call153, align 8, !tbaa !25, !invariant.load !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !13
  %add.ptr.i = getelementptr inbounds i8, ptr %call153, i64 %vbase.offset.i
  %call.i2 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call153, i8 noundef signext %call.i2)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc156 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !27

for.end157:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 41616, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %range) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !8, i64 0}
!27 = distinct !{!27, !10, !11}
